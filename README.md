# Parabeac-Egg-Template
Parabeac eggs are plugins were created to make sure developers could create plugins that changed the way code would be exported.

## Getting started
Before creating your plugin, run the following command to create a dart project:
`pub global activate stagehand`
This will create a simple library that you can submit to Parabeac.

After creating the dart project, install the Parabeac Core library. This will include the **PluginNode**, **PBGenerator**, and **SketchNode** classes, which provide a template of what is needed to create your own Plugin.

To install the Parabeac Core library, add the following lines to your pubspec.yaml file:
```
pubspec.yaml

dependencies:
    parabeac_core: ^1.0.0
```

Finally, run the following command in your terminal to get theparabeac_corelibrary packages:
`pub get`

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).
