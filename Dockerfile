FROM ubuntu:jammy
ENV TZ=Europe/Berlin
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && apt-get upgrade -y \
    && apt install git python3 sudo -y
RUN git clone https://github.com/JoniPonty/PythonHtmlGetter.git
RUN cd /PythonHtmlGetter \
    && bash install.sh
RUN cd /PythonHtmlGetter \
    && python3 program.py "https://careerkarma.com/blog/python-string-to-int/\#:\~:text\=How%20to%20Convert%20Python%20Int,as%20a%20str%20%2C%20or%20string."

