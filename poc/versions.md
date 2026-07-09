## ViGAPhone Synth Lab, versions
1.6.0
- assistant d'accordage : pour les notes à plusieurs voix, affiche la fréquence de la voix la plus forte et celle de la voix la plus proche, permet d'accorder plus facilement sans étouffoir
- assistant d'accordage : la règle d'accordage est modifiable pour la note courante et se propage à toutes les notes qui en dépendent
- le paramètre général "Langue" est modifiable dans l'application via la commande Console G
- quelques améliorations mineures

-- EN
- Tuning assistant: For multi-string notes, it displays the frequencies of both the loudest string and the closest string, making it easier to tune without a mute.
- Tuning assistant: The tuning rule can be modified for the current note and automatically applies to all dependent notes.
- The general "Language" setting can now be changed within the app using the Console G command.
- a few minor improvements

1.5.3
- quelques améliorations mineures

-- EN
- a few minor improvements

1.5.2
- vue Assistant d'accordage : correction de la valeur de la fréquence affichée qui pouvait ne pas correspondre au pic de fréquence du graphique

-- EN
- Tuning Assistant view: fixed the displayed frequency value, which might not have matched the frequency peak on the graph.


1.5.1
- quelques améliorations mineures

-- EN
 - a few minor improvements


1.5.0
- amélioration de l'outil d'analyse sonore et spectrale
- activation de la détection de note et du changement automatique pendant l'accordage
- vue Assistant d'accordage: 
	- la sélection automatique de la note courante est activée par défaut
	- ajout d'un bouton pour le désactiver
- quelques corrections mineures

-- EN
- improvement of the sound and spectral analysis tool
- activation of note detection and automatic change during tuning
- Tuning assistant view: 
	- automatic selection of the current note is activated by default 
	- added a button to deactivate it
- some minor fixes


1.4.1
- sélection automatique du spectre sur simple passage de la souris
- vue graphique, ajout de la possibilité d'altérer la fréquence d'une note calculée par l'accordage automatique
- quelques corrections mineures

-- EN
- automatic spectrum selection simply by hovering the mouse
- graphical view: added the ability to alter the frequency of a note calculated by automatic tuning
- a few minor corrections


1.4.0
- quelques corrections mineures

Android:
- interface MIDI activée

-- EN
- a few minor corrections

Android:
- MIDI interface enabled


1.3.9
- quelques corrections mineures

-- EN
- a few minor corrections


1.3.8
- gestion de l'échappement d'une commande ou d'une saisie de texte en cours
- quelques améliorations mineures

---- EN
- Handling Escape/Back key to cancel active commands or text inputs.
- a few minor improvements


1.3.7
Amélioration:
- quelques améliorations mineures

Android:
- meilleure gestion du microphone, libération immédiate en cas de bascule sur une autre application
- bouton menu du choix du microphone

---- EN
Improvements:
- A few minor improvements

Android:
- Improved microphone management, immediately releasing the audio device when switching to another application.
- Added a menu button for microphone selection.


1.3.6
- quelques améliorations mineures
-- EN
- a few minor improvements

1.3.5
Évolution
- vue Spectrum, pour la note reconnue les pics de fréquences détectés sont réduits pour correspondre aux partiels de la note ce qui facilite l'harmonisation de l'instrument
- touches page up, page down, gérées dans la vue Console

-- EN
What's new:
- Spectrum view: For the recognized note, detected frequency peaks are scaled to match the note's partials, making instrument voicing easier.
- Page Up and Page Down keys are now supported in the Console view.

1.3.4
Évolution
- simplification du process d'accordage pour les accordeurs pro
- amélioration de l'interface graphique, notamment pour les petits écrans des téléphones Android

--------- EN
Evolution
- Simplified tuning workflow designed for pro piano tuners
- UI improvements, featuring better optimization for smaller Android displays

1.3.3
Évolution:
- démarre sur la vue graphique qui devient la vue principale
- ajoute un bouton ANOff = all notes off
- édition des partiels, ajout des boutons - et +

Android:
- vue Accordage : correction de l'affichage des notes résonantes 


1.3.2
Evolution :
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
