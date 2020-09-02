# Study Time Line - day by day
- flutter 공부를 하면서 매일매일의 목표와 달성한 것들을 기록
- 느낌상 프로젝트 개발을 본격적으로 시작하면 그냥 프로젝트 진행상황이 기록 될 것 같다.
---

공식 프로젝트 공유 페이지 : [Coffee-Street](https://github.com/Coffee-Street/Document)

--- 
## 0 주차

### 회의록 - 20.08.16.일
- 프로젝트 시작
- 첫 회의 : 자기소개와 전체적인 프로젝트 개요 소개
- 다음 회의 전까지 해야할 일 (회의는 매주 일요일 오후 10시)
  1. Flutter, Graphic QL 공부 해보고 정리하기
  2. Git 기능 개발 브랜치 내용 정리하기

### 20.08.17.월
**임시공휴일 \\(^o^)/ 쏴리질럿**
##### 목표
- Flutter 기본 개념, 어떻게 사용할지 개념 파악
- Flutter 개발(공부) 환경 구축
##### 달성
- Flutter 기본 개념 및 구조, 어떤 이점이 있는지 파악
- Windows 환경에서 Adroid 앱 개발 환경 구축 완료 및 문서화

### 20.08.18.화
#### 목표
- Graph QL 기본 개념 파악
#### 달성
- Flutter 설치 방법 문서 수정
- GraphQL 기본 개념글 읽기
    - [GraphQL 개념잡기 - kakao Tech](https://tech.kakao.com/2019/08/01/graphql-basic/)
        > GraphQL(GQL)는 SQL 같은 **쿼리 언어**이다. 다만 탄생 시기 배경이 다르며, 언어의 구조적 차이가 커서 활용 측면에서 차이가 있음

        > SQL은 **데이터베이스 시스템에 저장된 데이터를 효율적으로 가져오는 것**이 목적.  
        GQL은 웹 클라이언트가 데이터를 **서버로 부터 효율적으로 가져오는 것**이 목적.

        > SQL의 문장(statement)은 주로 **백앤드 시스템에서 작성하고 호출**.  
        GQL의 문장은 주로 **클라이언트 시스템에서 작성하고 호출**한다.

        > 주요 키워드  
        **쿼리/뮤테이션(query/mutation)**, **스키마/타입(schema/type)**, **리졸버(resolver)**, **인트로스펙션(introspection)**
        ---
        - 읽었는데 무슨 소린지 1도 모르겠다. 똥멍청인가 보다.
        - GraphQL은 대충 프론트 개발자가 조금 더 할일은 많아지겠다는 느낌? 반면 그만큼 데이터 통신 효율성이나 협업에 있어서는 이득을 챙길 수 있는 느낌?
        - restAPI : 백엔드에서 제공해주는 API에만 맞춰서 쿼리를 날리면 서버에서 데이터를 받을 수 있다~ 쿼리가 단순하다는 장점. 대신 딱 제공해준 API 명세로만 통신 할 수 있는 아쉬움? (사실 restAPI도 1도 모름.)
        - GraphQL : 쿼리와 뮤테이션으로 나눠 작성하고 이것들을 잘 조합해서 한번의 쿼리(통신?)으로 많은 양의 정보를 가져 올수 있는 것, 인트로스펙션을 잘 활용한다면 백엔드에서의 변경 사항을 API 명세서 혹은 쿼리용 IDE를 전해주지 않아도 실시간으로 확인하고 그에 맞춰서 쿼리를 작성/수정할 수 있겠단 느낌. 협업의 속도가 더 빨라질 듯.
        - 그래서 restAPI와 혼용해서 쓰는 것도 같다? 그래서 ***레져***가 restAPI를 계속 언급했는데 restAPI를 쓴다고? GraphQL을 쓰겠다고? 섞어쓰는 편인가?
    - [GraphQL 강좌 1편: GraphQL이 무엇인가? - VELOPERT.LOG](https://velopert.com/2318)
        - 일단 이 문서가 개인적으론 restAPI와 비교 설명이 조금 더 쉬운 느낌.
        - [GraphQL 예제 입력 사이트](https://graphql-tryout.herokuapp.com/graphql)도 알려준다.
    - [REST API를 버리고 Graph QL를 선택한 이유? (Why GraphQL is the future) - Nomad Coders YouTube](https://www.youtube.com/watch?v=1imQ1_aOQvU)
        - 첫번째, restAPI 보다 구조가 심플(데이터베이스 구축이 빠져서 그런듯)해서, 시스템 구축시간이 짧음. 양도 적음 + GQL 위에 올라갈 수 있는 리액트인 Apollo, NodeJS 등의 언어가 파워풀함. 호환성도 좋음. 라이브러리, 커뮤니티 지원도 있음.
        - 두번째, 프론트엔드에서 사용하려면 API를 가져와야 하는 수고가 없음. (Apollo를 활용하면 Fetch, Json, Props... 등을 다 해준다고 하네?). End Point가 하나라 퀴리만 잘 작성해주면 끝! 새로운 End Point를 만들어줄 필요가 없음.
        - 세번째, 리덕스(~~난 뭔지모름~~)를 안써도 됨. GQL 데이터를 로컬로 관리할 수 있기 떄문.
        - ~~네번째, 당신의 일상은 1도 안궁금한데 영상 중간에 왜 끼워넣는건지 모르겠음. 외국 감성인가?~~
    - 느낀점 : Web Domain 쪽은 좋은 설명을 찾기가 비교적 쉽고, 서로 경쟁하듯 정말 잘해놨다. ~~*fxxking c++*~~

### 20.08.19.수
#### 목표
- Git Branch 활용 전략 정리
- (가능하다면) Flutter 기초
#### 달성
- Git Branch 활용 전략 정리 완료. ~~Flutter는 내일부터. 원래 공부는 내일부터다.~~

### 20.08.20.목
#### 목표
- 가볍게 Flutter 기초
#### 달성
- Flutter 기초
    - [LEE'Today](https://velog.io/@ieed0205?tag=flutter) 블로그

### 20.08.23.일
#### 목표
- Flutter 화면 생성/표시 매커니즘 이해하기
#### 달성
- [Google CodeLab](https://codelabs.developers.google.com/)
    - 영어도 되어있다는 단점 빼고는 처음부터 따라가기에 좋은 편
    - 다행히 1도 모르는 상태에서 widget 개념이 쪼오끔 생긴것 같다..
    - Widget이 함수와 비슷한 개념으로 사용되는 것 같긴하다 ~~아님말고~~. 물론 예약어처럼 꼭 있어야 하는 부분이 있긴하다. 예를 들어 build 와 같은 부분!
      ```
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Startup Name Generator'),
          ),
          body: _buildSuggestions(),
        );
      }
      ```
---
## 1 주차

### 회의록 - 20.08.23.일
- 두번째 회의 : 디자이너 영입, 자기소개 + 프로젝트 개요 및 기획 소개
- 다음 회의 전까지 해야할 일 (다음 회의는 일요일 오후 10시)
  1. Flutter 개인 공부
  2. Github에 합의된 프로젝트 올리기. Min과 협의

### 20.08.24.월
#### 목표
- 요즘 위에 있는 Navigation Bar는 잘 없다. 휴대폰이 커지면서 위까지 손이 잘 안 닿기 때문에, 모두 없에는 추세. 아래 Navigation Bar를 달아보자.
#### 달성
- 참고 사이트 : [Joseph Cherry' Blog- How to use Flutter to build an app with bottom navigation](https://willowtreeapps.com/ideas/how-to-use-flutter-to-build-an-app-with-bottom-navigation)
- 생각보다 잘 작동한다. 마음먹으면 어떤 것이라도 쉽게 넣을 수 있다.
- 이후에는 하단 네이게이션바에 햄버거 버튼을 달아봐야겠다.

### 20.08.25.화
#### 목표
- 아는 지식을 활용해서 프로젝트 어플의 껍데기를 만들어보자
#### 달성
- 새로운 프로젝트 활용해서 MainHome 구현, 추후 각 페이지 작성 후 연결 필요

### 20.08.26.수
#### 목표
- Flutter의 Layout과 Container를 배워보자
#### 달성
- 참고 사이트 : [Flutter로 개발하기(27) - 레이아웃 위젯 목록](https://bsscco.github.io/posts/flutter-layout-widgets/)
    - 이 블로그 좋은 것 같다. 추천추천.
- 생각보다 손에 잘 익지 않는다. 뭔가 많은 경우의 수를 뚫어 놓긴 했는데, 그것 때문에 더 헷갈리는 느낌이다.

---

## 2주차

### 회의록 - 20.08.30.일
- 세번째 회의 : 컨셉, 브랜딩 디자인(톤&매너, 컬러) + 각자 진행사항
- 다음 회의까지 :
    - 어플리케이션 코드 컨벤션 합의. (미리 참고할 사항들 알아보고, 주중에 수or목요일에 Min과 협의)
    - 위에서 합의 된 내용 바탕으로 git에 Application Source 합쳐서 올리기.

### 20.08.31.월
야호 야근 '^')/
- 코드 컨벤션 준비
    - 완전히 딱 마음에 드는 것을 찾기는 어렵다... 그냥 큰 것 위주로만 골라보자
    - 파일 기본 : `파스칼` 식으로 이름 짓는 것은 어떨까? 공백 허용? 어떻게?
    - 괄호 : `K&R` or `BSD`. / 개인적으로 BSD 선호인데,, 안드로이드 스튜디오가 K&R을 하라고 하네?
    - 변수/함수 명칭 : `카멜` or `파스칼` / 헝가리안, 스네이크는 ㄴㄴ. 함수 클래스 등은 파스칼, 변수는 카멜 어떨까? 그리고 변수, 함수에 언더바는 넣지 말자...
    - 테스트 클래스 : 앞 클래스 규칙 + 뒤에 `Test` 붙이기
    - 들여쓰기 : `4 Space` or `Tap` : 들여쓰기는 스페이스(2개짜리 스페이스로도 많이 하는 듯 웹에서는)로 하고 에디터 설정에서 탭을 스페이스로 변경하는 건 어떨까?
    - 주석 : `/* */` or `//` / 제약을 있게 할것인지, 없게 할 것인지?
    - 가로 최대 텍스트 길이 : 요즘은 다 읽으니까 상관 없지 않을까?
    - TODO를 적극적으로 사용하면 좋을 듯 하다. TODO가 아예 따로 목록에 리스트업 된다. (안드로이드 스튜디오만 그런가?)

### 20.09.02.수
**회의록**
- 코드 컨벤션
    - 디렉토리 경로 : `소문자로만 표시`
    - 파일 : `파스칼`. 앱에서는 외부 모듈을 따로 나눌일이 별로 없을 듯? 혹은 적을 듯.
    - 괄호 : `K&R`. 에디터를 따르자.
    - 클래스/변수/함수 : 함수&클래스-파스칼, / 변수-카멜 / 클래스 안 멤버 변수&함수 - 앞에 `언더바(_)`
    - 함수 네이밍 법칙 : `동사 + 명사` / ex. `DoHomeWork()`
    - 테스트 클래스 네이밍 : 앞 함수 네이밍 법칙 + `Test`
    - 들여쓰기 : `4 space`
    - 주석 : 자유롭게, 단 조금은 보기 좋게.. (TODO 잘 활용하면 좋음)
    - 가로 길이는 딱히 제한X, 적당히 보기 좋을 정도로.
    - [Effective Dart: Usage : Booleans](https://dart.dev/guides/language/effective-dart/usage#do-use--to-convert-null-to-a-boolean-value)
        - optional pointer 가 null exception 인 경우 true false로 변환
- 숙제?
    - flutter 개발패턴 정리해서 다시 얘기
    - 코드 정리해서 업로드
    - 함수형 프로그래밍...!?