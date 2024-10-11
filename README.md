# dockerproject
# WordPress, Nginx, MySQL, PHP ile Docker Kurulumu

Bu proje, Docker kullanarak WordPress, Nginx, MySQL ve PHP-FPM ile çalışan bir web ortamını yerel bilgisayarınızda kurmak için gereken yapılandırma dosyalarını içerir. 

## İçerik

- **Dockerfile**: Ubuntu tabanlı bir Docker image oluşturur, gerekli paketleri yükler ve Nginx, PHP-FPM ile WordPress kurulumunu yapar.
- **docker-compose.yaml**: MySQL ve WordPress servislerini yönetmek için kullanılır.
- **wptest.conf**: Nginx yapılandırma dosyasıdır.
- **wp-setup.sh**: WordPress'i indirip, gerekli ayarlamaları yapan bash betiğidir.

### Gereksinimler

- [Docker](https://www.docker.com/get-started) ve [Docker Compose](https://docs.docker.com/compose/install/) yüklü olmalıdır.
- Yerel ortamda `kendi alan adınızı` kullanmak için `hosts` dosyanıza aşağıdaki satırı ekleyin;
  
  127.0.0.1 "kendi alan adınız".

Adım Adım Kurulum;

1- Bu repoyu yerel bilgisayarınıza klonlayın.
2- Kişisel düzenlemelerinizi conf. dosyaları içerisinde yapın.
3- Docker image oluşturun.
4- Docker Compose ile servisleri başlatın.
  
