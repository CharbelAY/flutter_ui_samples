# flutter_uis

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


# UI Design Basics:

### Center:
Used to center elements it contains. sometimes used as root of body.

### Column:
Used to display elements as columns.
Properties:

- mainAxisAlignment: for columns it's the vertical axis
    - example: mainAxisAlignment: MainAxisAlignment.center, here elements are aligned in the center of the vertical axis
       
### SizedBox:
Is a box that is not visible that can seperate items 
Properties:

- height: height of the box
    - example: height: 40,
        
### Row:
Is a container that displays its elements in a row.
Properties:

- mainAxisAlignment: here it is horizontal

### Padding:
Can wrap a widget and add to it padding
Properties:

- padding:
    - value options:
        - EdgeInsets.all(value) for top right left and bottom
        - EdgeInsets.only(top:value,right:value,left:value,bottom:value)

### Container:
Is a container that has many properties to style and place elements in it
Properties:

- height
    - example: height: 60.0,
- width
    - example: width: 60.0,
- margin
    - example: EdgeInsets.only(left: 50.0,bottom: 50.0),
- decoration:
    - example: BoxDecoration(check box decoration section)
        
### BoxDecoration:
is a widget to set decoration property of a widget
Properties:

- borderRadius
    - example: BorderRadius.circular(50.0),
- color
    - example: Color(0xF45555FF)
        
### Icon:
Icon widget where you can used the built in material icons from google
example Icon(Icons.place,color:Colors.white),
Properties:

- color
- first parameter is the icon i.e. Icons.icon_name
    
### Exapnded
Widget that will take the available space
for example two expanded widgets in a row will take the same width. i.e. will split the width available in the row by two and each widget takes half

### Text
Is the standard text widget
Properties:

- first parameter is the text content
- style:
    takes TextStyle widget check its section
        
### TextStyle:
Holds styling of the text widget
Properties:

- fontSize
    - example: fontSize: 20.0,
- color 
    - example: color: Colors.white
        
### Stack:
can stack multiple widgets on top of each other
Properties:

- alignment specifies the stacked widgets base point for when you start adding margins to them to move them from being totally on top of each others
    - example: Alignment.center, 
    
### DefaultTabController:
widget that can wrap scafold widget and this will allow us to use TabBar and TabView inside the widgets to create different tabs that navigate to different pages
Properties:

- length: defines the number of tabs that will be created inside 

### TabView: 
can be inserted in a Scafold body. It takes childrens array to display diferent views
- example:
    <code>body: TabBarView( \
          children: [ \
           buildPage('home_page'), \
     </code>
     where buildPage is a function that returns the widget of the desired page
     
### TabBar:
will contain the different bar items example home star settings
example:
    <code>tabs: [
                      Tab(icon:Icon(Icons.home),text:'home'),
                      Tab(icon:Icon(Icons.star),text:'star'),
                 ]
     </code>
Properties:
- isScrollable: true, if we have many tabs example 8 tabs we can scroll to see the hidden ones that are not shown due to limited screen space
- indicatorColor: Colors.white, the color of the selected tab
- indicatorWeight: 5, how big is the bar showing the selected tab

### AppBar:
the application bar can be different for each scafold used
Properties:
- title title is Text()
- centerTitle boolean to center or not
- backgroundColor Colors.someColor
- leading stuff that go to the left of the title
- elevation elevation for shadow of the appBar
- flexibleSpace can be used to set the background of the appBar
- actions stuff to the right of the title takes an array of widgets
- bottom extends the appBar and we can include underneath the normal appBar more stuff like a TabBar

### LinearGradient:
Properties:
- colors: array of colors
- begin where the first color of the array begins Alignment.bottomRight
- end where the second color begins