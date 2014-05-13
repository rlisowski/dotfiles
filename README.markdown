My dotfiles
=============================================
how to use
---------------------------------------------

	git clone git://github.com/korin/home.git korin-dotfiles
	cd korin-dotfiles

### how to update
I'm using [Vundle](https://github.com/gmarik/vundle) go there to see details

### grab what you need

additional sources
---------------------------------------------

### firewall
[iptables-boilerplate](https://github.com/bmaeser/iptables-boilerplate) is a nice place to start

### ssh to github over 443 port via proxy
	$ sudo apt-get install proxytunnel

put it into `.ssh/config`

	Host github.com
		User user_name
		Hostname ssh.github.com
		Port 443
		ProxyCommand proxytunnel -p proxy:3128 -d ssh.github.com:443


### oracle java and ant
[original instruction](http://www.wikihow.com/Install-Oracle-Java-on-Ubuntu-Linux)

1. check OS

		$ uname -a

2. check if you have oracle java/openjdk

		$ java -version

3. remove openjdk

		$ sudo apt-get purge openjdk-\*

4. install oracle java

	1. prepare directory

			$ sudo mkdir -p /usr/local/java

	2. [download oracle java](http://www.oracle.com/technetwork/java/javase/downloads/index.html)

	3. copy archives (version maybe different)

			$ sudo cp -r jdk-7u45-linux-x64.tar.gz /usr/local/java
			$ cd /usr/local/java

	4. unpack

			$ sudo tar xvzf jdk-7u45-linux-x64.tar.gz

	5. [download ant](http://ant.apache.org/bindownload.cgi)


	6. copy archives (version maybe different)

			$ sudo cp -r apache-ant-1.9.3-bin.tar.gz /usr/local/java
			$ cd /usr/local/java

	7. unpack

			$ sudo tar xvzf apache-ant-1.9.3-bin.tar.gz

	8. check dirs (your version may be different)

			$  ls -1
			jdk1.8.0_05/
			apache-ant-1.9.3/

	9. set ENV vars in /etc/profile

			$ sudo gedit /etc/profile

		put at the end of file

			JAVA_HOME=/usr/local/java/jdk1.8.0_05
			ANT_HOME=/usr/local/java/apache-ant-1.9.3
			PATH=$PATH:$JAVA_HOME/bin:$ANT_HOME/bin
			export JAVA_HOME
			export ANT_HOME
			export PATH

	10. Inform your system where your Oracle Java

			$ sudo update-alternatives --install "/usr/bin/java" "java" "/usr/local/java/jdk1.8.0_05/jre/bin/java" 1
			$ sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/local/java/jdk1.8.0_05/bin/javac" 1
			$ sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/local/java/jdk1.8.0_05/jre/bin/javaws" 1

	11. check ENV

			$ source /etc/profile
			$ java -version
			java version "1.8.0_05"
			Java(TM) SE Runtime Environment (build 1.8.0_05-b18)
			Java HotSpot(TM) 64-Bit Server VM (build 24.45-b08, mixed mode)





