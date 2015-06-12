docker build --no-cache=false -t kirlab:base .


sudo docker run -i -p 80:80 -v /htdocker:/var/www/htdocs -t -privileged kirlab:base /bin/bash
