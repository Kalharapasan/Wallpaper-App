# Complete Setup Guide for WallpaperHub

## 📋 Pre-Setup Checklist

Before starting, ensure you have:
- [ ] Flutter SDK installed (version 3.0.0 or higher)
- [ ] Android Studio or VS Code with Flutter extensions
- [ ] Android SDK installed
- [ ] An Android device or emulator
- [ ] Internet connection
- [ ] Pexels API key (we'll get this in Step 2)

## 🎯 Step-by-Step Setup

### Step 1: Create Flutter Project

```bash
# Create new Flutter project
flutter create wallpaper_app

# Navigate to project directory
cd wallpaper_app
```

### Step 2: Get Pexels API Key

1. Go to [https://www.pexels.com/api/](https://www.pexels.com/api/)
2. Click "Get Started"
3. Sign up with your email or Google account
4. Verify your email
5. Go to "Your API Key" section
6. Copy your API key - it looks like: `AbCdEfGh123456789...`

### Step 3: Project Structure Setup

Create the following folder structure in your `lib` folder:

```
lib/
├── main.dart
├── data/
│   └── data.dart
├── model/
│   ├── categories_model.dart
│   └── wallpaper_model.dart
├── views/
│   ├── home.dart
│   ├── search.dart
│   ├── categorie.dart
│   └── image_view.dart
└── widgets/
    └── widgets.dart
```

To create folders in terminal:
```bash
cd lib
mkdir data model views widgets
cd ..
```

### Step 4: Copy Files to Correct Locations

Copy each provided file to its correct location:

#### Main Files
- `main.dart` → `lib/main.dart`

#### Data Files
- `data.dart` → `lib/data/data.dart`

#### Model Files
- `categories_model.dart` → `lib/model/categories_model.dart`
- `wallpaper_model.dart` → `lib/model/wallpaper_model.dart`

#### View Files
- `home.dart` → `lib/views/home.dart`
- `search.dart` → `lib/views/search.dart`
- `categorie.dart` → `lib/views/categorie.dart`
- `image_view.dart` → `lib/views/image_view.dart`

#### Widget Files
- `widgets.dart` → `lib/widgets/widgets.dart`

#### Configuration Files
- `pubspec.yaml` → `pubspec.yaml` (root folder)
- `AndroidManifest.xml` → `android/app/src/main/AndroidManifest.xml`

### Step 5: Update API Key

1. Open `lib/data/data.dart`
2. Find the line: `String apiKey = "...";`
3. Replace the existing key with YOUR API key from Step 2
4. Save the file

```dart
String apiKey = "YOUR_PEXELS_API_KEY_HERE";
```

### Step 6: Update pubspec.yaml

Replace your `pubspec.yaml` content with the provided version, or manually add these dependencies:

```yaml
dependencies:
  flutter:
    sdk: flutter
  http: ^1.1.0
  cached_network_image: ^3.3.0
  flutter_cache_manager: ^3.3.1
  image_gallery_saver: ^2.0.3
  flutter_wallpaper_manager: ^0.0.3
  permission_handler: ^11.0.1
  path_provider: ^2.1.1
  cupertino_icons: ^1.0.6
```

### Step 7: Update AndroidManifest.xml

1. Navigate to `android/app/src/main/`
2. Open `AndroidManifest.xml`
3. Replace its content with the provided version
4. Save the file

This adds necessary permissions for:
- Internet access
- Storage access (for downloading)
- Setting wallpapers

### Step 8: Install Dependencies

Run this command in your project root:

```bash
flutter pub get
```

Wait for all packages to download and install.

### Step 9: Verify Setup

Check if everything is set up correctly:

```bash
flutter doctor
```

Ensure there are no critical errors. Minor warnings are okay.

### Step 10: Run the App

#### On Physical Device:
1. Enable Developer Options on your Android device
2. Enable USB Debugging
3. Connect device via USB
4. Run: `flutter run`

#### On Emulator:
1. Start an Android emulator from Android Studio
2. Run: `flutter run`

## 🔧 Troubleshooting Setup Issues

### Issue: "Pub get failed"
**Solution**: 
```bash
flutter clean
flutter pub cache repair
flutter pub get
```

### Issue: "AndroidManifest.xml not found"
**Solution**: The path is `android/app/src/main/AndroidManifest.xml`, not just `android/AndroidManifest.xml`

### Issue: "SDK version conflict"
**Solution**: Ensure your Flutter SDK is version 3.0.0 or higher:
```bash
flutter --version
flutter upgrade
```

### Issue: "Cannot find package"
**Solution**: Make sure all files are in the correct folders with correct names (case-sensitive)

### Issue: Gradle build fails
**Solution**: 
1. Open `android/build.gradle`
2. Ensure minimum SDK version is 21 or higher
3. Run `flutter clean` and then `flutter run`

## ✅ Post-Setup Verification

After running the app, verify:
- [ ] App launches successfully
- [ ] Trending wallpapers load on home screen
- [ ] Categories are visible
- [ ] Search bar is functional
- [ ] Can tap on wallpapers to view full screen
- [ ] Download button works (grant permissions when prompted)
- [ ] Set wallpaper button works

## 🎨 Optional Customizations

### Change App Name
Edit `android/app/src/main/AndroidManifest.xml`:
```xml
<application android:label="Your App Name">
```

### Change App Icon
1. Generate icons at [https://appicon.co/](https://appicon.co/)
2. Replace files in `android/app/src/main/res/mipmap-*/`

### Change Package Name
1. Edit `android/app/build.gradle`
2. Update `applicationId`
3. Rename folders in `android/app/src/main/kotlin/com/...`

## 📱 Testing Features

After setup, test each feature:

### Test Search
1. Tap search bar
2. Type "mountains"
3. Press enter or tap search icon
4. Verify results load

### Test Categories
1. Tap on "Nature" category
2. Verify wallpapers load
3. Go back and try another category

### Test Download
1. Tap on any wallpaper
2. Tap "Download" button
3. Grant storage permission if asked
4. Check your gallery for the downloaded image

### Test Set Wallpaper
1. Open any wallpaper
2. Tap "Set Wallpaper"
3. Choose "Home Screen", "Lock Screen", or "Both"
4. Check your phone to verify wallpaper changed

## 🚀 Ready for Development

Your app is now ready! You can:
- Modify UI colors and styles
- Add new categories
- Implement new features
- Build and deploy

## 📞 Need Help?

If you're stuck:
1. Check error messages carefully
2. Review the README.md file
3. Ensure all steps were followed
4. Verify API key is correct
5. Check internet connection

---

**Setup Complete! Enjoy developing! 🎉**
