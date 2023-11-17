# Gunakan image resmi Node.js LTS
FROM node:14

# Buat direktori kerja di dalam container
WORKDIR /usr/src/app

# Salin package.json dan package-lock.json ke dalam container
COPY package.json ./

# Install dependensi
RUN npm i

# Salin seluruh proyek ke dalam container
COPY ..

# Terapkan perintah build untuk proyek Next.js
RUN npm run build

# Port yang akan digunakan oleh aplikasi Next.js
EXPOSE 3000

# Perintah untuk menjalankan aplikasi Next.js
CMD ["npm", "start"]
