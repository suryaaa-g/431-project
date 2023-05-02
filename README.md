# 431-project

## Install MySQL Server and MySQL Workbench 

Download MySQL From the following link. Make sure your system is selected, the click go to Download Page

[Download Link here](https://dev.mysql.com/downloads/mysql/)

## Once downloaded, open and follow the following instructions:

### Installer Will Pop Up. Follow Instructions below.
1. Setup Type - Developer Default
a.  Next
2. Check Requirements - No Need To Select Anything
- Next (ignore any pop up shown, and proceed)
3. Download - Execute
a. Wait for Downloads to finish
b. Next Button
4. Installation - Execute
a. Wait for Installation to finish. Might take some time.
b. Next Button
5. Product Configuration - Next Button
6. Type and Networking - Leave Defaults
a. Next Button
7. Authentication Method - Use Legacy Authentication Method
a. Next Button
8. Accounts and Roles - VERY IMPORTANT TO FOLLOW EXACTLY
a. MySQL Root Password: PASSWORD
b. Repeat Password: PASSWORD
c. Password is PASSWORD in all caps. This is used in application to communicate with db, so please make sure to follow exactly.
d. Next Button
9. Windows Service - Leave Default 
a. Next Button
10. Server File Permissions - Leave Default 
a. Next Button 
11. Apply Configuration - Leave Default 
a. Execute Button 
b. Finish Button 
12. Product Configuration - Leave Next
13. MySQL Router Configuration - Leave Default 
14. Product Configuration - Next Button 
15. Connect to Sever - Leave Default
a. Password Field: Enter "PASSWORD"
b. Click on Check Button
c. Top should say - connection succeeded
d. Click Next Button
16. Apply Configuration - Execute Button 
a. Finish Button 
17. Product Configuration - Next Button 
18. Installation Complete - Finish Button 


MySQL Workbench Should launch Automatically. If not, find the application on the machine and launch. A window with terminal/CommandPrompt might also launch. It can be ignored

## Setting up Application Database and Schema on MySQL Workbench

1. Click On Local Instance MySQL80 under MySQL Connections. A popup will appear and prompt you to enter your password.
a. Enter “PASSWORD” and continue.
2. Click File → Open SQL Script → select swe_amazon.sql* file
3. Click on the “Execute” icon (Yellow Thunderbolt to the right of the save icon).


## Download Apache Tomcat-8 Server
1. Download Binary, Core distribution for your file system
[Download Link here](https://tomcat.apache.org/download-80.cgi)
2. Unzip, and save apache-tomcat-8.5.88 folder to Desktop (or remember saved location because it will be required later).

## Add Admin User to Apache Tomcat Server 
1. Open apache-tomcat-8.5.88/conf folder
2. Open tomcat-users.xml file in any text editor (will probably need to right click and open with the text editor of your choice).
3. Paste the following text At the bottom of the file, right before </tomcat-users> end tag:

  <role rolename="manager-gui"/>
  <role username="manager-script"/>
  <user username="admin" password="password" roles="manager-gui, manager-script"/>


## important: Make sure you are outside of the ending comment tag (-->). Please leave username and password as shown, they will be used later.
4. Make sure to save the file, and then close it.

## Adding our application to apache webapps list
1. Open apache-tomcat-8.5.88/webapps folder
2. Copy and paste our “SWE-Amazon-2.war”* file in this location

## Adding my-sql-connector to Tomcat lib folder
1. Open apache-tomcat-8.5.88/lib folder
2. Paste mysql-connector-java-8.0.15.jar* file in folder
a. File above is included in the write-up, but can additionally be downloaded from: 
[Download Link here](https://mvnrepository.com/artifact/mysql/mysql-connector-java/8.0.15)
(click on jar in file row).


## Testing for JAVA HOME
1. Open a Terminal/Command Prompt window
2. enter: echo %JAVA_HOME%
a. If nothing is returned. Follow the steps in this [article](https://mkyong.com/java/how-to-set-java_home-on-windows-10/)
b. More than likely, if you have done any sort of development on your machine - the command will print the location to your JDK location and you can SKIP the article above. This is only if the location is returned. Otherwise you need to set up JDK and the variables using the article above to continue past this point.


## Deploying Apache Tomcat Server 
1. Open a new Terminal/Command Prompt window
2. Go to the apache tomcat / bin directory. For example we saved the folder on desktop so we ran the following commands:
  
          cd Desktop
          cd apache-tomcat-8.5.88
          cd bin

## Deploy Application on Tomcat Server
1. Open any browser window
2. In search bar, type http://localhost:8080/ and press enter
3. If you have completed previous steps successfully, you should see the following.

### you should see a welcome page if not  You have done something wrong in the steps leading up to this. Please go back and check everything again.
4. On the top right of the page, there is a Manager App button. Click it
5. You will be prompted with a sign in pop-up. Enter the following (you set this up earlier)
a. username: admin
b. Password: password
c. Click Sign In
6. You will be taken to a page with a table 

Click On “/SWE-Amazon-2” under Path in Applications, and you will be directed to our application. Additionally, you can use the following [link](http://localhost:8080/SWE-Amazon-2/)


All files with * are included on GitHub under the SWE Scholar Commons Files folder. Please download them and select them accordingly throughout the setup process.






