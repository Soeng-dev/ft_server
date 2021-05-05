

FROM	debian:buster


LABEL	maintainer="soekim@student.42seoul.kr"

RUN		apt-get -y update && apt-get -y upgrade
RUN		apt-get -y install vim nginx openssl php-fpm mariadb-server php-mysql php-mbstring php-curl

COPY	./srcs/run.sh ./
COPY	./srcs/default ./tmp
COPY	./srcs/wp-config.php ./tmp
COPY	./srcs/config.inc.php ./tmp

EXPOSE	80 443

CMD		bash run.sh
