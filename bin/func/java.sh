function removeFromPath() {
   export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
}

function setjdk() {
  if [ $# -ne 0 ]; then
	removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'
	if [ -n "${JAVA_HOME+x}" ]; then
	removeFromPath $JAVA_HOME
	fi
	export JAVA_HOME=`/usr/libexec/java_home -v $@`
	export PATH=$JAVA_HOME/bin:$PATH
	fi
}

function apache_ds_hack() {
	sudo launchctl unload /Library/LaunchDaemons/org.apache.directory.server.plist
	sudo rm /usr/local/apacheds-2.0.0-M15/instances/default/run/apacheds-default.pid
	sudo launchctl load /Library/LaunchDaemons/org.apache.directory.server.plist
}
