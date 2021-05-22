HOW TO BUILD AND RUN LITEX DOCKERFILE:

P.S: You may add more dependencies to the docker image in the docker file as you see fit for other litex projects etc. 

1) 

make alias commands in your bashrc profile or your z shell rc. ex:~/.zshrc.
for build and run commands like this.

2) 

alias container_litex_build="docker build -t litex_image -f /Users/jhu69/Desktop/McGill_Masters/Embedded_Security_Research/litex-dockerfiles/Dockerfile ." 
- Make sure to change the path to your own PATH on your system.


3) 

alias container_litex_run="docker run -it --volume $(pwd):container/ litex_image"
- Make sure to map your current working directory into some directory in the container. Try running this command and see where your current directory is mapped to and 
change it as you see fit for your future containerizations.  
