import 'package:flutter_test/flutter_test.dart';
import 'package:ex_flutter/ex_text_origin.dart';

// Terminal 실행 : flutter test test/ex_first_test.dart

void main() {
  // group()로 여러개의 테스트를 묶어서 실행할 수 있다.
  group('Example first Unit Test', () {
    // test()가 하나의 test 단위이다.
    test('Counter value should be incremented', () {
      final counter = CounterTest();
      expect(counter.cnt, 0);
      counter.increment();
      expect(counter.cnt, 1);
      counter.decrement();
      expect(counter.cnt, 0);
    });

    test('Convert alphabet to Upper or Lower', () {
      final alphabetConverter = AlphabetConverter();

      final String mixed = alphabetConverter.mixedHello;
      expect(mixed, 'Hello');
      final String uppered = alphabetConverter.upperAlphabet();
      expect(uppered, 'HELLO');
      final String lowered = alphabetConverter.lowerAlphabet();
      expect(lowered, 'hello');
    });

    // 비동기 테스트
    test('new Futre.value() returns the value with completion', () {
      var value = Future.value(
          10); // Future : 비동기 작업의 결과를 나타냄. value 생성 전(미완료)과 value 생성 후(완료) 두가지 상태를 가진다.

      // expect(value, 10); // 오류 발생. 아직 완료되지 않았기 때문에 'Future<int>' 문자열이 반환.
      // expect(value, Future.value(10)); // 오류 발생. 같은 Future 인스턴스이지만, 기대했던 값이 아닌 'Future<int>' 문자열이 반환 됨.
      expect(value,
          completion(10)); // completion()을 쓰면 Future가 종료될 때까지 test를 끝내지 않는다.
    });

    test('Validate Social Security Number', () {
      final fieldValidator = FieldValidator();

      final String socialNumber = "911222-1110332";
      expect(fieldValidator.validateSocialSecurityNumber(socialNumber), true);
      final String socialNumber2 = "980420-2611355";
      expect(fieldValidator.validateSocialSecurityNumber(socialNumber2), true);
      final String socialNumber3 = "993015-1919191";
      expect(fieldValidator.validateSocialSecurityNumber(socialNumber3), false);
    });

    test('Validate Email', () {
      final fieldValidator = FieldValidator();

      const String email = "domw324@gmail.com";
      expect(fieldValidator.validateEmail(email), true);
      const String email2 = "domw324#@gmail.com";
      expect(fieldValidator.validateEmail(email2), false);
    });
  });
}