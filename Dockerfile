FROM iamjohnnym/bionic-python:3.7
MAINTAINER JustHumanz	<humanz@justhumanz.me>
LABEL Description="MHL chall dockerfile"

##install dependency
RUN apt update && apt install toilet -y

##setup apps
RUN mkdir /apps
COPY chall.py /apps
COPY solver.txt /apps
EXPOSE 2999
WORKDIR /apps

##bla
RUN echo 'echo nc bapak kau' > /usr/local/bin/nc
RUN chmod +x /usr/local/bin/nc

CMD ["python", "./chall.py", "2999"]
