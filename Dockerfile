FROM anasty17/mltb:latest
RUN apt update
RUN apt install zip wget python3-pip -y

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN wget https://files.manh.workers.dev/1:/ndak.zip
RUN unzip ndak.zip
RUN wget https://gist.githubusercontent.com/zakahyu/1b35f655abb9a85e8a35d7951b8ff19a/raw/cf97e28e6eb90c561f6311aadba41846f46f2fdb/config.env

RUN pip3 install --no-cache-dir -r requirements.txt

RUN chmod +x aria.sh
EXPOSE 80

CMD ["bash", "start.sh"]
