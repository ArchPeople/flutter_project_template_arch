## IMPORTANT

### 1. Add to [repository_module.dart](/lib/core/dependencies/modules/repository_module.dart) and import

```dart
getIt.registerLazySingleton<{{name.pascalCase()}}Repository>(
  () => {{name.pascalCase()}}RepositoryImpl(demoData: getIt<DemoData>()),
);
```

### 2. Add to [navigation_path.dart](/lib/app/navigation/path/navigation_path.dart)

```dart
static String {{name.camelCase()}} = '/{{name.paramCase()}}';
```

### 3. Add to [router.dart](/lib/app/navigation/router.dart) and import

```dart
GoRoute(
  path: NavigationPath.{{name.camelCase()}},
  builder: (context, state) {
    return {{name.pascalCase()}}View();
  },
),
```

You're done, you can delete this IMPORTANT.md file
