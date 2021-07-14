@echo off

set a=1

setlocal EnableDelayedExpansion

for %%n in (*.webp) do (

set /A a+=1

ren "%%n" "img1!a!.webp"

)