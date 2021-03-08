$PSVersionTable
Test-Path D:\temp\test\test.txt
Get-Date
New-Item -Path 'C:\Users\brent\cmdlet\tmp' -ItemType Directory
New-Item C:\Users\brent\cmdlet\tmp\test.txt
Set-Content 'C:\Users\brent\cmdlet\tmp\test.txt' 'Welcome to TutorialsPoint'
# 'nuclearlaunchcodes' | ConvertTo-SecureString  -AsPlainText -Force
# https://mcpmag.com/articles/2017/07/20/save-and-read-sensitive-data-with-powershell.aspx#:~:text=PowerShell%20doesn't%20have%20a,of%20the%20ConvertTo%2DSecureString%20cmdlet.
<# 
Encrypt string and write to file
#>
'nuclearlaunchcodes' |  ConvertTo-SecureString -AsPlainText -Force | ConvertFrom-SecureString |  Set-Content -Path 'C:\Users\brent\cmdlet\tmp\secretstuff.txt'
Get-Content 'C:\Users\brent\cmdlet\tmp\test.txt'
Get-Content 'C:\Users\brent\cmdlet\tmp\test.txt' |  ConvertTo-SecureString -AsPlainText -Force | ConvertFrom-SecureString |  Set-Content -Path 'C:\Users\brent\cmdlet\tmp\secretstuff.txt'
$secretStuff = Get-Content  -Path 'C:\Users\brent\cmdlet\tmp\secretstuff.txt' | ConvertTo-SecureString
[Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR((($secretStuff))))
