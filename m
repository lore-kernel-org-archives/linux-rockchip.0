Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92867CD1281
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 04:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A9kQOHei2Dexrl7iOgSF5Wf7WIythRq8sp67dpP7Z0o=; b=CZE0VSdIeAs9be
	rzKNVoUlRAiQ8bnRDFzlqCTPbQNQfAbtUCFYFJdnmFIB7eRY93n7h7XzHMocHlfrCqo4W/IIPMXVQ
	EDV17yMAfsvJxZK1G3o8oA7+plpeHfOIkqnTizhs48dVtMGTqHr3G0YztGsNTS9gM5HSVeyA1u95Z
	uxkRbpn2zWkkB3YxKsswfumGggIrZOmLSbxi5SxpmbrLNQ6PWLT4DnMS6HJW2vONaDoQPRO2Y6a5P
	n/9fmD5tuwX8cICCfS4yG5wtWDe8TQaLgNAcaaMhpvbLgXdzkTPKm09/b2RvxwzMm3bZ+ENdrx0Vk
	89wW/BEx5MOke+oYMv6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1robls-0000000F8Ca-3Aqo;
	Mon, 25 Mar 2024 04:17:16 +0000
Received: from mail-m17233.xmail.ntesmail.com ([45.195.17.233])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roblo-0000000F88b-2bwK;
	Mon, 25 Mar 2024 04:17:14 +0000
DKIM-Signature: a=rsa-sha256;
	b=S9r0f+9FN3LtZ3BxW8+zASeX2mJRD5y9BDprcwER3SnJ+xFG9rwhIRCxSklTmFpxIhFxx3/CToiQVri3c/rLKgrUMobOgAKPhktClxFkhN+0UzbaWTXUcCzQjLK7fv7dw26KEKu8an/FIxniRKoc+pLV46mgUfNRnO5gREEqELY=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=RTrYQS6npXaXjhs3epbhBAkTBe1y8Ij/m1SJhYUQASY=;
	h=date:mime-version:subject:message-id:from;
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 4C7647C044A;
	Mon, 25 Mar 2024 12:16:50 +0800 (CST)
From: Sugar Zhang <sugar.zhang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/2] clk: rockchip: Add support for clk input / output switch
Date: Mon, 25 Mar 2024 12:16:29 +0800
Message-Id: <20240325121537.v1.1.Ibe8286bb98ea1fc3bc6421c30f6e46fc0b1b0d88@changeid>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1711340191-69588-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1711340191-69588-1-git-send-email-sugar.zhang@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkIZTFZKGR4aTk1ISB8aTx5VEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk5DTUtIVUpLS1VKQl
	kG
X-HM-Tid: 0a8e73d34a1109d2kunm4c7647c044a
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OhA6UTo*HTMSOA0ZFQgKNBI3
	GBRPCx5VSlVKTEpKSE9LSUpKSE9CVTMWGhIXVQgOHBoJVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlX
	WRILWUFZTkNVSUlVTFVKSk9ZV1kIAVlBQk9DSjcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240324_211713_262062_79B097F3 
X-CRM114-Status: GOOD (  21.96  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This patch add support switch for clk-bidirection which located
at GRF, such as SAIx_MCLK_{IN OUT} which share the same pin.
and these config maybe located in many pieces of GRF,
which hard to addressed in one single clk driver. so, we add
this simple helper driver to address this situation.

In order to simplify implement and usage, and also for safety
clk usage (avoid high freq glitch), we set all clk out as disabled
(which means Input default for clk-bidrection) in the pre-stage,
such boot-loader or init by HW default. And then set a safety freq
before enable clk-out, such as "assign-clock-rates" or clk_set_rate
in drivers.

e.g.

1. mclk{out,in}_sai0 define:

  mclkin_sai0: mclkin-sai0 {
      compatible = "fixed-clock";
      #clock-cells = <0>;
      clock-frequency = <12288000>;
      clock-output-names = "mclk_sai0_from_io";
  };

  mclkout_sai0: mclkout-sai0@ff040070 {
      compatible = "rockchip,clk-out";
      reg = <0 0xff040070 0 0x4>;
      clocks = <&cru MCLK_SAI0_OUT2IO>;
      #clock-cells = <0>;
      clock-output-names = "mclk_sai0_to_io";
      rockchip,bit-shift = <4>;
      //example with PD if reg access needed
      power-domains = <&power RK3562_PD_VO>;
  };

Note:

clock-output-names of mclkin_sai0 should equal to strings in drivers. such as:

drivers/clk/rockchip/clk-rk3562.c:
PNAME(clk_sai0_p) = { "clk_sai0_src", "clk_sai0_frac", "xin_osc0_half", "mclk_sai0_from_io" };

2. mclkout_sai0 usage:

  &ext_codec {
      clocks = <&mclkout_sai0>;
      clock-names = "mclk";
      assigned-clocks = <&mclkout_sai0>;
      assigned-clock-rates = <12288000>;
      pinctrl-names = "default";
      pinctrl-0 = <&i2s0m0_mclk>;
  };

  clk_summary on sai0 work:

  cat /sys/kernel/debug/clk/clk_summary | egrep "pll|sai0"

  clk_sai0_src                1        1        0  1188000000          0     0  50000
    clk_sai0_frac             1        1        0    12288000          0     0  50000
      clk_sai0                1        1        0    12288000          0     0  50000
        mclk_sai0             1        1        0    12288000          0     0  50000
          mclk_sai0_out2io    1        1        0    12288000          0     0  50000
            mclk_sai0_to_io   1        1        0    12288000          0     0  50000

  example with PD if reg access needed:

  * PD status when mclk_sai0_to_io on:

  cat /sys/kernel/debug/pm_genpd/pm_genpd_summary

  domain                          status          children
    /device                                                runtime status
  ----------------------------------------------------------------------
  ...

  vo                              on
    /devices/platform/clocks/ff040070.mclkout-sai0         active
  ...

  * PD status when mclk_sai0_to_io off:

  cat /sys/kernel/debug/pm_genpd/pm_genpd_summary

  domain                          status          children
    /device                                                runtime status
  ----------------------------------------------------------------------
  ...

  vo                              off-0
    /devices/platform/clocks/ff040070.mclkout-sai0         suspended
  ...

3. mclkin_sai0 usage:

  please override freq of mclkin as the real external clkin, such as:

  &mclkin_sai0 {
      clock-frequency = <24576000>;
  }

  &ext_codec {
      clocks = <&mclkin_sai0>;
      clock-names = "mclk";
      assigned-clocks = <&cru CLK_SAI0>;
      assigned-clock-parents = <&mclkin_sai0>;
      pinctrl-names = "default";
      pinctrl-0 = <&i2s0m0_mclk>;
  };

  clk_summary on sai0 work:

  cat /sys/kernel/debug/clk/clk_summary | egrep "pll|sai0"

  mclk_sai0_from_io          1        1        0    12288000          0     0  50000
    clk_sai0                 1        1        0    12288000          0     0  50000
      mclk_sai0              1        1        0    12288000          0     0  50000
        mclk_sai0_out2io     0        0        0    12288000          0     0  50000
          mclk_sai0_to_io    0        0        0    12288000          0     0  50000

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

 drivers/clk/rockchip/Kconfig   |  6 +++
 drivers/clk/rockchip/Makefile  |  2 +
 drivers/clk/rockchip/clk-out.c | 99 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 107 insertions(+)
 create mode 100644 drivers/clk/rockchip/clk-out.c

diff --git a/drivers/clk/rockchip/Kconfig b/drivers/clk/rockchip/Kconfig
index 9aad869..0e7eee8 100644
--- a/drivers/clk/rockchip/Kconfig
+++ b/drivers/clk/rockchip/Kconfig
@@ -107,4 +107,10 @@ config CLK_RK3588
 	help
 	  Build the driver for RK3588 Clock Driver.
 
+config ROCKCHIP_CLK_OUT
+	tristate "Rockchip Clk Out / Input Switch"
+	default y
+	help
+	  Say y here to enable clk out / input switch.
+
 endif
diff --git a/drivers/clk/rockchip/Makefile b/drivers/clk/rockchip/Makefile
index 36894f6..30d6060 100644
--- a/drivers/clk/rockchip/Makefile
+++ b/drivers/clk/rockchip/Makefile
@@ -29,3 +29,5 @@ obj-$(CONFIG_CLK_RK3368)        += clk-rk3368.o
 obj-$(CONFIG_CLK_RK3399)        += clk-rk3399.o
 obj-$(CONFIG_CLK_RK3568)	+= clk-rk3568.o
 obj-$(CONFIG_CLK_RK3588)	+= clk-rk3588.o rst-rk3588.o
+
+obj-$(CONFIG_ROCKCHIP_CLK_OUT)  += clk-out.o
diff --git a/drivers/clk/rockchip/clk-out.c b/drivers/clk/rockchip/clk-out.c
new file mode 100644
index 0000000..22dcd98
--- /dev/null
+++ b/drivers/clk/rockchip/clk-out.c
@@ -0,0 +1,99 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (c) 2023 Rockchip Electronics Co., Ltd
+ */
+
+#include <linux/clk-provider.h>
+#include <linux/io.h>
+#include <linux/module.h>
+#include <linux/of_address.h>
+#include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
+
+static DEFINE_SPINLOCK(clk_out_lock);
+
+static int rockchip_clk_out_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *node = pdev->dev.of_node;
+	struct clk_hw *hw;
+	struct resource *res;
+	const char *clk_name = node->name;
+	const char *parent_name;
+	void __iomem *reg;
+	u32 shift = 0;
+	u8 clk_gate_flags = CLK_GATE_HIWORD_MASK;
+	int ret;
+
+	ret = device_property_read_string(dev, "clock-output-names", &clk_name);
+	if (ret)
+		return ret;
+
+	ret = device_property_read_u32(dev, "rockchip,bit-shift", &shift);
+	if (ret)
+		return ret;
+
+	if (device_property_read_bool(dev, "rockchip,bit-set-to-disable"))
+		clk_gate_flags |= CLK_GATE_SET_TO_DISABLE;
+
+	ret = of_clk_parent_fill(node, &parent_name, 1);
+	if (ret != 1)
+		return -EINVAL;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	if (!res)
+		return -ENOMEM;
+
+	reg = devm_ioremap(dev, res->start, resource_size(res));
+	if (!reg)
+		return -ENOMEM;
+
+	pm_runtime_enable(dev);
+
+	hw = clk_hw_register_gate(dev, clk_name, parent_name, CLK_SET_RATE_PARENT,
+				  reg, shift, clk_gate_flags, &clk_out_lock);
+	if (IS_ERR(hw)) {
+		ret = -EINVAL;
+		goto err_disable_pm_runtime;
+	}
+
+	of_clk_add_hw_provider(node, of_clk_hw_simple_get, hw);
+
+	return 0;
+
+err_disable_pm_runtime:
+	pm_runtime_disable(dev);
+
+	return ret;
+}
+
+static int rockchip_clk_out_remove(struct platform_device *pdev)
+{
+	struct device_node *node = pdev->dev.of_node;
+
+	of_clk_del_provider(node);
+	pm_runtime_disable(&pdev->dev);
+
+	return 0;
+}
+
+static const struct of_device_id rockchip_clk_out_match[] = {
+	{ .compatible = "rockchip,clk-out", },
+	{},
+};
+
+static struct platform_driver rockchip_clk_out_driver = {
+	.driver = {
+		.name = "rockchip-clk-out",
+		.of_match_table = rockchip_clk_out_match,
+	},
+	.probe = rockchip_clk_out_probe,
+	.remove = rockchip_clk_out_remove,
+};
+
+module_platform_driver(rockchip_clk_out_driver);
+
+MODULE_DESCRIPTION("Rockchip Clock Input-Output-Switch");
+MODULE_AUTHOR("Sugar Zhang <sugar.zhang@rock-chips.com>");
+MODULE_LICENSE("GPL");
+MODULE_DEVICE_TABLE(of, rockchip_clk_out_match);
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
