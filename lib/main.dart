import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_provider.dart';
import 'main_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainProviderHolders());
}

class MainProviderHolders extends StatelessWidget {
  const MainProviderHolders({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppProvider>(
          create: (context) => AppProvider(),
        ),
      ],
      child: const MainApp(),
    );
  }
}
