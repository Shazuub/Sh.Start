:menu
@echo off & color 0f & cls & title Sh.Start 1.3 : https://discord.gg/rPNRUMRZrU
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
if /i {%ANSWER%}=={3} (goto :template)
if /i {%ANSWER%}=={4} (goto :backup)
if /i {%ANSWER%}=={5} (goto :option)
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

:template
@cls
color A
echo	Programme de lancement de serveurs FiveM
echo.
echo.
echo.
echo Telechargement en cours...
ping localhost -n 8 >nul
powershell -Command "Invoke-WebRequest https://saphior.fr/download/basetemplate.rar -OutFile BaseTemplate.rar"
echo.
echo.
echo.
echo Telechargement cree avec succes !
ping localhost -n 5 >nul
exit

:option
@cls
color A
echo	Programme de lancement de serveurs FiveM
echo.
echo.
echo.
echo	[0] Console Rouge
echo	[1] Console Vert
echo	[2] Console Bleu
echo	[3] Console Blanc
echo	[4] Console Cyan
echo	[5] Console Gris
echo	[6] Console Jaune
echo	[7] Console Violet
echo.
echo	[8] Verifier la mise a Jours
echo.
echo	[9] Retour au Menu
echo.
echo.
echo.
set /p answer="Quelle option choisissez-vous ? > "
if /i {%ANSWER%}=={0} (goto :rouge)
if /i {%ANSWER%}=={1} (goto :vert)
if /i {%ANSWER%}=={2} (goto :bleu)
if /i {%ANSWER%}=={3} (goto :blanc)
if /i {%ANSWER%}=={4} (goto :cyan)
if /i {%ANSWER%}=={5} (goto :gris)
if /i {%ANSWER%}=={6} (goto :jaune)
if /i {%ANSWER%}=={7} (goto :violet)
if /i {%ANSWER%}=={8} (goto :update)
if /i {%ANSWER%}=={9} (goto :menu)
exit

:rouge
@cls
color A
echo	Programme de lancement de serveurs FiveM
echo.
echo.
echo.
echo Telechargement en cours...
ping localhost -n 8 >nul
powershell -Command "Invoke-WebRequest https://saphior.fr/download/rouge.bat -OutFile Start.bat"
exit

:vert
@cls
color A
echo	Programme de lancement de serveurs FiveM
echo.
echo.
echo.
echo Telechargement en cours...
ping localhost -n 8 >nul
powershell -Command "Invoke-WebRequest https://saphior.fr/download/vert.bat -OutFile Start.bat"
exit

:bleu
@cls
color A
echo	Programme de lancement de serveurs FiveM
echo.
echo.
echo.
echo Telechargement en cours...
ping localhost -n 8 >nul
powershell -Command "Invoke-WebRequest https://saphior.fr/download/bleu.bat -OutFile Start.bat"
exit

:blanc
@cls
color A
echo	Programme de lancement de serveurs FiveM
echo.
echo.
echo.
echo Telechargement en cours...
ping localhost -n 8 >nul
powershell -Command "Invoke-WebRequest https://saphior.fr/download/blanc.bat -OutFile Start.bat"
exit

:jaune
@cls
color A
echo	Programme de lancement de serveurs FiveM
echo.
echo.
echo.
echo Telechargement en cours...
ping localhost -n 8 >nul
powershell -Command "Invoke-WebRequest https://saphior.fr/download/jaune.bat -OutFile Start.bat"
exit

:violet
@cls
color A
echo	Programme de lancement de serveurs FiveM
echo.
echo.
echo.
echo Telechargement en cours...
ping localhost -n 8 >nul
powershell -Command "Invoke-WebRequest https://saphior.fr/download/violet.bat -OutFile Start.bat"
exit

:gris
@cls
color A
echo	Programme de lancement de serveurs FiveM
echo.
echo.
echo.
echo Telechargement en cours...
ping localhost -n 8 >nul
powershell -Command "Invoke-WebRequest https://saphior.fr/download/gris.bat -OutFile Start.bat"
exit

:cyan
@cls
color A
echo	Programme de lancement de serveurs FiveM
echo.
echo.
echo.
echo Telechargement en cours...
ping localhost -n 8 >nul
powershell -Command "Invoke-WebRequest https://saphior.fr/download/cyan.bat -OutFile Start.bat"
exit

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

:update
@cls
color A
echo	Programme de lancement de serveurs FiveM
echo.
echo.
echo.
echo Telechargement en cours...
ping localhost -n 8 >nul
powershell -Command "Invoke-WebRequest https://saphior.fr/download/vert.bat -OutFile Start.bat"
exit