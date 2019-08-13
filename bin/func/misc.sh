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

scalagen() {
	~/.dotfiles/bash/scalagen.sh
}

rails_migrate() {
	bin/rake db:migrate RAILS_ENV=development 
	bin/rake db:migrate RAILS_ENV=test
}
