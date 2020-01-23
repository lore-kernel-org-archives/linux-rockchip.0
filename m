From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 4/4] rockchip: Enable HDMI output on rk3399 board w/ HDMI
Date: Thu, 23 Jan 2020 21:58:45 +0530
Message-ID: <20200123162845.10651-5-jagan@amarulasolutions.com>
References: <20200123162845.10651-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200123162845.10651-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, Michael Trimarchi <michael-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Enable config options and console setting to respective
rk3399 board for HDMI output.

Boards supported and tested on this patch are:
- NanoPc T4
- NanoPi M4
- NanoPi Neo4
- ROC-RK3399-PC

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 configs/nanopc-t4-rk3399_defconfig   | 6 ++++++
 configs/nanopi-m4-rk3399_defconfig   | 6 ++++++
 configs/nanopi-neo4-rk3399_defconfig | 6 ++++++
 configs/roc-pc-rk3399_defconfig      | 6 ++++++
 include/configs/evb_rk3399.h         | 5 +++++
 5 files changed, 29 insertions(+)

diff --git a/configs/nanopc-t4-rk3399_defconfig b/configs/nanopc-t4-rk3399_defconfig
index bd6d60ff6c..17e8a18d31 100644
--- a/configs/nanopc-t4-rk3399_defconfig
+++ b/configs/nanopc-t4-rk3399_defconfig
@@ -53,3 +53,9 @@ CONFIG_USB_ETHER_RTL8152=y
 CONFIG_USB_ETHER_SMSC95XX=y
 CONFIG_SPL_TINY_MEMSET=y
 CONFIG_ERRNO_STR=y
+CONFIG_DM_VIDEO=y
+CONFIG_VIDEO_BPP16=y
+CONFIG_VIDEO_BPP32=y
+CONFIG_DISPLAY=y
+CONFIG_VIDEO_ROCKCHIP=y
+CONFIG_DISPLAY_ROCKCHIP_HDMI=y
diff --git a/configs/nanopi-m4-rk3399_defconfig b/configs/nanopi-m4-rk3399_defconfig
index 74ede13c23..b73b2fdc27 100644
--- a/configs/nanopi-m4-rk3399_defconfig
+++ b/configs/nanopi-m4-rk3399_defconfig
@@ -53,3 +53,9 @@ CONFIG_USB_ETHER_RTL8152=y
 CONFIG_USB_ETHER_SMSC95XX=y
 CONFIG_SPL_TINY_MEMSET=y
 CONFIG_ERRNO_STR=y
+CONFIG_DM_VIDEO=y
+CONFIG_VIDEO_BPP16=y
+CONFIG_VIDEO_BPP32=y
+CONFIG_DISPLAY=y
+CONFIG_VIDEO_ROCKCHIP=y
+CONFIG_DISPLAY_ROCKCHIP_HDMI=y
diff --git a/configs/nanopi-neo4-rk3399_defconfig b/configs/nanopi-neo4-rk3399_defconfig
index a44124aac0..2ecb50967b 100644
--- a/configs/nanopi-neo4-rk3399_defconfig
+++ b/configs/nanopi-neo4-rk3399_defconfig
@@ -53,3 +53,9 @@ CONFIG_USB_ETHER_RTL8152=y
 CONFIG_USB_ETHER_SMSC95XX=y
 CONFIG_SPL_TINY_MEMSET=y
 CONFIG_ERRNO_STR=y
+CONFIG_DM_VIDEO=y
+CONFIG_VIDEO_BPP16=y
+CONFIG_VIDEO_BPP32=y
+CONFIG_DISPLAY=y
+CONFIG_VIDEO_ROCKCHIP=y
+CONFIG_DISPLAY_ROCKCHIP_HDMI=y
diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
index 3a051d9b0c..a9f99f992d 100644
--- a/configs/roc-pc-rk3399_defconfig
+++ b/configs/roc-pc-rk3399_defconfig
@@ -56,3 +56,9 @@ CONFIG_USB_ETHER_RTL8152=y
 CONFIG_USB_ETHER_SMSC95XX=y
 CONFIG_SPL_TINY_MEMSET=y
 CONFIG_ERRNO_STR=y
+CONFIG_DM_VIDEO=y
+CONFIG_VIDEO_BPP16=y
+CONFIG_VIDEO_BPP32=y
+CONFIG_DISPLAY=y
+CONFIG_VIDEO_ROCKCHIP=y
+CONFIG_DISPLAY_ROCKCHIP_HDMI=y
diff --git a/include/configs/evb_rk3399.h b/include/configs/evb_rk3399.h
index c0b0358893..09eb361655 100644
--- a/include/configs/evb_rk3399.h
+++ b/include/configs/evb_rk3399.h
@@ -6,6 +6,11 @@
 #ifndef __EVB_RK3399_H
 #define __EVB_RK3399_H
 
+#define ROCKCHIP_DEVICE_SETTINGS \
+		"stdin=serial,cros-ec-keyb\0" \
+		"stdout=serial,vidconsole\0" \
+		"stderr=serial,vidconsole\0"
+
 #include <configs/rk3399_common.h>
 
 #if defined(CONFIG_ENV_IS_IN_MMC)
-- 
2.18.0.321.gffc6fa0e3
