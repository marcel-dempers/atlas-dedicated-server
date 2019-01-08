# Atlas Dedicated Server Quickstart

This repo contains the following folder structure:
* `server`:
    This is an empty folder where all Atlas server files will go
    `placeholder.txt` is a place holder to make sure `/server/` folder is checked in to git.
* `tools`:
    This is where all our tools will be such as
    * Installing server
    * Starting servers
    * Updating servers
    * etc

# Installation

This was tested on Windows Server DataCenter 2016

* Install GIT
* Open PowerShell and navigate to C:\ by typing : `cd c:\`
* Clone this repo @ C:\ : `git clone https://github.com/marcel-dempers/atlas-dedicated-server.git`
* Navigate to the repo: `cd atlas-dedicated-server`
* Double click `steamcmd.exe` under `tools/steamcmd` (This will initialise steam commandline)


## Prerequisites for Windows Server Operating System

* Enable High performance power plan under power settings
* Run `tools\AtlasServer-Redist.bat` to download C++ and DirectX dependancies if on a server operating system.
    * Install each of the installables under Common Redistributable folder under `server\`

## Install Atlas Dedicated Server

* Run `AtlasServer-Update.bat` to install the server. Everything will install under `server\` folder.

## Install your map grid

In my quickstart I have a prebuilt 1x1 for testing purposes I got off the internet. Will build my own soon but was determined to get this up and running :)

Copy the contents of `tools\server-grid-files\*` to `server\ShooterGame\`
Replace the following inside `server\ShooterGame\ServerGrid.json`:

* `WorldAtlasId` : Generate a random number string with same amount of characters
* `WorldFriendlyName` : Set this to whatever you want to call your server
* `servers[].ip` : This is your public IP address
* `WorldAtlasPassword` : set this to your password used to join server

## Firewall Settings

Under Windows Firewall, open following

```
TCP : 57555-57558, 5755-5758, 27000-27003
UDP : 57555-57558, 5755-5758, 27000-27003
Inbound Program rule to allow all for server\ShooterGame\Binaries\Win64\ShooterGameServer.exe
Outbound Program rule to allow all for server\ShooterGame\Binaries\Win64\ShooterGameServer.exe

```
## Start Standalone Redis

Run `tools\AtlasServer-Redis-Start.bat` to start up Redis`

## Start Server

Run `tools\AtlasServer-Start-00-All.bat`
This script is refactored to allow for starting 1x1 and 2x2 and can be modified to start any size grids.
For this quickstart I only have a 1x1 here for testing purposes.

