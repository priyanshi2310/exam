import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late final controller = SlidableController(this);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slidable Example',
      home: Scaffold(
        body: ListView(
          children: [
            Slidable(
              key: const ValueKey(0),
              startActionPane: ActionPane(
                motion: const ScrollMotion(),
                dismissible: DismissiblePane(onDismissed: () {}),
                children: const [
                  SlidableAction(
                    onPressed: doNothing,
                    backgroundColor: Color(0xFFFE4A49),
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Delete',
                  ),
                  SlidableAction(
                    onPressed: doNothing,
                    backgroundColor: Color(0xFF21B7CA),
                    foregroundColor: Colors.white,
                    icon: Icons.share,
                    label: 'Share',
                  ),
                ],
              ),
              endActionPane: ActionPane(
                motion: const ScrollMotion(),
                children: [
                  SlidableAction(
                    flex: 2,
                    onPressed: (_) => controller.openEndActionPane(),
                    backgroundColor: const Color(0xFF7BC043),
                    foregroundColor: Colors.white,
                    icon: Icons.archive,
                    label: 'Archive',
                  ),
                  SlidableAction(
                    onPressed: (_) => controller.close(),
                    backgroundColor: const Color(0xFF0392CF),
                    foregroundColor: Colors.white,
                    icon: Icons.save,
                    label: 'Save',
                  ),
                ],
              ),
              child: const ListTile(title: Text('Slide me')),
            ),
            Slidable(
              controller: controller,
              key: const ValueKey(1),
              startActionPane: const ActionPane(
                motion: ScrollMotion(),
                children: [
                  SlidableAction(
                    onPressed: doNothing,
                    backgroundColor: Color(0xFFFE4A49),
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Delete',
                  ),
                  SlidableAction(
                    onPressed: doNothing,
                    backgroundColor: Color(0xFF21B7CA),
                    foregroundColor: Colors.white,
                    icon: Icons.share,
                    label: 'Share',
                  ),
                ],
              ),
              endActionPane: ActionPane(
                motion: const ScrollMotion(),
                dismissible: DismissiblePane(onDismissed: () {}),
                children: const [
                  SlidableAction(
                    flex: 2,
                    onPressed: doNothing,
                    backgroundColor: Color(0xFF7BC043),
                    foregroundColor: Colors.white,
                    icon: Icons.archive,
                    label: 'Archive',
                  ),
                  SlidableAction(
                    onPressed: doNothing,
                    backgroundColor: Color(0xFF0392CF),
                    foregroundColor: Colors.white,
                    icon: Icons.save,
                    label: 'Save',
                  ),
                ],
              ),
              child: const ListTile(title: Text('Slide me')),
            ),
          ],
        ),
      ),
    );
  }
}

void doNothing(BuildContext context) {}
