import json
from pathlib import Path

from django.core.management.base import BaseCommand, CommandError
from django.db import transaction

from lostfound.models import School


class Command(BaseCommand):
    help = "Initialize school names and codes without replacing existing schools."

    def handle(self, *args, **options):
        seed_file = Path(__file__).resolve().parents[2] / "data" / "schools.json"
        try:
            schools = json.loads(seed_file.read_text(encoding="utf-8"))
        except (OSError, json.JSONDecodeError) as error:
            raise CommandError(f"Unable to read the school seed file: {error}") from error

        created_count = 0
        with transaction.atomic():
            for entry in schools:
                _, created = School.objects.get_or_create(
                    code=entry["code"],
                    defaults={"name": entry["name"]},
                )
                created_count += int(created)

        self.stdout.write(
            self.style.SUCCESS(f"Schools created: {created_count}. Existing: {len(schools) - created_count}.")
        )
