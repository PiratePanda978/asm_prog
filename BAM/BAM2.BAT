@echo off
echo *
echo * To play the Bust-A-Move 2(tm): Arcade Edition demo
echo * press any key, otherwise press ESC to quit:
getkey
if errorlevel 1 goto quit
cd bam2demo
bm2
cd ..
:quit

