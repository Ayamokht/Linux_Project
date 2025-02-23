
FROM ubuntu:20.04
RUN mkdir -p /home/webapp/webapp_climatique
RUN apt update && apt-get install -y curl && apt-get install -y python3 && apt-get install -y python3-pip
WORKDIR /home/webapp/webapp_climatique
COPY . .
RUN chmod +x *.sh
RUN python3 -m pip install -r requirements.txt
CMD ["bash", "start_app.sh"]


