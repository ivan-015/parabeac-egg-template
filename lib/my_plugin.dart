import 'my_generator.dart';

class MyPlugin extends PBNakedPluginNode {
  @override
  String semanticName; // Example: <MyPlugin>

  @override
  PBGenerator generator;

  MyPlugin() {
    generator = MyGenerator();
  }

  @override
  void extractInformation(SketchNode incomingNode) {
    // TODO:
  }

  @override
  void addChild(PBIntermediateNode node) {
    // TODO: implement addChild
  }

  @override
  PluginNode generatePluginNode(
      Point topLeftCorner, Point bottomRightCorner, SketchNode originalRef) {
    // TODO:
  }
}

class MyGenerator extends PBGenerator {
  MyGenerator();

  @override
  String generate(PBIntermediateNode node) {
    // TODO:
  }
}
