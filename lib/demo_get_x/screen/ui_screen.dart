import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_buoi_13/demo_get_x/screen/binding_controller.dart';
import 'package:project_buoi_13/demo_get_x/screen/get_x_controller.dart';

class UI extends GetView<GetXControllerDemo> {
  @override
  Widget build(BuildContext context) {
    final GetXControllerDemo _controller = Get.put(GetXControllerDemo());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Demo get x"),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: GetBuilder<GetXControllerDemo>(
          builder: (GetXControllerDemo controller) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("${_controller.value}"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _controller.changed();
                      },
                      child: Text("Press"),
                    ),
                  ],
                ),
              ],
            );
          },
        ),

        // Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Obx(() => Text('${_controller.count}')),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         ElevatedButton(
        //           onPressed: () {
        //             _controller.decrease();
        //           },
        //           child: Text("-"),
        //         ),
        //         ElevatedButton(
        //           onPressed: () {
        //             _controller.increment();
        //           },
        //           child: Text("+"),
        //         )
        //       ],
        //     ),
        //   ],
        // ),
      ),
    );
  }
}


class UIBindingDemo extends GetView<DemoBindingController>{
  // final DemoBindingController _controller = Get.find<DemoBindingController>();
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Center(
        child: Text("${Get.find<DemoBindingController>().count}"),
      ),
    );
  }
}


// class DemoGetX extends StatefulWidget {
//   const DemoGetX({super.key});
//
//   @override
//   State<DemoGetX> createState() => _DemoGetXState();
// }
//
// class _DemoGetXState extends State<DemoGetX> {
//   @override
//   Widget build(BuildContext context) {
//     final GetXControllerDemo _controller = Get.put(GetXControllerDemo());
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text("Demo get x"),
//           centerTitle: true,
//           backgroundColor: Colors.blueAccent,
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Obx(() => Text('${_controller.count}')),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     _controller.decrease();
//                   },
//                   child: Text("-"),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     _controller.increment();
//                   },
//                   child: Text("+"),
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
