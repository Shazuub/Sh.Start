:menu
@echo off & color 0f & cls & title Sh.Start 2.0 : https://discord.gg/mBvPTpmeaC
color A
echo	Programme de lancement de serveurs FiveM
echo.
echo.
echo.
echo	[1] Lancer Serveur
echo	[2] Vider le cache du serveur
echo	[3] Creer une Backup
echo	[4] Telecharger la base Template (Par Shazuub#7284)
echo	[5] Afficher les options
echo.
echo.
echo.
set /p answer="Quelle option choisissez-vous ? > "
if /i {%ANSWER%}=={1} (goto :start)
if /i {%ANSWER%}=={2} (goto :cache)
if /i {%ANSWER%}=={4} (goto :backup)
goto :menu
exit

:start
@cls
color A
echo	Programme de lancement de serveurs FiveM
echo.
echo.
echo.
echo Lancement de votre serveur FiveM en cours...
ping localhost -n 5 >nul
echo.
echo.
echo.
cd /d Base
FXServer.exe +exec server.cfg
ping localhost -n 8 >nul
echo.
echo.
echo.
echo Lancement du serveur reussi !
echo.
echo.
echo.
echo Pour fermer cette fenetre merci d'appuyer sur une touche.
pause
exit

:backup
@cls
color A
echo	Programme de lancement de serveurs FiveM
echo.
echo.
echo.
echo Creation d'une backup en cours...
ping localhost -n 8 >nul
RMDIR /s /q "Backup"
md Backup
Xcopy /E Base Backup
cd Base
echo.
echo.
echo.
echo Backup cree avec succes !
ping localhost -n 5 >nul
goto :menu

:cache
@cls
color A
echo	Programme de lancement de serveurs FiveM
echo.
echo.
echo.
echo Suppression du cache en cours...
RMDIR /s /q "Base/cache"
ping localhost -n 5 >nul
echo.
echo.
echo.
echo Dossier cache supprime !
ping localhost -n 5 >nul
echo.
echo.
echo.
goto :menu
exit
