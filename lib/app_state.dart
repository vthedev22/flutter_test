import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _fsadfsafd = prefs.getStringList('ff_fsadfsafd') ?? _fsadfsafd;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _fsadfsafd = [];
  List<String> get fsadfsafd => _fsadfsafd;
  set fsadfsafd(List<String> _value) {
    _fsadfsafd = _value;
    prefs.setStringList('ff_fsadfsafd', _value);
  }

  void addToFsadfsafd(String _value) {
    _fsadfsafd.add(_value);
    prefs.setStringList('ff_fsadfsafd', _fsadfsafd);
  }

  void removeFromFsadfsafd(String _value) {
    _fsadfsafd.remove(_value);
    prefs.setStringList('ff_fsadfsafd', _fsadfsafd);
  }

  void removeAtIndexFromFsadfsafd(int _index) {
    _fsadfsafd.removeAt(_index);
    prefs.setStringList('ff_fsadfsafd', _fsadfsafd);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
