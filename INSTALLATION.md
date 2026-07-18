# 🇹🇷 Turkish QBCore Framework - Kurulum Rehberi

## Gerekli Dosyalar
- FiveM Server
- QBCore Framework
- MySQL Database
- Git

## Kurulum Adımları

### 1. Veritabanını Hazırlayın
```bash
mysql -u root -p
CREATE DATABASE turkish_qbcore;
USE turkish_qbcore;
source sql/qbcore.sql;
```

### 2. Dosyaları Kopyalayın
```bash
cp -r resources/* /FiveM-Server/resources/
cp config/* /FiveM-Server/
```

### 3. server.cfg Dosyasını Güncelleyin
```cfg
setrep_CoreName "Turkish QBCore"
setrep_Language "tr"
setrep_MaxPlayers "128"
```

### 4. Sunucuyu Başlatın
```bash
./FXServer.exe +exec server.cfg
```

## Sorun Giderme

- **Veritabanı Hatası**: MySQL'in çalışıp çalışmadığını kontrol edin
- **Script Hatası**: Console'da hataları kontrol edin
- **HUD Görünmüyorsa**: UI_Page yolunu kontrol edin

## Destek
Türk FiveM Topluluğu - Discord, GitHub Issues