import 'package:flutter/material.dart';


class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_List = [
  {
    'name':'Phone',
    'picture':'assets/images/phone.jpg',
    'old_price': 70000 ,
    'price' : 60000 ,
    
  },
  {
    'name':'Jacket',
    'picture':'assets/images/jacket.jpg',
    'old_price': 7000 ,
    'price' : 6000 ,
    
  },
  


  ];
  
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: product_List.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (BuildContext context,int index){
        return Single_prod(
          product_name: product_List[index]['name'],
          prod_picture: product_List[index]['picture'],
          prod_old_price: product_List[index]['old_price'],
          prod_price: product_List[index]['price'],
        );
      }
      ); 
  }
}
class Single_prod extends StatelessWidget {
  final product_name ;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.product_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(tag: product_name,
       child:Material(
         child: InkWell(onTap: (){},
         child: GridTile(
         footer: Container(
           color: Colors.white70,
           child: ListTile(
             leading: Text
             (product_name,style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Muli',),
             ),
             title: Text("\$$prod_price",style: TextStyle(color: Colors.red[800],fontFamily:'Muli'),),
             subtitle: Text("\$$prod_old_price",style: TextStyle(color: Colors.black54,fontFamily:'Muli',decoration: TextDecoration.lineThrough),),
           ),
         ),
         child: Image.asset(prod_picture,
         fit: BoxFit.cover)),

      )
      ),
    ),
    );
    
  }
}