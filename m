From: Shunqian Zheng <zhengsq-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v1 3/5] nvmem: rockchip-efuse: implement efuse driver
Date: Tue, 11 Aug 2015 14:15:04 +0800
Message-ID: <1439273706-28274-4-git-send-email-zhengsq@rock-chips.com>
References: <1439273706-28274-1-git-send-email-zhengsq@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1439273706-28274-1-git-send-email-zhengsq-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, srinivas.kandagatla-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org, maxime.ripard-wi1+55ScJUtKEb57/3fJTNBPR1lH4CV8@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, caesar.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, xjq-TNX95d0MmH7DzftRWevZcw@public.gmane.org, ZhengShunQian <zhengsq-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

From: ZhengShunQian <zhengsq-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

There are some SoC specified values store in eFuse,
such as the cpu_leakage and cpu_version,
this driver can expose these values to /sys base on nvmem.

Signed-off-by: Caesar Wang <caesar.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Signed-off-by: ZhengShunQian <zhengsq-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/nvmem/Kconfig          |  10 +++
 drivers/nvmem/Makefile         |   2 +
 drivers/nvmem/rockchip-efuse.c | 193 +++++++++++++++++++++++++++++++++++++++++
 3 files changed, 205 insertions(+)
 create mode 100644 drivers/nvmem/rockchip-efuse.c

diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index 8db2978..98f1fac 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -36,4 +36,14 @@ config NVMEM_SUNXI_SID
 	  This driver can also be built as a module. If so, the module
 	  will be called nvmem_sunxi_sid.
 
+config ROCKCHIP_EFUSE
+	tristate "Rockchip eFuse Support"
+	depends on ARCH_ROCKCHIP || COMPILE_TEST
+	help
+	  This is a simple drive to dump specified values of Rockchip SoC
+	  from eFuse, such as cpu-leakage.
+
+	  This driver can also be built as a module. If so, the module
+	  will be called nvmem_rockchip_efuse.
+
 endif
diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
index 4328b93..093a528 100644
--- a/drivers/nvmem/Makefile
+++ b/drivers/nvmem/Makefile
@@ -10,3 +10,5 @@ obj-$(CONFIG_QCOM_QFPROM)	+= nvmem_qfprom.o
 nvmem_qfprom-y			:= qfprom.o
 obj-$(CONFIG_NVMEM_SUNXI_SID)	+= nvmem_sunxi_sid.o
 nvmem_sunxi_sid-y		:= sunxi_sid.o
+obj-$(CONFIG_ROCKCHIP_EFUSE)	+= nvmem_rockchip_efuse.o
+nvmem_rockchip_efuse-y		:= rockchip-efuse.o
diff --git a/drivers/nvmem/rockchip-efuse.c b/drivers/nvmem/rockchip-efuse.c
new file mode 100644
index 0000000..9d1e2e0
--- /dev/null
+++ b/drivers/nvmem/rockchip-efuse.c
@@ -0,0 +1,193 @@
+/*
+ * Rockchip eFuse Driver
+ *
+ * Copyright (c) 2015 Rockchip Electronics Co. Ltd.
+ * Author: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms of version 2 of the GNU General Public License as
+ * published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
+ * more details.
+ */
+
+#include <linux/platform_device.h>
+#include <linux/nvmem-provider.h>
+#include <linux/slab.h>
+#include <linux/regmap.h>
+#include <linux/device.h>
+#include <linux/io.h>
+#include <linux/module.h>
+#include <linux/delay.h>
+#include <linux/of.h>
+#include <linux/clk.h>
+
+#define EFUSE_A_SHIFT			6
+#define EFUSE_A_MASK			0x3ff
+#define EFUSE_PGENB			BIT(3)
+#define EFUSE_LOAD			BIT(2)
+#define EFUSE_STROBE			BIT(1)
+#define EFUSE_CSB			BIT(0)
+
+#define REG_EFUSE_CTRL			0x0000
+#define REG_EFUSE_DOUT			0x0004
+
+struct rockchip_efuse_context {
+	struct device *dev;
+	void __iomem *base;
+	struct clk *efuse_clk;
+};
+
+static int rockchip_efuse_write(void *context, const void *data, size_t count)
+{
+	/* Nothing TBD, Read-Only */
+	return 0;
+}
+
+static int rockchip_efuse_read(void *context,
+			       const void *reg, size_t reg_size,
+			       void *val, size_t val_size)
+{
+	unsigned int offset = *(u32 *)reg;
+	struct rockchip_efuse_context *_context = context;
+	void __iomem *base = _context->base;
+	struct clk *clk = _context->efuse_clk;
+	u8 *buf = val;
+	int ret;
+
+	ret = clk_prepare(clk);
+	if (ret < 0) {
+		dev_err(_context->dev, "failed to prepare efuse clk\n");
+		return ret;
+	}
+	ret = clk_enable(clk);
+	if (ret < 0) {
+		dev_err(_context->dev, "failed to enable efuse clk\n");
+		clk_unprepare(clk);
+		return ret;
+	}
+
+	writel(EFUSE_LOAD | EFUSE_PGENB, base + REG_EFUSE_CTRL);
+	udelay(1);
+	while (val_size) {
+		writel(readl(base + REG_EFUSE_CTRL) &
+			     (~(EFUSE_A_MASK << EFUSE_A_SHIFT)),
+			     base + REG_EFUSE_CTRL);
+		writel(readl(base + REG_EFUSE_CTRL) |
+			     ((offset & EFUSE_A_MASK) << EFUSE_A_SHIFT),
+			     base + REG_EFUSE_CTRL);
+		udelay(1);
+		writel(readl(base + REG_EFUSE_CTRL) |
+			     EFUSE_STROBE, base + REG_EFUSE_CTRL);
+		udelay(1);
+		*buf++ = readb(base + REG_EFUSE_DOUT);
+		writel(readl(base + REG_EFUSE_CTRL) &
+		     (~EFUSE_STROBE), base + REG_EFUSE_CTRL);
+		udelay(1);
+
+		val_size -= 1;
+		offset += 1;
+	}
+
+	/* Switch to standby mode */
+	writel(EFUSE_PGENB | EFUSE_CSB, base + REG_EFUSE_CTRL);
+
+	clk_disable(clk);
+	clk_unprepare(clk);
+
+	return 0;
+}
+
+static struct regmap_bus rockchip_efuse_bus = {
+	.read = rockchip_efuse_read,
+	.write = rockchip_efuse_write,
+	.reg_format_endian_default = REGMAP_ENDIAN_NATIVE,
+	.val_format_endian_default = REGMAP_ENDIAN_NATIVE,
+};
+
+struct regmap_config rockchip_efuse_regmap_config = {
+	.reg_bits = 32,
+	.reg_stride = 1,
+	.val_bits = 8,
+};
+
+static struct nvmem_config econfig = {
+	.name = "rockchip-efuse",
+	.owner = THIS_MODULE,
+	.read_only = true,
+};
+
+static const struct of_device_id rockchip_efuse_match[] = {
+	{ .compatible = "rockchip,rockchip-efuse",},
+	{ /* sentinel */},
+};
+MODULE_DEVICE_TABLE(of, rockchip_efuse_match);
+
+int rockchip_efuse_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct resource *res;
+	struct nvmem_device *nvmem;
+	struct regmap *regmap;
+	void __iomem *base;
+	struct clk *clk;
+	struct rockchip_efuse_context *context;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	base = devm_ioremap_resource(dev, res);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
+
+	context = devm_kzalloc(dev, sizeof(struct rockchip_efuse_context),
+			       GFP_KERNEL);
+	if (IS_ERR(context))
+		return PTR_ERR(context);
+
+	clk = devm_clk_get(dev, "pclk_efuse");
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	context->dev = dev;
+	context->base = base;
+	context->efuse_clk = clk;
+
+	rockchip_efuse_regmap_config.max_register = resource_size(res) - 1;
+
+	regmap = devm_regmap_init(dev, &rockchip_efuse_bus,
+				  context, &rockchip_efuse_regmap_config);
+	if (IS_ERR(regmap)) {
+		dev_err(dev, "regmap init failed\n");
+		return PTR_ERR(regmap);
+	}
+	econfig.dev = dev;
+	nvmem = nvmem_register(&econfig);
+	if (IS_ERR(nvmem))
+		return PTR_ERR(nvmem);
+
+	platform_set_drvdata(pdev, nvmem);
+
+	return 0;
+}
+
+int rockchip_efuse_remove(struct platform_device *pdev)
+{
+	struct nvmem_device *nvmem = platform_get_drvdata(pdev);
+
+	return nvmem_unregister(nvmem);
+}
+
+static struct platform_driver rockchip_efuse_driver = {
+	.probe = rockchip_efuse_probe,
+	.remove = rockchip_efuse_remove,
+	.driver = {
+		.name = "rockchip-efuse",
+		.of_match_table = rockchip_efuse_match,
+	},
+};
+
+module_platform_driver(rockchip_efuse_driver);
+MODULE_DESCRIPTION("rockchip_efuse driver");
+MODULE_LICENSE("GPL v2");
-- 
1.9.1
