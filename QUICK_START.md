# ESP32 bara2 - دليل سريع

## الرفع السريع على GitHub

### الطريقة الأولى: السكريبت التلقائي
```bash
cd esp32_project
bash scripts/github_upload.sh
```

### الطريقة الثانية: الأوامر اليدوية
```bash
cd esp32_project

# إنشاء مستودع GitHub يدوياً من المتصفح
# الاسم: bara2 | النوع: Public

# ثم من terminal:
git init
git branch -M main
git add .
git commit -m "Initial ESP32 project setup"
git remote add origin https://github.com/YOUR_USERNAME/bara2.git
git push -u origin main
```

## بناء سريع

### بناء جميع الأنواع
```bash
cd esp32_project
make build

# أو
python scripts/build.py build
```

### بناء نوع محدد
```bash
cd esp32_project
pio run --environment esp32dev
```

### إنشاء release
```bash
cd esp32_project
make release

# أو
python scripts/build.py release
```

## الرفع للـ ESP32
```bash
cd esp32_project
make upload

# أو
pio run --target upload
```

## مراقبة الـ Serial
```bash
cd esp32_project
make monitor

# أو
pio device monitor
```

## فحص سريع
```bash
# فحص حالة المشروع
python scripts/build.py info

# تنظيف الملفات
make clean
```

## GitHub Actions
- يتم البناء تلقائياً عند كل push
- يظهر status في GitHub repository
- يمكن تحميل firmware من Releases

## بناء تراكمي كامل
```bash
# 1. الرفع على GitHub
cd esp32_project
git add .
git commit -m "Update project"
git push

# 2. بناء release
make release

# 3. الرفع للـ ESP32
make upload
```

---

**ملاحظة**: تحتاج ملف bara.cpp لاستكمال التخصيص