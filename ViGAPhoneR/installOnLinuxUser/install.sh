#!/bin/sh
if [ "$1" = "uninstall" ]; then
    echo "Uninstalling ViGAPhone..."
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
REQUIRED_GROUP="realtime"
USER_NAME=$(id -un)
if ! id -nG "$USER_NAME" | grep -qw "$REQUIRED_GROUP"; then
    echo "⚠️  L'utilisateur $USER_NAME n'est pas dans le groupe $REQUIRED_GROUP."
    echo "👉 Pour l'ajouter, exécutez la commande suivante :"
    echo "   sudo usermod -aG $REQUIRED_GROUP $USER_NAME"
    echo "   (puis déconnectez/reconnectez votre session pour que ce soit pris en compte)"
fi
echo "Fini / ended"
sleep 99
