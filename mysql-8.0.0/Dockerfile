FROM cimg/mysql:8.0

# Switch to root to modify the configuration
USER root

# Create a new MySQL configuration file to set the SQL mode
RUN echo "[mysqld]" > /etc/mysql/my.cnf && \
    echo "sql_mode=''" >> /etc/mysql/my.cnf

# Expose the MySQL port
EXPOSE 3306

# Start the MySQL service
CMD ["mysqld"]