# setup-scripts

README.md

Dockerfile
Generic dockerfile
 a. create working directory
 b. copy app
 c. run installs
 d. expose port
 e. run command (CMD) 
Update each element as required

Makefile
Generic Makefile
 a. setup virtual environment & source it
 b. install pre-requisites using requirements.txt
 c. confirm environment setup
 d. test environment (optional)
 e. lint docker and .py files as required


Python application files
The files use flask to create web pages. Flask will need to be imported into the environment, using the Makefile & requirements.txt files (step b).

1. app.py: python file using flask to return Hello World! web page
2. blueapp.py: python file using flask to return Hello World! web page, with light blue background & dark blue font colour
3. greenapp.py: python file using flask to return Hello World! web page, with light green background & dark green font colour

The blueapp.py & greenapp.py files can be used to demonstrate a bluegreen deployment


Yml files

1. config.yml: basic circleci config.yml file
2. deployment.yml: generic docker deployment file
3. service.yml: generic docker service file
4. prometheus.yml: generic yml file for running prometheus server

Bash Scripts

Repeatable actions included in bash scripts.  Run these as ./filename.sh replacing filename with the script name.

1. setup-env.sh
   a. creates blank Dockerfile and Makefile
   b. Creates .circleci folder 
   c. Creates blank config.file in circleci folder
2. Kube_setup.sh
   a. Downloads and installs kubernetes 
   b. Downloads and runs sha256sum checksum
   c. Installs conntrack
   d. Installs minikube
   e. Changes to root user
   f. Starts minikube as root user and confirms version
3. gitcommit.sh
   a. adds new files
   b. shows status
   c. commits new files
   d. push files to git repository
4. prometheus.sh
   a. download prometheus
   b. unzip
   c. rename folder and move to folder
   d. run prometheus
5. resize.sh.  This resizes the server space up to 50 gb
   a. default of 50gb,  run ./resize.sh
   b. specify size, run ./resize.sh ## replacing ## with the required size 
6. run_docker.sh
   a. install updates for docker (as required)
   b. build image
   c. list docker images
   d. run flask app
7. upload_docker.sh
   a. create docker path - update docker path with docker repository
   b. authenticate & tag - update username and tag-name
   c. push to docker
8. run_kube.sh
   a. lists dockerpath
   b. runs docker container using kubernetes
   c. lists kubernetes pods
   d. forwards container port to a host
   e. gets kubernetes logs
