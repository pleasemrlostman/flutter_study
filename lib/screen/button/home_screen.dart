import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text("Elavated Button"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                disabledBackgroundColor: Colors.grey,
                foregroundColor: Colors.white,
                shadowColor: Colors.green,
                elevation: 10.0,
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                ),
                padding: EdgeInsets.all(32.0),
                side: BorderSide(color: Colors.black, width: 12.0),
                minimumSize: Size(200, 150),
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text("Outlined Button"),
              style: ButtonStyle(
                // Material State
                //
                // hovered - 호버링 상태 (마우스 커서를 올려놓은 상태)
                // focused - 포커스 됐을 때 (텍스트 필드)
                // pressed
                // dragged
                // selected
                // scrollunder
                // disabled
                // error
                //
                // 무슨 상태든지간에 이걸로 하겠다
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
            ),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.red;
                    }
                    return Colors.black;
                  },
                ),
                foregroundColor: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black;
                    }
                    return Colors.white;
                  },
                ),
                minimumSize: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Size(200, 150);
                    }
                    return Size(300, 200);
                  },
                ),
              ),
              child: Text(
                "Text Button",
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(16.0),
                // ),
                // shape: BeveledRectangleBorder(
                //   borderRadius: BorderRadius.circular(16.0),
                // ),
                // shape: ContinuousRectangleBorder(
                //   borderRadius: BorderRadius.circular(32.0),
                // ),
                shape: CircleBorder(
                  eccentricity: 0.5,
                ),
              ),
              child: Text("Outlined Button Shape"),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.keyboard_alt_outlined,
              ),
              label: Text("키보드"),
            )
          ],
        ),
      ),
    );
  }
}
