import 'package:flutter/material.dart';

class InventoryCraftingScreen extends StatefulWidget {
  //const InventoryCraftingScreen({ Key? key }) : super(key: key);

  @override
  _InventoryCraftingScreenState createState() => _InventoryCraftingScreenState();
}

class Category {
  final String title;
  final String imgid;
  final Color color;
  final String imgDesc;
  final int noOfitem;
  //final String descrip ;
  const Category({this.color, @required  this.imgid, @required  this.title, @required this.imgDesc ,this.noOfitem});
}


// Code below to replaced withg an API call 

class _InventoryCraftingScreenState extends State<InventoryCraftingScreen> {

  var dummy_categories = const [
  Category(imgid: "c1", title: "wood piece" ,color: Colors.blueAccent, imgDesc :"discription oif the item", noOfitem: 1),
  Category(imgid: "c2", title: "Birch Wood" ,color: Colors.red ,imgDesc :"discription oif the item", noOfitem: 1),
  Category(imgid: "c3", title: "orb of fire" ,color: Colors.lightGreenAccent ,imgDesc :"discription oif the item", noOfitem: 1),
  Category(imgid: "c4", title: "orb of lightening" ,color: Colors.grey ,imgDesc :"discription oif the item", noOfitem: 1),
  Category(imgid: "c5", title: "piece of steel" ,color: Colors.blueAccent ,imgDesc :"discription oif the item", noOfitem: 1),
  Category(imgid: "c6", title: "piece of leather" ,color: Colors.red ,imgDesc :"discription oif the item", noOfitem: 1),
  Category(imgid: "c7", title: "sword blade" ,color: Colors.lightGreen ,imgDesc :"discription oif the item", noOfitem: 1),
  Category(imgid: "c8", title: "sword handle" ,color: Colors.grey ,imgDesc :"discription oif the item", noOfitem: 1),
  Category(imgid: "c9", title: "Dagger" ,color: Colors.blueAccent ,imgDesc :"discription oif the item", noOfitem: 1),
  Category(imgid: "c10", title: "steel ore" ,color: Colors.red ,imgDesc :"discription oif the item", noOfitem: 1),
  Category(imgid: "c11", title: "iron ore" ,color: Colors.greenAccent ,imgDesc :"discription oif the item", noOfitem: 1),
  Category(imgid: "c12", title: "iron ingot" ,color: Colors.grey ,imgDesc :"discription oif the item", noOfitem: 1),
];

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [
          //Card(child: Text('Inventory Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold))),
          CraftingElement(),
          Flexible(
            child: GridView(
            padding: const EdgeInsets.all(25),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                crossAxisSpacing: 10,
                mainAxisSpacing: 20,
                childAspectRatio: 1,
                maxCrossAxisExtent: 150),
            children: dummy_categories.map((e) =>  ItemType(e.title,e.imgid ,e.color,e.imgDesc,e.noOfitem)).toList() ,//CategoryItem(e.title, e.color,e.id)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}


// the below code is for the  category item element which i will use 
// as  stateless widget. 
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

class ItemType extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);
  final String itemTitle;
  final String itemImg;
  final Color itemColor;
  final String itemDisc;
  final int noOfItems;
  ItemType(this.itemTitle,this.itemImg , this.itemColor, this.itemDisc,this.noOfItems);

  _openItemgDetail(ctx){
    showDialog(context: ctx, builder: (ctx){
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        elevation: 16,
        child: Container(child: Text(itemDisc),),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){_openItemgDetail(context);},
      child: Card(
        color: itemColor.withOpacity(0.25),
        child: Center(
          child: Column(
            children: [
              Container(child: Text(itemImg),),
              Container(child: Text(itemTitle),),
              Container(child: Text("Amount :  X"+noOfItems.toString()),),

            ],
            ),
        ),
      ),
    );
  }
}

// the below code is for the  Crafting card element which i will use 
// as  stateless widget. 
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

class CraftingElement extends StatelessWidget {
  //const Crafting({ Key? key }) : super(key: key);

  _openCraftingDetail(ctx){
    showDialog(context: ctx, builder: (ctx){
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        elevation: 16,
        child: Container(child: Text("this will be a list of all craftable elements, "),),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){_openCraftingDetail(context);},
      child: Container(
        padding: EdgeInsets.fromLTRB(25, 10, 25, 0),
        width: double.infinity,
        child: Card(
          child: Column(children: [
            Icon(Icons.add , size: 100,)
          ],),
        ),
        
      ),
    );
  }
}