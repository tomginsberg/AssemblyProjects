@echo off
::This file was created automatically by CrossIDE to load a hex file using Quartus_stp.
"C:\intelFPGA_lite\18.1\quartus\bin64\quartus_stp.exe" -t "C:\CrossIDE\Load_Script.tcl" "C:\AssemblyProjects\Lab5\stnum.HEX" | find /v "Warning (113007)"
