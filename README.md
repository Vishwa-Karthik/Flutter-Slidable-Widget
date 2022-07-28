# Flutter - Slidable 

A simple way to use Slidable widget inside flutter.

## Add Dependency
```bash
flutter pub add flutter_slidable
```
## Results
<p>
<img src="https://github.com/Vishwa-Karthik/Flutter-Slidable-Widget/blob/master/gifff.gif" width=200 height=400 />
</p>

## Code
```dart
return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: const Text("S L I D A B L E"),
        centerTitle: true,
      ),
      body: Center(
          child: Slidable(
        startActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              flex: 2,
              onPressed: ((context) {
                // call phone
              }),
              icon: Icons.phone,
              backgroundColor: Colors.green,
            ),
            SlidableAction(
              onPressed: ((context) {
                // text phone
              }),
              icon: Icons.chat,
              backgroundColor: Colors.blue,
            ),
          ],
        ),
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: ((context) {
                // delete phone
              }),
              icon: Icons.delete_forever,
              backgroundColor: Colors.red,
            ),
          ],
        ),
        child: Container(
          color: Colors.deepPurple[300],
          child: const ListTile(
            title: Text(
              "Vishwa Karthik",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white70),
            ),
            subtitle: Text(
              "GITHUB",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Icon(
              Icons.person,
              size: 60,
            ),
          ),
        ),
      )),
    );
```

## Reference
pub.dev: [FLUTTER_SLIDABLE](https://pub.dev/packages/flutter_slidable)
