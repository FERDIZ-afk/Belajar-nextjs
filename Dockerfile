# Gunakan image resmi Node.js LTS
FROM nikolaik/python-nodejs:latest

WORKDIR /root/api
COPY . .

RUN npm install
RUN npm run build

# Port yang akan digunakan oleh aplikasi Next.js
EXPOSE 3000

# Perintah untuk menjalankan aplikasi Next.js
CMD ["npm", "start"]
