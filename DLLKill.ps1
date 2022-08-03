Write-Output("Startup Waiting 2 minutes");
Write-Output((get-date).ToString());
       
Start-Sleep(60*1)

while($true) {

Start-Sleep(60)

    $1 = Get-Process -Name "dllhost" -IncludeUserName | select * | ? {$_.UserName -eq "NT SERVICE\MSSQLSERVER" -OR $_.UserName -eq "NT SERVICE\SQLSERVERAGENT"} | Select-Object -first 1 
    $TSPAN = 0
    $TSPAN = (New-TimeSpan -Start $1.StartTime -End (GET-DATE) -ErrorAction SilentlyContinue).TotalMinutes 



    $TSPAN

     if($TSPAN -gt 31){

                Write-Output($TSPAN.TotalMinutes);
                Write-Output("Going For a kill");
                
                Send-MailMessage –From noreply@tld.com –To user@tld.com –Subject “DLLKill” –Body "body $(Get-date)" -SmtpServer SMTPSERVER
                
                Stop-Process $1.id -Force

            }else{
                Write-Output("Task Is Not old");
            }
        
        $TSPAN.TotalMinutes = 0

            Write-Output("Waiting 60 seconds");
            Write-Output((get-date).ToString());
       
}
