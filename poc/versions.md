## ViGAPhone Synth Lab, versions
1.3.2
- quand la vue inharmonicité est active, la vue graphique permet une modification du taux d'inharmonicité à la souris par alignement visuels sur les pics de fréquences, après avoir activé le bouton affichant le taux d'inharmonicité.
- ajout de boutons pour les commandes des vues, évite l'usage du clavier

Android:
- le niveau de version minimum passe de 11 à 10


1.3.1
Evolution :
- ouverture de la campagne de tests sur Android

Corrections:
- bug dans la capture du timbre d'une note

1.3.0
Evolution :
- nouveau moteur graphique qui passe en openGL3
- nouvelles IHM vue graphique et console intégrée, l'appli n'a plus besoin d'un terminal externe pour être lancée et s'exécuter

Interface graphique: 
- contrôlée par la souris ou une surface tactile
- zoom continu sur le spectrogramme
- jeu de commandes graphiques == boutons et menus de commandes 

- nombreuses améliorations et simplifications d'utilisation


1.2.0
Evolution :
- ajout d'une interface plugin vst3 MIDI
- exposition de nombreux paramètres généraux et MIDI dans l'interface vst3 et dans l'application
- accordage automatique après modification du diapason
- exposition du paramètre Instrument Dureté de marteau, s'applique à toutes les notes en temps réel
- révision de l'effet Dureté de marteau

1.1.1
Evolution :
- ajout de l'option "Fréquence d'accord", et "Duo Fréquence d'accord" pour accorder avec la technique de l'équilibrage des battements


1.1.0
Evolution :
- General MIDI 2 : ajout de fonctions prises en charge, et gestions partielle des canaux
- syntaxe règles d'accordage, ajout d'une variante utilisant le rapport de partiel, par exemple N12P4:2
- ajout de la commande @ pour l'accès au manuel en ligne selon la langue de l'utilisateur
- amélioration visuelle du comparateur d'unisson avec indicateur de réussite

Corrections:
linux:
- contournement d'un bug d'affichage du terminal KDE Konsole


1.0.5
Evolution :
linux :
- compilation linux basée sur debian12 libc 2.36 compatible toutes distributions et chromeOS pour les Chromebooks

1.0.4
Corrections:
windows :
- affichage du terminal plus rapide par la gestion d'un tampon

1.0.3
Evolution :
linux :
- installation : Ubuntu/DEBIAN ajout d'un package .deb

Corrections:
- gestion multilingue

1.0.2
Corrections:
linux :
- installation : archlinux ajout d'un package dans AUR

windows :
- si lancé dans le terminal cmd.exe ou PowerShell, se relance si possible dans WindowsTeminal
- inno setup choix de la langue d'installation FR ou EN

1.0.1
Evolution :
- traductions complètes

Corrections:
- efface le mute après une capture
- possible de jouer le son réel d'une note nouvellement capturée

windows:
- passe la fenêtre du terminal en pleine écran car "windows terminal" ne permet pas le redimensionnement

1.0.0
Evolution :
- Le ViGAPhone devient multilingue, choix de langue selon OS ou option SetLocale
- les utilisateurs sont invités à parfaire les traductions existantes ou à en créer de nouvelles

Corrections:
- lancement automatique dans "windows terminal" si installé

0.9.3 corrections:
- sauvegarde incrémentielle du fichier Instrument ajout de l'option d'écrasement ou de nouveau nom de fichier
- fait le silence avant la capture du timbre
linux :
- procédure d'installation
- exécutable cherche la libjack de pipewire-jack cachée sous Ubuntu 25.10 et Debian
- serveur son jack, bascule sur alsa si le serveur jack est installé mais pas lancé
windows:
- procédure d'installation

0.9.2 corrections windows:
- le type de fichier associé au ViGAPhone est limité à .tsv au lieu de .vigaphone.tsv
- gestion des flèches du clavier pour changer de note
- procédure d'installation
0.9.1 correction d'un bug windows lié à l'enregistrement du microphone
0.9.0 first release
