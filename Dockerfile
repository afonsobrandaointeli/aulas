FROM node:20

# Define o diretório de trabalho
WORKDIR /usr/src/app

# Copia os arquivos de dependências para o contêiner
COPY package*.json ./

# Instala as dependências do projeto
RUN npm install

# Instala o Sails globalmente
RUN npm install -g sails

# Copia o restante do código do aplicativo para o contêiner
COPY . .

# Expõe a porta que o Sails usará
EXPOSE 1337

# Comando para iniciar o aplicativo Sails
CMD ["sails", "lift"]
