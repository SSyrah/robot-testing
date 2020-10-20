# Robot Framework Training

Setup for running Tricentis Testautomation Obstacle Course with Robot Framework.<br>
[Tricentis site](https://obstaclecourse.tricentis.com/)<br>


## Preparation

### *optional* Virtual Enviroment

1. Install virutalenv - ```pip install virtualenv```
2. Create enviroment - ```virtualenv rf-env```
3. Activate enviroment
    * *Powershell* requires permission to run scripts
      * ```set-executionpolicy RemoteSigned``` Needs adminstrator privilidges
      * ```.\rf-env\Scripts\activate.ps1```
    * *Commandline* 
      * ```rf-env\Scripts\activate.bat```
    * *Bash*
      * ```source rf-env/bin/activate```
4. Now you are running Python in virtual enviroment
   
### Project setup

1. Install dependecys - ```pip install -r requirements.txt```
2. Install webdriver - ```webdrivermanager chrome```
3. Test that example file runs without failure - ```robot obstacle_tests.robot```

<br>

## Now you are ready for the lesson.