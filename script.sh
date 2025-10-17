#!/bin/bash

# Проверяем, подключено ли устройство
echo "Проверка подключенных устройств..."
adb devices | grep -w "device" > /dev/null
if [ $? -ne 0 ]; then
    echo "Устройство не подключено. Проверьте соединение."
    exit 1
fi

echo "Устройство подключено."

# Очищаем данные и кэш приложения VLC
echo "Очищаем кэш и данные приложения VLC..."
adb shell pm clear org.videolan.vlc

echo "Операция завершена."
