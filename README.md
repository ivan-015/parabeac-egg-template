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

4. Edit your custom egg.

# Customizing your egg

The egg file is made up of two classes.
* PBEgg
   * This is the class that overrides Parabeac-Core's **Intermediate nodes** for the set semantic name expected for this egg.
* PBGenerator
   * This is the class that converts the corresponding egg into Flutter code.

![egg process](https://kindling-sketch.s3.amazonaws.com/eggs_demo.gif)

## How do Eggs fit in the Parabeac-Core Process

1. Design files get converted into Parabeac Design Nodes. These nodes contain the necessary semantics that are needed to detect for Parabeac Eggs.

2. Design Nodes will get converted into regular intermediate nodes while nodes detected as eggs will get converted into eggs.

3. Regular intermediate nodes get processed and converted into Flutter code by the regular process while eggs are able to control how they are handled almost entirely.

This Repository hosts a sample Parabeac Egg template that can be used to kick start the development of your egg or just give more clarity and guidance on how Parabeac Eggs work. In order to get going with Parabeac Eggs just clone the repository and you're good to go.

There are a couple of things to keep in mind while developing your egg.

1. Make sure you have a semantic for your egg, it could be anything; make sure to communicate the semantic with the designer.
2. Make sure you are extending the egg class.
3. Finally, place your egg in the plugins directory inside of Parabeac Core.  (`/Parabeac-Core/lib/plugins`)
4. Below is how to utilize each function available for the PBEgg & PBGenerator classes.

## Egg Functions & Capabilities

`void addChild(PBIntermediateNode node)` -

This function is used to add a child to this node. You can 

`void alignChild()` -

`void extractInformation(DesignNode incomingNode)` -

`PBEgg generatePluginNode(Point topLeftCorner, Point bottomRightCorner, DesignNode originalRef) ` -

## Generator Functions & Capabilities

`String generate(PBIntermediateNode source)` -

After this, you can run Parabeac Core and watch your egg do its magic!
