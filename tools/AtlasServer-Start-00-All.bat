
SET QueryPort=57555
SET Port=5755
SET SeamlessIP=203.219.181.247
SET GridX=0
SET GridY=0
SET ServerAdminPassword=TEST


start cmd /k Call C:\atlas-dedicated-server\tools\AtlasServer-Start.bat %QueryPort% %PORT% %SeamlessIP% %GridX% %GridY% %ServerAdminPassword%
#timeout /t 1
#start cmd /k Call C:\atlas-dedicated-server\tools\AtlasServer-Start.bat 57556 5756 %SeamlessIP% 0 1 %ServerAdminPassword%
#timeout /t 1
#start cmd /k Call C:\atlas-dedicated-server\tools\AtlasServer-Start.bat 57557 5757 %SeamlessIP% 1 0 %ServerAdminPassword%
#timeout /t 1
#start cmd /k Call C:\atlas-dedicated-server\tools\AtlasServer-Start.bat 57558 5758 %SeamlessIP% 1 1 %ServerAdminPassword%
exit