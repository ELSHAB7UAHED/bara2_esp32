# دليل الحصول على ملفات bin لمشروع bara.cpp

## 🚀 للحصول على ملفات الـ Firmware

### الطريقة الأولى: GitHub Releases (الأسهل)

1. **اذهب إلى GitHub Repository**:
   ```
   https://github.com/ELSHAB7UAHED/bara2_esp32/releases
   ```

2. **حمّل ملف الـ release**:
   - ملف `bara2-esp32.bin` - للـ ESP32 العادي
   - ملف `bara2-esp32-c3.bin` - للـ ESP32-C3
   - ملف `bara2-esp32-s3.bin` - للـ ESP32-S3

3. **ارفع الملف للـ ESP32**:
   ```bash
   esptool.py --chip esp32 --port /dev/ttyUSB0 erase_flash
   esptool.py --chip esp32 --port /dev/ttyUSB0 write_flash -z 0x1000 bara2-esp32.bin
   ```

### الطريقة الثانية: البناء المحلي

```bash
# تثبيت PlatformIO
pip install platformio

# تحميل المشروع
git clone https://github.com/ELSHAB7UAHED/bara2_esp32.git
cd bara2_esp32

# بناء جميع النسخ
pio run

# بناء نسخ منفصلة
pio run --environment esp32dev
pio run --environment esp32-c3  
pio run --environment esp32-s3

# رفع للـ ESP32
pio device monitor
pio run --target upload
```

### الطريقة الثالثة: Arduino IDE

1. **تحميل Arduino IDE**: https://www.arduino.cc/en/software
2. **تثبيت ESP32 Support**:
   ```
   File → Preferences → Additional Board Manager URLs
   أضف: https://raw.githubusercontent.com/espressif/arduino-esp32/gh-pages/package_esp32_index.json
   
   Tools → Board → Boards Manager → البحث عن ESP32
   ```
3. **فتح الكود**:
   ```
   File → Open → اختر ملف src/main.ino
   ```
4. **الرفع**:
   ```
   Tools → Board → ESP32 Dev Module
   Upload
   ```

## 📱 معلومات الوصول بعد الرفع

- **اسم الشبكة**: `bara`
- **كلمة المرور**: `A7med@Elshab7`
- **عنوان IP**: `192.168.4.1`
- **واجهة الويب**: http://192.168.4.1

## 🔧 برامج الرفع

### Windows
```cmd
# تحميل esptool.py من: https://github.com/espressif/esptool/releases
python esptool.py --chip esp32 --port COM3 erase_flash
python esptool.py --chip esp32 --port COM3 write_flash -z 0x1000 bara2-esp32.bin
```

### Linux/Mac
```bash
pip install esptool
esptool.py --chip esp32 --port /dev/ttyUSB0 erase_flash
esptool.py --chip esp32 --port /dev/ttyUSB0 write_flash -z 0x1000 bara2-esp32.bin
```

## 📊 إصدارات ESP32 المدعومة

| النوع | التردد | الذاكرة | الاستخدام |
|-------|--------|---------|-----------|
| **ESP32 DevKit** | 240MHz | 4MB Flash | الأكثر شيوعاً |
| **ESP32-C3** | 160MHz | 4MB Flash | إصدار جديد (RISC-V) |
| **ESP32-S3** | 240MHz | 4MB Flash | أحدث إصدار (dual-core) |

## ⚠️ تحذيرات مهمة

1. **للأغراض التعليمية فقط**
2. **تأكد من حصولك على تصريح لفحص الشبكات**
3. **استخدم ترددات WiFi المناسبة لبلدك**
4. **لا تستخدم للقرصنة أو الوصول غير المشروع**

## 🔍 كيفية التحقق من الرفع الناجح

1. **LED_blink**: يجب أن تومض LED في المنفذ 2
2. **Access Point**: يجب أن ترى شبكة "bara"
3. **Serial Monitor**: يمكن مراقبة الرسائل من `115200 baud`
4. **واجهة الويب**: يجب أن تفتح http://192.168.4.1

## 📞 الدعم الفني

إذا واجهت مشاكل:
- تحقق من اتصال الـ USB
- تأكد من اختيار الـ Port الصحيح
- تحقق من سرعة الـ baud rate (115200)
- تأكد من اختيار نوع الـ ESP32 الصحيح

---
**المطور**: أحمد نور أحمد من قنا  
**التاريخ**: 2025-11-02  
**الإصدار**: 1.0