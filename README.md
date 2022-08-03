# DLLKill
Kill DLL holding MS-SQL ODBC SYSBASE Connection Open 

UNTICK "Allow inprocess" in Providers\MSDASQL Configuration Options this will cause SQL to SPIN out a DLLHOST to manage the connection 

This DLLHOST process can be killed removing any hung connections 

This is instead of having to Restart SQL itself 

Run the Powershell script/onstart/ in the background etc. will monitior the DLL HOST and then Kill IT if it has been running for to long i.e. it got hung and didnt close itself gracefully 
