# Summary

## 1. Flutter Study
1. Flutter 기초
    - [LEE'Today](https://velog.io/@ieed0205?tag=flutter)
2. Flutter 화면 생성/표시 매커니즘 이해
    - [Google CodeLab](https://codelabs.developers.google.com/)
    - 구글 코드랩을 처음 접함. 초보자들이 간단하게 따라가면서 공부하기 좋음.
3. Widget UI 활용
    1. Navigate Bar
        - `Navigation Bar` + `Floating button` + `Icon` 학습
        - 모바일 스크린의 크기 변화로 인해 상단 네이게이션 바는 없에는 추세. 하단 Navigation Bar를 달아보는 시도
        - 참고 사이트 : [Joseph Cherry' Blog- How to use Flutter to build an app with bottom navigation](https://willowtreeapps.com/ideas/how-to-use-flutter-to-build-an-app-with-bottom-navigation)
        - 연습용 MainHome 구현 및 추가 페이지 연결/이동 방법 학습
    2. Layout, Container 등
        - Layout Tutorial            
            - [Flutter로 개발하기(03) - 레이아웃 튜토리얼](https://bsscco.github.io/posts/flutter-layout-tutorial/)
        - Flutter의 Layout과 Container
            - 참고 사이트 : [Flutter로 개발하기(27) - 레이아웃 위젯 목록](https://bsscco.github.io/posts/flutter-layout-widgets/)
        - Widget 사용, Widget간 반응
            - [Flutter로 개발하기(01) - 위젯 소개](https://bsscco.github.io/posts/flutter-introduction-to-widgets/)
            - [새로운 화면 열기](https://bsscco.github.io/posts/flutter-navigate-to-a-new-screen-and-back/)
            - [새 화면에 데이터 넘기기](https://bsscco.github.io/posts/flutter-send-data-to-a-new-screen/)
            - [닫히는 화면에서 데이터 받기](https://bsscco.github.io/posts/flutter-return-data-from-a-screen/)
            - [Named Route로 Widget 관리하기](https://bsscco.github.io/posts/flutter-navigate-with-named-routes/)
            - [화면전환 애니메이션](https://bsscco.github.io/posts/flutter-animating-a-widget-across-screens/)
    3. Widget 심화
        - [위젯의 크기 제약조건](https://bsscco.github.io/posts/flutter-dealing-with-box-constraints/)
            - 위젯의 크기가 벗어나는 경우 렌더링이 불가능해 빌드가 되지 않는 현상 발생.
            - ```markdown
                1. 렌더박스와 제약조건
                    - 위젯은 자신의 렌더박스에 그려지고, 그 렌더박스의 크기는 부모 위젯이 정해준 제약조건에 의해 결정된다.
                    - 제약조건은 최소/최대 너비/높이로 구성된다.
                2. 제약조건의 유형
                    - 가능한 큰 크기 : `Center`, `ListView`
                    - 자식 위젯 크기 : `Transform`, `Opacity`
                    - 특정 값으로 결정 : `Image`, `Text`
                3. 한정되지 않은 제약조건
                    - `ListView` 형식은 crossAxis 방향으로 크기를 확장하려는 제약조건을 가진다.
                4. Flex
                    - Bounded Flex : 자신의 mainAxis 방향으로 가능한 크게 확장
                    - Unbounded Flex : 자식 위젯들의 크기에 맞춰 변경
              ```
        - Sliver Widget
            - Sliver Widget 사용 시, 현재 스크린 조작에 따라 더 반응성 좋은 Widget을 활용할 수 있음.
            - [Sliver와 제스처](https://bsscco.github.io/posts/flutter-slivers/)
4. Asset
    - 이미지
        1. 최상위 하위에 폴더를 생성 및 파일 삽입
        2. 바로 경로로 사용하지 않는다. `pubspec.yaml`의 `flutter: assets: - image_path` 로 경로를 선언
        3. 이후 `image.assert(image_path)`를 통해 사용
    - 아이콘
        - [아이콘 추가하기](https://medium.com/@changjoopark/flutter-%EC%95%84%EC%9D%B4%EC%BD%98-%EB%B0%94%EA%BE%B8%EA%B8%B0-910a4bc642a9)
5. Theme
    - Color pack
        - ColorPack, Theme 분리
        - 참고 : [Flutter: Custom theme data - mikemimik](https://gist.github.com/mikemimik/5ac2fa98fe6d132098603c1bd40263d5)
6. Test Code 작성
    - ```markdown
        1. 단위테스트 대상 클래스는 `.\lib\` 하위에, 단위테스트 파일은 `.\test\` 하위에 생성한다.
            - 이 때 테스트 파일은 항상 `test`로 끝나야 한다.
        2. flutter Unit Test는 `import 'package:test/test.dart';`를 상속 받고, `expect(variable, expected value)` 코드를 통해 결과값과의 일치여부를 판단한다.
        3. `IntelliJ` 혹은 `VSCode`로 테스트를 수행할 수 있으며, `terminel`에서도 테스트를 실행시킬 수 있다.
      ```
    - 기능 테스트 뿐만 아니라 UI 테스트도 가능
    - 참고 링크
        - [How to test a Flutter app](https://codelabs.developers.google.com/codelabs/flutter-app-testing?hl=en#0) - UI 테스트 하는 법 익히기 좋음
        - [Flutter - Test Code](https://flutter-ko.dev/docs/cookbook/testing/unit/introduction)
        - [Flutter - 유닛 테스트 해보기](https://software-creator.tistory.com/21)
        - flutter 비동기 실행처리 : [Dart 언어 Future 알아보기](https://beomseok95.tistory.com/309)
7. Cupertino App
    - Flutter에서 제공되는 Cupertino Library를 활용한 `Provider`활용 `Stateful` 앱 익히기
    - 상품 목록 및 검색, 장바구니 기능을 가진 간단한 쇼핑몰 앱
    - 참고링크 : [Cupertino App](https://codelabs.developers.google.com/codelabs/flutter-cupertino?hl=en#0)

## 2. Study etc.
1. GraphQL 기본 개념 파악
    - [GraphQL 개념잡기 - kakao Tech](https://tech.kakao.com/2019/08/01/graphql-basic/)
2. `BLoc` vs `Provider` 비교
  - Bloc 패턴
    - UI와 비즈니스 로직(데이터 처리 로직)을 분리하는 방식
    - 코드가 한 클래스에 너무 몰리는 문제를 해결하기 위해서 등장
  - Provider 패턴
    - 데이터 공유나 로직의 분리를 Bloc에 비해 좀 더 간단히 할 수 있음.
    - 관심사 분리
    - 데이터 공유
    - 간결한 코드
  - 구글에서는 중규모 프로젝트는 Provider 패턴을, 대규모 프로젝트는 Bloc 패턴을 추천
  - 읽기 좋은 자료 : [Flutter - Provider 패턴에 대해서 알아보자](https://software-creator.tistory.com/26)

## 3. Document
1. [What is Flutter.md](What_is_Flutter.md)
    - Flutter 기본 개념 및 특성에 대해 소개
    - `Windows`, `AMD cpu` 환경에서 Android Studio를 활용한 Flutter 개발 환경 구축 방법
2. [Git Branch Strategy - 브랜치 활용 전략](https://github.com/Coffee-Street/Document/wiki/Git-Branch-Strategy)
    - 프로젝트 협업을 위한 Git 활용 정책 소개
    - 활용하게 될 브랜치의 종류와 역할을 정의하고, 브랜치 활용 규칙을 명시
    - 각 개발 단계/상황에 따른 올바른 브랜치의 선택과 활용 전략 소개
3. [Code Convention](https://github.com/Coffee-Street/Document/wiki/Code-Convention)
    - 협업 개발 효율을 위해 코드 컨벤션 회의 및 문서화 (With. Min)