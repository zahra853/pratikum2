# Menggunakan image nginx terbaru
FROM nginx:latest

# Hapus halaman default nginx
RUN rm -rf /usr/share/nginx/html/*

# Salin semua file dari folder lokal ke dalam direktori HTML nginx
COPY . /usr/share/nginx/html

# Expose port 80 secara internal
EXPOSE 80

# Jalankan nginx di foreground
CMD ["nginx", "-g", "daemon off;"]