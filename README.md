# Office 365 SMTP Relay Test Script

This PowerShell script allows you to quickly test email sending capabilities using Office 365's SMTP relay server.

## Purpose

- Verify SMTP connectivity to Office 365.
- Quickly test email delivery functionality.
- Useful for troubleshooting email issues or confirming configuration changes.

## Prerequisites

- Windows PowerShell installed (version 5.1 or higher recommended).
- SMTP authentication enabled on the mailbox used for sending.
- Network access to `smtp.office365.com` on port `587`.

## Usage

1. Clone or download the repository.

```bash
git clone <repository_url>
```

2. Open PowerShell, navigate to the script's directory, and execute:

```powershell
.\smtp-test.ps1
```

3. Enter your Office 365 credentials when prompted.

## Script Example

```powershell
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
```

## Notes

- Replace placeholder email addresses (`sender@example.com`, `recipient@example.com`) with actual addresses.
- Use caution with credentials; do not hard-code or expose sensitive information in scripts.

