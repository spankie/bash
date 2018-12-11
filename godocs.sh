function godocs() {
	if [ $(uname) = Darwin ]
	then
		godoc -http=:5001 &
		echo Waiting for the server...
		sleep 5s
		open http://localhost:5001/pkg/$1
	else
		godoc -http=:5001 &
		echo Waiting for the server...
		sleep 3s
  		xdg-open http://localhost:5001/pkg/$1
	fi
}
