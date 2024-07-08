FROM cimg/mysql:8.0

RUN echo "SET GLOBAL sql_mode='';" > /docker-entrypoint-initdb.d/init_sql_mode.sql

CMD ["mysqld"]
