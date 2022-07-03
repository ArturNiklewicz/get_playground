import 'package:flutter/material.dart';

import 'package:get/get.dart';
//! Unless implementing a mixing, e.g. TickerProviderStateMixin<T extends StatefulWidget> mixin
//! No need to make stateful widgets with get
//
//* Do not call dipose method inside GetxController, it will not do anything,
//* Controller != Widget // you should not dispose it, it will be completely
//* automatically deleted
//
/* You can use Controller instance directly on GetBuilder value:
*GetBuilder<Controller>(
*  init: Controller(),
*  builder: (value) => Text(
*    '${value.counter}', //here
*  ),
*),
*/
//
/*
*class Controller extends GetxController {
*  static Controller get to => Get.find();
*[...]
*}
// on you view:
*GetBuilder<Controller>(  
*  init: Controller(), // use it only first time on each controller
*  builder: (_) => Text(
*    '${Controller.to.counter}', //here
*  )
*),
!or
*class Controller extends GetxController {
* // static Controller get to => Get.find(); // with no static get
*[...]
*}
// on stateful/stateless class
*GetBuilder<Controller>(  
*  init: Controller(), // use it only first time on each controller
*  builder: (_) => Text(
*    '${Get.find<Controller>().counter}', //here
*  ),
*),
If you want to refine a widget's update control with GetBuilder, you can assign them unique IDs:
*GetBuilder<Controller>(
*  id: 'text'
*  init: Controller(), // use it only first time on each controller
*  builder: (_) => Text(
*    '${Get.find<Controller>().counter}', //here
*  ),
*),
And update it this form:
*update(['text']);
You can also impose conditions for the update:
*update(['text'], counter < 10);
State mixin
Another way to handle your UI state is use the StateMixin<T> . To implement it, use the with to add the StateMixin<T> to your controller which allows a T model.
*class Controller extends GetController with StateMixin<User>{}
The change() method change the State whenever we want.
Just pass the data and the status in this way:
*change(data, status: RxStatus.success());
RxStatus allow these status:
*RxStatus.loading();
*RxStatus.success();
*RxStatus.empty();
*RxStatus.error('message');

*class OtherClass extends GetView<Controller> {
*  @override
*  Widget build(BuildContext context) {
*    return Scaffold(
*
*      body: controller.obx(
*        (state)=>Text(state.name),
*        
        // here you can put your custom loading indicator, but
        // by default would be Center(child:CircularProgressIndicator())
*        onLoading: CustomLoadingIndicator(),
*        onEmpty: Text('No data found'),

        // here also you can set your own error widget, but by
        // default will be an Center(child:Text(error))
*       onError: (error)=>Text(error),
*      ),
*    );
*}
Reactive programming has a higher consumption of RAM consumption that can be 
compensated for by the individual workflow, which will ensure that only one widget is rebuilt and when necessary, but creating a list with 80 objects, each with several streams is not a good one idea. Open the dart inspect and check how much a StreamBuilder consumes, and you'll understand what I'm trying to tell you.
With that in mind, I created the simple state manager. It is simple, 
and that is exactly what you should demand from it: updating state in blocks 
in a simple way, and in the most economical way.
GetBuilder is very economical in RAM, and there is hardly a more economical 
approach than him (at least I can't imagine one, if it exists, please let us know).
However, GetBuilder is still a mechanical state manager, you need to call update() 
just like you would need to call Provider's notifyListeners().

*Controller controller = Get.put(Controller()); 
// Rather Controller controller = Controller();

Instead of instantiating your class within the class you are using, 
you are instantiating it within the Get instance, which will make it available 
throughout your App. So you can use your controller (or Bloc class) normally
Note: If you are using Get's State Manager, pay more attention to 
the Bindings api, which will make easier to connect your view to your controller.
Note²: Get dependency management is decloupled from other parts of the package, 
so if for example your app is already using a state manager (any one, 
it doesn't matter), you don't need to change that, you can use this dependency 
injection manager with no problems at all
*/
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
