From: Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>
Subject: [PATCH 4.7 069/184] iio: adc: rockchip_saradc: reset saradc
 controller before programming it
Date: Thu, 22 Sep 2016 19:40:03 +0200
Message-ID: <20160922174051.671741226@linuxfoundation.org>
References: <20160922174048.653794923@linuxfoundation.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20160922174048.653794923-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-iio-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, stable-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>, Jonathan Cameron <jic23-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

4.7-stable review patch.  If anyone has any objections, please let me know.

------------------

From: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

commit 543852af8e5902aee8f7c72c89e1513663e0f696 upstream.

SARADC controller needs to be reset before programming it, otherwise
it will not function properly.

Signed-off-by: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Jonathan Cameron <jic23-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: linux-iio-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Tested-by: Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>
Signed-off-by: Jonathan Cameron <jic23-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Signed-off-by: Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>

---
 Documentation/devicetree/bindings/iio/adc/rockchip-saradc.txt |    7 ++
 drivers/iio/adc/Kconfig                                       |    1 
 drivers/iio/adc/rockchip_saradc.c                             |   30 ++++++++++
 3 files changed, 38 insertions(+)

--- a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.txt
+++ b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.txt
@@ -16,6 +16,11 @@ Required properties:
 - vref-supply: The regulator supply ADC reference voltage.
 - #io-channel-cells: Should be 1, see ../iio-bindings.txt
 
+Optional properties:
+- resets: Must contain an entry for each entry in reset-names if need support
+	  this option. See ../reset/reset.txt for details.
+- reset-names: Must include the name "saradc-apb".
+
 Example:
 	saradc: saradc@2006c000 {
 		compatible = "rockchip,saradc";
@@ -23,6 +28,8 @@ Example:
 		interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru SCLK_SARADC>, <&cru PCLK_SARADC>;
 		clock-names = "saradc", "apb_pclk";
+		resets = <&cru SRST_SARADC>;
+		reset-names = "saradc-apb";
 		#io-channel-cells = <1>;
 		vref-supply = <&vcc18>;
 	};
--- a/drivers/iio/adc/Kconfig
+++ b/drivers/iio/adc/Kconfig
@@ -377,6 +377,7 @@ config QCOM_SPMI_VADC
 config ROCKCHIP_SARADC
 	tristate "Rockchip SARADC driver"
 	depends on ARCH_ROCKCHIP || (ARM && COMPILE_TEST)
+	depends on RESET_CONTROLLER
 	help
 	  Say yes here to build support for the SARADC found in SoCs from
 	  Rockchip.
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -21,6 +21,8 @@
 #include <linux/of_device.h>
 #include <linux/clk.h>
 #include <linux/completion.h>
+#include <linux/delay.h>
+#include <linux/reset.h>
 #include <linux/regulator/consumer.h>
 #include <linux/iio/iio.h>
 
@@ -53,6 +55,7 @@ struct rockchip_saradc {
 	struct clk		*clk;
 	struct completion	completion;
 	struct regulator	*vref;
+	struct reset_control	*reset;
 	const struct rockchip_saradc_data *data;
 	u16			last_val;
 };
@@ -190,6 +193,16 @@ static const struct of_device_id rockchi
 };
 MODULE_DEVICE_TABLE(of, rockchip_saradc_match);
 
+/**
+ * Reset SARADC Controller.
+ */
+static void rockchip_saradc_reset_controller(struct reset_control *reset)
+{
+	reset_control_assert(reset);
+	usleep_range(10, 20);
+	reset_control_deassert(reset);
+}
+
 static int rockchip_saradc_probe(struct platform_device *pdev)
 {
 	struct rockchip_saradc *info = NULL;
@@ -218,6 +231,20 @@ static int rockchip_saradc_probe(struct
 	if (IS_ERR(info->regs))
 		return PTR_ERR(info->regs);
 
+	/*
+	 * The reset should be an optional property, as it should work
+	 * with old devicetrees as well
+	 */
+	info->reset = devm_reset_control_get(&pdev->dev, "saradc-apb");
+	if (IS_ERR(info->reset)) {
+		ret = PTR_ERR(info->reset);
+		if (ret != -ENOENT)
+			return ret;
+
+		dev_dbg(&pdev->dev, "no reset control found\n");
+		info->reset = NULL;
+	}
+
 	init_completion(&info->completion);
 
 	irq = platform_get_irq(pdev, 0);
@@ -252,6 +279,9 @@ static int rockchip_saradc_probe(struct
 		return PTR_ERR(info->vref);
 	}
 
+	if (info->reset)
+		rockchip_saradc_reset_controller(info->reset);
+
 	/*
 	 * Use a default value for the converter clock.
 	 * This may become user-configurable in the future.
