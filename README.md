#  Help Desk Support Toolkit (PowerShell)

## Project Overview

This project is a PowerShell-based toolkit designed to help IT support staff automate and streamline common troubleshooting tasks. It includes system diagnostics, network testing, login history retrieval, and temp file cleanup — all combined into a single master script.

This toolkit was created as part of the CourseCareers IT Support Program and is intended to demonstrate practical scripting skills for entry-level help desk roles.

---

##  Features & Scripts

###  `Run-All-Toolkit.ps1`
The main script that:
- Creates a timestamped folder in `C:\SupportLogs`
- Gathers system information
- Runs network diagnostics (IP, ping, DNS)
- Logs recent login history (Event ID 4624)
- Clears temp files from the current user
- Automatically opens the folder when finished

###  `RunToolkit.bat`
A batch file that launches the PowerShell script with proper execution policy and keeps the window open.

---

##  How to Run

### Method 1: From PowerShell ISE
1. Open `Run-All-Toolkit.ps1` in PowerShell ISE
2. Press `F5` to run

### Method 2: From Explorer (Double-click)
1. Use the `RunToolkit.bat` file
2. It will launch the toolkit and show output

---

##  Output Structure

All logs are saved in a folder like:
C:\SupportLogs\2025-06-18_14-00-00\




---

##  Technologies Used

- PowerShell 5.1+
- Batch (.bat) launcher
- Event Viewer API
- Windows environment variables
- `$env:TEMP`, `Get-ComputerInfo`, `Resolve-DnsName`, etc.

---

##  Author

**Brian Rivera**  
CourseCareers IT Support Student  
[GitHub Profile](https://github.com/brianrivera03)

---
## Acknowledgments

This project was developed by me as part of the CourseCareers IT Support program.

Throughout the process, I used OpenAI's ChatGPT as a supplemental resource, similar to how one might use documentation or a study partner. I asked questions when I got stuck, validated my actions, and used the tool to double-check syntax or troubleshoot unexpected behavior.

All scripts, structure, and implementation decisions were written and executed by me.

##  Notes

- Must be run with local admin rights
- Tested on Windows 10 and 11
- You may need to allow script execution:
```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
