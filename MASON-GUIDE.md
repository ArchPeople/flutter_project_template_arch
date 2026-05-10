# Mason Guide for new feature 🧱

## Definition of feature

We define a single page as a "feature", that way we can gather all the required cubits, repository and UI of that specific feature.

An example of this would be features like "Sign in", "Order list", "Profile" etc

This is the base structure of our definition of a feature:

```text
.
└── feature_name/
    ├── cubit/
    │   └── main/
    │       ├── feature_name_cubit.dart
    │       └── feature_name_state.dart
    ├── repository/
    │   └── feature_name_repository.dart
    └── view/
        ├── screen/
        │   └── feature_name_screen.dart
        ├── section/
        │   └── name_section.dart
        ├── widget/
        │   └── widget_section.dart
        └── feature_name_view.dart
```

You can see the example in the [features](lib/features/) folder

## Mason Setup

With Mason, you can generate the structure and all the files in an instant, you don't have to do a copy-paste-rename of your previous feature. We've already prepared the brick (template) for it.

Install mason on your machine

```bash
dart pub global activate mason_cli
```

Initialize mason in the project

```bash
mason init
```

Activate our ready-to-use feature brick

```bash
mason get feature
```

## Mason Usage

To use Mason, type this:

```bash
mason make feature
```

Enter the feature name, for example order detail (mason will automatically change it into order_detail, so no worries)

Mason will then generate all the files, you just have to go to the generated IMPORTANT.md file and copy-paste the code to its specific files.
