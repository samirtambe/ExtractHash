# ExtractHash
Extract PC's hash value and save it to a CSV file

## How to run the command
We assume you are on the Out-of-Box-Experience (OOBE) screen. We are Saving or copying the `ExtractHash.ps1` file to the PC whose Hash you need to extract from.
1. Save or copy the `ExtractHash.ps1` file  to the Downloads folder, for OOBE screen, it should be in `C:\Users\defaultuser0\Downloads\`.
2. Open Command Prompt - if you are not in OOBE screen, then you must **Run as Administrator**.
3. Inside the command prompt enter the following:
```
powershell -ExecutionPolicy Bypass -File "C:\Users\defaultuser0\Downloads\ExtractHash.ps1"
```

Afterwards, it will save the hash of the PC to a file called `HWHash.csv` in the `C:\temp\` directory.
You can then upload the hash to Microsoft Intune. 
