#!/bin/bash

# Extra vars
## There should be no '/' at the end
dfc_project_main_folder="."

# Header of script
. $dfc_project_main_folder/Scripts/Dependencies/dfc-script-header.sh

# General process
message_info "$(date '+%H:%M:%S (%d/%m/%Y)')" 2
message_space 2

message_info "Точки входа в контейнеры" 1
message_space 1
message_input "Список контейнеров\n"
message_input "1. dfc-host-nodejs\n"
message_input "2. Выйти\n"
message_input "=> "
read -p '' dfc_project_container

case $dfc_project_container in
"1")
    message_space 1
    message_info "Чтобы выйти из контейнера напишите 'exit'" 1
    message_info "Контейнер открывается" 1
    message_space 1
    message_info "Популярные команды: sudo, apk, node, npm, nano, git, htop, dust, curl, viu, neofetch" 1
    docker-compose -p $dfc_global__project_name exec -u dfc-user dfc-host-nodejs zsh -c "echo '|'" >&3
    docker-compose -p $dfc_global__project_name exec --privileged -u dfc-user dfc-host-nodejs zsh >&3
    ;;
"2")
    . $dfc_project_main_folder/Scripts/Dependencies/dfc-message-exit.sh >&3
    ;;
*)
    . $dfc_project_main_folder/Scripts/Dependencies/dfc-message-exit.sh >&3
    ;;
esac

# End of script
. $dfc_project_main_folder/Scripts/Dependencies/dfc-script-footer.sh
