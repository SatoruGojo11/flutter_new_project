import 'package:flutter/material.dart';
import 'package:flutter_new_project/screens/getx_project/screens/main_screen.dart';
import 'package:flutter_new_project/screens/packages/ai_barcode_scanner.dart';
import 'package:flutter_new_project/screens/packages/dropdown_textfield.dart';
import 'package:flutter_new_project/screens/packages/easy_debounce.dart';
import 'package:flutter_new_project/screens/packages/flutter_expandable_fab.dart';
import 'package:flutter_new_project/screens/packages/flutter_spinkit.dart';
import 'package:flutter_new_project/screens/packages/lecle_downloads_path_provider.dart';
import 'package:flutter_new_project/screens/packages/mobile_scanner.dart';
import 'package:flutter_new_project/screens/packages/onesignal_flutter.dart';
import 'package:flutter_new_project/screens/packages/open_filex.dart';
import 'package:flutter_new_project/screens/packages/pointycastle.dart';
import 'package:flutter_new_project/screens/packages/pull_to_refresh.dart';
import 'package:flutter_new_project/screens/packages/qr_flutter.dart';
import 'package:flutter_new_project/screens/packages/readmore.dart';
import 'package:flutter_new_project/screens/packages/responsive_flutter.dart';
import 'package:flutter_new_project/screens/packages/rich_clipboard.dart';
import 'package:flutter_new_project/screens/packages/screen_brightness.dart';
import 'package:flutter_new_project/screens/packages/share_plus.dart';
import 'package:flutter_new_project/screens/packages/step_progress_indicator.dart';
import 'package:flutter_new_project/screens/packages/super_tooltip.dart';
import 'package:flutter_new_project/screens/packages/syncfusion_flutter_charts.dart';
import 'package:flutter_new_project/screens/packages/syncfusion_flutter_core.dart';
import 'package:flutter_new_project/screens/packages/syncfusion_flutter_datepicker.dart';
import 'package:flutter_new_project/screens/packages/table_calender.dart';
import 'package:flutter_new_project/screens/packages/webview_flutter.dart';
import 'package:flutter_new_project/utils/text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> allPackageName = [
    'Ai Barcode Scanner',
    'DropDown TextField',
    'Easy Debounce',
    'Flutter Expandable Fab',
    'Flutter Spinkit',
    'Lecle Downloads Path Provider',
    'Mobile Scanner',
    'OneSignal Flutter onesignal_flutter',
    'Open Filex',
    'Pointy Castle',
    'Pull to Refresh',
    'QR Flutter',
    'Responsive FrameWork',
    'Readmore',
    'Rich Clipboard',
    'Screen Brightness',
    'Share plus',
    'Step Progress Indicator',
    'Syncfusion Flutter Chart',
    'Syncfusion Flutter Datepicker',
    'Syncfusion Flutter Core',
    'Table Calender',
    'WebView Flutter',
    'Super ToolTip Package',
    'Getx Package',
  ];

  List<Widget> allPackageNameScreens = const [
    AiBarCodeScannerScreen(),
    DropDownTextFieldScreen(),
    EasyDebounceScreen(),
    FlutterExpandableFabScreen(),
    FlutterSpinkitScreen(),
    LecleDownloadsPathProviderScreen(),
    MobileScannerScreen(),
    OneSignalFlutterScreen(),
    OpenFilexScreen(),
    PointyCastleScreen(),
    PullToRefreshScreen(),
    QrFlutterScreen(),
    ResponsiveFrameworkScreen(),
    ReadmoreScreen(),
    RichClipboardScreen(),
    ScreenBrightnessScreen(),
    ShareplusScreen(),
    StepProgressIndicatorScreen(),
    Syncfusionflutterchartsscreen(),
    SyncfusionFlutterDatePickerScreen(),
    SyncfusionFlutterCoreScreen(),
    TableCalenderScreen(),
    WebViewFlutterScreen(),
    SuperToolTipScreen(),
    MainScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: allPackageName.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            tileColor: Colors.amber,
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => allPackageNameScreens[index])),
            title: text(allPackageName[index]),
            leading: text('${index + 1}'),
          ),
        ),
      ),
    );
  }
}
