From: Frank Wang <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH 1/2] Documentation: bindings: add DT documentation for
 Rockchip USB2PHY
Date: Tue, 31 May 2016 14:40:10 +0800
Message-ID: <1464676811-7418-2-git-send-email-frank.wang@rock-chips.com>
References: <1464676811-7418-1-git-send-email-frank.wang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1464676811-7418-1-git-send-email-frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, kishon-l0cyMroinI0@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, pawel.moll-5wv7dgnIgG8@public.gmane.org, mark.rutland-5wv7dgnIgG8@public.gmane.org, ijc+devicetree-KcIKpvwj1kUDXYZnReoRVg@public.gmane.org, galak-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Frank Wang <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, frank.wang-TNX95d0MmH54rWYiEK1NRB2eb7JE58TQ@public.gmane.org, william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Signed-off-by: Frank Wang <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 .../bindings/phy/phy-rockchip-inno-usb2.txt        |   48 ++++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
new file mode 100644
index 0000000..4e537b2
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
@@ -0,0 +1,48 @@
+ROCKCHIP USB2.0 PHY WITH INNO IP BLOCK
+
+Required properties (phy (parent) node):
+ - compatible: should contain:
+	* "rockchip,rk3366-usb2phy"
+ - #clock-cells: should be 0.
+ - clock-names: specify the 480m output clk name.
+
+Optional properties:
+ - vbus_host-gpio: pull gpio high/low to control the host vbus power.
+
+Required nodes: a sub-node is required for each port the phy provides.
+		The sub-node name is used to identify host or otg port.
+
+Required properties (port (child) node):
+ - #phy-cells: must be 0. See ./phy-bindings.txt for details.
+ - interrupts: irq number for host/otg port.
+ - interrupt-names: interrupt name, in line with irq number.
+
+Example:
+
+grf: syscon@ff770000 {
+	compatible = "rockchip,rk3366-grf", "syscon", "simple-mfd";
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+...
+
+	u2phy: usb2-phy {
+		compatible = "rockchip,rk3366-usb2phy";
+		#clock-cells = <0>;
+		clock-output-names = "sclk_otgphy0_480m";
+
+		u2phy_otg: otg-port {
+			#phy-cells = <0>;
+			interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "linestate";
+			status = "okay";
+		};
+
+		u2phy_host: host-port {
+			#phy-cells = <0>;
+			interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "linestate";
+			status = "okay";
+		};
+	};
+};
-- 
1.7.9.5
