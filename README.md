eleven-infographic-dec13
========================

Infographic website built for eleven accelerator

##Setup

* Install node, npm and bower globally
* In the terminal/command prompt (with administrator privelages) navigate to the root directory

<pre>
	$ npm install -d
  $ npm install -g grunt-cli bower mocha
	$ bower install -d
  $ ./setup.sh
</pre>

##Local Dev

<pre>
  $ grunt
</pre>

##Publishing

<pre>
  $ grunt publish
</pre>

##Pushing to Git

<pre>
	$ git add -A
	$ git commit "message"
	$ git push
</pre>

##Pulling from Git

<pre>
	$ git pull
</pre>

##Where to edit data

`app/data/ig.coffee`