# ExtractHash
Extract PC's hash value and save it to a CSV file

## How to run the command
We are Saving or copying the `ExtractHash.ps1` file to the PC whose Hash you need to extract from.

**IMPORTANT NOTE**: This is usually done when you first unbox a PC - meaning after powering on the PC, it displays the **Out-of-Box-Experience (OOBE) screen**.

1. Make sure you are connected to internet.
2. Save `ExtractHash.ps1` file to Downloads folder, which should be `C:\Users\defaultuser0\Downloads\`. If you **ARE NOT** on the Out-of-Box-Experience (OOBE) screen, then save the `ExtractHash.ps1` file to `C:\Users\<USERNAME>\Downloads\`. Be sure to substitute the `<USERNAME>` with the actual username.
3. Open Command Prompt. If you **ARE NOT** on the Out-of-Box-Experience (OOBE) screen, use `Run as Administrator`.
4. Inside the command prompt enter the following:

Out-of-Box-Experience (OOBE):
```
powershell -ExecutionPolicy Bypass -File "C:\Users\defaultuser0\Downloads\ExtractHash.ps1"
```

**OR** 

**NOT** Out-of-Box-Experience (OOBE) - be sure to substitute the `<USERNAME>` with the actual username:
```
powershell -ExecutionPolicy Bypass -File "C:\Users\<USERNAME>\Downloads\ExtractHash.ps1"
```

**PLEASE REMEMBER**: It might display a prompt asking if you want to install or get packages from the NUGet provider. Enter 'y' for yes.

Afterwards, it will save the hash of the PC to a file called `HWHash.csv` in the `C:\temp\` directory.
You can then upload the hash to Microsoft Intune. 
