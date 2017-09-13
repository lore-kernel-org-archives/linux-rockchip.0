From: David Wu <david.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH 1/8] adc: Add driver for Rockchip Saradc
Date: Wed, 13 Sep 2017 18:09:32 +0800
Message-ID: <1505297379-12638-2-git-send-email-david.wu@rock-chips.com>
References: <1505297379-12638-1-git-send-email-david.wu@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1505297379-12638-1-git-send-email-david.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, p.marczak-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, David Wu <david.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org, chenjh-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The ADC can support some channels signal-ended some bits Successive Approximation
Register (SAR) A/D Converter, like 6-channel and 10-bit. It converts the analog
input signal into some bits binary digital codes.

Signed-off-by: David Wu <david.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/adc/Kconfig           |   9 ++
 drivers/adc/Makefile          |   1 +
 drivers/adc/rockchip-saradc.c | 188 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 198 insertions(+)
 create mode 100644 drivers/adc/rockchip-saradc.c

diff --git a/drivers/adc/Kconfig b/drivers/adc/Kconfig
index e5335f7..830fe0f 100644
--- a/drivers/adc/Kconfig
+++ b/drivers/adc/Kconfig
@@ -20,6 +20,15 @@ config ADC_EXYNOS
 	  - 12-bit resolution
 	  - 600 KSPS of sample rate
 
+config SARADC_ROCKCHIP
+	bool "Enable Rockchip SARADC driver"
+	help
+	  This enables driver for Rockchip SARADC.
+	  It provides:
+	  - 2~6 analog input channels
+	  - 1O-bit resolution
+	  - 1MSPS of sample rate
+
 config ADC_SANDBOX
 	bool "Enable Sandbox ADC test driver"
 	help
diff --git a/drivers/adc/Makefile b/drivers/adc/Makefile
index cebf26d..4b5aa69 100644
--- a/drivers/adc/Makefile
+++ b/drivers/adc/Makefile
@@ -8,3 +8,4 @@
 obj-$(CONFIG_ADC) += adc-uclass.o
 obj-$(CONFIG_ADC_EXYNOS) += exynos-adc.o
 obj-$(CONFIG_ADC_SANDBOX) += sandbox.o
+obj-$(CONFIG_SARADC_ROCKCHIP) += rockchip-saradc.o
diff --git a/drivers/adc/rockchip-saradc.c b/drivers/adc/rockchip-saradc.c
new file mode 100644
index 0000000..5c7c3d9
--- /dev/null
+++ b/drivers/adc/rockchip-saradc.c
@@ -0,0 +1,188 @@
+/*
+ * (C) Copyright 2017, Fuzhou Rockchip Electronics Co., Ltd
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ *
+ * Rockchip Saradc driver for U-Boot
+ */
+
+#include <asm/io.h>
+#include <clk.h>
+#include <common.h>
+#include <dm.h>
+#include <errno.h>
+#include <adc.h>
+
+#define SARADC_DATA			0x00
+
+#define SARADC_STAS			0x04
+#define SARADC_STAS_BUSY		BIT(0)
+
+#define SARADC_CTRL			0x08
+#define SARADC_CTRL_POWER_CTRL		BIT(3)
+#define SARADC_CTRL_CHN_MASK		0x7
+#define SARADC_CTRL_IRQ_STATUS		BIT(6)
+#define SARADC_CTRL_IRQ_ENABLE		BIT(5)
+
+#define SARADC_DLY_PU_SOC		0x0c
+
+#define SARADC_TIMEOUT			(100 * 1000)
+
+struct rockchip_saradc_data {
+	int				num_bits;
+	int				num_channels;
+	unsigned long			clk_rate;
+};
+
+struct rockchip_saradc_priv {
+	fdt_addr_t				regs;
+	int 					active_channel;
+	const struct rockchip_saradc_data	*data;
+};
+
+int rockchip_saradc_channel_data(struct udevice *dev, int channel,
+			    unsigned int *data)
+{
+	struct rockchip_saradc_priv *priv = dev_get_priv(dev);
+
+	if (channel != priv->active_channel) {
+		error("Requested channel is not active!");
+		return -EINVAL;
+	}
+
+	if ((readl(priv->regs + SARADC_CTRL) & SARADC_CTRL_IRQ_STATUS) != SARADC_CTRL_IRQ_STATUS)
+		return -EBUSY;
+
+	/* Read value */
+	*data = readl(priv->regs + SARADC_DATA);
+	*data &= (1 << priv->data->num_bits) - 1;
+
+	/* Power down adc */
+	writel(0, priv->regs + SARADC_CTRL);
+
+	return 0;
+}
+
+int rockchip_saradc_start_channel(struct udevice *dev, int channel)
+{
+	struct rockchip_saradc_priv *priv = dev_get_priv(dev);
+
+	if (channel < 0 || channel >= priv->data->num_channels) {
+		error("Requested channel is invalid!");
+		return -EINVAL;
+	}
+
+	/* 8 clock periods as delay between power up and start cmd */
+	writel(8, priv->regs + SARADC_DLY_PU_SOC);
+
+	/* Select the channel to be used and trigger conversion */
+	writel(SARADC_CTRL_POWER_CTRL
+			| (channel & SARADC_CTRL_CHN_MASK) | SARADC_CTRL_IRQ_ENABLE,
+		   priv->regs + SARADC_CTRL);
+
+	priv->active_channel = channel;
+
+	return 0;
+}
+
+int rockchip_saradc_stop(struct udevice *dev)
+{
+	struct rockchip_saradc_priv *priv = dev_get_priv(dev);
+
+	/* Power down adc */
+	writel(0, priv->regs + SARADC_CTRL);
+
+	priv->active_channel = -1;
+
+	return 0;
+}
+
+int rockchip_saradc_probe(struct udevice *dev)
+{
+	struct rockchip_saradc_priv *priv = dev_get_priv(dev);
+	struct clk clk;
+	int ret;
+
+	ret = clk_get_by_index(dev, 0, &clk);
+	if (ret)
+		return ret;
+
+	ret = clk_set_rate(&clk, priv->data->clk_rate);
+	if (IS_ERR_VALUE(ret))
+		return ret;
+
+	priv->active_channel = -1;
+
+	return 0;
+}
+
+int rockchip_saradc_ofdata_to_platdata(struct udevice *dev)
+{
+	struct adc_uclass_platdata *uc_pdata = dev_get_uclass_platdata(dev);
+	struct rockchip_saradc_priv *priv = dev_get_priv(dev);
+	struct rockchip_saradc_data *data =
+					(struct rockchip_saradc_data *)dev_get_driver_data(dev);
+
+	priv->regs = devfdt_get_addr(dev);
+	if (priv->regs == FDT_ADDR_T_NONE) {
+		error("Dev: %s - can't get address!", dev->name);
+		return -ENODATA;
+	}
+
+	priv->data = data;
+	uc_pdata->data_mask = (1 << priv->data->num_bits) - 1;;
+	uc_pdata->data_format = ADC_DATA_FORMAT_BIN;
+	uc_pdata->data_timeout_us = SARADC_TIMEOUT / 5;
+	uc_pdata->channel_mask = (1 << priv->data->num_channels) - 1;
+
+	return 0;
+}
+
+static const struct adc_ops rockchip_saradc_ops = {
+	.start_channel = rockchip_saradc_start_channel,
+	.channel_data = rockchip_saradc_channel_data,
+	.stop = rockchip_saradc_stop,
+};
+
+static const struct rockchip_saradc_data saradc_data = {
+	.num_bits = 10,
+	.num_channels = 3,
+	.clk_rate = 1000000,
+};
+
+static const struct rockchip_saradc_data rk3066_tsadc_data = {
+	.num_bits = 12,
+	.num_channels = 2,
+	.clk_rate = 50000,
+};
+
+static const struct rockchip_saradc_data rk3399_saradc_data = {
+	.num_bits = 10,
+	.num_channels = 6,
+	.clk_rate = 1000000,
+};
+
+static const struct udevice_id rockchip_saradc_ids[] = {
+	{
+		.compatible = "rockchip,saradc",
+		.data = (ulong)&saradc_data,
+	},
+	{
+		.compatible = "rockchip,rk3066-tsadc",
+		.data = (ulong)&rk3066_tsadc_data,
+	}, {
+		.compatible = "rockchip,rk3399-saradc",
+		.data = (ulong)&rk3399_saradc_data,
+	},
+	{ }
+};
+
+U_BOOT_DRIVER(rockchip_saradc) = {
+	.name		= "rockchip_saradc",
+	.id		= UCLASS_ADC,
+	.of_match	= rockchip_saradc_ids,
+	.ops		= &rockchip_saradc_ops,
+	.probe		= rockchip_saradc_probe,
+	.ofdata_to_platdata = rockchip_saradc_ofdata_to_platdata,
+	.priv_auto_alloc_size = sizeof(struct rockchip_saradc_priv),
+};
-- 
2.7.4
