##### 참고하면 너무 좋은 글
- [책쓰는 프로그래머 유동 - #1 플러터를 소개합니다](https://brunch.co.kr/@yudong/105)
- [Flutter 개발이야기 - Flutter 앱 개발 후기](https://brunch.co.kr/@tilltue/56)

# What is Flutter

# How to install the "Flutter"
##### 참고
- [Flutter 공식 페이지 - Windows 설치](https://flutter.dev/docs/get-started/install/windows)
- [Flutter 입문하기 - 1 설치](https://velog.io/@jisu98/Flutter-%EC%9E%85%EB%AC%B8%ED%95%98%EA%B8%B0-1-%EC%84%A4%EC%B9%98-p4k36p92u5)

## 1. 안드로이드 스튜디오 설치
[Downlaod Android Studio](https://developer.android.com/studio) 링크에 접속해서 다운로드를 진행.
![Downlaod Android Studio](./image_doc/download_android_studio_1.png)  
본인의 개발 환경에 따라 적절히 변경 후 다운로드하자.
- 내가 설치한 버전 : **4.0.1 for Windows 64-bit**
- `C:\Program Files\..` 경로가 기본 설정 되있지만, 필자는 이전에 별거 아닌데 권한 관련해서 엄청 귀찮았던 경험이 있어서,, 개발 도구는 웬만하면 `C:\Users\[User ID]\..` 경로에 설치하는 편.

## 2. Flutter SDK 설치
[Downlaod Flutter SDK](https://flutter.dev/docs/get-started/install) 링크에 접속해서 다운로드를 진행.  
![Downlaod Flutter SDK](./image_doc/download_flutter_sdk_1.png)  
안드로이드 스튜디오와 마찬가지로 본인의 개발환경에 따라 적절한 SDK kit을 다운로드. ~~중국은 따로 있는게 유우머~~  
다운로드를 완료하면 적절한 경로에 압축을 풀어주면 된다.
- 내가 설치한 파일 : **flutter_windows_1.20.2-stable.zip**
- 역시 `C:\Users\[User ID]\..` 경로에 바로 압축을 풀었다.

## 3. 환경 변수 설정
`설정 > 시스템 환경 변수 편집 > 환경변수(N)`에 들어가서 환경 변수에 위에서 설치했던 Flutter SDK 경로 추가.  
![Set Environment Path](./image_doc/download_env_path.png)  
- `사용자 변수 > Path > 편집(E) > 새로 만들기(N)` 로 추가해준다. 앞에서 압축 푼 `C:\Users\[User ID]\flutter\bin`을 추가했다.

## 4. Flutter doctor 실행
cmd를 실행한 후에 `flutter doctor`를 입력.  
- cmd 실행방법은~~당연히 알겠지만~~ : **실행**(`윈도우 + E`)에서 `cmd`입력
- 위와 사진과 같이 Doctor가 실행되지 않는다면 **3.에서 환경 변수가 제대로 설정되지 않음**. 다시 설정 필요!
![Flutter doctor](./image_doc/download_flutter_doctor.png)  
1. Flutter : Flutter 설치 상태 (초록 체크 표시)
2. Android Tollcahin : **Toolchain** 설정 상태
    - Toolchain 설정 : cmd에 바로 `flutter doctor --android-licenses` 입력
    - 이때 각종 동의여부가 뜨는데 `y` 입력. ~~동의 안하면 못쓰게 할거잖아~~
3. Android :  **Android Studio Plug-in** 설치 상태
    - Android Studio에서 **Flutter/Dart plug-in 설치**한다.  
    ![Flutter doctor plug in](./image_doc/download_flutter_doctor_android_plugin.png)  
    Android Studio 첫 화면의 `Configure > Plugins`을 누르고 `Flutter`를 검색해서 설치해준다. (**Flutter를 설치하면 Dart도 같이 설치됨.**)
    - 이때 안드로이드 스튜디오가 아예 설치되지 않았다면 아래와 같이 표시 된다. (혹은 설치는 했지만, 한번도 실행하지 않으면 SDK가 설치되지 않음.)  
    ![Flutter doctor not android studio](./image_doc/download_flutter_doctor_android_not.png)  
4. VS Code : 확장 프로그램인 **Flutter Extension** 설치 상태
    - `VS Code > Extension` 실행 (`Ctrl+Shift+X`)
    - `flutter` 검색 후 설치. (맨위 Dart Code에서 만든 Flutter)
5. Android Device : **안드로이드 기기** 연결 상태
    - **직접 디바이스를 연결**할 수 있고, 안드로이드 스튜디오에서 **Emulator**를 돌릴 수도 있다.
    - 나는 Emulator를 돌릴것이기 때문에 Android Studio의 `Configure > AVD Manager > Create Virtual Device.`에서 Galaxy S10을 만들었다.
    - 참고 페이지 : [안드로이드 AVD(Android Virtual Device)에 갤럭시 S9 스킨 추가 방법 - 안드로이드 스튜디오](https://blog.naver.com/chandong83/221890147009) / [Galaxy S10 emulator profile 만들기](https://medium.com/duckuism/galaxy-s10-emulator-profile-%EB%A7%8C%EB%93%A4%EA%B8%B0-adf6ecf3b8ba)
    - 현재 사용 중인 데스크탑이 **AMD 라이젠** CPU를 사용 중인데, 이때 AVD를 생성하기위해 추가설치를 해야한다. 그런데 이때 오류가 발생하며 설치할 수 없다.  
    ![AMD install error in AVD](./image_doc/download_flutter_doctor_android_AVD.png)  
    해결하기 위해 참고한 사이트 : [[android] AMD CPU에서 android emulator 설치시 4294967201 오류 해결하기](https://jhleed.tistory.com/184)

위에서 표시된 사항들을 모두 해결한 후 cmd 창에 다시 `flutter doctor`를 입력했을 때  
![AMD install error in AVD](./image_doc/download_flutter_doctor_finish.png)  
**No issues found!** 가 뜬다면 완료! (디바이스를 연결한 상태 or Emulator로 AVD를 실행시킨 상태. 아니라면 디바이스는 초록색 체크가 뜨지 않음.)