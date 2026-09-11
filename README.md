# ExtractHash
Extract the hash of the PC to a `.CSV` file so it can be uploaded to Microsoft Intune.

## How to run the command
**IMPORTANT NOTE**: This is usually done when you first unbox a PC - meaning after powering on the PC, it displays the **Out-of-Box-Experience (OOBE) screen**. The script will extract the hash to a file called `HWHash.csv` in the `C:\temp\` directory that it just created.

1. Make sure you are connected to outside internet.
2. Save `ExtractHash.ps1` file to Downloads folder, which for the OOBE screen, should be `C:\Users\defaultuser0\Downloads\`.
3. Open Command Prompt: SHIFT+[Fn]+F10.
4. Inside the command prompt enter the following:

```
powershell -ExecutionPolicy Bypass -File "C:\Users\defaultuser0\Downloads\ExtractHash.ps1"
```

**PLEASE REMEMBER**: It might display a prompt asking if you want to install or get packages from the NUGet provider. Enter 'y' for yes.

5. Verify hash was extracted to file called `HWHash.csv` in `C:\temp\` directory.
6. You can then upload the `HWHash.csv` to Microsoft Intune - https://intune.microsoft.com/. 
