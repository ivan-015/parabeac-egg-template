# Parabeac-Egg-Template
Parabeac eggs are plugins that were created to enable developers to have custom implementations for the way a design element converts to Flutter code. This repo Parabeac-egg-template is a template to quickly get a developer going on creating an egg.

## What are Parabeac Eggs
To learn what Parabeac eggs are, visit the [parabeac_eggs](https://github.com/Parabeac/parabeac_eggs) repo.

## Getting started

1. Clone Parabeac-Core
```
git clone --recurse-submodules https://github.com/Parabeac/Parabeac-Core.git
```
2. Clone this repo
```
git clone https://github.com/Parabeac/Parabeac-egg-template.git
```
3. Move the `my_egg.dart` file into the plugins folder inside of the Parabeac-Core project at `/parabeac-core/lib/plugins/`

This Repository hosts a sample Parabeac Egg template that can be used to kick start the development of your egg or just give more clarity and guidance on how Parabeac Eggs work. In order to get going with Parabeac Eggs just clone the repository and you're good to go.

There are a couple of things to keep in mind while developing your egg.
1. Make sure you have a semantic for your egg, it could be anything; make sure to communicate the semantic with the designer.
2. Make sure you are extending the correct plugin class.
3. Finally, place your egg in the plugins directory inside of Parabeac Core.

After this, you can run Parabeac Core and watch your egg do its magic!
