class AppExceptions implements Exception {
  final _messange;
  final _prefix;

  AppExceptions([this._prefix, this._messange]);

  String toString() {
    return '$_prefix$_messange';
  }
}

class FetchDataException extends AppExceptions {
  FetchDataException([String? message])
      : super(message, 'Error During Communication');
}

class BadRequestException extends AppExceptions {
  BadRequestException([String? message]) : super(message, 'Invalid request');
}

class UnAuthorisedException extends AppExceptions {
  UnAuthorisedException([String? message])
      : super(message, 'Unauthorised request');
}

class InvalidInputException extends AppExceptions {
  InvalidInputException([String? message]) : super(message, 'Invalid Input');
}
