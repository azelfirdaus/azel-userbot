# Using Python Slim-Buster
FROM k
azelfirdaus/bot-yohi:buster
# 𝗒𝗈𝗁𝗂 𝗌𝖾𝗋𝗂 𝖺𝗃𝖺 𝗈𝗀𝖺𝗁 𝖺𝗉𝖺 𝗅𝖺𝗀𝗂 𝗄𝖺𝗅𝖺𝗁 !
# YOHI ORMAS TELE/@yohineverdie
#
RUN git clone -b kampang https://github.com/azelfirdaus/bot-yohi /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/azelfirdaus/bot-yohi/Kampang/requirements.txt

EXPOSE 80 443

# Finalization
CMD ["python3","-m","userbot"]
