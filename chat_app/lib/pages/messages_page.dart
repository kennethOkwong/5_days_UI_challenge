import 'package:chat_app/helpers.dart';
import 'package:chat_app/models/models.dart';
import 'package:chat_app/theme.dart';
import 'package:chat_app/widgets/widgets.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
          child: _StoryBoard(),
        ),
        SliverList(delegate: SliverChildBuilderDelegate((context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
            child: _delegate(),
          );
        }))
      ],
    );
  }

  _delegate() {
    return _MessageTile(
        messagesData: MessagesData(
      imageUrl: Helpers.randompictures(),
      senderNAme: faker.person.name(),
      message: faker.lorem.sentence(),
      date: Helpers.randomDate(),
    ));
  }
}

class _MessageTile extends StatelessWidget {
  const _MessageTile({required this.messagesData});

  final MessagesData messagesData;

  @override
  Widget build(BuildContext context) {
    final date = Helpers.randomDate();
    return Row(
      children: [
        Avatar.medium(messagesData.imageUrl),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                messagesData.senderNAme,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    letterSpacing: 0.2,
                    wordSpacing: 1.5,
                    fontWeight: FontWeight.w200),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                messagesData.message,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12,
                  color: AppColors.textFaded,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                Jiffy.parse('$date').fromNow(),
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: AppColors.textFaded,
                  fontSize: 11,
                  letterSpacing: 0.2,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 15,
                width: 15,
                decoration: const BoxDecoration(
                  color: AppColors.secondary,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                    child: Text(
                  '1',
                  style: TextStyle(
                    color: AppColors.textLigth,
                    fontSize: 10,
                  ),
                )),
              )
            ],
          ),
        )
      ],
    );
  }
}

class _StoryBoard extends StatelessWidget {
  const _StoryBoard();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: SizedBox(
        height: 134,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Story label text widget
            const Text('Stories'),

            //Margin between Story label and story images & names
            const SizedBox(
              height: 25,
            ),

            //Story image and User names widget
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return _StoryItem(
                      storyData: StoryData(
                    userName: faker.person.name(),
                    imageUrl: Helpers.randompictures(),
                  ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _StoryItem extends StatelessWidget {
  const _StoryItem({required this.storyData});

  final StoryData storyData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        width: 70,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Avatar.medium(storyData.imageUrl),
            const SizedBox(
              height: 5,
            ),
            Text(
              storyData.userName,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  letterSpacing: 0.2,
                  wordSpacing: 1.5,
                  fontWeight: FontWeight.w200),
            ),
          ],
        ),
      ),
    );
  }
}
