From: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v2.1 7/9] arm64: dts: rockchip: add pd_edp node for rk3399
Date: Mon, 21 Nov 2016 10:17:46 +0800
Message-ID: <1479694666-4384-1-git-send-email-wxt@rock-chips.com>
References: <1478697721-2323-1-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1478697721-2323-1-git-send-email-wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
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
Cc: zhangqing <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

From: zhangqing <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

This patch adds the below pd_edp information for rk3399.
1. add pd_edp node for RK3399 SoC
2. add the pd support for edp

Signed-off-by: Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Signed-off-by: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Reviewed-by: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---

Changes in v2.1: (Hope the v3 will fix the display stuff with upstream)
- change the commit message as Doug comments on
  https://patchwork.kernel.org/patch/9419241

Changes in v2: None

 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index db72033..7354c63 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -838,6 +838,10 @@
 			};
 
 			/* These power domains are grouped by VD_LOGIC */
+			pd_edp@RK3399_PD_EDP {
+				reg = <RK3399_PD_EDP>;
+				clocks = <&cru PCLK_EDP_CTRL>;
+			};
 			pd_emmc@RK3399_PD_EMMC {
 				reg = <RK3399_PD_EMMC>;
 				clocks = <&cru ACLK_EMMC>;
@@ -1388,6 +1392,7 @@
 		status = "disabled";
 		pinctrl-names = "default";
 		pinctrl-0 = <&edp_hpd>;
+		power-domains = <&power RK3399_PD_EDP>;
 
 		ports {
 			#address-cells = <1>;
-- 
2.7.4
