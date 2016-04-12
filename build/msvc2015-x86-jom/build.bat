rem нужно обязательно удалить папку minGW из PATH
SET PATH=C:\Windows\System32;c:\Program Files (x86)\CMake\bin\;d:\temp\jom\

call "d:\temp\vs2015\VC\vcvarsall.bat" x86
mkdir build
cd build
cmake -G "NMake Makefiles" ../../../

jom
cd ..