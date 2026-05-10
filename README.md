# Flutter Project Template - "Arch"

> A Template to start Flutter app development with minimal effort. Introducing the "Arch".

## Quick Start 🎮

```bash
git clone https://github.com/michmadheo/flutter_project_template_arch.git
```

Or download via [releases](https://github.com/michmadheo/flutter_project_template_arch/releases).

## What's included 🚀

Essentials to ease your project setup. Here you can find:

- ✅ Compiled with the latest [Flutter](https://docs.flutter.dev/install/archive) version (See requirements below)
- ✅ Consistent template for new feature with [mason_cli](https://pub.dev/packages/mason_cli) generator (See requirements below)
- ✅ Swift Navigation & routing with [go_router](https://pub.dev/packages/go_router)
- ✅ Safe environment configuration with [envied](https://pub.dev/packages/envied)
- ✅ Robust API Fetching with [dio](https://pub.dev/packages/dio)
- ✅ Easy to use [bloc](https://pub.dev/packages/flutter_bloc) design pattern (see [demo_feature](lib/features/demo_feature) for example)
- ✅ "Functional" functional programming with [fpdart](https://pub.dev/packages/fpdart)
- ✅ Simple & reliable local data source storage with [shared_preferences](https://pub.dev/packages/shared_prefences)
- ✅ Comparable object models with [equatable](https://pub.dev/packages/equatable)
- ✅ Manageable dependency injection with [get_it](https://pub.dev/packages/get_it)
- ✅ Assortment of ready-to-use themes for styling (see [themes](lib/app/themes) for example)
- ✅ Helpful utilities and extensions (see [general_helpers](lib/core/general_helpers) for example)
- ✅ Structured atomic design pattern for widgets (see [widgets](lib/app/widgets) for example)
- ✅ Everyone's favorite dark mode, is supported (see [system_mode_cubit](lib/app/global/system_mode/system_mode_cubit.dart) global cubit for usage)

Ready to give your project identities? here you can:

- ✅ Change package name with [change_app_package_name](https://pub.dev/packages/change_app_package_name)
- ✅ Change app icon with [flutter_launcher_icons](https://pub.dev/packages/flutter_launcher_icons)
- ✅ Change app name by replacing the label... because, why not? 🧐

Check the [pubspec.yaml](pubspec.yaml) for packages versions.

> [!TIP]
> Didn't like what's included? want to swap packages? feel free to do it!

## Requirements 🛠️

These are the requirements to run this template:

- Java minimum version 17
- Flutter version 3.41.9
- dart version 3.11.5 (Should already be bundled with flutter)
- Android Studio minimum version Meerkat 2024.3.1
- Xcode up minimum version 16.4
- (Optional but recommended) mason_cli version 0.1.3

> [!IMPORTANT]
> Do not use a Flutter version above the one stated, as breaking changes may occur until we adjust for them.

> [!NOTE]
> Requirements doesn't match your setup? find another template version in [releases](https://github.com/michmadheo/flutter_project_template_arch/releases).

## Change package name 📦

Change your package name:

```bash
dart run change_app_package_name:main com.new.package.name
```

Search for "flutter_project_template_arch" and rename it with your github repository name

## Change app name (First time change) 📲

Search for "Arch Flutter App" and rename it with your app name

## Manual Change app name (Android) 📲

Go to AndroidManifest.xml and change the value of android:label to your app name

## Manual Change app name (iOS) 📲

Go to info.plist and change the value of CFBundleDisplayName and CFBundleName to your app name

## Change app icon ✨

Replace the file below with your app icon:

```bash
assets/app_icon/icon.png
```

And then do:

```bash
dart run flutter_launcher_icons
```

## Run the app 🎉

Create a .env file in root project with this example content:

```bash
DEMO=demo
OTHER_KEY_1=othervalue1
OTHER_KEY_2=othervalue2
```

> [!WARNING]
> Please include the 'DEMO=demo' if this is the first time you use this template. You can change it later on config

And generate the env for the config with:

```bash
dart run build_runner build
```

If you add another value, before running the above command again, do this first:

```bash
dart run build_runner clean
```

> [!NOTE]
> If there's an issue when generating the env for the first time, please comment the demo = Env.demo line on lib/core/config/config.dart first. You can uncomment the line again after generating the env file

To run the app, do:

```bash
flutter run
```

Or just run via the provided launch.json

> [!IMPORTANT]
> Once you are ready to build the app, don't forget to delete the .env file after you've generated the config. Else, your .env file's contents will be shown if the app is being decompiled

## Making a new feature 🧱

See [MASON-GUIDE.md](MASON-GUIDE.md) for guidance. Once you use mason, you'll never go manual ever again.
