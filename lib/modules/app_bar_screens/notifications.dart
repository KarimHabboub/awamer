import 'package:flutter/material.dart';
import '../../shared/components/components.dart';
import '../../shared/style/colors.dart';
import '../../shared/style/styles.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myFCFCFCColor,
      appBar: myAppBar(context: context,title: "الاشعارات"),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) =>
            const ListViewNotificationItem(),
        itemCount: 20,
      ),
    );
  }


}

class ListViewNotificationItem extends StatelessWidget {
  const ListViewNotificationItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Dismissible(
        key: const Key("k"),
        direction: DismissDirection.startToEnd,
        background: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: myFF5B50Color,
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Icon(
                  Icons.delete,
                  color: Colors.white,
                  size: 50,
                )
              ],
            ),
          ),
        ),
        child: Center(
          child: Container(
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(22),
              child: Row(
                children: [
                  Icon(
                    Icons.notifications,
                    color: myColor,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Text(
                      "هذا النص هو مثال لنص يمكن أن يستبدل في نفس لقد تم توليد هذا النص من مولد النص العربى",
                      style: Styles.textStyle14,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        onDismissed: (direction) {

        },
      ),
    );
  }
}
