# How to run the app 🏃‍♂️

## Ready-to-use flavors

We provided you with ready to use flavors:

- development
- staging
- production

## Prepare the env

Create a .env file (If you haven't already from initialization) in root project with this example content:

```bash
FLAVOR=development
OTHER_KEY_1=othervalue1
OTHER_KEY_2=othervalue2
```

> [!NOTE]
> The key in the .env file will be changed into camel case format, for example: FLAVOR to flavor, or OTHER_KEY_1 to otherKey1

> [!WARNING]
> Please always include the 'FLAVOR=development' in the .env file. You can change the FLAVOR to staging or production or even your custom flavor.

Everytime you add a value in the .env file, don't forget to run:

```bash
dart run .arch/generate_env.dart
```

## Run the App

Launch the app via [launch.json](/.vscode/launch.json)
