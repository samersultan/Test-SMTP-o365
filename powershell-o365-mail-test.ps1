# Prompt for credentials interactively
$msolcred = Get-Credential -Message "Enter your Office365 credentials"

# Send the test email
Send-MailMessage `
    -From "sender@example.com" `
    -To "recipient@example.com" `
    -Subject "SMTP Test Email" `
    -Body "This is a test email via Office 365 SMTP relay" `
    -SmtpServer "smtp.office365.com" `
    -Credential $msolcred `
    -UseSsl `
    -Port 587
