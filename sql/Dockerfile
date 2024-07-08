FROM cimg/mysql:8.0

ENV MYSQL_ROOT_PASSWORD=your_password  # Replace with your desired password

RUN echo "SET GLOBAL sql_mode='ALLOW_INVALID_DATES,NO_ZERO_IN_DATE';" > /docker-entrypoint-initdb.d/init_sql_mode.sql

CMD ["mysqld"]
