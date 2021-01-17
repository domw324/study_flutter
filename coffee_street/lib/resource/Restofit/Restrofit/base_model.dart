import 'package:coffee_street/resource/Restofit/Restrofit/server_error.dart';

class BaseModel<T> {
  ServerError _error;
  T data;

  setException(ServerError error) {
    _error = error;
  }

  setData(T data) {
    this.data = data;
  }

  get getException {
    return _error;
  }
}