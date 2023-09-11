# flutter_ex

Flutter 연습!!

실습 - challenge
프로젝트 - project
이론 - theory

### 1. Splash Screen 앱 제작 & Row, Column

Widget Tree = Widget들의 부모, 자식 관계를 나타내는 것

#### 프로젝트 목표

- 로딩 -> CircularProgressIndicator
- Asset 추가하기
- StatelessWidget 생성하기
- Column 위젯
- CircularProgresslndicator 위젯
- image 위젯 -> pubspec.yaml -> assets:
- debugShowCheckedModeBanner: false,
- width: MediaQuery.of(context).size.width, -> 사이즈 가져옴
- Expanded / Flexible -> only Column / Row

<img src="https://github.com/SeungJin051/Flutter_EX/assets/83889135/1f6d72f4-02eb-4b44-afd8-e884a961d64c" width="400">

<img src="https://github.com/SeungJin051/Flutter_EX/assets/83889135/a9a5f65a-57b0-4018-a931-6fea800a3600" width="400">

<hr>

### 2. WebView, AppBar, pub.dev

WebView = 웹사이트를 앱처럼 보이게 만드는 것 (패키징)

#### 프로젝트 목표

- WebView -> 컴퓨팅클라우드 (javascriptMode: JavascriptMode.unrestricted), controller!.loadUrl(homeUrl);
- AppBar -> 앱의 상단 디자인

- <img width="984" alt="스크린샷 2023-09-09 오후 11 07 27" src="https://github.com/SeungJin051/Flutter_EX/assets/83889135/ec24af5c-4502-4a14-a6f0-e688553e7da2">
- pub.dev(외부 패키지 활용법) -> 오픈소스 프로젝트 사용

  <img src="https://github.com/SeungJin051/Flutter_EX/assets/83889135/84313706-d385-499b-ad1c-edd8e44c9549" width="400">

<hr>

### 3. StatefulWidget 복습하기 ㅠ

Widget(위젯) = Widget은 모두 "불변"의 법칙이다. 하지만 위젯의 값을 변경할 때가 있다. 변경이 필요하면 기존 위젯을 삭제하고 완전히 새로운 위젯으로 대체한다.

StatelessWidget의 라이플 사이클 = Constructor로 생성이되고 생성이 되자마자 build 함수 실행, 이전 Container 예제와 마찬가지로 변경이 필요하면 새로운 위젯을 만들어버린다, 하나의 StatefulWidget은 라이플 사이클동안 한번만 build(1번) 함수를 실행한다.

StatefulWidget = 상태를 관리할 수 있다.(build함수를 여러번)
