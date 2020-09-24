class Switch extends PBEgg implements PBInjectedIntermediate {
  
  /// These are the attributes that are required from Parabeac-Core in order to
  /// proccess the [PBEgg]. The `topLeftCorner` and the `bottomRightCorner` is positional
  /// data that Parabeac Core uses to position the [PBEgg] correctly in the screen. The [UUID]
  /// is used to identify a particular element in a tree. Finally the [currentContext] provides `context`
  /// on the current process, for example, context contains the properties `screenTopLeftCorner` and the `screenBottomRightCorner` 
  /// which is information about the entire screen that this node lives in.
  Switch(Point topLeftCorner, Point bottomRightCorner, this.UUID,
      {this.currentContext})
      : super(topLeftCorner, bottomRightCorner, currentContext) {

    /// NOTE: We must initialize a [PBGenerator] because this code is going to be injected inside
    /// of Parabeac Core; it must be ready to run without compiler errors once inside of Parabeac Core.    
    generator = SwitchGenerator(widgetType);
  }

  PBContext currentContext;

  final String UUID;

  String widgetType = 'Switch';

  /// The `semanticName` is the name designers are going to use in the design system to corrolate
  /// UI elements with an actual [PBEgg].
  String semanticName = '.*switch';

  /// This function is made to add a child. As Parabeac-Core traverses through the design tree, 
  /// this egg has control over where the child is added to some other property or added as 
  /// a regular child in the current interpret process.
  @override
  void addChild(PBIntermediateNode node) {}

  /// This function is made to give the egg the ability to modify the way alignment is handled 
  /// on the children or other properties that need alignment.
  @override
  void alignChild() {}

  @override
  void extractInformation(DesignNode incomingNode) {}

  /// This function should simply be used to call the generator for this egg to convert it into Flutter code.
  @override
  PBEgg generatePluginNode(
      Point topLeftCorner, Point bottomRightCorner, DesignNode originalRef) {
    return Switch(topLeftCorner, bottomRightCorner, UUID,
        currentContext: currentContext);
  }
}

class SwitchGenerator extends PBGenerator {
  SwitchGenerator(String widgetType) : super(widgetType);

  /// This is the main function for this class where we take the information
  ///  from an Egg and generate it into Flutter code.
  @override
  String generate(PBIntermediateNode source) {
    if (source is Switch) {

      /// Declares a parameter that is used to declare an instance variable and contructor parameter in the manager.
      var value = PBParam('switchValue', 'bool', false);

      /// Notifying the manager to add an instance variable to the file.
      manager.addInstanceVariable(value);
      
      /// Notifying the manager to inject a contstructor variable to the constructor to override the default value if wanted.
      manager.addConstructorVariable(value);
      
      /// Notifying the manager to inject a package dependency into the pubspec.yaml file of the exported project.
      manager.addDependencies('list_tile_switch', '^0.0.2');
      
      /// Notifying the manager to inject an import into the file.
      manager.addImport('package:list_tile_switch/list_tile_switch.dart');
      
      var buffer = StringBuffer();
      /// Buffer is used to write the exported Flutter code. You can customize this as you want, currently it only supports a string value.
      buffer.write('''ListTileSwitch(  
        value: switchValue,  
      leading: Icon(Icons.access_alarms),  
      onChanged: (value) {  
        setState(() {  
        switchValue = value;  
        });
      },
      visualDensity: VisualDensity.comfortable,
      switchType: SwitchType.cupertino,
      switchActiveColor: Colors.indigo,  
      title: Text('Default Custom Switch'),  
    ),
   ''');
      return buffer.toString();
    }
  }
}