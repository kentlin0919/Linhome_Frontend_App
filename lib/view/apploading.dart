import 'package:linhome_frontend_app/import.dart';

class Apploading extends StatefulWidget {
  const Apploading({super.key});

  @override
  State<Apploading> createState() => _ApploadingState();
}

class _ApploadingState extends State<Apploading> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('LinHome')],
        ),
      ),
    );
  }
}
