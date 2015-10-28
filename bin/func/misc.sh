pretty_print_json() {
	curl -sS $1 | python -m json.tool
}

pretty_print_json_string() {
	echo $1 | python -m json.tool 
}

start_postgres() {
	postgres -D /usr/local/var/postgres
}

start_mysql() {
	mysql.server start
}

stop_mysql() {
	mysql.server stop 
}

adb() {
	$ANDROID_HOME/platform-tools/adb "$@" | $DOT_FILE_DIR/bash/logcat_colors.sh
}

scalagen() {
	~/.dotfiles/bash/scalagen.sh
}
