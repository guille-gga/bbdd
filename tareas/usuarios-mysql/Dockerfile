# Usar la imagen oficial de MySQL basada en Debian
FROM mysql:8.0-debian

# Establecer variables de entorno para MySQL
ENV MYSQL_ROOT_PASSWORD=rootrootroot
ENV MYSQL_DATABASE=messageboard
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=superpassword

# Instalar Python y pip, luego mycli
RUN apt-get update && apt-get install -y \
    python3 python3-pip && \
    pip3 install --break-system-packages mycli && \
    apt-get clean && rm -rf /var/lib/apt/lists/*


# Copiar el archivo schema.sql al contenedor
COPY schema.sql /docker-entrypoint-initdb.d/schema.sql

# Exponer el puerto de MySQL
EXPOSE 3306

# Comando por defecto para iniciar MySQL
CMD ["mysqld"]

# Comando para desplegar sin docker-compose:
# docker build -t mysql-basico .
# docker run -d --name mysql-container -p 3306:3306 mysql-basico
