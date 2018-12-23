From: Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
Subject: [PATCH] arm64: dts: rockchip: enable analog audio node for rock64
Date: Sun, 23 Dec 2018 19:10:26 +0900
Message-ID: <20181223101026.12998-1-katsuhiro@katsuster.net>
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
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The Rock64 boards has analog audio jack on it. RK3328 can output
analog audio signal using I2S1 and ACODEC core.

This patch adds sound node for analog audio for Rock64.

Signed-off-by: Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
---

This patch depends on the following ACODEC node patch. If ACODEC
patch is not good to you, please drop this patch too.
  https://lkml.org/lkml/2018/12/23/53

 .../arm64/boot/dts/rockchip/rk3328-rock64.dts | 27 ++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
index bd937d68ca3b..0a71e1287a1b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -66,7 +66,8 @@
 	sound {
 		compatible = "audio-graph-card";
 		label = "rockchip,rk3328";
-		dais = <&spdif_p0>;
+		dais = <&i2s1_p0
+			&spdif_p0>;
 	};
 
 	spdif-dit {
@@ -81,6 +82,17 @@
 	};
 };
 
+&codec {
+	status = "okay";
+	#sound-dai-cells = <0>;
+
+	port@0 {
+		codec_p0_0: endpoint {
+			remote-endpoint = <&i2s1_p0_0>;
+		};
+	};
+};
+
 &cpu0 {
 	cpu-supply = <&vdd_arm>;
 };
@@ -243,6 +255,19 @@
 	};
 };
 
+&i2s1 {
+	status = "okay";
+	#sound-dai-cells = <0>;
+
+	i2s1_p0: port {
+		i2s1_p0_0: endpoint {
+			dai-format = "i2s";
+			mclk-fs = <256>;
+			remote-endpoint = <&codec_p0_0>;
+		};
+	};
+};
+
 &io_domains {
 	status = "okay";
 
-- 
2.19.2
