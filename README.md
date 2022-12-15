# Bitlocker

# Bit-locker Enable and save the Password to C-Drive

# This method will be useful if you are not maintaining a centralized server for Bit-locker like GPO or MBAM. In this method we will be encrypting the C drive with Bit-locker and will save the recovery key in the C drive or in user OneDrive with a particular name.

**To achieve the above requirement we will be creating a batch file and store it in the start up folder, because when a machine starts up this script can be triggered.** 

Save the above code as bitlocker.bat under the location “C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Start-up”

This code is designed to delete on its own once the Bit-locker is enabled.
