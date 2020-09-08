// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_location_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';

class com_amap_api_location_CoordUtil extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.amap.api.location.CoordUtil';

  
  //endregion

  //region creators
  static Future<com_amap_api_location_CoordUtil> create__() async {
    final refId = await MethodChannel('me.yohom/amap_location_fluttify', StandardMethodCodec(FluttifyMessageCodec('amap_location_fluttify'))).invokeMethod('ObjectFactory::createcom_amap_api_location_CoordUtil__');
    final object = com_amap_api_location_CoordUtil()..refId = refId..tag__ = 'amap_location_fluttify';
    return object;
  }
  
  static Future<List<com_amap_api_location_CoordUtil>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('me.yohom/amap_location_fluttify', StandardMethodCodec(FluttifyMessageCodec('amap_location_fluttify'))).invokeMethod('ObjectFactory::create_batchcom_amap_api_location_CoordUtil__', {'length': length});
  
    final List<com_amap_api_location_CoordUtil> typedResult = resultBatch.map((result) => com_amap_api_location_CoordUtil()..refId = result..tag__ = 'amap_location_fluttify').toList();
    return typedResult;
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  static Future<int> convertToGcj(Float64List var0, Float64List var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.location.CoordUtil::convertToGcj([\'var0\':$var0, \'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_location_fluttify', StandardMethodCodec(FluttifyMessageCodec('amap_location_fluttify'))).invokeMethod('com.amap.api.location.CoordUtil::convertToGcj', {"var0": var0, "var1": var1});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
      return __return__;
    }
  }
  
  
  static Future<bool> isLoadedSo() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.location.CoordUtil::isLoadedSo([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_location_fluttify', StandardMethodCodec(FluttifyMessageCodec('amap_location_fluttify'))).invokeMethod('com.amap.api.location.CoordUtil::isLoadedSo', );
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
      return __return__;
    }
  }
  
  
  static Future<void> setLoadedSo(bool var0) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.location.CoordUtil::setLoadedSo([\'var0\':$var0])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_location_fluttify', StandardMethodCodec(FluttifyMessageCodec('amap_location_fluttify'))).invokeMethod('com.amap.api.location.CoordUtil::setLoadedSo', {"var0": var0});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
      return __return__;
    }
  }
  
  //endregion
}

extension com_amap_api_location_CoordUtil_Batch on List<com_amap_api_location_CoordUtil> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  static Future<List<int>> convertToGcj_batch(List<Float64List> var0, List<Float64List> var1) async {
    if (var0.length != var1.length) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('me.yohom/amap_location_fluttify', StandardMethodCodec(FluttifyMessageCodec('amap_location_fluttify'))).invokeMethod('com.amap.api.location.CoordUtil::convertToGcj_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__], "var1": var1[__i__]}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => __result__).toList();
      return typedResult;
    }
  }
  
  
  static Future<List<bool>> isLoadedSo_batch() async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('me.yohom/amap_location_fluttify', StandardMethodCodec(FluttifyMessageCodec('amap_location_fluttify'))).invokeMethod('com.amap.api.location.CoordUtil::isLoadedSo_batch', );
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
      return typedResult;
    }
  }
  
  
  static Future<List<void>> setLoadedSo_batch(List<bool> var0) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('me.yohom/amap_location_fluttify', StandardMethodCodec(FluttifyMessageCodec('amap_location_fluttify'))).invokeMethod('com.amap.api.location.CoordUtil::setLoadedSo_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__]}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
      return typedResult;
    }
  }
  
  //endregion
}