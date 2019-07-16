From: "Eric Auer, EMW-MT" <auere-OIIjM32accxuPis3aSs6BxvVK+yQ3ZXh@public.gmane.org>
Subject: Wifi indentation fixes
Date: Tue, 16 Jul 2019 15:37:06 +0200
Message-ID: <20190716133522.M79686@hochschule-trier.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org



Dear list,

Below are some indent fixes for some Wifi related sources.

Base Version: Tinker OS 2.0.7 Linux Kernels Version 4.4.103
https://github.com/TinkerBoard/debian_kernel/tree/release

I guess most branches already have those fixed anyway.

Regards, Eric



---
OLD/drivers/net/wireless/rockchip_wlan/rtl8723bs/hal/btc/halbtc8723b1ant.c
2018-06-01 04:25:35
+++
NEW/drivers/net/wireless/rockchip_wlan/rtl8723bs/hal/btc/halbtc8723b1ant.c
2018-07-27 21:08:04
@@ -2195,7 +2195,7 @@
 				else  /*11n mode*/
 					halbtc8723b1ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 3);
 
-					halbtc8723b1ant_ps_tdma(btcoexist, NORMAL_EXEC, true, 14);
+				halbtc8723b1ant_ps_tdma(btcoexist, NORMAL_EXEC, true, 14);
 			}
 		}
 #endif


---
OLD/drivers/net/wireless/rockchip_wlan/rtl8723bs/hal/btc/halbtc8723b2ant.c
2018-06-01 04:25:35
+++
NEW/drivers/net/wireless/rockchip_wlan/rtl8723bs/hal/btc/halbtc8723b2ant.c
2018-07-27 21:07:00
@@ -3273,8 +3273,8 @@
 		halbtc8723b2ant_dec_bt_pwr(btcoexist, NORMAL_EXEC, 0);
 
 
-		halbtc8723b2ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 16);
-		halbtc8723b2ant_ps_tdma(btcoexist, NORMAL_EXEC, true, 30);
+	halbtc8723b2ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 16);
+	halbtc8723b2ant_ps_tdma(btcoexist, NORMAL_EXEC, true, 30);
 
 #if 0
 	if (BTC_RSSI_HIGH(wifi_rssi_state1) && BTC_RSSI_HIGH(bt_rssi_state)) {


--- OLD/drivers/net/wireless/rockchip_wlan/rtl8814au/core/rtw_mlme_ext.c
2018-06-01 04:25:35
+++ NEW/drivers/net/wireless/rockchip_wlan/rtl8814au/core/rtw_mlme_ext.c
2018-07-27 21:11:16
@@ -12103,13 +12103,13 @@
 							ret = issue_del_ba_ex(padapter, psta->hwaddr, i, 39, 0, 3, 1);
 						else
 							issue_del_ba(padapter,  psta->hwaddr, i, 39, 0);
-							psta->recvreorder_ctrl[i].enable = _FALSE;
+						psta->recvreorder_ctrl[i].enable = _FALSE;
 						if (ret != _FAIL)
 							psta->recvreorder_ctrl[i].ampdu_size = RX_AMPDU_SIZE_INVALID;
-							rtw_reset_continual_no_rx_packet(psta, i);
-						}
+						rtw_reset_continual_no_rx_packet(psta, i);
 					}
 				}
+			}
 			else{
 				/* The inactivity timer is reset when MPDUs to the TID is received. */
 				rtw_reset_continual_no_rx_packet(psta, i);


--- OLD/drivers/net/wireless/rockchip_wlan/rtl8814au/core/rtw_security.c
2018-06-01 04:25:35
+++ NEW/drivers/net/wireless/rockchip_wlan/rtl8814au/core/rtw_security.c
2018-07-27 21:09:52
@@ -1598,8 +1598,8 @@
     for (j = 0; j < 8; j++)
     	pframe[payload_index+j] = mic[j];	//message[payload_index+j] = mic[j];
 
-	payload_index = hdrlen + 8;
-	for (i=0; i< num_blocks; i++)
+    payload_index = hdrlen + 8;
+    for (i=0; i< num_blocks; i++)
     {
         construct_ctr_preload(
                                 ctr_preload,
@@ -1971,8 +1971,8 @@
     for (j = 0; j < 8; j++)
     	message[payload_index+j] = mic[j];
 
-	payload_index = hdrlen + 8;
-	for (i=0; i< num_blocks; i++)
+    payload_index = hdrlen + 8;
+    for (i=0; i< num_blocks; i++)
     {
         construct_ctr_preload(
                                 ctr_preload,


---
OLD/drivers/net/wireless/rockchip_wlan/rtl8814au/hal/rtl8814a/usb/rtl8814au_xmit.c
2018-06-01 04:25:35
+++
NEW/drivers/net/wireless/rockchip_wlan/rtl8814au/hal/rtl8814a/usb/rtl8814au_xmit.c
2018-07-27 21:12:36
@@ -604,8 +604,8 @@
 	bulkPtr = bulkSize;
 	if (pbuf < bulkPtr)
 		descCount++;
-		if (descCount == pHalData->UsbTxAggDescNum)
-			goto agg_end;
+	if (descCount == pHalData->UsbTxAggDescNum)
+		goto agg_end;
 	else {
 		descCount = 0;
 		bulkPtr = ((pbuf / bulkSize) + 1) * bulkSize; // round to next bulkSize
