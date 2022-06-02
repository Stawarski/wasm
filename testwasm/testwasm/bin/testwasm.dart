import 'dart:io';
import 'package:wasm/wasm.dart';

void main() {
  final data = File('main.wasm').readAsBytesSync();
  final mod = WasmModule(data);
  print(mod.describe());
  final inst = mod.builder().build();
  final hw = inst.lookupFunction('hw');
  print(hw());
}