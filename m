From: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH 1/2] arm64: dts: rockchip: connect hdmi sound in rk3399
Date: Sun,  3 Jun 2018 00:07:17 +0200
Message-ID: <20180602220718.4343-1-vicencb@gmail.com>
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
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Everything is in place and working, it only needed to be wired up.

Signed-off-by: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 4550c0f82be9..efb3a4481792 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1537,6 +1537,7 @@
 	};
 
 	i2s2: i2s@ff8a0000 {
+		#sound-dai-cells = <0>;
 		compatible = "rockchip,rk3399-i2s", "rockchip,rk3066-i2s";
 		reg = <0x0 0xff8a0000 0x0 0x1000>;
 		interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH 0>;
@@ -1682,7 +1683,25 @@
 		status = "disabled";
 	};
 
+	hdmi_sound: hdmi-sound {
+		status = "disabled";
+		compatible = "simple-audio-card";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,name = "hdmi-sound";
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s2>;
+		};
+		simple-audio-card,codec {
+			sound-dai = <&hdmi>;
+		};
+	};
+
 	hdmi: hdmi@ff940000 {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		#sound-dai-cells = <0>;
 		compatible = "rockchip,rk3399-dw-hdmi";
 		reg = <0x0 0xff940000 0x0 0x20000>;
 		interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH 0>;
-- 
2.17.1
