
SET QueryPort=%1
SET Port=%2
SET SeamlessIP=%3
SET GridX=%4
SET GridY=%5
SET ServerAdminPassword=%6

start /high C:\atlas-dedicated-server\server\ShooterGame\Binaries\Win64\ShooterGameServer.exe Ocean?ServerX=%GridX%?ServerY=%GridY%?AltSaveDirectoryName=X%GridX%_Y%GridY%?ServerAdminPassword=%ServerAdminPassword%?MaxPlayers=50?ReservedPlayerSlots=10?QueryPort=%QueryPort%?Port=%Port%?SeamlessIP=%SeamlessIP% -log -server -NoBattlEye