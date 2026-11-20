# How to add locale 🌐

This project uses the official [Flutter internationalization](https://docs.flutter.dev/ui/internationalization) (`flutter_localizations` + `intl`). Currently supported languages are English (`en`) and French (`fr`).

All translation files live in [lib/app/localizations](/lib/app/localizations):

- `app_en.arb` - English, the **template** file (see [l10n.yaml](/l10n.yaml))
- `app_fr.arb` - French

> [!NOTE]
> Only the `.arb` files are committed. The generated Dart files (`app_localizations*.dart`) are git-ignored and created by the generator.

## Add a new string

1. Add the key to the template file `app_en.arb`:

```json
"welcomeMessage": "Welcome to {appName}",
"@welcomeMessage": {
  "description": "Greeting shown on the landing page",
  "placeholders": {
    "appName": {
      "type": "String"
    }
  }
}
```

> [!NOTE]
> The `@key` metadata block is only required when the string has placeholders. Keys use camel case, for example: `lightMode`.

2. Add the same key with its translation to every other language file, for example `app_fr.arb`:

```json
"welcomeMessage": "Bienvenue à {appName}"
```

3. Use it in the UI through the `context.l10n` extension:

```dart
Text(context.l10n.lightMode)
Text(context.l10n.welcomeMessage('Arch'))
```

## Add a new language

1. Create a new file in [lib/app/localizations](/lib/app/localizations) named `app_<language code>.arb`, for example `app_id.arb` for Indonesian.

2. Copy all the keys from `app_en.arb` and translate the values. Set the locale at the top of the file:

```json
{
  "@@locale": "id",
  "lightMode": "Mode Terang"
}
```

> [!NOTE]
> Keys missing from a language file fall back to the template file (English) and are reported as untranslated by the generator.

3. Add a way to switch to the new language, for example:

```dart
context.read<LocaleCubit>().setLocale(const Locale('id'));
```

`MaterialApp` picks up the new language automatically through `AppLocalizations.supportedLocales`, so no other config is needed.

## Generate the localizations

After adding a string or a language, don't forget to run:

```bash
dart run .arch/generate_env.dart
```
