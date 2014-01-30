Post-Restore-Install-Packages.sh credit: Written by Rusty Myers <rzm102@psu.edu>

Step 1:

In the same folder as this readme file (Post-Restore-Scripts) make sure that the 'Post-Restore-Install-Packages.sh' script exists, which was included with the PSU BIC download disk image.

In the configuration file change the 'POST_RESTORE_SCRIPT' key to call the 'Post-Restore-Install-Packages.sh' script, like this:

	POST_RESTORE_SCRIPT=Post-Restore-Install-Packages.sh

... or specify the name of another script that calls the same script. For more information about the config pref settings, read the online documentation here:

<http://clc.its.psu.edu/UnivServices/itadmins/mac/blastimageconfig/configprefsettings>

Step 2:

Ensure that a folder named 'Post-Restore-Packages' exists in the same folder as this readme and the 'Post-Restore-Install-Packages.sh' script.

Step 3:

Place all of your package installer files (*.pkg, *.mpkg) you want to have installed after the master system image is restored when the Post Restore Scripts dialog appears and runs the script.

Step 4:

Launch BIC with the config pref that calls the 'Post-Restore-Install-Packages.sh' script and verify that your package installers get installed correctly.

Step 5:

Done!



Optional:

If you want BIC to stop running and display the warning if there's an error when installing any of the packages, change this line in the 'Post-Restore-Install-Packages.sh' script from this:

	YesToExit="0"
	
To this:

	YesToExit="1"