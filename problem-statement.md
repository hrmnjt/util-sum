Your task is to write a bash script that receives an array (N space-separated integers) as a command line argument and outputs the sum of the integers. Do not ask for input from the user interactively.

Ensure that your script runs as expected in Ubuntu(18.04) using Bash(4.4). Your script should output in the exact same format as mentioned below. We will be renaming your script and running it, hence do not hard code your-script.sh in the output, instead get it using Bash utility. Do not output anything to stderr.

Here are some of the scenarios your script should handle. Do not hard code the number of integers your script will read. We will pass variable number of integers.

Command: bash your-script.sh 1 2 3 4
Output: 10

Command: bash your-script.sh
Output: Usage:- bash your-script.sh space-separated-integers

Command: bash your-script.sh hello world
Output: Usage:- bash your-script.sh space-separated-integers

Copy and paste Bash script into the textbox. Your submission will be automatically evaluated. So ensure that you run your code before submitting.


---

You are given a Dockerfile (https://gist.github.com/prmishra/0ae5b40bff67bbad4a887f4b4052835d) which produces approximately 650MB size docker image. Your task is to optimize this Dockerfile to reduce size of the resultant docker image without changing behaviour of the application.

You should use multi-stage build and alpine image. Ensure that you are able to create an image using the optimized Dockerfile before submitting. Ideally the resultant docker image should be less than 10mb in size.

Copy and paste optimized Dockerfile into the textbox. Your submission will be automatically evaluated. So ensure that you run your code before submitting

https://docs.docker.com/develop/develop-images/multistage-build/
https://blog.alexellis.io/mutli-stage-docker-builds/

