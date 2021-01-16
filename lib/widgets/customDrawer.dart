import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: 200,
            height: 200,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://post-phinf.pstatic.net/MjAyMDA2MjJfMjc1/MDAxNTkyODA2NjU0NTMz.AmnwuVkhKaa9K90zGN7KLFooUyMcFxt9nd8DluBnjx8g.U8o7aBijGeBhz-WTHm6InaNlMCXjl0T__2T9KLhq9-cg.JPEG/%EB%A0%88%EC%9D%B4%EB%A8%BC%EB%93%9C%EC%B1%88%EB%93%A4%EB%9F%AC.jpg?type=w1200'),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            '\'레이먼드 챈들러\'님',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          buildUserDataCard('작성 한 리뷰', Icons.library_books),
          buildUserDataCard('댓글 단 리뷰', Icons.rate_review),
        ],
      ),
    );
  }

  Card buildUserDataCard(String whatToShow, IconData icon) {
    return Card(
      elevation: 5,
      child: InkWell(
        onTap: () {
          print("!");
        },
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                icon,
              ),
              Text(
                whatToShow,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
