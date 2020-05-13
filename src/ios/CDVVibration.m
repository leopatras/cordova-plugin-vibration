/*
 Licensed to the Apache Software Foundation (ASF) under one
 or more contributor license agreements.  See the NOTICE file
 distributed with this work for additional information
 regarding copyright ownership.  The ASF licenses this file
 to you under the Apache License, Version 2.0 (the
 "License"); you may not use this file except in compliance
 with the License.  You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing,
 software distributed under the License is distributed on an
 "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 KIND, either express or implied.  See the License for the
 specific language governing permissions and limitations
 under the License.
 */

#import "CDVVibration.h"

@implementation CDVVibration

- (void)vibrate:(CDVInvokedUrlCommand*)command
{
  //https://stackoverflow.com/questions/4724980/making-the-iphone-vibrate
  if([[UIDevice currentDevice].model isEqualToString:@"iPhone"]) {
    AudioServicesPlaySystemSound (1352); //works ALWAYS as of this post
  } else {
    // Not an iPhone, so doesn't have vibrate
    // play the less annoying tick noise or one of your own
    AudioServicesPlayAlertSound (1105);
  }
  [self.commandDelegate sendPluginResult:[CDVPluginResult resultWithStatus:CDVCommandStatus_OK] callbackId:command.callbackId];
}

@end
