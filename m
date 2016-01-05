From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v2 1/2] Documentation: bindings: add dt documentation for
 Rockchip eMMC PHY
Date: Tue,  5 Jan 2016 09:07:14 +0800
Message-ID: <1451956034-24421-1-git-send-email-shawn.lin@rock-chips.com>
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
To: Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

This patch adds a binding that describes the Rockchip eMMC PHYs
found on Rockchip SoCs eMMC interface.

Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

Changes in v2: None

 .../devicetree/bindings/phy/rockchip-emmc-phy.txt     | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt

diff --git a/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt b/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
new file mode 100644
index 0000000..61916f1
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
@@ -0,0 +1,19 @@
+Rockchip EMMC PHY
+-----------------------
+
+Required properties:
+ - compatible: rockchip,rk3399-emmc-phy
+ - rockchip,grf : phandle to the syscon managing the "general
+   register files"
+ - #phy-cells: must be 0
+ - reg: PHY configure reg address offset in "general
+   register files"
+
+Example:
+
+emmcphy: phy {
+	compatible = "rockchip,rk3399-emmc-phy";
+	rockchip,grf = <&grf>;
+	reg = <0xf780>;
+	#phy-cells = <0>;
+};
-- 
2.3.7
