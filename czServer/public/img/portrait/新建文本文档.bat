@echo off

set a=1

setlocal EnableDelayedExpansion

for %%n in (*.jpeg) do (

set /A a+=1

ren "%%n" "����!a!.jpg"

)