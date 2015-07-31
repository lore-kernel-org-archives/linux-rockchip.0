From: Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH 3/3] ARM: dts: rockchip: Enable usb PHY on rk3288-evb board
Date: Fri, 31 Jul 2015 14:49:02 +0800
Message-ID: <1438325342-24926-3-git-send-email-lyz@rock-chips.com>
References: <1438325342-24926-1-git-send-email-lyz@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1438325342-24926-1-git-send-email-lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: lintao-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, rockchip-discuss-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Enable usb PHY for all usb ports on rk3288-evb.

Signed-off-by: Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

Series-to:heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Series-to:jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org
Series-to:dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org
Series-cc:olof-nZhT3qVonbNeoWH0uzbU5w@public.gmane.org
Series-cc:huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Series-cc:zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Series-cc:cf-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Series-cc:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org

Series-version:7

Cover-letter:
Patches to add support for Rockchip usb PHYs.

Patches to add support for Rockchip usb phys.Add a new Rockchip
usb phy driver and modify dwc2 controller driver to make dwc2
platform devices support a generic PHY framework driver. This
patch set has been tested on my rk3288-evb and power off the usb
phys would reduce about 60mW power budget in total during sustem
suspend.
END
---
 arch/arm/boot/dts/rk3288-evb.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-evb.dtsi b/arch/arm/boot/dts/rk3288-evb.dtsi
index cb83cea..992f323 100644
--- a/arch/arm/boot/dts/rk3288-evb.dtsi
+++ b/arch/arm/boot/dts/rk3288-evb.dtsi
@@ -174,6 +174,10 @@
 	};
 };
 
+&usbphy {
+	status = "okay";
+};
+
 &usb_host0_ehci {
 	status = "okay";
 };
-- 
2.0.0
