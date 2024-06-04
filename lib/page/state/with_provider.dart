import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_prog/controller/count_controller_with_provider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Provider"),
          // 아래 방법대로 하게 되면 해당 위젯 전체가 재렌더링 되기 때문에 listen을 끊어버리고 Consumer를 이용해서 해당 부분만 재렌더링되게 한다.
          // Text("${Provider.of<CountControllerWithProvider>(context).count}"),
          Consumer<CountControllerWithProvider>(
            builder: (_, snapshot, child) {
              return Text("${snapshot.count}");
            },
          ),
          OutlinedButton(
              onPressed: () {
                // context 때문에 따로 위젯으로 빼기가 애매함, statefull로 변경해주면 가능, 아니면 context를 넘겨주던가
                Provider.of<CountControllerWithProvider>(context, listen: false)
                    .increase();
              },
              child: Text("+")),
        ],
      ),
    );
  }
}
