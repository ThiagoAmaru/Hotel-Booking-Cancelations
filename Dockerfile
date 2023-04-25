# Imagem base
FROM ubuntu:22.04

# Atualizações de pacotes e instalações necessárias
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y python3.10 python3-pip libopenblas-dev liblapack-dev && \
    rm -rf /var/lib/apt/lists/*

# Define um usuário não-root
RUN useradd -ms /bin/bash myuser
USER myuser

# Define o diretório de trabalho
WORKDIR /app

# Copia os arquivos do projeto para o diretório de trabalho
COPY . /app

# Instala as dependências do projeto
RUN pip3 install --no-cache-dir -r requirements.txt && \
    pip3 cache purge

# Define a variável de ambiente
ENV FLASK_APP=app.py

# Expõe a porta 5000
EXPOSE 5000

# Define o comando padrão que será executado quando o container for iniciado
CMD ["python3", "app.py"]