import 'package:awamer/modules/order_details/current_order_details.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../shared/style/colors.dart';
import '../../shared/style/icon_broken.dart';
import '../../shared/style/styles.dart';

class MyListView extends StatelessWidget {
  const MyListView({
    super.key,
    this.withFavorite = true,
  });

  final bool withFavorite;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) => ListViewItem(
        withFavorite: withFavorite,
      ),
      itemCount: 10,
    );
  }
}

class ListViewItem extends StatelessWidget {
  const ListViewItem({
    super.key,
    required this.withFavorite,
  });

  final bool withFavorite;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => CurrentOrderDetails()));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 28,
        ),
        child: SizedBox(
          height: 200,
          width: double.infinity,
          child: Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: myBlackColor,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: CachedNetworkImage(
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  imageUrl:
                      'https://img.freepik.com/free-photo/handsome-carpenter-working-with-wood_1157-26134.jpg?w=900&t=st=1690462383~exp=1690462983~hmac=fe6b87d10b9a6bd2045ca58402959e68989fefc522fb4e70b531c01ddb5efa27',
                  errorWidget: (context, url, error) =>
                      const Center(child: Icon(Icons.error)),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Text(
                          "عدد العروض  ",
                          style:
                              Styles.textStyle14.copyWith(color: Colors.white),
                        ),
                        Text(
                          "15",
                          style:
                              Styles.textStyle14.copyWith(color: Colors.white),
                        ),
                        const Spacer(),
                        if (withFavorite)
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite,
                              color: myColor,
                            ),
                          )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Expanded(
                              child: Text(
                                "أوامر التنفيذ الحرفي",
                                textAlign: TextAlign.center,
                                style: Styles.textStyle14
                                    .copyWith(color: Colors.white),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "نجارة خزانة",
                                textAlign: TextAlign.center,
                                style: Styles.textStyle14
                                    .copyWith(color: Colors.white),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "8/10/2021",
                                textAlign: TextAlign.center,
                                style: Styles.textStyle14
                                    .copyWith(color: Colors.white),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ListViewErrorItem extends StatelessWidget {
  const ListViewErrorItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: SizedBox(
        height: 200,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: myC3C5CEErrorColor,
              ),
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 150,
                  color: myE7E7E7ErrorColor,
                )),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Container(
                        height: 10,
                        width: 100,
                        decoration: BoxDecoration(
                          color: myC3C5CEErrorColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 10,
                        width: 20,
                        decoration: BoxDecoration(
                          color: myC3C5CEErrorColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      const Spacer(),
                      Icon(
                        IconBroken.Heart,
                        color: myC3C5CEErrorColor,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 15.0,
                      left: 15.0,
                      right: 15.0,
                      bottom: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 10,
                          width: 100,
                          decoration: BoxDecoration(
                            color: myE7E7E7ErrorColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Container(
                          height: 10,
                          width: 60,
                          decoration: BoxDecoration(
                            color: myE7E7E7ErrorColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Container(
                          height: 10,
                          width: 60,
                          decoration: BoxDecoration(
                            color: myE7E7E7ErrorColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
