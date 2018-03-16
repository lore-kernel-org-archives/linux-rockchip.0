From: Lin Huang <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v2 2/2] arm64: dts: rockchip: assign clock rate for some cpll
 child clock
Date: Fri, 16 Mar 2018 11:02:28 +0800
Message-ID: <1521169348-8552-2-git-send-email-hl@rock-chips.com>
References: <1521169348-8552-1-git-send-email-hl@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1521169348-8552-1-git-send-email-hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: dbasehore-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Lin Huang <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org, briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, diander-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

These clocks do not assign default clock frequency, and use the
default cru register value to get frequency, so if cpll increase
frequency, these clocks also increase their frequency, that may
exceed their signed off frequency. So assign default clock for
them to avoid it.

Change-Id: If79368aeda5c51dbf2a3b6659f17052a2ae4a401
Signed-off-by: Lin Huang <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi |  8 +++++++-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi     | 14 ++++++++++++--
 2 files changed, 19 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
index 18f546f..84e367b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
@@ -588,7 +588,10 @@
 		<&cru ACLK_PERILP0>, <&cru HCLK_PERILP0>,
 		<&cru PCLK_PERILP0>, <&cru ACLK_CCI>,
 		<&cru HCLK_PERILP1>, <&cru PCLK_PERILP1>,
-		<&cru ACLK_VIO>;
+		<&cru ACLK_VIO>,
+		<&cru ACLK_GIC_PRE>,
+		<&cru PCLK_DDR>,
+		<&cru ACLK_HDCP>;
 	assigned-clock-rates =
 		<600000000>, <800000000>,
 		<1000000000>,
@@ -597,6 +600,9 @@
 		<100000000>, <100000000>,
 		<50000000>, <800000000>,
 		<100000000>, <50000000>,
+		<400000000>,
+		<200000000>,
+		<200000000>,
 		<400000000>;
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 4550c0f..b358533 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -315,6 +315,8 @@
 		clocks = <&cru HCLK_SDMMC>, <&cru SCLK_SDMMC>,
 			 <&cru SCLK_SDMMC_DRV>, <&cru SCLK_SDMMC_SAMPLE>;
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+		assigned-clocks = <&cru HCLK_SD>;
+		assigned-clock-rates = <200000000>;
 		fifo-depth = <0x100>;
 		power-domains = <&power RK3399_PD_SD>;
 		resets = <&cru SRST_SDMMC>;
@@ -466,8 +468,10 @@
 		clocks = <&cru SCLK_DP_CORE>, <&cru PCLK_DP_CTRL>,
 			 <&cru SCLK_SPDIF_REC_DPTX>, <&cru PCLK_VIO_GRF>;
 		clock-names = "core-clk", "pclk", "spdif", "grf";
-		phys = <&tcphy0_dp>, <&tcphy1_dp>;
+		assigned-clocks = <&cru SCLK_DP_CORE>, <&cru SCLK_SPDIF_REC_DPTX>;
+		assigned-clock-rates = <100000000>, <200000000>;
 		power-domains = <&power RK3399_PD_HDCP>;
+		phys = <&tcphy0_dp>, <&tcphy1_dp>;
 		resets = <&cru SRST_DPTX_SPDIF_REC>, <&cru SRST_P_UPHY0_DPTX>,
 			 <&cru SRST_P_UPHY0_APB>, <&cru SRST_DP_CORE>;
 		reset-names = "spdif", "dptx", "apb", "core";
@@ -1323,7 +1327,10 @@
 			<&cru ACLK_PERILP0>, <&cru HCLK_PERILP0>,
 			<&cru PCLK_PERILP0>, <&cru ACLK_CCI>,
 			<&cru HCLK_PERILP1>, <&cru PCLK_PERILP1>,
-			<&cru ACLK_VIO>;
+			<&cru ACLK_VIO>,
+			<&cru ACLK_GIC_PRE>,
+			<&cru PCLK_DDR>,
+			<&cru ACLK_HDCP>;
 		assigned-clock-rates =
 			 <594000000>,  <800000000>,
 			<1000000000>,
@@ -1332,6 +1339,9 @@
 			 <100000000>,  <100000000>,
 			  <50000000>, <600000000>,
 			 <100000000>,   <50000000>,
+			 <400000000>,
+			 <200000000>,
+			 <200000000>,
 			 <400000000>;
 	};
 
-- 
2.7.4
