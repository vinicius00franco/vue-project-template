# Usar a imagem oficial do Node.js como base
FROM node:18-alpine

# Define o diretório de trabalho no container
WORKDIR /app

# Copia o package.json e o package-lock.json
COPY package*.json ./

COPY tsconfig.json ./

# Instala as dependências do projeto
RUN npm i

RUN npm update

#RUN npm run build


# Copia todo o restante do projeto
COPY . .

# Expõe a porta padrão que o Vue.js utiliza
EXPOSE 9000

# Define o comando para iniciar o servidor de desenvolvimento
# CMD ["npm", "run", "serve"]
