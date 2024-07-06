FROM python:3.12

WORKDIR /usr/src/app

COPY requirements.txt ./

#install the pyhton dependencies
RUN pip install --no-cache-dir -r requirements.txt
#copy the rest of code
COPY . .
#define the command to run the bot
CMD ["python","yt.py"]