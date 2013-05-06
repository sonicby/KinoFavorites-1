# KinoFavorites
Приложение позволяет добавлять актёров/актрис/режиссёров для дальнейшего наблюдения за выходом новых и списком старых фильмов. Вы можете помечать просмотренные фильмы, можете скрывать лишние с глаз долой.

###Скриншоты:
![Screenshot0](http://korphome.ru/images/kinofavorites/Screenshot_2013-05-06_21.18.57.png "Screenshot0")
![Screenshot1](http://korphome.ru/images/kinofavorites/Screenshot_2013-05-06_21.19.11.png "Screenshot1")

###Требования для установки:

* Веб-сервер (Apache, nginx, lighttpd)
* PHP (5.2 или выше) с поддержкой cURL и PDO
* MySQL, PostgreSQL, SQLite

###Установка:

* Импортировать дамп базы kinofavorites.sql
* Перенести все файлы в папку на вашем сервере (например /path/to/folder/kinofavorites/)
* Внести изменения в config.php и указать данные для доступа к БД

Для MySQL:
```
Config::write('db.host', 'localhost');
Config::write('db.type', 'mysql');
Config::write('db.charset', 'utf8');
Config::write('db.port', '3306');
Config::write('db.basename', 'kinofavorites');
Config::write('db.user', 'kinofavorites');
Config::write('db.password', 'kinofavorites');
```
Для PostgreSQL:
```
Config::write('db.host', 'localhost');
Config::write('db.type', 'pgsql');
Config::write('db.port', '5432');
Config::write('db.basename', 'kinofavorites');
Config::write('db.user', 'kinofavorites');
Config::write('db.password', 'kinofavorites');
```
Для SQLite:
```
Config::write('db.type', 'sqlite');
Config::write('db.basename', '/var/www/htdocs/kinofavorites/kinofavorites.sqlite'); #Указывайте _абсолютный_ путь до файла с базой и не забудьте выставить на него верные права доступа.
```

* Добавить в cron engine.php ( *проверьте права на запись в каталог /path/to/log/* )

```
0 */12 * * * php -q /path/to/folder/kinofavorites/engine.php >> /path/to/log/kinofavorites_error.log 2>&1
```
* Зайти в веб-интерфейс ( **пароль по умолчанию — torrentmonitor, смените(!) его после первого входа** )
* Указать учётные данные от трекеров
* Указать в настройках путь для сохранения торрентов (папка, которая мониторится вашим торрент-клиентом), e-mail и разрешить/запретить отправку 
уведомлений
* Добавить торренты для мониторинга
* Перейти на вкладку «Тест» и проверить — всё ли верно работает

###Настройки:

Так же, в php.ini (для CLI) необходимо изменить следующие параметры:

```
; увеличить максимальное вермя выполнения скрипта
max_execution_time = 600 # этот параметр зависит от кол-ва актёров/актрис/режиссёров

; указать date.timezone
date.timezone = Europe/Moscow

; эту опцию желательно включить в php.ini как для CLI, так и для веб-сервера
allow_url_fopen = on
```