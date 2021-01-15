
import 'package:flutter/material.dart';

void showModal(BuildContext context, Widget content){
  Future.delayed(Duration.zero, () =>
      showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context){
            return Container(
              height: MediaQuery.of(context).size.height - AppBar().preferredSize.height - 20,
              child: content,
            );
          }
      )
  );
}