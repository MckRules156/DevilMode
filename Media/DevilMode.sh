#!/bin/bash

##################################################################
#$cript by: MckRules156
##https://github.com/MckRules156
##################################################################

# 🇬🇧 ENGLISH:

# This Termux script simulates that your phone is possessed.

# Once the script is executed, a series of paranormal 
# events will begin to occur.

# 0. Your device's volume will be set to the maximum.

# 1. A demonic voice will come from the phone, warning that 
#    your device has just been possessed. Then, a devilish 
#    laugh will be heard, accompanied by a satanic melody.

# 2. Your wallpaper will change to a more sinister one.

# 3. Your phone will start vibrating infinitely.

# 4. The flashlight will start turning on and off by itself.

# 5. Floating messages will begin to appear on your phone.

# 6. You will start receiving notifications from the devil.

# 7. Creepy messages will be displayed in the Terminal.

# 8. A demonic server will be created and opened in the browser.

# When you press Ctrl + C, everything will return to normal 
# within a few seconds.

# If you want your wallpaper to return to the one you had before, 
# add it to the Media folder with the name: oldwallpaper.jpg 
# for the main wallpaper and oldwallpaperlock.jpg for the 
# lock screen wallpaper.


##################################################################


Mensajes=(
  "• 👹 I can feel the heat of your fear, I savor it."
  "• 👹 You are in my hands, there is no escape."
  "• 👹 Your screams drown in the darkness."
  "• 👹 Death is watching you, every step brings it closer."
  "• 👹 The air thickens, the end is imminent."
  "• 👹 The clock stops, time dissolves."
  "• 👹 The darkness consumes you, every breath kills you."
  "• 👹 Don't be afraid... your suffering is my pleasure."
  "• 👹 Your soul is already mine, you are just an empty body."
  "• 👹 I can hear your heartbeat, growing weaker and weaker."
  "• 👹 The end is no longer a choice, it is inevitable."
  "• 👹 The room is filled with your despair."
  "• 👹 Your eyes search for me, but you can no longer see."
  "• 👹 Every step you take leads you to the abyss."
  "• 👹 There is no light, only the eternal void devouring you."
  "• 👹 I'm here, right behind you, you can't escape."
  "• 👹 I watch you from the darkness, your fears feed me."
  "• 👹 There is no refuge... your soul already belongs to me."
  "• 👹 Pain becomes your only companion."
  "• 👹 I can feel you trembling, it's my time to hunt."
  "• 👹 Every whisper in the wind is your sentence."
  "• 👹 You are trapped in my web, there is no way out."
  "• 👹 I lurk in every corner, you cannot run."
  "• 👹 The ground creaks beneath your feet, every step is a farewell."
  "• 👹 Can you feel the cold creeping through your body?"
  "• 👹 The clock moves forward... and with it, your last breath."
  "• 👹 Your nightmares become reality, soon you will be one of them."
  "• 👹 The echoes of your screams fade, no one will save you."
  "• 👹 The shadows stretch, dragging you towards the end."
  "• 👹 Every time you look back, you sink deeper."
  "• 👹 The ground burns beneath your feet, yet you keep running."
  "• 👹 No one will come for you, silence is your only comfort."
  "• 👹 The fog thickens, obscuring your path."
  "• 👹 The cold is nothing compared to what awaits you."
  "• 👹 Fear takes hold of you, but it’s already too late."
  "• 👹 Darkness is not just the absence of light, it is terror itself."
  "• 👹 There is no escape, only a path leading to my domain."
  "• 👹 Time dissolves, but your suffering is eternal."
  "• 👹 The air turns dense, impossible to breathe. You are trapped."
  "• 👹 Every corner is a trap, there is no exit."
  "• 👹 Evil spreads, surrounding you, there is no refuge."
  "• 👹 Your soul's last breath will be the air I breathe."
  "• 👹 Your eyes turn empty, hope is gone."
  "• 👹 Every whisper is a promise of pain."
  "• 👹 No matter how many times you try, you will never leave."
  "• 👹 Agony is all you have left."
  "• 👹 The walls tremble, and soon, so will you."
  "• 👹 You can’t run anymore, my hands are already on you."
  "• 👹 You stand at the edge of the abyss, and the abyss swallows you."
  "• 👹 You are in my claws, and I will not let go."
  "• 👹 I watch you with eyes that do not need to see, I can feel you."
  "• 👹 The end is near, but the suffering will never end."
  "• 👹 The worst is yet to come, and it has no name."
  "• 👹 Only the echo of your screams remains, no one will hear you."
  "• 👹 Soon you will forget what light is. Only pain will remain."
)


Banner() {
clear
echo
echo -e "\e[31m$(cat Media/banner.txt)\e[0m"
echo
}


Timer(){
echo
echo -e "\e[31m[×] ACTIVATING DEVIL MODE ⌛ \e[0m"
echo
sleep 5
}


Configuraciones(){

ejecutar_comando() {
    ($1 > /dev/null 2>&1) &
    pid=$!  
    wait $pid  
    if [ $? -eq 0 ]; then
        echo -e "\033[0;32mCommand executed successfully\033[0m"
    else
        echo -e "\033[0;31mErrors encountered\033[0m"
        exit 1
    fi
}

echo
echo "• Activating termux-wake-lock ..."
ejecutar_comando "termux-wake-lock"

echo
echo "• Increasing music volume ..."
ejecutar_comando "termux-volume music 15"

echo
echo "• Increasing notification volume"
ejecutar_comando "termux-volume notification 7"

echo
echo "• Playing demonic music ..."
ejecutar_comando "termux-media-player play Media/music.mp3"

echo
echo "• Changing main wallpaper ..."
ejecutar_comando "termux-wallpaper -f Media/hellwallpaper.png"

echo
echo "• Changing lock screen wallpaper ..."
ejecutar_comando "termux-wallpaper -l -f Media/hellwallpaperlock.jpg"

echo
echo "• Starting the devil's server ..."
cd DemonServer
php -S localhost:8080 > /dev/null 2>&1 &

if ps aux | grep "[p]hp -S localhost:8080" > /dev/null; then
  echo -e "\033[0;32mCommand executed successfully\033[0m"
else
  echo -e "\033[0;31mErrors encountered\033[0m"
  exit 1
fi

cd ..
sleep 2.5
Banner
echo
echo -e "\e[31m[×] DEVIL MODE ACTIVATED (Ctrl+C to deactivate)\e[0m"
echo
sleep 0.5
xdg-open http://localhost:8080
}


ModoDiablo() {
termux-vibrate -f -d 10000

echo -e "\e[1;97m${Mensajes[$RANDOM % ${#Mensajes[@]}]}\e[0m"

termux-torch on
termux-toast -g middle -b red -c white "🔥Your phone is possessed by the devil🔥"
termux-torch off

echo -e "\e[1;97m${Mensajes[$RANDOM % ${#Mensajes[@]}]}\e[0m"

termux-torch on
termux-notification -t "I AM THE DEVIL 👹" -c "This phone has been owned 💀‼️"  --image-path $(pwd)/Media/demon.jpg
termux-torch off

echo -e "\e[1;97m${Mensajes[$RANDOM % ${#Mensajes[@]}]}\e[0m"

termux-vibrate -f -d 10000

echo -e "\e[1;97m${Mensajes[$RANDOM % ${#Mensajes[@]}]}\e[0m"

termux-torch on
termux-toast -g top  -b red -c white "🔥Your phone is possessed by the devil🔥"
termux-torch off

echo -e "\e[1;97m${Mensajes[$RANDOM % ${#Mensajes[@]}]}\e[0m"

termux-torch on
termux-notification -t "I AM THE DEVIL 👹" -c "This phone has been owned 💀‼️"  --image-path $(pwd)/Media/demon.jpg
termux-torch off

echo -e "\e[1;97m${Mensajes[$RANDOM % ${#Mensajes[@]}]}\e[0m"

termux-vibrate -f -d 10000

echo -e "\e[1;97m${Mensajes[$RANDOM % ${#Mensajes[@]}]}\e[0m"

termux-torch on
termux-toast -g bottom  -b red -c white "🔥Your phone is possessed by the devil🔥"
termux-torch off

echo -e "\e[1;97m${Mensajes[$RANDOM % ${#Mensajes[@]}]}\e[0m"

termux-torch on
termux-notification -t "I AM THE DEVIL 👹" -c "This phone has been owned 💀‼️"  --image-path $(pwd)/Media/demon.jpg
termux-torch off
}

Bucle() {
while true; do
        ModoDiablo
done
}



Salir() {

eejecutar_comando() {
    ($1 > /dev/null 2>&1) &  
    pid=$!  
    wait $pid  
    if [ $? -eq 0 ]; then
        echo -e "\033[0;32mCommand executed successfully\033[0m"
    else
        echo -e "\033[0;31mErrors encountered\033[0m"
    fi
}

    Banner
    echo
    echo -e "\e[31m[×] DEACTIVATING DEVIL MODE ⌛  \e[0m"
    echo

    echo "• The phone will stop vibrating soon."
    echo

    echo "• Turning off the flashlight ..."
    eejecutar_comando "termux-torch off"

    echo
    echo "• Stopping music ..."
    eejecutar_comando "termux-media-player stop"

    echo
    echo "• Restoring the main wallpaper ..."
    eejecutar_comando "termux-wallpaper -f Media/oldwallpaper.jpg"

    echo
    echo "• Restoring lock screen wallpaper ..."
    eejecutar_comando "termux-wallpaper -l -f Media/oldwallpaperlock.jpg"

echo
echo "• Stopping the devil's server ..."
kill $(pgrep -f "php -S localhost:8080") 2>/dev/null
pgrep -f "php -S localhost:8080" > /dev/null

if [ $? -eq 0 ]; then
    echo -e "\033[0;31mErrors encountered\033[0m"
else
    echo -e "\033[0;32mCommand executed successfully\033[0m"
fi

    echo
    echo "• Unlocking wake-lock..."
    eejecutar_comando "termux-wake-unlock"

    sleep 2.5
    Banner
    echo
    echo -e "\e[31m[×] DEVIL MODE DEACTIVATED \e[0m"
    echo
    echo "• Leaving already? What a pity !! I wanted to have more fun ..."
    echo "• Github: https://github.com/MckRules156 "
    echo
    echo -e "\e[31m$(cat Media/att.txt)\e[0m"
    echo
    echo
    exit 0
}

trap 'Salir' SIGINT SIGTSTP

Banner
Timer
Configuraciones
Bucle

