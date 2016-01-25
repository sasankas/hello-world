@REM -----------------------------------------
@REM (1)To build eclipse project  
@REM        eclipse:eclipse
@REM (2)To build war 
@REM        clean package -Dwar  
@REM  (3)mvn dependency:sources
@REM  (4)mvn deploy
@REM git add . => git push origin master =>git commit -m "Artifact Deploy commit"
@REM git remote add origin https://github.com/sasankas/hello-world.git
@REM -------------------------------------------
@REM %MAVEN_HOME%\mvn  %*
@REM mvn clean package -Dwar -Dmaven.test.skip=true
@REM 
call build.bat
DEL /S /Q D:\root\sw\tomcat\8.0.0-RC1\webapps\simple-webapp.war
RMDIR /S /Q D:\root\sw\tomcat\8.0.0-RC1\webapps\simple-webapp
RMDIR /S /Q D:\root\sw\tomcat\8.0.0-RC1\work\Catalina\localhost
COPY /Y D:\root\project\simple-webapp\target\simple-webapp.war D:\root\sw\tomcat\8.0.0-RC1\webapps\simple-webapp.war

