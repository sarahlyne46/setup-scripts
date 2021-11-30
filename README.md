# README.md
# setup-scripts  

Dockerfile
Generic dockerfile
 1. create working directory
 2. copy app
 3. run installs
 4. expose port
 5. run command (CMD) 
Update each element as required

Makefile
Generic Makefile
 1. setup virtual environment & source it
 2. install pre-requisites using requirements.txt
 3. confirm environment setup
 4. test environment (optional)
 5. lint docker and .py files as required


Python application files
The files use flask to create web pages. Flask will need to be imported into the environment, using the Makefile & requirements.txt files (step b).

1. app.py
   - python file using flask to return Hello World! web page
2. blueapp.py
   - python file using flask to return Hello World! web page, with light blue background & dark blue font colour
3. greenapp.py
   - python file using flask to return Hello World! web page, with light green background & dark green font colour

The blueapp.py & greenapp.py files can be used to demonstrate a bluegreen deployment


Yml files

1. config.yml
   - basic circleci config.yml file
2. deployment.yml
   - generic docker deployment file
3. service.yml
   - generic docker service file
4. prometheus.yml
   - generic yml file for running prometheus server

Bash Scripts

Repeatable actions included in bash scripts.  Run these as ./filename.sh replacing filename with the script name.

1. setup-env.sh
   - creates blank Dockerfile and Makefile
   - creates .circleci folder 
   - creates blank config.file in circleci folder
2. Kube_setup.sh
   - Downloads and installs kubernetes 
   - Downloads and runs sha256sum checksum
   - Installs conntrack
   - Installs minikube
   - Changes to root user
   - Starts minikube as root user and confirms version
3. gitcommit.sh
   - adds new files
   - shows status
   - commits new files
   - push files to git repository
4. prometheus.sh
   - download prometheus
   - unzip
   - rename folder and move to folder
   - run prometheus
5. resize.sh.  This resizes the server space up to 50 gb
   - default of 50gb,  run ./resize.sh
   - specify size, run ./resize.sh ## replacing ## with the required size 
6. run_docker.sh
   - install updates for docker (as required)
   - build image
   - list docker images
   - run flask app
7. upload_docker.sh
   - create docker path - update docker path with docker repository
   - authenticate & tag - update username and tag-name
   - push to docker
8. run_kube.sh
   - lists dockerpath
   - runs docker container using kubernetes
   - lists kubernetes pods
   - forwards container port to a host
   - gets kubernetes logs
