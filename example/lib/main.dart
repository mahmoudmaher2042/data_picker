import 'package:file_picker_example/src/file_picker_demo.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';


void main() {
  runApp(const MaterialApp(
    home: File_Picker(),
    debugShowCheckedModeBanner: false,
  ));
}

class File_Picker extends StatefulWidget {
  const File_Picker({Key? key}) : super(key: key);

  @override
  State<File_Picker> createState() => _File_PickerState();
}

class _File_PickerState extends State<File_Picker> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      // 2. Pass that key to the `IntroductionScreen` `key` param

      pages: [
        PageViewModel(
          title: 'Data Picker',
          bodyWidget: Image.asset("assets/img/pic.png"),),
        PageViewModel(
            title: 'Data Picker',
            bodyWidget: Container(
              width: 280,
              height: 350,
              decoration: BoxDecoration(
                  color: Colors.blueAccent.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),

                    const Text("مميزات برنامجنا"),const SizedBox(
                      height: 25,
                    ),
                    const Text(" ١- سحب الملفات من داخل الجهاز"),const SizedBox(
                      height: 25,
                    ),
                    const Text("٢-انشاط مجلدات لتتم عمليه الحفظ بداخلها"),const SizedBox(
                      height: 25,
                    ),
                    const Text("٣-اعداد نسخ احتياطي للبيانات "),const SizedBox(
                      height: 25,
                    ),
                    const Text("٤- تنزيل الملفات من مواقع التحميل داخل البرنامج "), const SizedBox(
                      height: 25,
                    ),
                    const Text("٥-ادراج الصور من داخل الجهاز"),
                  ],
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end),
            )),
        PageViewModel(title: 'Data Picker',
          bodyWidget: Image.asset("assets/img/360_F_335901065_hJcwuyHmr26ZaQYSN0OFTR2EVh010aRX.jpeg"),),

      ],done: const Text('done'),skip: const Text('skip'),
      showNextButton: true,
      showDoneButton: true,
      showSkipButton: true,
      skipSemantic: 'skip',
      next: const Text('next'),
      onDone:(){Navigator.of(context).push(MaterialPageRoute(builder: (x){return const FilePickerDemo()();}));},
    );
  }
}

