@echo off

echo Packing in normal mode

   REM Copyright 2010 Jimmy Cao

   REM Licensed under the Apache License, Version 2.0 (the "License");
   REM you may not use this file except in compliance with the License.
   REM You may obtain a copy of the License at

       REM http://www.apache.org/licenses/LICENSE-2.0

   REM Unless required by applicable law or agreed to in writing, software
   REM distributed under the License is distributed on an "AS IS" BASIS,
   REM WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   REM See the License for the specific language governing permissions and
   REM limitations under the License.

IF NOT EXIST packed MKDIR packed
cd packed
dmd -J.. -release -version=Normal -O -inline ..\launch.d
del *.obj *.map
upx launch.exe
cd ..