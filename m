From: Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
Subject: [PATCH v2 2/2] arm64: dts: rockchip: add HDMI sound node for
 rk3328-rock64
Date: Thu,  7 Feb 2019 00:20:27 +0900
Message-ID: <20190206152027.8002-2-katsuhiro@katsuster.net>
References: <20190206152027.8002-1-katsuhiro@katsuster.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190206152027.8002-1-katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
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

This patch adds HDMI sound (I2S0) node and remove dma properties
from UART2 node for rock64.

The DMAC of rk3328 connected to 16 DMA sources. Each sources have ID
number that is called 'Req number' in rk3328 TRM. Currently, total
7 sources has been activated as follows:

| Req number | Source | Required  |
|            |        | channels  |
|------------+--------+-----------|
| 14, 15     | I2S1   | 2ch       |
|  6,  7     | UART2  | 2ch       |
|     10     | SPDIF  | 1ch       |
|  8,  9     | SPI0   | 2ch       |
|------------+--------+-----------|
|            | Total  | 7ch       |

HDMI audio needs to activate new source I2S0 (Req number 11 and 12).
I2S0 can work concurrently with other sources, but rk3328 DMAC can
use max 8 channels at same time. If I2S0 is simply activated,
required DMAC channels are 9. It does not work.

UART2 can work without DMA resources, so this patch removes 2 DMA
channel allocation for UART2. These released channels can be used
for I2S0.

Signed-off-by: Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
---
 .../arm64/boot/dts/rockchip/rk3328-rock64.dts | 24 ++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
index 2157a528276b..e21645aa3fa5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -68,7 +68,8 @@
 	sound {
 		compatible = "audio-graph-card";
 		label = "rockchip,rk3328";
-		dais = <&i2s1_p0
+		dais = <&i2s0_p0
+			&i2s1_p0
 			&spdif_p0>;
 	};
 
@@ -141,6 +142,12 @@
 
 &hdmi {
 	status = "okay";
+
+	port@0 {
+		hdmi_p0_0: endpoint {
+			remote-endpoint = <&i2s0_p0_0>;
+		};
+	};
 };
 
 &hdmiphy {
@@ -256,6 +263,18 @@
 	};
 };
 
+&i2s0 {
+	status = "okay";
+
+	i2s0_p0: port {
+		i2s0_p0_0: endpoint {
+			dai-format = "i2s";
+			mclk-fs = <256>;
+			remote-endpoint = <&hdmi_p0_0>;
+		};
+	};
+};
+
 &i2s1 {
 	status = "okay";
 
@@ -343,6 +362,9 @@
 
 &uart2 {
 	status = "okay";
+
+	/delete-property/ dmas;
+	/delete-property/ dma-names;
 };
 
 &u2phy {
-- 
2.20.1
