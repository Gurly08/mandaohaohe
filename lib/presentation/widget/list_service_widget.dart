import 'package:flutter/material.dart';
import 'package:mandaohe/presentation/widget/theme.dart';

class ListServiceWidget extends StatelessWidget {
  const ListServiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        InkWell(
          onTap: () {},
          child: Card(
            color: Colors.indigo[900],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                'Jasa Labuh',
                style: mediumWhiteTextStyle,
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        InkWell(
          onTap: () {},
          child: Card(
            color: Colors.indigo[900],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                'Jasa Tambat',
                style: mediumWhiteTextStyle,
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        InkWell(
          onTap: () {},
          child: Card(
            color: Colors.indigo[900],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                'Josa Yatch',
                style: mediumWhiteTextStyle,
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        InkWell(
          onTap: () {},
          child: Card(
            color: Colors.indigo[900],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                'Jasa Air Bersih',
                style: mediumWhiteTextStyle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
