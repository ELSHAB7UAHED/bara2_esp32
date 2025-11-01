#!/bin/bash

# Script لرفع مشروع bara.cpp على GitHub يدوياً
# المطور: أحمد نور أحمد من قنا

echo "🚀 بدء رفع مشروع bara.cpp على GitHub..."
echo "=============================================="

# إعداد Git
echo "📁 إعداد Git repository..."
git init
git config --global user.name "Minimax Agent"
git config --global user.email "minimax@agent.com"

# إضافة جميع الملفات
echo "📄 إضافة ملفات المشروع..."
git add .

# إنشاء commit أولي
echo "💾 إنشاء commit..."
git commit -m "Initial commit: ESP32 WiFi Security Testing Tool

- إضافة أداة bara.cpp لفحص أمان WiFi
- دعم ESP32, ESP32-C3, ESP32-S3
- واجهة ويب تفاعلية مع Matrix style
- نظام بناء آلي باستخدام GitHub Actions
- ميزة تصدير البيانات والرسوم البيانية

المطور: أحمد نور أحمد من قنا
الهدف: تعليمي فقط"

# تعليمات رفع المشروع
echo ""
echo "✅ تم إعداد المشروع للرفع على GitHub!"
echo ""
echo "📋 الخطوات التالية:"
echo ""
echo "1️⃣ إنشاء repository جديد على GitHub:"
echo "   - اذهب إلى https://github.com/new"
echo "   - اسم Repository: bara2"
echo "   - اختر Public أو Private"
echo "   - لا تضيف README أو .gitignore (موجود بالفعل)"
echo ""
echo "2️⃣ ربط الـ repository بالرابط:"
echo "   git remote add origin https://github.com/USERNAME/bara2.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "3️⃣ GitHub Actions سيقوم بالبناء التلقائي:"
echo "   - سيتم إنشاء releases تلقائية"
echo "   - رفع binary files لكل ESP32 variant"
echo "   - إنشاء changelog تلقائي"
echo ""
echo "🎯 روابط مفيدة:"
echo "   - GitHub: https://github.com/USERNAME/bara2"
echo "   - Releases: https://github.com/USERNAME/bara2/releases"
echo "   - Actions: https://github.com/USERNAME/bara2/actions"
echo ""
echo "⚡ الميزات المتوفرة بعد الرفع:"
echo "   ✅ بناء تلقائي لـ 3 أنواع ESP32"
echo "   ✅ releases مع binary files"
echo "   ✅ GitHub Actions للـ CI/CD"
echo "   ✅ وثائق شاملة (README.md, USAGE_GUIDE.md)"
echo "   ✅ نظام بناء متقدم (Makefile, build.py)"
echo ""
echo "🔧 تعليمات البناء للمطورين:"
echo "   pio run                    # بناء المشروع"
echo "   pio run --target upload    # رفع للـ ESP32"
echo "   pio device monitor         # مراقبة Serial"
echo ""
echo "🌐 معلومات الوصول بعد الرفع:"
echo "   Access Point: bara"
echo "   Password: A7med@Elshab7"
echo "   IP Address: 192.168.4.1"
echo ""
echo "🎉 المشروع جاهز للرفع!"

# إنشاء ملف تعليمات النشر
cat > DEPLOYMENT_INSTRUCTIONS.md << 'EOF'
# تعليمات نشر bara.cpp على GitHub

## المتطلبات
- حساب GitHub
- Git محلي

## خطوات النشر

### 1. إنشاء Repository جديد
```bash
# اذهب إلى https://github.com/new
# اسم Repository: bara2
# اختر Public أو Private
```

### 2. ربط المشروع بـ GitHub
```bash
git remote add origin https://github.com/USERNAME/bara2.git
git branch -M main
git push -u origin main
```

### 3. تفعيل GitHub Actions
GitHub Actions ستعمل تلقائياً وتقوم بـ:
- بناء firmware للـ 3 أنواع ESP32
- إنشاء releases مع binary files
- إنشاء changelog تلقائي

## روابط مهمة بعد النشر
- **Repository**: https://github.com/USERNAME/bara2
- **Releases**: https://github.com/USERNAME/bara2/releases  
- **Actions**: https://github.com/USERNAME/bara2/actions

## الملفات المتوفرة
- `src/main.ino` - الكود الرئيسي لأداة WiFi Security Testing
- `platformio.ini` - إعدادات PlatformIO للـ 3 أنواع ESP32
- `.github/workflows/build.yml` - GitHub Actions للبناء التلقائي
- `README.md` - دليل المشروع والميزات
- `docs/` - الوثائق التفصيلية
- `scripts/` - سكريبت البناء والنشر

## الميزات
- ✅ فحص شبكات WiFi
- ✅ واجهة ويب تفاعلية  
- ✅ تصدير البيانات
- ✅ رسوم بيانية مباشرة
- ✅ دعم ESP32, ESP32-C3, ESP32-S3

---
**المطور**: أحمد نور أحمد من قنا
**الهدف**: تعليمي فقط
EOF

echo ""
echo "📄 تم إنشاء ملف DEPLOYMENT_INSTRUCTIONS.md مع التعليمات التفصيلية"
echo ""
echo "🎯 اضغط Ctrl+C لإيقاف Script، ثم انسخ الأوامر أعلاه ونفذها يدوياً على GitHub!"