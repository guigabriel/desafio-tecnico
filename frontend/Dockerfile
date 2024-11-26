# Base para React
FROM node:18

# Diretório de trabalho
WORKDIR /app

# Instalação de dependências
COPY package*.json ./
RUN npm install

# Copiar código
COPY . .

# Expor a porta padrão do React
EXPOSE 80 

# Comando para rodar o React
CMD ["npm", "start"]

