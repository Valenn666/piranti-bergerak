import 'package:flutter/material.dart';

class FeedCard extends StatelessWidget {
  const FeedCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const url =
    'https://images.pexels.com/photos/4235535/pexels-photo-4235535.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1';
    return Card(
      child: Column(
        children: [
         //header
         ListTile(
          leading: CircleAvatar(
          backgroundImage: NetworkImage(url),
         ), 
        title: Text('Everest'),
        subtitle: Text('Status'),
        trailing: Icon(Icons.arrow_right),
         ),
         //content
        Image.network('https://images.pexels.com/photos/4235535/pexels-photo-4235535.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width * 0.8,
        fit: BoxFit.cover,
        ),
        //footer
      Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Icon(Icons.thumb_up),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.comment),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.share),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
        
  }