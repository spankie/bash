function kotlinrun() {
    EXT='.kt'
    JAR='.jar'
    if [ -n "$1" ]  #  If command-line argument present,
    then
        APP_NAME=${1%$EXT}
        kotlinc $APP_NAME$EXT -include-runtime -d $APP_NAME$JAR
        # echo "$APP_NAME$JAR created..."
        java -jar $APP_NAME$JAR
    else
        echo "Please provide a valid kotlin file name"
    fi
}