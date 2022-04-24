# Параметры окружения  
> ## Контейнеры  
>> ## dfc-host-nodejs  
>>> ## IP адрес:  
>>> - dfc-host-nodejs  
>>> ## Открытые порты:   
>>> - 443  
>>> ## Пользователи:  
>>> - root  
>>> - dfc-user  
>>> ## Пути до папок:  
>>> - ./WorkFolder/Containers/dfc-host-nodejs/Configs/ClamAV == **/etc/clamav**  
>>> - ./WorkFolder/Containers/dfc-host-nodejs/Configs/Neofetch == **/home/dfc-user/.config/neofetch**  
>>> - ./WorkFolder/Containers/dfc-host-nodejs/Files == **/dfc-project/files**  
>>> - ./WorkFolder/Containers/Common/Firewall == **/dfc-project/common/firewall**  
>>> - ./WorkFolder/Containers/Common/Antivirus == **/var/lib/clamav**  
>>> - ./WorkFolder/Containers/dfc-host-nodejs/Logs == **/var/log**  

# Управление конфигурацией
> ## Основная папка
> - **dfc-antivirus.sh** ⼀ "Управление антивирусом dfc-проекта";  
> - **dfc-create.sh** ⼀ "Создание dfc-проекта";  
> - **dfc-details.sh** ⼀ "Детальный обзор dfc-проекта";  
> - **dfc-enter.sh** ⼀ "Войти в один из контейнеров dfc-проекта";  
> - **dfc-firewall.sh** ⼀ "Управление брандмауэром dfc-проекта";  
> - **dfc-git.sh** ⼀ "Управление Git системой dfc-проекта";  
> - **dfc-load.sh** ⼀ "Управление нагрузкой на процессор dfc-проекта";  
> - **dfc-packages.sh** ⼀ "Управление пакетами dfc-проекта";  
> - **dfc-power.sh** ⼀ "Управление энергопотреблением и производительностью dfc-проекта";  
> - **dfc-protect.sh** ⼀ "Активация режима защиты dfc-проекта";  
> - **dfc-remove.sh** ⼀ "Удаление dfc-проекта";  
> - **dfc-run.sh** ⼀ "Запуск определенного процесса внутри контейнера dfc-проекта";  
> - **dfc-share.sh** ⼀ "Поделиться dfc-проектом с другими пользователями";  
> - **dfc-start.sh** ⼀ "Запустить проект";  
> - **dfc-stop.sh** ⼀ "Остановить проект";  
> - **dfc-upgrade.sh** ⼀ "Обновить dfc-проект до самой новой и стабильной версии".  

# dfc-проект поддерживается следующими системами
- Fedora Linux;
- macOS 12.3.1;
- Не исключается возможность работы на других дистрибутивах Linux;
- Не исключается возможность работы с помощью WSL на Windows;
- Не исключается возможность работы на более ранних версиях macOS.

# Для использования dfc-проекта нужно установить зависимости
- Docker (https://docs.docker.com/engine/install). Необходим docker (v2) и docker-compose (v1).

# Порядок развертывания проекта
1. Перейти в ./ и запустить скрипт с помощью команды в терминале "sh dfc-create.sh". Во время этого отвечать на вопросы, после чего dfc-проект будет установлен;
2. Посмотрите на блок "Управление конфигурацией" и на все скрипты в основной папке и подпапках.

# Дополнительная информация
- "./" ⼀ "В документации это означает корневую папку конфигурации вашего проекта";  
- "sh название.sh" ⼀ "Запуск файла с расширением .sh".  

# Преимущества использования dfc-проекта
- Абстрагирование проекта (со всем окружением) от виртуальной машины из-за чего возможно создать несколько проектов на одной виртуальной машине;
- Каждая часть проекта находится в изолированной среде - контейнере;
- Контейнеры потребляют минимальное количество ресурсов из-за использования в контейнерах преимущественно дистрибутива Alpine Linux, который считается одним из легких и одновременно позволяющим реализовать конкретные задачи;
- Быстрое развертывание проекта;
- Безопасность - проект и все его окружение находятся в отдельных контейнерах из-за чего даже при условии попадания злоумышленника в один контейнер это не означает, что он автоматически попадает и в другие контейнеры не говоря о самой виртуальной машине;
- Удобство - весь проект находится в одной папке с четкой иерархией. Эту папку можно хранить на виртуальной машине в любой директории, какой пожелает пользователь;
- Возможность запускать, останавливать, перезапускать, удалять, создавать dfc-проект с помощью только одной команды;
- Минимальное количество мусора на виртуальной машине;
- При использовании dfc-проекта следует и повышение качества проектов пользователя;
- Чтобы развернуть проект нужно выполнить всего несколько шагов;
- Возможность кастомизации скриптов;
- Встроенный и настроенный антивирус;
- Встроенный и настроенный брандмауэр;
- Встроенный и настроенный ZSH;
- Подготовленный к различным вариантам использования;
- Режим защиты;
- Возможность поделиться dfc-проектом с другим пользователем;
- Полностью на русском языке. Не исключается добавление других языков;
- Нетребователен к обновлениям;
- Поддерживается Linux, Windows (WSL), macOS;
- Документация;
- Сокращение затрат на виртуальные машины;
- Сокращение затрат на снапшоты.

# dfc-проект выражает благодарность
- Linux;
- Docker;
- Alpine Linux;
- Rust;
- Fedora Linux;
- Red Hat;
- И всем тем модулям, которые используются в dfc-проекте.

---

**Лицензия** ⼀ "Apache-2.0 License"  
**Основатель проекта** ⼀ "Артур Шкадинский"