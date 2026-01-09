#!/bin/sh
if [ "$1" = "uninstall" ]; then
    echo "Uninstalling ViGAPhone..."
    killall ViGAPhone 2>/dev/null
#    rm -f ~/.local/share/icons/hicolor/256x256/apps/vigaphone.png
    echo "Type 'rm -rf ~/ViGAWorld/ViGAPhone/' to remove all your data and work with this app"
    xdg-desktop-icon uninstall ViGAPhone.desktop
    xdg-desktop-menu uninstall ViGAPhone.desktop
	xdg-icon-resource uninstall --mode user --novendor --context apps --size 256 vigaphone
	xdg-icon-resource uninstall --mode user --novendor --context mimetypes --size 256 application-x-vigaphone-tsv
    rm ~/.local/share/mime/packages/x-vigaphone-tsv.xml
	#update-desktop-database ~/.local/share/applications/
	update-mime-database ~/.local/share/mime
	echo "Fini / ended"
	sleep 99
    exit 0
fi

echo "Installing ViGAPhone..."
#echo "Type '$0 uninstall' to remove the app"
mkdir -p ~/.local/share/mime/packages/
cp -pf x-vigaphone-tsv.xml ~/.local/share/mime/packages/
vgdt=/tmp/ViGAPhone.desktop
cp -pf ViGAPhone.desktop $vgdt
echo "Path=${HOME}/ViGAWorld/ViGAPhone/">>$vgdt
echo "Exec=${HOME}/ViGAWorld/ViGAPhone/ViGAPhone %f">>$vgdt
#Exec=runViGAPhoneOnLinux.sh %f

mkdir -p ~/ViGAWorld/ViGAPhone/
cp -rpf ../* ~/ViGAWorld/ViGAPhone/
xdg-desktop-icon install --novendor $vgdt
xdg-desktop-menu install --novendor $vgdt
xdg-icon-resource install --mode user --novendor --context apps --size 256 vigaphone256.png vigaphone
xdg-icon-resource install --mode user --novendor --context mimetypes --size 256 vigaphone256.png application-x-vigaphone-tsv 
rm $vgdt
# pas forcément utile
#update-desktop-database ~/.local/share/applications/
update-mime-database ~/.local/share/mime

# Vérifie si l'utilisateur est dans le groupe realtime
# grep -r "@audio\|@realtime\|@rtkit\|@jackuser" /etc/security/limits.d/ /etc/security/limits.conf
# cherche le groupe permettant le temps réel
rtg=$(grep -rE "^@.*rtprio" /etc/security/limits.conf /etc/security/limits.d/ 2>/dev/null | awk -F'@' '{print $2}' | awk '{print $1}' | sort -u)
ug=`groups`
echo Realtime groups: $rtg
echo User groups: $ug

# boucle sur chaque groupe trouvé pour vérifier si l'utilisateur en possède au moins un
found=false
for group in $rtg; do
    if echo $ug | grep -qw "$group"; then
        found=true
        break
    fi
done

# Si aucun groupe n'est trouvé dans l'identité de l'utilisateur
if [ "$found" = false ]; then
    # On prend le premier groupe de la liste comme suggestion
    first_group=$(echo $rtg | awk '{print $1}')
    
    if [ -z "$first_group" ]; then
        echo "❌ Aucun groupe temps réel n'est configuré sur ce système."
    else
        echo "⚠️  L'utilisateur $USER n'est pas dans un groupe de priorité temps réel"
        echo "👉 Pour l'ajouter, exécutez la commande suivante :"
        echo "   sudo usermod -aG $first_group $USER"
        echo "   (puis déconnectez/reconnectez votre session pour que ce soit pris en compte)"
    fi
else
    echo "✅ L'utilisateur $USER a les droits temps réel. / User has realtime rights"
fi

# Test de la présence de JACK2 ou PipeWire-JACK
# On teste le chemin standard ET le chemin spécifique à Pipewire sur Ubuntu
if ldconfig -p | grep -q "libjack.so.0" || [ -f "/usr/lib/x86_64-linux-gnu/pipewire-0.3/jack/libjack.so.0" ]; then
    echo "✅ JACK est installé (libjack détectée). / JACK is present"
else
    echo "❌ JACK n'est pas détecté. Installer 'jack2' ou 'pipewire-jack'. / Install 'jack2' or 'pipewire-jack'"
fi

echo "Fini / Ended"
sleep 999

