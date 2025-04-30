# Imagen oficial de Go
FROM golang:1.21

# Crea un usuario no root (opcional, útil para simular entorno Jenkins)
RUN useradd -m -d /home/jenkins -s /bin/bash jenkins

# Establece el usuario
USER jenkins

# Directorio de trabajo
WORKDIR /home/jenkins/app

# Expón puerto si es necesario (opcional)
EXPOSE 8080

# Mantener contenedor activo (útil para pruebas en Jenkins)
CMD ["sleep", "infinity"]

