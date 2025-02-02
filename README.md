okay so i think i managed to fix *a bit* of the the linux stuff, though i might have broke something else idk...
- added the rawstring flag r to the start of some commands containing backslash that weren't playing nice ( thanks to my awesome partner for figuring this one out <3 )
- made it run the game by calling the steam command directly along with the game id "steam -applaunch 440"
- added support for flatpak steam by running "flatpak run com.valvesoftware.Steam -applaunch 440" if the first attempt fails

- added support for hitsounds detection, this is achieved by manually creating a custom hitsound with invalid data (an empty hitsound.wav file at /tf/custom/test/sound/ui/hitsound.wav), as it gives an error: `02/02/2025 - 03:19:52: Failed to load sound ")ui/hitsound.wav", file probably missing from disk/repository` this disables the ingame hitsound unfortunately, but... you'll know :3


# Team Frotress 2

Controls smart sex toys based on kills, deaths, and uber in Team Fortress 2, using the Intiface Central backbone to connect to hardware

Linux suppport is currently slightly broken pending further testing

Uber tracking requires the use of the OMPHUD-sexy edit

WARNING - Use only in private lobbies / servers with consenting players, and test your strengths before using them. The default values are ad-hoc and not suitable for every person or device

# Features
- Custom vibration strength and time for kills, death, using Uber, and passing milestones of Ubercharge percent
- Multipliers for critical kills, killstreaks, and "Uberstreaks"
- Execute custom TF2 console commands when vibration starts and stops

# Planned features
- Support for further features involving config file scripting, such as weapon & class specific functionality
- Support for assist tracking features (if anyone knows a good way to do this please reach out!)

# Setup

Copy config_default.py to config.py (you will have to create this file in the same directory as config_default.py) and fill out your game executable and console.log paths (console.log will be in tf
folder)

If you want medic functionality, install OMPHUD-sexy on your game, make sure every class config has `$classname` in it somewhere, i.e. medic.cfg has a
line `$medic`, heavyweapons.cfg has a line `$heavyweapons`. 

Note that usernames with non-ascii characters cannot be used at the moment.

# Customising for multiple devices/motors

Edit the run_buzz method in vibration_handler.py to your liking


