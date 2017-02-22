From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v6 1/2] mtd: spi-nor: Bindings for Rockchip serial flash
 controller
Date: Wed, 22 Feb 2017 11:02:02 +0800
Message-ID: <1487732523-97390-2-git-send-email-shawn.lin@rock-chips.com>
References: <1487732523-97390-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1487732523-97390-1-git-send-email-shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: David Woodhouse <dwmw2-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, Brian Norris <computersforpeace-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Cyrille Pitchen <cyrille.pitchen-AIFe0yeh4nAAvxtiuMwx3w@public.gmane.org>
Cc: Marek Vasut <marek.vasut-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-mtd-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Add binding document for the Rockchip serial flash controller.

Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

Acked-by: Marek Vasut <marek.vasut-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Acked-by: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
---

Changes in v6: None
Changes in v5: None
Changes in v4:
- use uppercase DMA for description

Changes in v3: None
Changes in v2: None

 .../devicetree/bindings/mtd/rockchip-sfc.txt       | 31 ++++++++++++++++++++++
 1 file changed, 31 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/rockchip-sfc.txt

diff --git a/Documentation/devicetree/bindings/mtd/rockchip-sfc.txt b/Documentation/devicetree/bindings/mtd/rockchip-sfc.txt
new file mode 100644
index 0000000..1e449b0
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/rockchip-sfc.txt
@@ -0,0 +1,31 @@
+Rockchip Serial Flash Controller
+
+Required properties:
+- compatible : Should be
+		"rockchip,rv1108-sfc", "rockchip,sfc" for ROCKCHIP RV1108.
+- address-cells : Should be 1.
+- size-cells : Should be 0.
+- clocks: Must contain two entries for each entry in clock-names.
+- clock-names: Shall be "sfc" for the transfer-clock, and "hsfc" for
+		the peripheral clock.
+- interrupts : Should contain the interrupt for the device.
+- reg: Physical base address of the controller and length of memory mapped.
+
+Optional properties:
+- rockchip,sfc-no-dma: Indicate the controller doesn't support DMA transfer.
+
+Example:
+nor_flash: sfc@301c0000 {
+	compatible = "rockchip,rv1108-sfc", "rockchip,sfc";
+	#address-cells = <1>;
+	#size-cells = <0>;
+	clocks = <&cru SCLK_SFC>, <&cru HCLK_SFC>;
+	clock-names = "sfc", "hsfc";
+	interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>;
+	reg = <0x301c0000 0x1000>;
+	spi-nor@0 {
+		compatible = "jedec,spi-nor";
+		spi-max-frequency = <12000000>;
+		reg = <0>;
+	};
+};
-- 
1.9.1
