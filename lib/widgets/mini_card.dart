import 'package:flutter/material.dart';
import 'package:kc_tv_app/model/item.dart';
import 'package:kc_tv_app/screens/player_screen.dart';

class MiniCard extends StatefulWidget {

  final Item item;

  const MiniCard({super.key, required this.item});

  @override
  State<MiniCard> createState() => _MiniCardState();
}

class _MiniCardState extends State<MiniCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 150,
      child: Card(
        color: const Color.fromARGB(255, 33, 35, 55),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: <Widget>[
            _cardImage(),
            const SizedBox(width: 20,),
            _texts(),                        
          ],
        ),
      ),
    );
  }

  Widget _cardImage(){
    return SizedBox(
      width: 250,
      height: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: GestureDetector(
          onTap: () { 
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlayerScreen(url: widget.item.url.toString())));
                },
          child: Image.asset(widget.item.mini.toString()),
        ),
      ),
    );
  }

  Widget _texts(){
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            SizedBox(
              width: 450,
              height: 50,
              child: Text(
                    widget.item.title.toString(),
                    style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            const SizedBox(height: 20,),
            Text(
                  'Fecha:  ${widget.item.date.toString()}',
                  style: Theme.of(context).textTheme.headlineSmall,
            ),        
            Text(
                  'Duración:  ${widget.item.duration.toString()}',
                  style: Theme.of(context).textTheme.headlineSmall,
            ),
        ],
    );
  }

}