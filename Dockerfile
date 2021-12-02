FROM ubuntu

WORKDIR /data

RUN apt update
RUN apt install wget -y
RUN apt install bzip2 -y
RUN apt install openjdk-11-jdk -y
RUN apt install default-jre -y
RUN apt install python -y
RUN apt install python3-pip -y
RUN pip3 install gensim==3.8.3
RUN pip3 install flask>=1.1.1
RUN pip3 install numpy>=1.11.3

CMD bash run.sh
