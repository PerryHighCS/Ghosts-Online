export DISPLAY=
javac *.java -d .
if [ $? -eq 0 ]; then # if compilation succeeded
    jar -cfm Ghost.jar .manifest.txt *.class *.ttf
    java -jar Ghost.jar
fi
