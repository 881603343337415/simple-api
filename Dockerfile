# Use uma imagem leve do Node.js
FROM node:18-alpine

# instala npm v8
RUN npm install -g npm@8

# Diretório de trabalho
WORKDIR /app

# Copia apenas package.json e package-lock.json
COPY package*.json ./

# Instala dependências
RUN npm install --only=production

# Copia todo o código
COPY . .

# Exponha a porta padrão da API
EXPOSE 3000

# Comando de inicialização
CMD ["npm", "run", "start"]
