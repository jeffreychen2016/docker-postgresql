FROM postgres:11

# copy database creation script into container
COPY scripts/create_database.sql /docker-entrypoint-initdb.d/create_database.sql

# make a db directory in root
RUN mkdir -p ~/db

# copy .tar file into container
COPY sample_database/dvdrental.tar root/db/dvdrental.tar

# change permission and ownership of root
RUN chmod 777 ~
RUN chown postgres:postgres ~

# copy database restore script into container
COPY scripts/restore_database.sh /docker-entrypoint-initdb.d/restore_database.sh

