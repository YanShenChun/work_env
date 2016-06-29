@echo off

:Start
echo Preparing the Work Environment
echo.

rem refine below logic.
set path=%_WORK_ROOT%\tools\x86;%path%
set path=%_WORK_ROOT%\tools\%PROCESSOR_ARCHITECTURE%;%path%

for %%i in ( %_WORK_ROOT%\tools\alias.pub) do (
 if exist %%i alias.exe -f %%i
)

echo Initialize the visual studio dev command ...
call "C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\Tools\VsDevCmd.bat"

rem echo Initialize the git config ...
rem call git config --global diff.tool bc4
rem call git config --global difftool.prompt false
rem call git config --global difftool.bc4.cmd "\"%_WORK_ROOT%\tools\x86\bc4.exe\" \"$LOCAL\" \"$REMOTE\""
rem call git config --global core.autocrlf true
rem call git config --global i18n.filesEncoding utf-8
rem call git config --global alias.lg log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %<(20,trunc)%s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
rem call git config --global alias.d 'difftool --dir-diff'
rem call git config --global alias.dc 'difftool --dir-diff --cached'


cd /d %_WORK_ROOT%