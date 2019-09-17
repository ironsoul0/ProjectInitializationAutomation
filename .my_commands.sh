#!/bin/bash

function create() {
	cd ~/development/ProjectInitializationAutomation
	pipenv shell
	python create.py $1
	cd ~/development/$1
	git init
	git remote add origin git@github.com:ironsoul0/$1.git
	touch README.md
	git add .
	git commit -m "Initial commit"
	git push -u origin master
	code .
}