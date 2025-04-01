$msolcred = get-credential

Send-MailMessage –From Testsendingemailaddress –To Testretrievingemailaddress –Subject “Test Email” –Body “Test SMTP Relay Service” -SmtpServer smtp.office365.com -Credential $msolcred -UseSsl -Port 587
