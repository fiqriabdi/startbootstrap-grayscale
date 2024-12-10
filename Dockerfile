
# Menggunakan image Nginx sebagai base image
FROM nginx:alpine

# Menyalin konten direktori lokal ke dalam direktori /usr/share/nginx/html di container
COPY . /usr/share/nginx/html

# Expose port 80 agar bisa diakses dari luar container
EXPOSE 80

# Command default untuk menjalankan Nginx (sudah ada di base image)
CMD ["nginx", "-g", "daemon off;"]
