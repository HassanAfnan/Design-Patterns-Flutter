class FetchDataException implements Exception {
  late String _message;
  FetchDataException(this._message);
  String toString(){
    return "Exception --> ${_message}";
  }
}