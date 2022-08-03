# DLLKill
Kill DLL holding MS-SQL ODBC SYSBASE Connection Open 

UNTICK "Allow inprocess" in Providers\MSDASQL Configuration Options this will cause SQL to SPIN out a DLLHOST to manage the connection 

This DLLHOST process can be killed removing any hung connections 

This is instead of having to Restart SQL itself 

