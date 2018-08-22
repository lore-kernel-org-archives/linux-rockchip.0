From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH] arm64: dts: rockchip: add cr50 tpm to rk3399-gru scarlet and
 bob
Date: Wed, 22 Aug 2018 14:09:25 +0200
Message-ID: <20180822120925.12388-1-heiko@sntech.de>
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
Cc: amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, smbarber-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, apronin-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Scarlet and Bob use the Google-developed cr50 chip to do things
like TPM and closed-case-debugging.

Add the nodes describing the cr50 and its spi-connection.

Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
---
The last activity on upstreaming the cr50 happened in 2016 it seems [0].
And while I hope that this will continue at some point, I've split this
out of the patches adding Gru-Bob and -Scarlet devicetrees to the mainline
kernel and am putting this out here, so I can keep track of it and maybe
inspire [= prod ;-) ] someone from CrOS to resume upstreaming the driver
part ;-) .


[0] https://patchwork.kernel.org/patch/9251895/

 arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts      | 10 ++++++++++
 arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi | 10 ++++++++++
 2 files changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts b/arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts
index 1ee0dc0d9f10..a16c5afe1636 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts
@@ -68,6 +68,16 @@
 
 &spi0 {
 	status = "okay";
+
+	cr50@0 {
+		compatible = "google,cr50";
+		reg = <0>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <5 IRQ_TYPE_EDGE_RISING>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&h1_int_od_l>;
+		spi-max-frequency = <800000>;
+	};
 };
 
 &pinctrl {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
index fc50b3ef758c..7a93d0774108 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
@@ -435,6 +435,16 @@ camera: &i2c7 {
 
 &spi2 {
 	status = "okay";
+
+	cr50@0 {
+		compatible = "google,cr50";
+		reg = <0>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <17 IRQ_TYPE_EDGE_RISING>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&h1_int_od_l>;
+		spi-max-frequency = <800000>;
+	};
 };
 
 &wake_on_bt {
-- 
2.17.0
