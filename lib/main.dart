import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int myIndex=0;
  MySnackbar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle=ElevatedButton.styleFrom(
        padding: EdgeInsets.all(16),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(0)),
        )
    );
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
       // backgroundColor:Colors.black87,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('E-commerce'),
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 0,
        backgroundColor: Colors.blueGrey,
        actions: [
          // IconButton(onPressed: (){MySnackbar("comments", context);}, icon:Icon(Icons.comment) ),
          IconButton(onPressed: (){MySnackbar("Search", context);}, icon:Icon(Icons.search) ),
          // IconButton(onPressed: (){MySnackbar("settings", context);}, icon:Icon(Icons.settings) ),
          IconButton(onPressed: (){MySnackbar("emails", context);}, icon:Icon(Icons.email) ),
          IconButton(onPressed: (){MySnackbar("cart", context);}, icon:Icon(Icons.shopping_cart) ),
          IconButton(onPressed: (){MySnackbar("notification", context);}, icon:Icon(Icons.notification_add) ),


        ],
      ),
    bottomNavigationBar: BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.blueGrey,
    //showUnselectedLabels: false,
    showSelectedLabels: true,

    onTap: (index){
    setState(() {
    myIndex=index;
    });
    },
    currentIndex: myIndex,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home"),

        BottomNavigationBarItem(icon: Icon(Icons.map),label:"Location"),
        BottomNavigationBarItem(icon: Icon(Icons.message),label:"Chat"),
        BottomNavigationBarItem(icon: Icon(Icons.card_giftcard),label:"Offers"),
      ],



    ),

      body: Container(

      color: Colors.grey.shade200,
    child: Container(

    child: SingleChildScrollView(
    scrollDirection: Axis.vertical,

    child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Gap(20),
    Container(
    height: 50,
    width: 140,
    color: Colors.lightGreen,
    child: Center(child: Text('Winter Cloths',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),))),

    Gap(20),
    SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Column(
    children: [
    Container(
    height: 250,
    width: 250,
    child: Image.network('https://m.media-amazon.com/images/I/61xIzU8NxPL._AC_SX679_.jpg')),

    ],


    ),
    Gap(10),
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text('Columbia Mens Jacket',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
    Text('Price:2100 Tk',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
    Text('Size:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
    SizedBox(height: 5,width:5),
    DropdownButton<String>(

    items: ['Small','Medium', 'Large',]
        .map((String value) {
    return DropdownMenuItem<String>(
    value: value,
    child: Text(value),
    );
    }).toList(),
    onChanged: (String? newValue) {
    // Do something with the selected value
    },
    hint: Text(
    'Select',
    style: TextStyle(
    color: Colors.black54,
    ),

    ),
    ),
    Gap(10),
    Text('Product details',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
    Text('Fabric Type : 100% Polyester',style: TextStyle(fontSize:15,fontWeight: FontWeight.w500),),
    Text('Care Instructions : Machine Wash',style: TextStyle(fontSize:15,fontWeight: FontWeight.w500),),
    Text('Origin : Imported',style: TextStyle(fontSize:15,fontWeight: FontWeight.w500),),
    Gap(10),

    ElevatedButton(onPressed: (){
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context)=> payment_method(),
    ));
    }, child: Text('Buy Now',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),style: buttonStyle,),
    ],
    ),


    ],
    ),
    ),
      Gap(20),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                    height: 250,
                    width: 250,
                    child: Image.network('https://m.media-amazon.com/images/I/91Mn0ReDcuL._AC_UL480_FMwebp_QL65_.jpg')),

              ],

            ),

            Gap(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Sueded Pullover Hoodie',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                Text('Price:1500 Tk',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                Text('Size:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                SizedBox(height: 5,width:5),
                DropdownButton<String>(

                  items: ['Small','Medium', 'Large',]
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    // Do something with the selected value
                  },
                  hint: Text(
                    'Select',
                    style: TextStyle(
                      color: Colors.black,
                    ),

                  ),
                ),
                Gap(10),
                Text('Product details',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                Text('Fabric Type : 80% Cotton',style: TextStyle(fontSize:15,fontWeight: FontWeight.w500),),
                Text('Care Instructions : Machine Wash',style: TextStyle(fontSize:15,fontWeight: FontWeight.w500),),
                Text('Origin : Imported',style: TextStyle(fontSize:15,fontWeight: FontWeight.w500),),
                Gap(10),

                ElevatedButton(onPressed: (){ Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> payment_method1(),
                    ));}, child: Text('Buy Now',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),style: buttonStyle,),
              ],
            ),


          ],
        ),
      ),
      Gap(20),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                    height: 250,
                    width: 250,
                    child: Image.network('https://m.media-amazon.com/images/I/81IbJuc-ShL._MCnd_AC_UL480_FMwebp_QL65_.jpg')),

              ],

            ),

            Gap(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hooded Puffer Coat',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                Text('Price:3100 Tk',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                Text('Size:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                SizedBox(height: 5,width:5),
                DropdownButton<String>(

                  items: ['Small','Medium', 'Large',]
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    // Do something with the selected value
                  },
                  hint: Text(
                    'Select',
                    style: TextStyle(
                      color: Colors.black,
                    ),

                  ),
                ),
                Gap(10),
                Text('Product details',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                Text('Fabric Type :100% Nylon',style: TextStyle(fontSize:15,fontWeight: FontWeight.w500),),
                Text('Care Instructions :  Machine Wash',style: TextStyle(fontSize:15,fontWeight: FontWeight.w500),),
                Text('Origin : Imported',style: TextStyle(fontSize:15,fontWeight: FontWeight.w500),),
                Gap(10),

                ElevatedButton(onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=> payment_method2(),
                      ));
                }, child: Text('Buy Now',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),style: buttonStyle,),
              ],
            ),


          ],
        ),
      ),
      Gap(20),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                    height: 250,
                    width: 250,
                    child: Image.network('https://m.media-amazon.com/images/I/710Zgw3lZAL._AC_SY550_.jpg')),

              ],

            ),

            Gap(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Warm Superfine Shawl',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                Text('Price:2300 Tk',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                Text('Size:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                SizedBox(height: 5,width:5),
                DropdownButton<String>(

                  items: ['Small','Medium', 'Large',]
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    // Do something with the selected value
                  },
                  hint: Text(
                    'Select',
                    style: TextStyle(
                      color: Colors.black,
                    ),

                  ),
                ),
                Gap(10),
                Text('Product details',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                Text('Fabric Type :100% Cashmere',style: TextStyle(fontSize:15,fontWeight: FontWeight.w500),),
                Text('Care Instructions :Hand Wash Only',style: TextStyle(fontSize:15,fontWeight: FontWeight.w500),),
                Text('Origin : Imported',style: TextStyle(fontSize:15,fontWeight: FontWeight.w500),),
                Gap(10),

                ElevatedButton(onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=> payment_method3(),
                      ));
                }, child: Text('Buy Now',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),style: buttonStyle,),
              ],
            ),


          ],
        ),
      ),




    ],
    ),
    ),
    ),
      )

 // This trailing comma makes auto-formatting nicer for build methods.
    );

  }
}

class payment_method extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle=ElevatedButton.styleFrom(
        padding: EdgeInsets.all(16),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(0)),
        )
    );
    return Scaffold(
      appBar:AppBar(
        title:Text( 'Payment Method'),
        titleSpacing: 0,
        // centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 0,
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        color: Colors.grey.shade200,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
       // crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
                height: 260,
                width: 260,
                child: Image.network('https://m.media-amazon.com/images/I/61xIzU8NxPL._AC_SX679_.jpg'),
              ),
              Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Quantity:',style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),),
                  Gap(10),
                  DropdownButton<String>(
                    items: ['1','2', '3', '4']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      // Do something with the selected value
                    },
                    hint: Text(
                      'Select ',
                      style: TextStyle(
                        color: Colors.black,
                      ),

                    ),
                  ),
                ],
              ),
              Gap(10),
              Text('About this item:',style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),),
              Text('OMNI-HEAT: Our patented Heat Reflective garments are the ultimate body heat management system for outdoor performance. The interior lining consists of our metallic dot pattern designed to retain heat, while the breathable fabric dissipates moisture.',style: TextStyle(fontSize:15,fontWeight: FontWeight.w500,),maxLines: 4,textAlign: TextAlign.center,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Gap(5),

                  Container(
                      height: 90,
                      width: 90,
                      child: Image.network('https://tse2.mm.bing.net/th?id=OIP.BlTniSn8Q0s07PC_t2LnDAHaE7&pid=Api&P=0&h=220')
                  ),
                  Gap(5),

                  Container(
                    height: 90,
                    width: 90,
                    child: Image.network('https://tse4.mm.bing.net/th?id=OIP.m7rqv0zESeic7Gnfss7glgHaFS&pid=Api&P=0&h=220'),
                  ),
                  Gap(5),
                  Container(
                    height: 90,
                    width: 90,
                    child: Image.network('https://tse4.mm.bing.net/th?id=OIP.XRllqUOl74yL-bCUqiwWkAHaE9&pid=Api&P=0&h=220'),
                  ),
                  Gap(5),
                  Container(
                    height: 90,
                    width: 90,
                    child: Image.network('https://tse2.mm.bing.net/th?id=OIP.cSqCVRE_EP7ZcSx-9Iv8xAHaFj&pid=Api&P=0&h=220'),
                  ),
                  Gap(5),
                  Container(
                    height: 90,
                    width: 90,
                    child: Image.network('https://tse4.mm.bing.net/th?id=OIP._6_1SBDkYzK8wbGnnp4n2gHaEK&pid=Api&P=0&h=220'),
                  ),
                ],
              ),
              Gap(10),
              Text('Payment With:',style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),),
              Gap(10),

              SizedBox(height: 10),
              DropdownButton<String>(
                items: ['Bkash','Nagad', 'Rocket', 'MasterCard', 'Visa']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  // Do something with the selected value
                },
                hint: Text(
                  'Select ',
                  style: TextStyle(
                    color: Colors.black,
                  ),

                ),
              ),
              Gap(20),
              ElevatedButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> MyHomePage(title: 'E-Commerce'),
                    ));
              }, child: Text('Go Back',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),style: buttonStyle,),

            ],
          ),
        ),
      ),

    );
  }

}
class payment_method1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle=ElevatedButton.styleFrom(
        padding: EdgeInsets.all(16),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(0)),
        )
    );
    return Scaffold(
      appBar:AppBar(
        title:Text( 'Payment Method'),
        titleSpacing: 0,
        // centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 0,
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        color: Colors.grey.shade200,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
                height: 260,
                width: 260,
                child: Image.network('https://m.media-amazon.com/images/I/91Mn0ReDcuL._AC_UL480_FMwebp_QL65_.jpg'),
              ),
              Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Quantity:',style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),),
                  Gap(10),
                  DropdownButton<String>(
                    items: ['1','2', '3', '4']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      // Do something with the selected value
                    },
                    hint: Text(
                      'Select ',
                      style: TextStyle(
                        color: Colors.black,
                      ),

                    ),
                  ),
                ],
              ),
              Gap(10),
              Text('About this item:',style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),),
              Text('Cotton and polyester come together to deliver softness and durability so you can move with comfort. This wear-everywhere sweatshirt is lighter than classic hoodies for easy layering and equipped with a kangaroo pocket for stashing your essentials. The burnout wash gently fades the fabric to create a casual lived-in look',style: TextStyle(fontSize:15,fontWeight: FontWeight.w500,),maxLines: 5,textAlign: TextAlign.center,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Gap(5),

                  Container(
                      height: 90,
                      width: 90,
                      child: Image.network('https://tse2.mm.bing.net/th?id=OIP.BlTniSn8Q0s07PC_t2LnDAHaE7&pid=Api&P=0&h=220')
                  ),
                  Gap(5),

                  Container(
                    height: 90,
                    width: 90,
                    child: Image.network('https://tse4.mm.bing.net/th?id=OIP.m7rqv0zESeic7Gnfss7glgHaFS&pid=Api&P=0&h=220'),
                  ),
                  Gap(5),
                  Container(
                    height: 90,
                    width: 90,
                    child: Image.network('https://tse4.mm.bing.net/th?id=OIP.XRllqUOl74yL-bCUqiwWkAHaE9&pid=Api&P=0&h=220'),
                  ),
                  Gap(5),
                  Container(
                    height: 90,
                    width: 90,
                    child: Image.network('https://tse2.mm.bing.net/th?id=OIP.cSqCVRE_EP7ZcSx-9Iv8xAHaFj&pid=Api&P=0&h=220'),
                  ),
                  Gap(5),
                  Container(
                    height: 90,
                    width: 90,
                    child: Image.network('https://tse4.mm.bing.net/th?id=OIP._6_1SBDkYzK8wbGnnp4n2gHaEK&pid=Api&P=0&h=220'),
                  ),
                ],
              ),
              Gap(10),
              Text('Payment With:',style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),),
              Gap(10),

              SizedBox(height: 10),
              DropdownButton<String>(
                items: ['Bkash','Nagad', 'Rocket', 'MasterCard', 'Visa']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  // Do something with the selected value
                },
                hint: Text(
                  'Select ',
                  style: TextStyle(
                    color: Colors.black,
                  ),

                ),
              ),
              Gap(20),
              ElevatedButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> MyHomePage(title: 'E-Commerce'),
                    ));
              }, child: Text('Go Back',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),style: buttonStyle,),


            ],
          ),
        ),
      ),

    );
  }

}
class payment_method2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle=ElevatedButton.styleFrom(
        padding: EdgeInsets.all(16),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(0)),
        )
    );
    return Scaffold(
      appBar:AppBar(
        title:Text( 'Payment Method'),
        titleSpacing: 0,
        // centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 0,
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        color: Colors.grey.shade200,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
                height: 260,
                width: 260,
                child: Image.network('https://m.media-amazon.com/images/I/81IbJuc-ShL._MCnd_AC_UL480_FMwebp_QL65_.jpg'),
              ),
              Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Quantity:',style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),),
                  Gap(10),
                  DropdownButton<String>(
                    items: ['1','2', '3', '4']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      // Do something with the selected value
                    },
                    hint: Text(
                      'Select ',
                      style: TextStyle(
                        color: Colors.black,
                      ),

                    ),
                  ),
                ],
              ),
              Gap(10),
              Text('About this item:',style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),),
              Text('Unique Design: Windproof puffer coat, soft and warm padded, ribbed knit cuffs, full zipper, side zipper pockets for essential storage, stand-up collar, solid color, cropped length, oversized style, winter coat outwear for wintry days.',style: TextStyle(fontSize:15,fontWeight: FontWeight.w500,),maxLines: 4,textAlign: TextAlign.center,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Gap(5),

                  Container(
                      height: 90,
                      width: 90,
                      child: Image.network('https://tse2.mm.bing.net/th?id=OIP.BlTniSn8Q0s07PC_t2LnDAHaE7&pid=Api&P=0&h=220')
                  ),
                  Gap(5),

                  Container(
                    height: 90,
                    width: 90,
                    child: Image.network('https://tse4.mm.bing.net/th?id=OIP.m7rqv0zESeic7Gnfss7glgHaFS&pid=Api&P=0&h=220'),
                  ),
                  Gap(5),
                  Container(
                    height: 90,
                    width: 90,
                    child: Image.network('https://tse4.mm.bing.net/th?id=OIP.XRllqUOl74yL-bCUqiwWkAHaE9&pid=Api&P=0&h=220'),
                  ),
                  Gap(5),
                  Container(
                    height: 90,
                    width: 90,
                    child: Image.network('https://tse2.mm.bing.net/th?id=OIP.cSqCVRE_EP7ZcSx-9Iv8xAHaFj&pid=Api&P=0&h=220'),
                  ),
                  Gap(5),
                  Container(
                    height: 90,
                    width: 90,
                    child: Image.network('https://tse4.mm.bing.net/th?id=OIP._6_1SBDkYzK8wbGnnp4n2gHaEK&pid=Api&P=0&h=220'),
                  ),
                ],
              ),
              Gap(10),
              Text('Payment With:',style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),),
              Gap(10),

              SizedBox(height: 10),
              DropdownButton<String>(
                items: ['Bkash','Nagad', 'Rocket', 'MasterCard', 'Visa']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  // Do something with the selected value
                },
                hint: Text(
                  'Select ',
                  style: TextStyle(
                    color: Colors.black,
                  ),

                ),
              ),
              Gap(20),
              ElevatedButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> MyHomePage(title: 'E-Commerce'),
                    ));
              }, child: Text('Go Back',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),style: buttonStyle,),

            ],
          ),
        ),
      ),

    );
  }

}
class payment_method3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle=ElevatedButton.styleFrom(
        padding: EdgeInsets.all(16),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(0)),
        )
    );
    return Scaffold(
      appBar:AppBar(
        title:Text( 'Payment Method'),
        titleSpacing: 0,
        // centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 0,
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        color: Colors.grey.shade200,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
                height: 260,
                width: 260,
                child: Image.network('https://m.media-amazon.com/images/I/710Zgw3lZAL._AC_SY550_.jpg'),
              ),
              Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Quantity:',style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),),
                  Gap(10),
                  DropdownButton<String>(
                    items: ['1','2', '3', '4']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      // Do something with the selected value
                    },
                    hint: Text(
                      'Select ',
                      style: TextStyle(
                        color: Colors.black,
                      ),

                    ),
                  ),
                ],
              ),
              Gap(10),
              Text('About this item:',style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),),
              Text('Shawl Wraps for Women. Classic Plaid Patterned Pashmina Brings You More Fashion Element. The Warm Fabric Makes you No Longer Feel the Cold When Wandering Outdoors in Winter. The Tassel Hem Makes You More Elegant and Confident and can better to show the feminine and charm. Loosing Fitting Design Poncho Offers an Elegant Alternative, Hide any Imperfertion also Flatters your Figure and Accentuate your Curve.',style: TextStyle(fontSize:15,fontWeight: FontWeight.w500,),maxLines: 7,textAlign: TextAlign.center,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Gap(5),

                  Container(
                      height: 90,
                      width: 90,
                      child: Image.network('https://tse2.mm.bing.net/th?id=OIP.BlTniSn8Q0s07PC_t2LnDAHaE7&pid=Api&P=0&h=220')
                  ),
                  Gap(5),

                  Container(
                    height: 90,
                    width: 90,
                    child: Image.network('https://tse4.mm.bing.net/th?id=OIP.m7rqv0zESeic7Gnfss7glgHaFS&pid=Api&P=0&h=220'),
                  ),
                  Gap(5),
                  Container(
                    height: 90,
                    width: 90,
                    child: Image.network('https://tse4.mm.bing.net/th?id=OIP.XRllqUOl74yL-bCUqiwWkAHaE9&pid=Api&P=0&h=220'),
                  ),
                  Gap(5),
                  Container(
                    height: 90,
                    width: 90,
                    child: Image.network('https://tse2.mm.bing.net/th?id=OIP.cSqCVRE_EP7ZcSx-9Iv8xAHaFj&pid=Api&P=0&h=220'),
                  ),
                  Gap(5),
                  Container(
                    height: 90,
                    width: 90,
                    child: Image.network('https://tse4.mm.bing.net/th?id=OIP._6_1SBDkYzK8wbGnnp4n2gHaEK&pid=Api&P=0&h=220'),
                  ),
                ],
              ),
              Gap(10),
              Text('Payment With:',style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),),
              Gap(10),

              SizedBox(height: 10),
              DropdownButton<String>(
                items: ['Bkash','Nagad', 'Rocket', 'MasterCard', 'Visa']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  // Do something with the selected value
                },
                hint: Text(
                  'Select ',
                  style: TextStyle(
                    color: Colors.black,
                  ),

                ),
              ),
              Gap(20),
              ElevatedButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> MyHomePage(title: 'E-Commerce'),
                    ));
              }, child: Text('Go Back',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),style: buttonStyle,),

            ],
          ),
        ),
      ),

    );
  }

}