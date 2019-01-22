From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH 1/2] arm64: dts: rockchip: clean up the abuse of disable-wp
Date: Tue, 22 Jan 2019 16:35:46 +0800
Message-ID: <1548146147-90572-1-git-send-email-shawn.lin@rock-chips.com>
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
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

The mmc.txt didn't explicitly say disable-wp is for SD card slot
only, but that is what it was designed for in the first place.

Remove all disable-wp from emmc or sdio controller.

Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

 arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi               | 1 -
 arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts            | 1 -
 arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi              | 1 -
 arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts     | 1 -
 arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts            | 1 -
 arch/arm64/boot/dts/rockchip/rk3368-r88.dts                | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi           | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts | 1 -
 8 files changed, 8 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi b/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
index 4de0891..e96eb62 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
@@ -116,7 +116,6 @@
 &emmc {
 	bus-width = <8>;
 	cap-mmc-highspeed;
-	disable-wp;
 	mmc-pwrseq = <&emmc_pwrseq>;
 	non-removable;
 	pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts b/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
index 6b9b1ac..8fa550c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
@@ -78,7 +78,6 @@
 	bus-width = <8>;
 	cap-mmc-highspeed;
 	clock-frequency = <150000000>;
-	disable-wp;
 	non-removable;
 	vmmc-supply = <&vcc_io>;
 	vqmmc-supply = <&vcc18_flash>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
index 1315972..1b35d61 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
@@ -139,7 +139,6 @@
 &emmc {
 	bus-width = <8>;
 	clock-frequency = <150000000>;
-	disable-wp;
 	mmc-hs200-1_8v;
 	non-removable;
 	vmmc-supply = <&vcc33_io>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
index 96147d9..f5aa3ca 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
@@ -161,7 +161,6 @@
 &emmc {
 	bus-width = <8>;
 	cap-mmc-highspeed;
-	disable-wp;
 	mmc-pwrseq = <&emmc_pwrseq>;
 	mmc-hs200-1_2v;
 	mmc-hs200-1_8v;
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts b/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
index fc1bf07..41edcfd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
@@ -48,7 +48,6 @@
 	bus-width = <8>;
 	cap-mmc-highspeed;
 	clock-frequency = <150000000>;
-	disable-wp;
 	mmc-hs200-1_8v;
 	no-sdio;
 	no-sd;
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
index 7452bed..d34064c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
@@ -149,7 +149,6 @@
 &emmc {
 	bus-width = <8>;
 	cap-mmc-highspeed;
-	disable-wp;
 	mmc-pwrseq = <&emmc_pwrseq>;
 	non-removable;
 	pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
index 2d304d2..cf6cc4e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
@@ -553,7 +553,6 @@
 	bus-width = <4>;
 	cap-sd-highspeed;
 	cap-sdio-irq;
-	disable-wp;
 	keep-power-in-suspend;
 	mmc-pwrseq = <&sdio_pwrseq>;
 	non-removable;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
index 0b8f1ed..d5abf7d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
@@ -219,7 +219,6 @@
 	cap-sd-highspeed;
 	cap-sdio-irq;
 	clock-frequency = <50000000>;
-	disable-wp;
 	keep-power-in-suspend;
 	max-frequency = <50000000>;
 	mmc-pwrseq = <&sdio_pwrseq>;
-- 
1.9.1
