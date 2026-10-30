# 校园失物招领系统本地部署说明

本文介绍如何在本地运行本项目。执行命令时，请先进入项目根目录，也就是包含 `manage.py` 和 `requirements.txt` 的目录。

## 一、准备环境

安装以下软件：

1. Python 3.12
2. MySQL 8.0 或更高版本
3. Git，可选，用于下载项目

下载项目后，进入项目目录：

```powershell
cd "你的项目目录"
```

安装完成后，在终端中检查版本：

```powershell
python --version
mysql --version
```

## 二、创建 Python 虚拟环境

在项目根目录执行：

```powershell
python -m venv .venv
```

激活虚拟环境：

```powershell
.\.venv\Scripts\Activate.ps1
```

如果 PowerShell 提示禁止运行脚本，可以为当前窗口临时允许脚本运行：

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
```

然后重新执行激活命令。

安装项目依赖：

```powershell
pip install -r requirements.txt
```

## 三、创建 MySQL 数据库

登录 MySQL：

```powershell
mysql -u root -p
```

输入 MySQL 密码后，执行：

```sql
CREATE DATABASE campus_lostfound
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;
```

查看数据库是否创建成功：

```sql
SHOW DATABASES;
```

退出 MySQL：

```sql
EXIT;
```

## 四、配置数据库连接

打开以下文件：

```text
campus_lostfound/settings.py
```

找到 `DATABASES` 配置，将数据库名称、用户名、密码、地址和端口修改为本机 MySQL 的实际配置：

```python
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'campus_lostfound',
        'USER': 'root',
        'PASSWORD': '你的MySQL密码',
        'HOST': 'localhost',
        'PORT': '3306',
    }
}
```

请注意：

1. `NAME` 必须与创建的数据库名称一致。
2. `USER` 和 `PASSWORD` 必须与本地 MySQL 账号一致。
3. MySQL 使用默认端口时，`PORT` 一般填写 `3306`。
4. 不要把真实的数据库密码提交到公开仓库。

## 五、创建数据表

在项目根目录执行：

```powershell
python manage.py migrate
```

该命令会根据项目中的迁移文件创建 Django 和失物招领系统所需的数据表。

## 六、导入学校基础数据

项目根目录中的 `school.sql` 包含学校基础数据，不包含用户个人信息。

在项目根目录执行：

```powershell
mysql --default-character-set=utf8mb4 -u root -p campus_lostfound -e "source ./school.sql"
```

输入 MySQL 密码后等待命令执行完成。

`campus_lostfound.sql` 是数据库表结构备份。正常部署时已经通过 `python manage.py migrate` 创建了数据表，因此不需要再次导入该文件。

## 七、创建管理员账号

执行：

```powershell
python manage.py createsuperuser
```

根据提示输入管理员用户名、邮箱和密码。创建完成后，可以使用该账号登录系统后台。

## 八、启动项目

执行：

```powershell
python manage.py runserver
```

终端显示以下地址后，即可在浏览器中访问：

```text
http://127.0.0.1:8000/
```

Django 管理后台地址：

```text
http://127.0.0.1:8000/admin/
```

如需让同一局域网内的其他设备访问，可以执行：

```powershell
python manage.py runserver 0.0.0.0:8000
```

同时需要在 `settings.py` 的 `ALLOWED_HOSTS` 中加入运行服务器的局域网 IP 地址。

## 九、常见问题

### 1. pip install 安装失败

优先确认使用的是 Python 3.12。部分依赖版本可能不支持其他 Python 版本。

可以先升级 pip：

```powershell
python -m pip install --upgrade pip
```

然后重新安装依赖：

```powershell
pip install -r requirements.txt
```

### 2. 无法连接 MySQL

依次检查以下内容：

1. MySQL 服务是否已经启动。
2. `settings.py` 中的用户名和密码是否正确。
3. `campus_lostfound` 数据库是否已经创建。
4. MySQL 是否允许从 `localhost` 或 `127.0.0.1` 连接。
5. MySQL 的端口是否被其他程序占用。

### 3. 提示没有 MySQLdb

先确认依赖已经安装：

```powershell
pip install -r requirements.txt
```

项目已经通过 PyMySQL 提供 MySQL 数据库驱动，因此不需要额外编写数据库连接代码。

### 4. 页面没有图片

用户上传的图片保存在项目根目录的 `media` 文件夹中。数据库刚导入时没有用户失物信息，因此暂时看不到物品图片属于正常现象。用户发布带图片的信息后，图片会自动保存到该目录。

### 5. 修改代码后数据表没有变化

修改模型后，需要依次执行：

```powershell
python manage.py makemigrations
python manage.py migrate
```

## 十、后续启动

完成首次部署后，以后启动项目只需要进入项目目录，激活虚拟环境，然后运行：

```powershell
.\.venv\Scripts\Activate.ps1
python manage.py runserver
```
