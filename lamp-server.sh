#!/bin/bash

function bkayranci {
  echo 'Turkalp Burak KAYRANCIOGLU'
  echo 'bkayranci'
  echo 'twiter.com/bkayranci'
  echo 'github.com/bkayranci'
  echo 'bitbucket.org/bkayranci'
}

OPTIONS="web-server-kur hakkimda cikis"
           select opt in $OPTIONS; do
              if [ "$opt" = "cikis" ]; then
                clear
                echo bkayranci: gule gule
                exit
              elif [ "$opt" = "hakkimda" ]; then
                clear
                bkayranci
              elif [ "$opt" = "web-server-kur" ]; then
                echo Lutfen root parolanizi girin.
                sudo su
                apt-get install mysql-server mysql-client
                apt-get install apache2
                apt-get install php7.0 libapache2-mod-php7.0
                apt-get install php7.0-mysql php7.0-curl php7.0-gd php7.0-intl php-pear php7.0-imap php7.0-mcrypt php7.0-ps php7.0-pspell php7.0-recode php7.0-snmp php7.0-tidy php7.0-xmlrpc php7.0-xsl php7.0-sqlite
                clear
                echo apache uzerine gelip space-bosluk tusu ile onaylayin. Yes-No sorusuna No cevabini verin.
                apt-get install phpmyadmin
                chmod -R 777 /var/www/
                service apache2 restart
                exit
                clear
                echo kurulum basariyla tamamlandi
              else
                clear
                echo hatali giris
              fi
           done
