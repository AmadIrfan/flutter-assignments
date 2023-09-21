import 'package:flutter/material.dart';

import '../res/colors.dart';
import '../widget/custom_button.dart';

class Card2 extends StatelessWidget {
  final List<Map<String, dynamic>> _list = [
    {
      'name': 'Panji Pradana',
      'email': 'Panjipradana@gmail.com',
      'messages': 0,
    },
    {
      'name': 'Sulistyo Aji',
      'email': 'SistAji@mail.com',
      'messages': 5,
    },
    {
      'name': 'Astaru Lopez',
      'email': 'AsPez@mail.com',
      'messages': 10,
    },
  ];

  Card2({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.only(
        left: 5,
        top: 5,
        right: 8,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Theme.of(context)
                              .iconTheme
                              .color!
                              .withOpacity(0.4),
                          radius: 15,
                          child: const Icon(
                            Icons.manage_accounts,
                            size: 15,
                            color: highLight,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Accounts',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.close,
                      color: Colors.black,
                      size: 15,
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    bottom: 20,
                    right: 55,
                  ),
                  child: Text(
                    'Add another account - so you can switch between theme easily',
                    style: TextStyle(
                      color: gray,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Your existing account',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Manage account',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.amber.shade900,
                        ),
                      )
                    ],
                  ),
                ),
                ..._list
                    .map(
                      (e) => Container(
                        margin: const EdgeInsets.symmetric(vertical: 7),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          leading: const CircleAvatar(),
                          title: Text(
                            e['name'],
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          subtitle: Text(
                            e['email'],
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: gray,
                            ),
                          ),
                          trailing: e['messages'] == 0
                              ? const Icon(
                                  Icons.check_circle,
                                  color: blue,
                                )
                              : Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.blue.shade100,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(
                                    e['messages'].toString(),
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 14, 66, 109),
                                    ),
                                  ),
                                ),
                        ),
                      ),
                    )
                    .toList(),
                const CustomButton(
                  btnTitle: 'Add another',
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 20,
                  ),
                  onPressed: null,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
