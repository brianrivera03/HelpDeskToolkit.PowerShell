#  Help Desk Support Toolkit (PowerShell)

##  Summary

This project is a PowerShell-based toolkit designed to automate and simplify common help desk tasks in a Windows environment. It simulates real-world scenarios entry-level IT professionals often face and demonstrates the ability to identify, resolve, and document common user issues.

**Project Type:** Technical implementation & walkthrough  
**Languages Used:** PowerShell  
**Environments:** Windows 10 (tested), compatible with Windows 11  
**Tools/Services:** PowerShell, Event Viewer, Windows command-line utilities

---

##  Included Scripts

| Script Name | Description |
|-------------|-------------|
| `Clean-Temp.ps1` | Deletes temporary files to improve system performance |
| `System-Infor.ps1` | Gathers key system information into a log file |
| `Network-Test.ps1` | Performs basic network tests (IP, DNS, ping) |
| `Login-History.ps1` | Extracts successful login events from Event Viewer |
| `RunToolKit.bat` | Runs all scripts and created the SupportLogs folder on the desktop |
Each script is modular, documented, and designed for standalone use or combined into a larger help desk workflow.

---

##  Media

### Clean Temp Files
![Clean Temp Screenshot](media/clean-temp.png)

### System Info Report Output
![System Info Screenshot](media/system-info.png)

### Network Test
![Network Test Screenshot](media/network-test.png)

---

##  Demonstration

Each script includes:
- Step-by-step instructions in the header comments
- Sample output files in the `/output` folder
- Screenshots of the script being executed
- Descriptions of when and why you’d use each script as a technician

> Example Use Case: A user reports their PC is slow → run `Clean-TempFiles.ps1` and `System-InfoReport.ps1` → document findings.

---

## How to Use

1. Clone this repo or download ZIP  
2. Open PowerShell as Administrator  
3. Run a script with `.\scriptname.ps1`  
4. Follow any on-screen prompts or check output folders

>  Some scripts require administrator rights for full functionality.

---

##  Why This Project

This toolkit shows my ability to:
- Identify common Windows system issues  
- Write and use PowerShell to automate repetitive tasks  
- Document and communicate technical steps clearly  
- Think like a real support technician

---
