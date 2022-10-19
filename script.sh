#!/bin/bash
# Creating a script to create directories for practice
for i in Linux Git Jenkins Docker Kubernetes Ansible Terraform
do
	mkdir $i && touch $i/README.md
done	
