From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH v3 4/8] phy: rockchip-usb: add compatible values for rk3066a
 and rk3188
Date: Thu, 19 Nov 2015 22:22:25 +0100
Message-ID: <1447968149-10979-5-git-send-email-heiko@sntech.de>
References: <1447968149-10979-1-git-send-email-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1447968149-10979-1-git-send-email-heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: kishon-l0cyMroinI0@public.gmane.org, mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org, sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org
Cc: hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org, arnd-r2nGTMty4D4@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, romain.perier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

We need custom handling for these two socs in the driver shortly,
so add the necessary compatible values to binding and driver.

Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
---
 Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt | 5 ++++-
 drivers/phy/phy-rockchip-usb.c                             | 2 ++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt b/Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt
index 826454a..9b37242 100644
--- a/Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt
+++ b/Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt
@@ -1,7 +1,10 @@
 ROCKCHIP USB2 PHY
 
 Required properties:
- - compatible: rockchip,rk3288-usb-phy
+ - compatible: matching the soc type, one of
+     "rockchip,rk3066a-usb-phy"
+     "rockchip,rk3188-usb-phy"
+     "rockchip,rk3288-usb-phy"
  - rockchip,grf : phandle to the syscon managing the "general
    register files"
  - #address-cells: should be 1
diff --git a/drivers/phy/phy-rockchip-usb.c b/drivers/phy/phy-rockchip-usb.c
index ff3ac33..16cd533 100644
--- a/drivers/phy/phy-rockchip-usb.c
+++ b/drivers/phy/phy-rockchip-usb.c
@@ -176,6 +176,8 @@ static int rockchip_usb_phy_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id rockchip_usb_phy_dt_ids[] = {
+	{ .compatible = "rockchip,rk3066a-usb-phy" },
+	{ .compatible = "rockchip,rk3188-usb-phy" },
 	{ .compatible = "rockchip,rk3288-usb-phy" },
 	{}
 };
-- 
2.6.2
