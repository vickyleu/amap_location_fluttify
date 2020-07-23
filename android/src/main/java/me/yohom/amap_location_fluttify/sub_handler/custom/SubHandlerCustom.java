//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

package me.yohom.amap_location_fluttify.sub_handler.custom;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.os.Bundle;
import android.util.Log;

import com.amap.api.fence.GeoFence;
import com.amap.api.fence.GeoFenceClient;
import com.amap.api.location.DPoint;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodChannel;
import me.yohom.amap_location_fluttify.AmapLocationFluttifyPlugin.Handler;

import static me.yohom.foundation_fluttify.FoundationFluttifyPluginKt.getEnableLog;
import static me.yohom.foundation_fluttify.FoundationFluttifyPluginKt.getHEAP;

@SuppressWarnings("ALL")
public class SubHandlerCustom {
    public static Map<String, Handler> getSubHandler(BinaryMessenger messenger, android.app.Activity activity) {
        return new HashMap<String, Handler>() {{
            put("com.amap.api.fence.GeoFenceClient::addCircleGeoFenceX", (rawArgs, methodResult) -> {
                // args
                Map<String, Object> args = (Map<String, Object>) rawArgs;
                int refId = (int) args.get("refId");
                int activeAction = (int) args.get("activeAction");
                DPoint center = (DPoint) getHEAP().get((int) args.get("center"));
                Double radius = (Double) args.get("radius");
                String customId = (String) args.get("customId");

                // ref
                GeoFenceClient ref = (GeoFenceClient) getHEAP().get(refId);

                // invoke native method
                try {
                    final String GEOFENCE_BROADCAST_ACTION = "com.location.apis.geofencedemo.broadcast";

                    ref.setActivateAction(activeAction);
                    ref.createPendingIntent(GEOFENCE_BROADCAST_ACTION);
                    ref.addGeoFence(center, radius.floatValue(), customId);

                    IntentFilter filter = new IntentFilter(ConnectivityManager.CONNECTIVITY_ACTION);
                    filter.addAction(GEOFENCE_BROADCAST_ACTION);
                    activity.registerReceiver(new BroadcastReceiver() {
                        @Override
                        public void onReceive(Context context, Intent intent) {
                            if (GEOFENCE_BROADCAST_ACTION.equals(intent.getAction())) {
                                Bundle bundle = intent.getExtras();
                                Log.d(GEOFENCE_BROADCAST_ACTION, "收到围栏消息: " + bundle);    //获取Bundle
                                //获取围栏行为：
                                int status = bundle.getInt(GeoFence.BUNDLE_KEY_FENCESTATUS);
                                //获取自定义的围栏标识：
                                String customId = bundle.getString(GeoFence.BUNDLE_KEY_CUSTOMID);
                                //获取围栏ID:
                                String fenceId = bundle.getString(GeoFence.BUNDLE_KEY_FENCEID);
                                //获取当前有触发的围栏对象：
                                GeoFence fence = bundle.getParcelable(GeoFence.BUNDLE_KEY_FENCE);
                                getHEAP().put(System.identityHashCode(fence), fence);

                                Map<String, Object> arguments = new HashMap<>();
                                arguments.put("status", status);
                                arguments.put("customId", customId);
                                arguments.put("fenceId", fenceId);
                                arguments.put("fence", System.identityHashCode(fence));

                                new MethodChannel(messenger, "com.amap.api.fence.GeoFenceClient::addCircleGeoFenceX::Callback")
                                        .invokeMethod("Callback::com.amap.api.fence.GeoFenceClient::addCircleGeoFenceX", arguments);
                            }
                        }
                    }, filter);
                } catch (Throwable throwable) {
                    throwable.printStackTrace();
                    if (getEnableLog()) {
                        Log.d("Current HEAP: ", getHEAP().toString());
                    }
                    methodResult.error(throwable.getMessage(), null, null);
                    return;
                }

                // convert result to jsonable result
                String jsonableResult = "success";

                methodResult.success(jsonableResult);
            });
            put("com.amap.api.fence.GeoFenceClient::addPoiGeoFenceX", (rawArgs, methodResult) -> {
                // args
                Map<String, Object> args = (Map<String, Object>) rawArgs;
                int refId = (int) args.get("refId");
                int activeAction = (int) args.get("activeAction");
                String keyword = (String) args.get("keyword");
                String poiType = (String) args.get("poiType");
                String city = (String) args.get("city");
                int size = (int) args.get("size");
                String customId = (String) args.get("customId");

                // ref
                GeoFenceClient ref = (GeoFenceClient) getHEAP().get(refId);

                // invoke native method
                try {
                    final String GEOFENCE_BROADCAST_ACTION = "com.location.apis.geofencedemo.broadcast";

                    ref.setActivateAction(activeAction);
                    ref.createPendingIntent(GEOFENCE_BROADCAST_ACTION);
                    ref.addGeoFence(keyword, poiType, city, size, customId);

                    IntentFilter filter = new IntentFilter(ConnectivityManager.CONNECTIVITY_ACTION);
                    filter.addAction(GEOFENCE_BROADCAST_ACTION);
                    activity.registerReceiver(new BroadcastReceiver() {
                        @Override
                        public void onReceive(Context context, Intent intent) {
                            if (GEOFENCE_BROADCAST_ACTION.equals(intent.getAction())) {
                                Bundle bundle = intent.getExtras();
                                Log.d(GEOFENCE_BROADCAST_ACTION, "收到围栏消息: " + bundle);    //获取Bundle
                                //获取围栏行为：
                                int status = bundle.getInt(GeoFence.BUNDLE_KEY_FENCESTATUS);
                                //获取自定义的围栏标识：
                                String customId = bundle.getString(GeoFence.BUNDLE_KEY_CUSTOMID);
                                //获取围栏ID:
                                String fenceId = bundle.getString(GeoFence.BUNDLE_KEY_FENCEID);
                                //获取当前有触发的围栏对象：
                                GeoFence fence = bundle.getParcelable(GeoFence.BUNDLE_KEY_FENCE);
                                getHEAP().put(System.identityHashCode(fence), fence);

                                Map<String, Object> arguments = new HashMap<>();
                                arguments.put("status", status);
                                arguments.put("customId", customId);
                                arguments.put("fenceId", fenceId);
                                arguments.put("fence", System.identityHashCode(fence));

                                new MethodChannel(messenger, "com.amap.api.fence.GeoFenceClient::addPoiGeoFenceX::Callback")
                                        .invokeMethod("Callback::com.amap.api.fence.GeoFenceClient::addPoiGeoFenceX", arguments);
                            }
                        }
                    }, filter);
                } catch (Throwable throwable) {
                    throwable.printStackTrace();
                    if (getEnableLog()) {
                        Log.d("Current HEAP: ", getHEAP().toString());
                    }
                    methodResult.error(throwable.getMessage(), null, null);
                    return;
                }

                // convert result to jsonable result
                String jsonableResult = "success";

                methodResult.success(jsonableResult);
            });
            put("com.amap.api.fence.GeoFenceClient::addPolygonGeoFenceX", (rawArgs, methodResult) -> {
                // args
                Map<String, Object> args = (Map<String, Object>) rawArgs;
                int refId = (int) args.get("refId");
                int activeAction = (int) args.get("activeAction");

                List<Integer> polygonRefIdList = (List<Integer>) args.get("polygon");
                List<DPoint> polygon = new ArrayList<>();
                for (Integer integer : polygonRefIdList) {
                    polygon.add((DPoint) getHEAP().get(integer));
                }

                String customId = (String) args.get("customId");

                // ref
                GeoFenceClient ref = (GeoFenceClient) getHEAP().get(refId);

                // invoke native method
                try {
                    final String GEOFENCE_BROADCAST_ACTION = "com.location.apis.geofencedemo.broadcast";

                    ref.setActivateAction(activeAction);
                    ref.createPendingIntent(GEOFENCE_BROADCAST_ACTION);

                    ref.addGeoFence(polygon, customId);

                    IntentFilter filter = new IntentFilter(ConnectivityManager.CONNECTIVITY_ACTION);
                    filter.addAction(GEOFENCE_BROADCAST_ACTION);
                    activity.registerReceiver(new BroadcastReceiver() {
                        @Override
                        public void onReceive(Context context, Intent intent) {
                            if (GEOFENCE_BROADCAST_ACTION.equals(intent.getAction())) {
                                Bundle bundle = intent.getExtras();
                                Log.d(GEOFENCE_BROADCAST_ACTION, "收到围栏消息: " + bundle);    //获取Bundle
                                //获取围栏行为：
                                int status = bundle.getInt(GeoFence.BUNDLE_KEY_FENCESTATUS);
                                //获取自定义的围栏标识：
                                String customId = bundle.getString(GeoFence.BUNDLE_KEY_CUSTOMID);
                                //获取围栏ID:
                                String fenceId = bundle.getString(GeoFence.BUNDLE_KEY_FENCEID);
                                //获取当前有触发的围栏对象：
                                GeoFence fence = bundle.getParcelable(GeoFence.BUNDLE_KEY_FENCE);
                                getHEAP().put(System.identityHashCode(fence), fence);

                                Map<String, Object> arguments = new HashMap<>();
                                arguments.put("status", status);
                                arguments.put("customId", customId);
                                arguments.put("fenceId", fenceId);
                                arguments.put("fence", System.identityHashCode(fence));

                                new MethodChannel(messenger, "com.amap.api.fence.GeoFenceClient::addPolygonGeoFenceX::Callback")
                                        .invokeMethod("Callback::com.amap.api.fence.GeoFenceClient::addPolygonGeoFenceX", arguments);
                            }
                        }
                    }, filter);
                } catch (Throwable throwable) {
                    throwable.printStackTrace();
                    if (getEnableLog()) {
                        Log.d("Current HEAP: ", getHEAP().toString());
                    }
                    methodResult.error(throwable.getMessage(), null, null);
                    return;
                }

                // convert result to jsonable result
                String jsonableResult = "success";

                methodResult.success(jsonableResult);
            });
        }};
    }
}
