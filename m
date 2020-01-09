From: Markus Reichl <m.reichl-SRyzfwRm/0rPTwkrwQOX7A@public.gmane.org>
Subject: [RESEND PATCH 3/3] arm64: dts: rockchip: Enable sdio0 and uart0 on
 rk3399-roc-pc-mezzanine
Date: Thu,  9 Jan 2020 16:42:10 +0100
Message-ID: <20200109154211.1530-1-m.reichl@fivetechno.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: Markus Reichl <m.reichl-SRyzfwRm/0rPTwkrwQOX7A@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The mezzanine board carries an E key type M.2 slot. This is
connected to USB, SDIO and UART0. Enable sdio and uart0 for use
with wlan and/or bt M.2 cards.

Signed-off-by: Markus Reichl <m.reichl-SRyzfwRm/0rPTwkrwQOX7A@public.gmane.org>
---
Wifi via SDIO has been tested with Laird ST60-2230C (Marvell 88W8997)
Bluetoth via USB has been tested with Intel 9260
Bluetooth via UART has not been tested.
---
Patch 1/3 of this series has been merged already [1]
Patch 2/3 of this series needs further discussion [2]
[1] https://lkml.org/lkml/2019/12/10/516
[2] https://lkml.org/lkml/2019/12/10/517
---
 .../dts/rockchip/rk3399-roc-pc-mezzanine.dts  | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
index 2db9d32ad54a..2acb3d500fb9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
@@ -70,3 +70,24 @@ pcie_perst: pcie-perst {
 		};
 	};
 };
+
+&sdio0 {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc3v3_ngff>;
+	vqmmc-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
+	status = "okay";
+};
-- 
2.24.0
