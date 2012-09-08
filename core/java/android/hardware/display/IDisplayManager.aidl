/*
 * Copyright (C) 2012 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.hardware.display;

import android.hardware.display.IDisplayManagerCallback;
import android.hardware.display.WifiDisplay;
import android.hardware.display.WifiDisplayStatus;
import android.view.DisplayInfo;

/** @hide */
interface IDisplayManager {
    DisplayInfo getDisplayInfo(int displayId);
    int[] getDisplayIds();

    void registerCallback(in IDisplayManagerCallback callback);

    // Requires CONFIGURE_WIFI_DISPLAY permission.
    void scanWifiDisplays();

    // Requires CONFIGURE_WIFI_DISPLAY permission.
    void connectWifiDisplay(String address);

    // Requires CONFIGURE_WIFI_DISPLAY permission.
    void disconnectWifiDisplay();

    // Requires CONFIGURE_WIFI_DISPLAY permission.
    WifiDisplayStatus getWifiDisplayStatus();
}
