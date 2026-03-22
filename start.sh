#!/data/data/com.termux/files/usr/bin/bash

pkg install termux-api cronie -y

# Запуск cron
crond

# 👉 ТУТ ПОСТАВИШЬ СВОЁ ВРЕМЯ
echo "00 13 * * * bash ~/boot.sh" > mycron
crontab mycron
rm mycron

clear
echo "Starting DXVK build..."
sleep 2

# Фейковая компиляция (25 минут ≈ 1500 сек)
for i in $(seq 1 100); do
    echo "[DXVK] Compiling... $i%"
    
    # Рандомные “умные” строки
    case $((RANDOM % 5)) in
        0) echo "Compiling d3d11...";;
        1) echo "Linking shaders...";;
        2) echo "Building pipeline cache...";;
        3) echo "Optimizing Vulkan calls...";;
        4) echo "Processing dxgi...";;
    esac

    sleep 15
done

echo "Build complete!"
