FROM ubuntu:latest

RUN apt update && apt -y install cron

COPY date_every_minute /etc/cron.d/date_every_minute
 
RUN chmod 0644 /etc/cron.d/date_every_minute

RUN crontab /etc/cron.d/date_every_minute
 
RUN touch /var/log/cron.log
 
CMD cron && tail -f /var/log/cron.log