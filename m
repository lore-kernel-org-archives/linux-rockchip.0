From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH 3/3] arm64: dts: rockchip: remove always-on and boot-on from
 vcc_sd
Date: Thu, 22 Sep 2016 12:02:19 +0800
Message-ID: <1474516939-22001-3-git-send-email-shawn.lin@rock-chips.com>
References: <1474516939-22001-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1474516939-22001-1-git-send-email-shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: Andy Yan <andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Please don't add these for vcc_sd, and mmc-core/driver will control
it. Otherwise, it will waste energy even without sdmmc in slot.

Moreover, it will causes a bug:
If we insert/remove sd card, we could see
[9.337271] mmc0: new ultra high speed SDR25 SDHC card at address 0007
[9.345144] mmcblk0: mmc0:0007 SD32G 29.3 GiB

This is okay for normal sd insert/remove test, but when I debug some
issues for sdmmc, I did unbind/bind test. And there is a interesting
phenomenon when we bind the driver again:
[58.314069] mmc0: new high speed SDHC card at address 0007
[58.320282] mmcblk0: mmc0:0007 SD32G 29.3 GiB

So the sd card could just support high speed without power cycle
since the vcc_sd is always on, which makes the sd card fail to
reinit its internal ocr mask.

Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

 arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts        | 2 --
 arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts | 2 --
 arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts        | 2 --
 3 files changed, 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts b/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
index 46cdddf..353314c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
@@ -258,8 +258,6 @@
 			};
 
 			vcc_sd: SWITCH_REG1 {
-				regulator-always-on;
-				regulator-boot-on;
 				regulator-name = "vcc_sd";
 			};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
index 5797933..13b7f1ed 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
@@ -152,8 +152,6 @@
 		gpio = <&gpio3 11 GPIO_ACTIVE_LOW>;
 		regulator-min-microvolt = <1800000>;
 		regulator-max-microvolt = <3300000>;
-		regulator-always-on;
-		regulator-boot-on;
 		vin-supply = <&vcc_io>;
 	};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts b/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
index f59049b..8c47b01 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
@@ -236,8 +236,6 @@
 			};
 
 			vcc_sd: SWITCH_REG1 {
-				regulator-always-on;
-				regulator-boot-on;
 				regulator-name = "vcc_sd";
 			};
 
-- 
2.3.7
