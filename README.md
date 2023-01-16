# todo_app

This code is a Flutter application that creates a simple Todo App. It includes a main function that runs the application using the runApp method and a MaterialApp widget. The MaterialApp widget takes a title, debugShowCheckedModeBanner, and home property.

The TODOAPP class is a StatefulWidget that creates a state object called _State. StatefulWidget are widgets that can change dynamically, while StatelessWidget are widgets that don’t change dynamically. The createState method returns an instance of the _State class.

The _State class has a number of properties and methods. The value property is a late-initialized string that will be used to add new todo items to the list. The listTODO property is an array that stores the todo items. The addToDo method is used to add new items to the listTODO array.

The build method is where the user interface of the app is created. It returns a Scaffold widget, which is a basic layout structure that provides visual structure for an app. The Scaffold widget has an appBar property that displays a title on the top of the screen.

The floatingActionButton property adds a floating action button to the bottom right corner of the screen. The button has an onPressed method that adds new todo items to the list when clicked.

The body property of the Scaffold widget is a ListView that displays the todo items stored in the listTODO array. The ListView.builder is a widget that allows to build a list of items on demand. The itemCount property determines the number of items in the list and the itemBuilder method is used to build the items in the list. Each item in the list is a ListTile widget that displays a leading text and a title.


### Demo of this App: https://github.com/ganeshsapkota/To_Do_App/issues/1#issue-1535295671
