//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

#import "AmapLocationFluttifyPlugin.h"
#import <objc/runtime.h>
#import "SubHandler/SubHandler0.h"
#import "SubHandler/SubHandler1.h"
#import "SubHandler/Custom/SubHandlerCustom.h"
#import "FluttifyMessageCodec.h"

// Dart端一次方法调用所存在的栈, 只有当MethodChannel传递参数受限时, 再启用这个容器
extern NSMutableDictionary<NSString*, NSObject*>* STACK;
// Dart端随机存取对象的容器
extern NSMutableDictionary<NSNumber*, NSObject*>* HEAP;
// 日志打印开关
extern BOOL enableLog;

@implementation AmapLocationFluttifyPlugin {
  NSMutableDictionary<NSString*, Handler>* _handlerMap;
}

- (instancetype) initWithFlutterPluginRegistrar: (NSObject <FlutterPluginRegistrar> *) registrar {
  self = [super init];
  if (self) {
    _registrar = registrar;
    // 处理方法们
    _handlerMap = @{}.mutableCopy;

    [_handlerMap addEntriesFromDictionary: [self getSubHandler0]];
    [_handlerMap addEntriesFromDictionary: [self getSubHandler1]];
    [_handlerMap addEntriesFromDictionary: [self getSubHandlerCustom]];
  }

  return self;
}

+ (void)registerWithRegistrar:(NSObject <FlutterPluginRegistrar> *)registrar {
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"me.yohom/amap_location_fluttify"
            binaryMessenger:[registrar messenger]
                      codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];

  [registrar addMethodCallDelegate:[[AmapLocationFluttifyPlugin alloc] initWithFlutterPluginRegistrar:registrar]
                           channel:channel];

  // 注册View
  
}

// Method Handlers
- (void)handleMethodCall:(FlutterMethodCall *)methodCall result:(FlutterResult)methodResult {
  if (_handlerMap[methodCall.method] != nil) {
    _handlerMap[methodCall.method](_registrar, [methodCall arguments], methodResult);
  } else {
    methodResult(FlutterMethodNotImplemented);
  }
}

// 委托方法们
- (void)amapGeoFenceManager : (AMapGeoFenceManager*)manager doRequireLocationAuth: (CLLocationManager*)locationManager
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:@"AMapGeoFenceManagerDelegate::Callback"
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"AMapGeoFenceManagerDelegate::amapGeoFenceManager_doRequireLocationAuth");
  }

  // convert to jsonable arg
  // ref callback arg
  NSObject* argmanager = manager;
  
  // ref callback arg
  NSObject* arglocationManager = locationManager;
  

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::AMapGeoFenceManagerDelegate::amapGeoFenceManager_doRequireLocationAuth" arguments:@{@"manager": argmanager == nil ? [NSNull null] : argmanager, @"locationManager": arglocationManager == nil ? [NSNull null] : arglocationManager}];
  });
  
}

- (void)amapGeoFenceManager : (AMapGeoFenceManager*)manager didAddRegionForMonitoringFinished: (NSArray<AMapGeoFenceRegion*>*)regions customID: (NSString*)customID error: (NSError*)error
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:@"AMapGeoFenceManagerDelegate::Callback"
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"AMapGeoFenceManagerDelegate::amapGeoFenceManager_didAddRegionForMonitoringFinished_customID_error");
  }

  // convert to jsonable arg
  // ref callback arg
  NSObject* argmanager = manager;
  
  // list callback arg
  NSArray<NSObject*>* argregions = regions;
  // jsonable callback arg
  NSString* argcustomID = customID;
  // ref callback arg
  NSObject* argerror = error;
  

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::AMapGeoFenceManagerDelegate::amapGeoFenceManager_didAddRegionForMonitoringFinished_customID_error" arguments:@{@"manager": argmanager == nil ? [NSNull null] : argmanager, @"regions": argregions == nil ? [NSNull null] : argregions, @"customID": argcustomID == nil ? [NSNull null] : argcustomID, @"error": argerror == nil ? [NSNull null] : argerror}];
  });
  
}

- (void)amapGeoFenceManager : (AMapGeoFenceManager*)manager didGeoFencesStatusChangedForRegion: (AMapGeoFenceRegion*)region customID: (NSString*)customID error: (NSError*)error
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:@"AMapGeoFenceManagerDelegate::Callback"
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"AMapGeoFenceManagerDelegate::amapGeoFenceManager_didGeoFencesStatusChangedForRegion_customID_error");
  }

  // convert to jsonable arg
  // ref callback arg
  NSObject* argmanager = manager;
  
  // ref callback arg
  NSObject* argregion = region;
  
  // jsonable callback arg
  NSString* argcustomID = customID;
  // ref callback arg
  NSObject* argerror = error;
  

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::AMapGeoFenceManagerDelegate::amapGeoFenceManager_didGeoFencesStatusChangedForRegion_customID_error" arguments:@{@"manager": argmanager == nil ? [NSNull null] : argmanager, @"region": argregion == nil ? [NSNull null] : argregion, @"customID": argcustomID == nil ? [NSNull null] : argcustomID, @"error": argerror == nil ? [NSNull null] : argerror}];
  });
  
}

- (void)amapLocationManager : (AMapLocationManager*)manager doRequireLocationAuth: (CLLocationManager*)locationManager
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:@"AMapLocationManagerDelegate::Callback"
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"AMapLocationManagerDelegate::amapLocationManager_doRequireLocationAuth");
  }

  // convert to jsonable arg
  // ref callback arg
  NSObject* argmanager = manager;
  
  // ref callback arg
  NSObject* arglocationManager = locationManager;
  

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::AMapLocationManagerDelegate::amapLocationManager_doRequireLocationAuth" arguments:@{@"manager": argmanager == nil ? [NSNull null] : argmanager, @"locationManager": arglocationManager == nil ? [NSNull null] : arglocationManager}];
  });
  
}

- (void)amapLocationManager : (AMapLocationManager*)manager didFailWithError: (NSError*)error
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:@"AMapLocationManagerDelegate::Callback"
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"AMapLocationManagerDelegate::amapLocationManager_didFailWithError");
  }

  // convert to jsonable arg
  // ref callback arg
  NSObject* argmanager = manager;
  
  // ref callback arg
  NSObject* argerror = error;
  

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::AMapLocationManagerDelegate::amapLocationManager_didFailWithError" arguments:@{@"manager": argmanager == nil ? [NSNull null] : argmanager, @"error": argerror == nil ? [NSNull null] : argerror}];
  });
  
}

- (void)amapLocationManager : (AMapLocationManager*)manager didUpdateLocation: (CLLocation*)location
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:@"AMapLocationManagerDelegate::Callback"
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"AMapLocationManagerDelegate::amapLocationManager_didUpdateLocation");
  }

  // convert to jsonable arg
  // ref callback arg
  NSObject* argmanager = manager;
  
  // ref callback arg
  NSObject* arglocation = location;
  

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::AMapLocationManagerDelegate::amapLocationManager_didUpdateLocation" arguments:@{@"manager": argmanager == nil ? [NSNull null] : argmanager, @"location": arglocation == nil ? [NSNull null] : arglocation}];
  });
  
}

- (void)amapLocationManager : (AMapLocationManager*)manager didUpdateLocation: (CLLocation*)location reGeocode: (AMapLocationReGeocode*)reGeocode
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:@"AMapLocationManagerDelegate::Callback"
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"AMapLocationManagerDelegate::amapLocationManager_didUpdateLocation_reGeocode");
  }

  // convert to jsonable arg
  // ref callback arg
  NSObject* argmanager = manager;
  
  // ref callback arg
  NSObject* arglocation = location;
  
  // ref callback arg
  NSObject* argreGeocode = reGeocode;
  

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::AMapLocationManagerDelegate::amapLocationManager_didUpdateLocation_reGeocode" arguments:@{@"manager": argmanager == nil ? [NSNull null] : argmanager, @"location": arglocation == nil ? [NSNull null] : arglocation, @"reGeocode": argreGeocode == nil ? [NSNull null] : argreGeocode}];
  });
  
}

- (void)amapLocationManager : (AMapLocationManager*)manager didChangeAuthorizationStatus: (CLAuthorizationStatus)status
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:@"AMapLocationManagerDelegate::Callback"
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"AMapLocationManagerDelegate::amapLocationManager_didChangeAuthorizationStatus");
  }

  // convert to jsonable arg
  // ref callback arg
  NSObject* argmanager = manager;
  
  // enum callback arg
  NSNumber* argstatus = @((NSInteger) status);

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::AMapLocationManagerDelegate::amapLocationManager_didChangeAuthorizationStatus" arguments:@{@"manager": argmanager == nil ? [NSNull null] : argmanager, @"status": argstatus == nil ? [NSNull null] : argstatus}];
  });
  
}

- (BOOL)amapLocationManagerShouldDisplayHeadingCalibration : (AMapLocationManager*)manager
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:@"AMapLocationManagerDelegate::Callback"
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"AMapLocationManagerDelegate::amapLocationManagerShouldDisplayHeadingCalibration");
  }

  // convert to jsonable arg
  // ref callback arg
  NSObject* argmanager = manager;
  

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::AMapLocationManagerDelegate::amapLocationManagerShouldDisplayHeadingCalibration"
                arguments:@{}
                   result:^(id result) {}]; // 由于结果是异步返回, 这里用不上, 所以就不生成代码了
  });
  
  // 由于flutter无法同步调用method channel, 所以暂不支持有返回值的回调方法
  // 相关issue https://github.com/flutter/flutter/issues/28310
  NSLog(@"暂不支持有返回值的回调方法");
  
  ////////////////////////////如果需要手写代码, 请写在这里/////////////////////////////
  
  ////////////////////////////////////////////////////////////////////////////////
  
  return NO;
}

- (void)amapLocationManager : (AMapLocationManager*)manager didUpdateHeading: (CLHeading*)newHeading
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:@"AMapLocationManagerDelegate::Callback"
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"AMapLocationManagerDelegate::amapLocationManager_didUpdateHeading");
  }

  // convert to jsonable arg
  // ref callback arg
  NSObject* argmanager = manager;
  
  // ref callback arg
  NSObject* argnewHeading = newHeading;
  

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::AMapLocationManagerDelegate::amapLocationManager_didUpdateHeading" arguments:@{@"manager": argmanager == nil ? [NSNull null] : argmanager, @"newHeading": argnewHeading == nil ? [NSNull null] : argnewHeading}];
  });
  
}

- (void)amapLocationManager : (AMapLocationManager*)manager didStartMonitoringForRegion: (AMapLocationRegion*)region
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:@"AMapLocationManagerDelegate::Callback"
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"AMapLocationManagerDelegate::amapLocationManager_didStartMonitoringForRegion");
  }

  // convert to jsonable arg
  // ref callback arg
  NSObject* argmanager = manager;
  
  // ref callback arg
  NSObject* argregion = region;
  

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::AMapLocationManagerDelegate::amapLocationManager_didStartMonitoringForRegion" arguments:@{@"manager": argmanager == nil ? [NSNull null] : argmanager, @"region": argregion == nil ? [NSNull null] : argregion}];
  });
  
}

- (void)amapLocationManager : (AMapLocationManager*)manager didEnterRegion: (AMapLocationRegion*)region
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:@"AMapLocationManagerDelegate::Callback"
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"AMapLocationManagerDelegate::amapLocationManager_didEnterRegion");
  }

  // convert to jsonable arg
  // ref callback arg
  NSObject* argmanager = manager;
  
  // ref callback arg
  NSObject* argregion = region;
  

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::AMapLocationManagerDelegate::amapLocationManager_didEnterRegion" arguments:@{@"manager": argmanager == nil ? [NSNull null] : argmanager, @"region": argregion == nil ? [NSNull null] : argregion}];
  });
  
}

- (void)amapLocationManager : (AMapLocationManager*)manager didExitRegion: (AMapLocationRegion*)region
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:@"AMapLocationManagerDelegate::Callback"
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"AMapLocationManagerDelegate::amapLocationManager_didExitRegion");
  }

  // convert to jsonable arg
  // ref callback arg
  NSObject* argmanager = manager;
  
  // ref callback arg
  NSObject* argregion = region;
  

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::AMapLocationManagerDelegate::amapLocationManager_didExitRegion" arguments:@{@"manager": argmanager == nil ? [NSNull null] : argmanager, @"region": argregion == nil ? [NSNull null] : argregion}];
  });
  
}

- (void)amapLocationManager : (AMapLocationManager*)manager didDetermineState: (AMapLocationRegionState)state forRegion: (AMapLocationRegion*)region
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:@"AMapLocationManagerDelegate::Callback"
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"AMapLocationManagerDelegate::amapLocationManager_didDetermineState_forRegion");
  }

  // convert to jsonable arg
  // ref callback arg
  NSObject* argmanager = manager;
  
  // enum callback arg
  NSNumber* argstate = @((NSInteger) state);
  // ref callback arg
  NSObject* argregion = region;
  

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::AMapLocationManagerDelegate::amapLocationManager_didDetermineState_forRegion" arguments:@{@"manager": argmanager == nil ? [NSNull null] : argmanager, @"state": argstate == nil ? [NSNull null] : argstate, @"region": argregion == nil ? [NSNull null] : argregion}];
  });
  
}

- (void)amapLocationManager : (AMapLocationManager*)manager monitoringDidFailForRegion: (AMapLocationRegion*)region withError: (NSError*)error
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:@"AMapLocationManagerDelegate::Callback"
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"AMapLocationManagerDelegate::amapLocationManager_monitoringDidFailForRegion_withError");
  }

  // convert to jsonable arg
  // ref callback arg
  NSObject* argmanager = manager;
  
  // ref callback arg
  NSObject* argregion = region;
  
  // ref callback arg
  NSObject* argerror = error;
  

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::AMapLocationManagerDelegate::amapLocationManager_monitoringDidFailForRegion_withError" arguments:@{@"manager": argmanager == nil ? [NSNull null] : argmanager, @"region": argregion == nil ? [NSNull null] : argregion, @"error": argerror == nil ? [NSNull null] : argerror}];
  });
  
}


@end