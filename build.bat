@REM -----------------------------------------
@REM (1)To build eclipse project  
@REM        eclipse:eclipse
@REM (2)To build war 
@REM        clean package -Dwar  
@REM  (3)mvn clean package -Dwar -Dmaven.test.skip=true
@REM mvn dependency:sources
@REM -------------------------------------------
@REM mvn  %*
mvn clean package -Dwar
