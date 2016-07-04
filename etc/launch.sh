#!/bin/bash


_JAVACMD="${JAVA_HOME}/bin/java"

# Reset the _XCLASSPATH, just in case
_XCLASSPATH=

# Prepend %_HOME%/CONSOLE-INF/lib/*.jar files to _XCLASSPATH
for _jar in `ls -1 "${_HOME}/CONSOLE-INF/lib/"*.jar`; do
    _XCLASSPATH="${_XCLASSPATH}:${_jar}"
done 

"${_JAVACMD}" -Dhome="${_RUN_HOME}" -Djava.endorsed.dirs="${_DIRS}" -classpath "${_XCLASSPATH}" "${@}"
