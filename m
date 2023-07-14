Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81BE7EB64DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jul 2023 17:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gFthxyVPx0R25dhT+lbD26mNOQppW+ouXQXd9DEfcbU=; b=nGyJr9tqZ6Tka5
	hGRPo1b+DCFzao0PWrgL55lG6ymAEtMdoLQ01ghSqyo70debX18uWjA8uzvDWxk8RIY8jMh9Rq1wq
	h0cIcxE2/OeTan5XFfQZx1zieSyGdcSuoCoZQyaGxKrrSh/+jytvGsStYg90mbC3B/qynyVviZRrQ
	qb6ikd0i8x3aE9YQqbKLBfhj8US7g1D4dcX1Wxn9HY2EQwdrw8cH3+pyB2i5UmwIzj71MDqSVbjaS
	+FTa/sGXN9e6JeVDIwQ7XNmAawXs+CsMDy82EF6Q1y3SzA7cowJuASBbSn4Xn4i1Z43aOR1xQVEyc
	pr/FyTXWRXVd4/PCuuqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qKMrP-006nyI-23;
	Fri, 14 Jul 2023 17:45:43 +0000
Received: from mail-il1-f175.google.com ([209.85.166.175])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qKMrL-006nve-1W;
	Fri, 14 Jul 2023 17:45:41 +0000
Received: by mail-il1-f175.google.com with SMTP id e9e14a558f8ab-346392da0d6so9608235ab.3;
        Fri, 14 Jul 2023 10:45:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689356738; x=1691948738;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b/p6EnB96xx9Bba+TzT5uunZoNLBUx08WENa+RlpM4s=;
        b=I6afaUjfQn0G+2TLVp+N/M8/i/KGyvmxa6CxZuGcG/xWx6EivBKoDuyjtb1npX2zL8
         jLTkq3x7dMXg82jkmwINRa96P5QUZRZbl88X5ycDduR29gqysUDvY8BYypqzMtwYDwAS
         6IeJgufPhGuvnqHmGx7avSGXhKpOjWg9Kps1TKasNnl46ul7asOnDFxDF+LGKQqppiW3
         rzQsIorNgKzb0zgdlRlDmWW1wUxIgGW96Ps1CHQRPziPFWSFPW18FYKYJCsRb3FYj0E7
         2kN+gy3iUwDMzsxQSbA4tyOnuEeNUiIrN1yreIO/WgEFjVAtQ3pCuwAC6tXDmXhSo0/3
         IIxw==
X-Gm-Message-State: ABy/qLbKv2YZeaJMgH/5bEG2Zk3z9jPXHrTCixZzliqS/914KXnXn5Gw
	On6ZB2bwi0NfsKa7aGGCCQ==
X-Google-Smtp-Source: APBJJlFQ06OgCgO2zfnQs7LlZlw/BNplLojN0qmNZ5XX/jPuOEJAMRkVU2fhW4z7FKUV3WKtCui9hw==
X-Received: by 2002:a92:dac6:0:b0:346:8b3:7aca with SMTP id o6-20020a92dac6000000b0034608b37acamr5853667ilq.21.1689356738196;
        Fri, 14 Jul 2023 10:45:38 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id z15-20020a92da0f000000b0034294982b83sm2941766ilm.69.2023.07.14.10.45.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jul 2023 10:45:37 -0700 (PDT)
Received: (nullmailer pid 4056243 invoked by uid 1000);
	Fri, 14 Jul 2023 17:45:34 -0000
From: Rob Herring <robh@kernel.org>
To: Alban Bedel <albeu@free.fr>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, Doug Berger <opendmb@gmail.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, Orson Zhai <orsonzhai@gmail.com>, 
	Baolin Wang <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	Daniel Palmer <daniel@thingy.jp>, Romain Perier <romain.perier@gmail.com>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	NXP Linux Team <linux-imx@nxp.com>, Grygorii Strashko <grygorii.strashko@ti.com>, 
	Santosh Shilimkar <ssantosh@kernel.org>, Kevin Hilman <khilman@kernel.org>, 
	Robert Jarzmik <robert.jarzmik@free.fr>, Heiko Stuebner <heiko@sntech.de>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>, Srinivas Neeli <srinivas.neeli@amd.com>, 
	Michal Simek <michal.simek@amd.com>, Nandor Han <nandor.han@ge.com>
Cc: devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org
Subject: [PATCH] gpio: Explicitly include correct DT includes
Date: Fri, 14 Jul 2023 11:44:58 -0600
Message-Id: <20230714174525.4055475-1-robh@kernel.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230714_104539_515221_57C7386B 
X-CRM114-Status: GOOD (  14.33  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The DT of_device.h and of_platform.h date back to the separate
of_platform_bus_type before it as merged into the regular platform bus.
As part of that merge prepping Arm DT support 13 years ago, they
"temporarily" include each other. They also include platform_device.h
and of.h. As a result, there's a pretty much random mix of those include
files used throughout the tree. In order to detangle these headers and
replace the implicit includes with struct declarations, users need to
explicitly include the correct includes.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/gpio/gpio-ath79.c         | 3 ++-
 drivers/gpio/gpio-brcmstb.c       | 4 ++--
 drivers/gpio/gpio-creg-snps.c     | 2 +-
 drivers/gpio/gpio-eic-sprd.c      | 2 +-
 drivers/gpio/gpio-ge.c            | 2 +-
 drivers/gpio/gpio-grgpio.c        | 2 +-
 drivers/gpio/gpio-hlwd.c          | 2 +-
 drivers/gpio/gpio-logicvc.c       | 1 -
 drivers/gpio/gpio-mb86s7x.c       | 2 +-
 drivers/gpio/gpio-mpc5200.c       | 2 +-
 drivers/gpio/gpio-mpc8xxx.c       | 4 +---
 drivers/gpio/gpio-msc313.c        | 1 -
 drivers/gpio/gpio-mxc.c           | 1 -
 drivers/gpio/gpio-mxs.c           | 1 -
 drivers/gpio/gpio-omap.c          | 1 -
 drivers/gpio/gpio-palmas.c        | 1 -
 drivers/gpio/gpio-pmic-eic-sprd.c | 2 +-
 drivers/gpio/gpio-pxa.c           | 1 -
 drivers/gpio/gpio-rcar.c          | 1 -
 drivers/gpio/gpio-rockchip.c      | 2 +-
 drivers/gpio/gpio-sprd.c          | 2 +-
 drivers/gpio/gpio-stp-xway.c      | 3 ++-
 drivers/gpio/gpio-syscon.c        | 1 -
 drivers/gpio/gpio-tegra.c         | 2 +-
 drivers/gpio/gpio-tegra186.c      | 2 +-
 drivers/gpio/gpio-tps6586x.c      | 2 +-
 drivers/gpio/gpio-tps65910.c      | 2 +-
 drivers/gpio/gpio-ts4800.c        | 3 +--
 drivers/gpio/gpio-ts4900.c        | 2 +-
 drivers/gpio/gpio-uniphier.c      | 1 -
 drivers/gpio/gpio-vf610.c         | 1 -
 drivers/gpio/gpio-wcd934x.c       | 3 ++-
 drivers/gpio/gpio-xilinx.c        | 4 ++--
 drivers/gpio/gpio-xra1403.c       | 2 +-
 34 files changed, 28 insertions(+), 39 deletions(-)

diff --git a/drivers/gpio/gpio-ath79.c b/drivers/gpio/gpio-ath79.c
index aa0a954b8392..f0c0c0f77eb0 100644
--- a/drivers/gpio/gpio-ath79.c
+++ b/drivers/gpio/gpio-ath79.c
@@ -9,8 +9,9 @@
  */
 
 #include <linux/gpio/driver.h>
+#include <linux/platform_device.h>
 #include <linux/platform_data/gpio-ath79.h>
-#include <linux/of_device.h>
+#include <linux/of.h>
 #include <linux/interrupt.h>
 #include <linux/module.h>
 #include <linux/irq.h>
diff --git a/drivers/gpio/gpio-brcmstb.c b/drivers/gpio/gpio-brcmstb.c
index 6566517fe0d8..bccdbfd5ec80 100644
--- a/drivers/gpio/gpio-brcmstb.c
+++ b/drivers/gpio/gpio-brcmstb.c
@@ -3,12 +3,12 @@
 
 #include <linux/bitops.h>
 #include <linux/gpio/driver.h>
-#include <linux/of_device.h>
-#include <linux/of_irq.h>
+#include <linux/of.h>
 #include <linux/module.h>
 #include <linux/irqdomain.h>
 #include <linux/irqchip/chained_irq.h>
 #include <linux/interrupt.h>
+#include <linux/platform_device.h>
 
 enum gio_reg_index {
 	GIO_REG_ODEN = 0,
diff --git a/drivers/gpio/gpio-creg-snps.c b/drivers/gpio/gpio-creg-snps.c
index 789384c6e178..4968232f70f2 100644
--- a/drivers/gpio/gpio-creg-snps.c
+++ b/drivers/gpio/gpio-creg-snps.c
@@ -8,7 +8,7 @@
 #include <linux/gpio/driver.h>
 #include <linux/io.h>
 #include <linux/of.h>
-#include <linux/of_platform.h>
+#include <linux/platform_device.h>
 
 #define MAX_GPIO	32
 
diff --git a/drivers/gpio/gpio-eic-sprd.c b/drivers/gpio/gpio-eic-sprd.c
index 84352a6f4973..67b1e09e8985 100644
--- a/drivers/gpio/gpio-eic-sprd.c
+++ b/drivers/gpio/gpio-eic-sprd.c
@@ -9,7 +9,7 @@
 #include <linux/interrupt.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
-#include <linux/of_device.h>
+#include <linux/of.h>
 #include <linux/platform_device.h>
 #include <linux/spinlock.h>
 
diff --git a/drivers/gpio/gpio-ge.c b/drivers/gpio/gpio-ge.c
index 7bd4c2a4cc11..4eecbc862abc 100644
--- a/drivers/gpio/gpio-ge.c
+++ b/drivers/gpio/gpio-ge.c
@@ -20,7 +20,7 @@
 #include <linux/kernel.h>
 #include <linux/io.h>
 #include <linux/slab.h>
-#include <linux/of_device.h>
+#include <linux/of.h>
 #include <linux/of_address.h>
 #include <linux/module.h>
 #include <linux/gpio/driver.h>
diff --git a/drivers/gpio/gpio-grgpio.c b/drivers/gpio/gpio-grgpio.c
index bea0e32c195d..0163c95f6dd7 100644
--- a/drivers/gpio/gpio-grgpio.c
+++ b/drivers/gpio/gpio-grgpio.c
@@ -19,10 +19,10 @@
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/init.h>
+#include <linux/platform_device.h>
 #include <linux/spinlock.h>
 #include <linux/io.h>
 #include <linux/of.h>
-#include <linux/of_platform.h>
 #include <linux/gpio/driver.h>
 #include <linux/slab.h>
 #include <linux/err.h>
diff --git a/drivers/gpio/gpio-hlwd.c b/drivers/gpio/gpio-hlwd.c
index c208ac1c54a6..1bcfc1835dae 100644
--- a/drivers/gpio/gpio-hlwd.c
+++ b/drivers/gpio/gpio-hlwd.c
@@ -10,7 +10,7 @@
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/of.h>
-#include <linux/of_platform.h>
+#include <linux/platform_device.h>
 #include <linux/seq_file.h>
 #include <linux/slab.h>
 
diff --git a/drivers/gpio/gpio-logicvc.c b/drivers/gpio/gpio-logicvc.c
index 992cc958a43f..2b9876bc1383 100644
--- a/drivers/gpio/gpio-logicvc.c
+++ b/drivers/gpio/gpio-logicvc.c
@@ -8,7 +8,6 @@
 #include <linux/gpio/driver.h>
 #include <linux/module.h>
 #include <linux/of.h>
-#include <linux/of_device.h>
 #include <linux/of_address.h>
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
diff --git a/drivers/gpio/gpio-mb86s7x.c b/drivers/gpio/gpio-mb86s7x.c
index 37c5363e391e..ca7eb5e8bfaa 100644
--- a/drivers/gpio/gpio-mb86s7x.c
+++ b/drivers/gpio/gpio-mb86s7x.c
@@ -10,11 +10,11 @@
 #include <linux/io.h>
 #include <linux/init.h>
 #include <linux/clk.h>
+#include <linux/mod_devicetable.h>
 #include <linux/module.h>
 #include <linux/err.h>
 #include <linux/errno.h>
 #include <linux/ioport.h>
-#include <linux/of_device.h>
 #include <linux/gpio/driver.h>
 #include <linux/platform_device.h>
 #include <linux/spinlock.h>
diff --git a/drivers/gpio/gpio-mpc5200.c b/drivers/gpio/gpio-mpc5200.c
index 3b0bfff8c778..b49e3ca64015 100644
--- a/drivers/gpio/gpio-mpc5200.c
+++ b/drivers/gpio/gpio-mpc5200.c
@@ -10,7 +10,7 @@
 #include <linux/slab.h>
 #include <linux/gpio/legacy-of-mm-gpiochip.h>
 #include <linux/io.h>
-#include <linux/of_platform.h>
+#include <linux/platform_device.h>
 #include <linux/module.h>
 
 #include <asm/mpc52xx.h>
diff --git a/drivers/gpio/gpio-mpc8xxx.c b/drivers/gpio/gpio-mpc8xxx.c
index 5979a36bf754..ebf2f511df59 100644
--- a/drivers/gpio/gpio-mpc8xxx.c
+++ b/drivers/gpio/gpio-mpc8xxx.c
@@ -9,12 +9,10 @@
 #include <linux/acpi.h>
 #include <linux/kernel.h>
 #include <linux/init.h>
+#include <linux/platform_device.h>
 #include <linux/spinlock.h>
 #include <linux/io.h>
 #include <linux/of.h>
-#include <linux/of_address.h>
-#include <linux/of_irq.h>
-#include <linux/of_platform.h>
 #include <linux/property.h>
 #include <linux/mod_devicetable.h>
 #include <linux/slab.h>
diff --git a/drivers/gpio/gpio-msc313.c b/drivers/gpio/gpio-msc313.c
index 036ad2324892..2f448eb23abb 100644
--- a/drivers/gpio/gpio-msc313.c
+++ b/drivers/gpio/gpio-msc313.c
@@ -6,7 +6,6 @@
 #include <linux/types.h>
 #include <linux/io.h>
 #include <linux/of.h>
-#include <linux/of_device.h>
 #include <linux/of_irq.h>
 #include <linux/gpio/driver.h>
 #include <linux/module.h>
diff --git a/drivers/gpio/gpio-mxc.c b/drivers/gpio/gpio-mxc.c
index 9d0cec4b82a3..9d16371151d5 100644
--- a/drivers/gpio/gpio-mxc.c
+++ b/drivers/gpio/gpio-mxc.c
@@ -22,7 +22,6 @@
 #include <linux/syscore_ops.h>
 #include <linux/gpio/driver.h>
 #include <linux/of.h>
-#include <linux/of_device.h>
 #include <linux/bug.h>
 
 #define IMX_SCU_WAKEUP_OFF		0
diff --git a/drivers/gpio/gpio-mxs.c b/drivers/gpio/gpio-mxs.c
index 390e619a2831..8e04c9c4b5a2 100644
--- a/drivers/gpio/gpio-mxs.c
+++ b/drivers/gpio/gpio-mxs.c
@@ -14,7 +14,6 @@
 #include <linux/irqdomain.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
-#include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/slab.h>
 #include <linux/gpio/driver.h>
diff --git a/drivers/gpio/gpio-omap.c b/drivers/gpio/gpio-omap.c
index a08be5bf6808..2b78fde74e30 100644
--- a/drivers/gpio/gpio-omap.c
+++ b/drivers/gpio/gpio-omap.c
@@ -22,7 +22,6 @@
 #include <linux/pm_runtime.h>
 #include <linux/pm.h>
 #include <linux/of.h>
-#include <linux/of_device.h>
 #include <linux/gpio/driver.h>
 #include <linux/bitops.h>
 #include <linux/platform_data/gpio-omap.h>
diff --git a/drivers/gpio/gpio-palmas.c b/drivers/gpio/gpio-palmas.c
index bac10c2faf56..6140e87c6754 100644
--- a/drivers/gpio/gpio-palmas.c
+++ b/drivers/gpio/gpio-palmas.c
@@ -12,7 +12,6 @@
 #include <linux/init.h>
 #include <linux/mfd/palmas.h>
 #include <linux/of.h>
-#include <linux/of_device.h>
 #include <linux/platform_device.h>
 
 struct palmas_gpio {
diff --git a/drivers/gpio/gpio-pmic-eic-sprd.c b/drivers/gpio/gpio-pmic-eic-sprd.c
index c3e4d90f6b18..dabb0da3bd33 100644
--- a/drivers/gpio/gpio-pmic-eic-sprd.c
+++ b/drivers/gpio/gpio-pmic-eic-sprd.c
@@ -8,7 +8,7 @@
 #include <linux/interrupt.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
-#include <linux/of_device.h>
+#include <linux/of.h>
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
 
diff --git a/drivers/gpio/gpio-pxa.c b/drivers/gpio/gpio-pxa.c
index a1630ed4b741..7e9f7a32d3ee 100644
--- a/drivers/gpio/gpio-pxa.c
+++ b/drivers/gpio/gpio-pxa.c
@@ -20,7 +20,6 @@
 #include <linux/irqchip/chained_irq.h>
 #include <linux/io.h>
 #include <linux/of.h>
-#include <linux/of_device.h>
 #include <linux/pinctrl/consumer.h>
 #include <linux/platform_device.h>
 #include <linux/syscore_ops.h>
diff --git a/drivers/gpio/gpio-rcar.c b/drivers/gpio/gpio-rcar.c
index 2525adb52f4f..86e69cde04da 100644
--- a/drivers/gpio/gpio-rcar.c
+++ b/drivers/gpio/gpio-rcar.c
@@ -15,7 +15,6 @@
 #include <linux/irq.h>
 #include <linux/module.h>
 #include <linux/of.h>
-#include <linux/of_device.h>
 #include <linux/pinctrl/consumer.h>
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index e5de15a2ab9a..b35b9604413f 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -17,10 +17,10 @@
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
-#include <linux/of_device.h>
 #include <linux/of_irq.h>
 #include <linux/pinctrl/consumer.h>
 #include <linux/pinctrl/pinconf-generic.h>
+#include <linux/platform_device.h>
 #include <linux/regmap.h>
 
 #include "../pinctrl/core.h"
diff --git a/drivers/gpio/gpio-sprd.c b/drivers/gpio/gpio-sprd.c
index 072b4e653216..c117c11bfb29 100644
--- a/drivers/gpio/gpio-sprd.c
+++ b/drivers/gpio/gpio-sprd.c
@@ -7,8 +7,8 @@
 #include <linux/bitops.h>
 #include <linux/gpio/driver.h>
 #include <linux/kernel.h>
+#include <linux/mod_devicetable.h>
 #include <linux/module.h>
-#include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/spinlock.h>
 
diff --git a/drivers/gpio/gpio-stp-xway.c b/drivers/gpio/gpio-stp-xway.c
index 4750ea34204c..053d616f2e02 100644
--- a/drivers/gpio/gpio-stp-xway.c
+++ b/drivers/gpio/gpio-stp-xway.c
@@ -4,11 +4,12 @@
  *  Copyright (C) 2012 John Crispin <john@phrozen.org>
  */
 
+#include <linux/platform_device.h>
 #include <linux/slab.h>
 #include <linux/init.h>
 #include <linux/module.h>
 #include <linux/types.h>
-#include <linux/of_platform.h>
+#include <linux/of.h>
 #include <linux/mutex.h>
 #include <linux/gpio/driver.h>
 #include <linux/io.h>
diff --git a/drivers/gpio/gpio-syscon.c b/drivers/gpio/gpio-syscon.c
index 6076937b18e7..41bf47c8c983 100644
--- a/drivers/gpio/gpio-syscon.c
+++ b/drivers/gpio/gpio-syscon.c
@@ -9,7 +9,6 @@
 #include <linux/gpio/driver.h>
 #include <linux/module.h>
 #include <linux/of.h>
-#include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
 #include <linux/mfd/syscon.h>
diff --git a/drivers/gpio/gpio-tegra.c b/drivers/gpio/gpio-tegra.c
index 5b265a6fd3c1..ea715582bcf3 100644
--- a/drivers/gpio/gpio-tegra.c
+++ b/drivers/gpio/gpio-tegra.c
@@ -15,7 +15,7 @@
 #include <linux/interrupt.h>
 #include <linux/io.h>
 #include <linux/gpio/driver.h>
-#include <linux/of_device.h>
+#include <linux/of.h>
 #include <linux/platform_device.h>
 #include <linux/module.h>
 #include <linux/seq_file.h>
diff --git a/drivers/gpio/gpio-tegra186.c b/drivers/gpio/gpio-tegra186.c
index 80d08ddde40e..d87dd06db40d 100644
--- a/drivers/gpio/gpio-tegra186.c
+++ b/drivers/gpio/gpio-tegra186.c
@@ -11,7 +11,7 @@
 #include <linux/interrupt.h>
 #include <linux/irq.h>
 #include <linux/module.h>
-#include <linux/of_device.h>
+#include <linux/of.h>
 #include <linux/platform_device.h>
 #include <linux/seq_file.h>
 
diff --git a/drivers/gpio/gpio-tps6586x.c b/drivers/gpio/gpio-tps6586x.c
index c5713524b581..d277aa951143 100644
--- a/drivers/gpio/gpio-tps6586x.c
+++ b/drivers/gpio/gpio-tps6586x.c
@@ -15,7 +15,7 @@
 #include <linux/kernel.h>
 #include <linux/init.h>
 #include <linux/mfd/tps6586x.h>
-#include <linux/of_device.h>
+#include <linux/of.h>
 #include <linux/platform_device.h>
 
 /* GPIO control registers */
diff --git a/drivers/gpio/gpio-tps65910.c b/drivers/gpio/gpio-tps65910.c
index 321e6945f0be..187d21580573 100644
--- a/drivers/gpio/gpio-tps65910.c
+++ b/drivers/gpio/gpio-tps65910.c
@@ -15,7 +15,7 @@
 #include <linux/i2c.h>
 #include <linux/platform_device.h>
 #include <linux/mfd/tps65910.h>
-#include <linux/of_device.h>
+#include <linux/of.h>
 
 struct tps65910_gpio {
 	struct gpio_chip gpio_chip;
diff --git a/drivers/gpio/gpio-ts4800.c b/drivers/gpio/gpio-ts4800.c
index 95d80ba14bee..4748e3d47106 100644
--- a/drivers/gpio/gpio-ts4800.c
+++ b/drivers/gpio/gpio-ts4800.c
@@ -7,8 +7,7 @@
 
 #include <linux/gpio/driver.h>
 #include <linux/module.h>
-#include <linux/of_address.h>
-#include <linux/of_device.h>
+#include <linux/of.h>
 #include <linux/platform_device.h>
 
 #define DEFAULT_PIN_NUMBER      16
diff --git a/drivers/gpio/gpio-ts4900.c b/drivers/gpio/gpio-ts4900.c
index eba96319dac2..0f6397b77c9d 100644
--- a/drivers/gpio/gpio-ts4900.c
+++ b/drivers/gpio/gpio-ts4900.c
@@ -8,7 +8,7 @@
 
 #include <linux/gpio/driver.h>
 #include <linux/i2c.h>
-#include <linux/of_device.h>
+#include <linux/of.h>
 #include <linux/module.h>
 #include <linux/regmap.h>
 
diff --git a/drivers/gpio/gpio-uniphier.c b/drivers/gpio/gpio-uniphier.c
index 19ce6675cbc0..9725b7aa18a7 100644
--- a/drivers/gpio/gpio-uniphier.c
+++ b/drivers/gpio/gpio-uniphier.c
@@ -9,7 +9,6 @@
 #include <linux/irqdomain.h>
 #include <linux/module.h>
 #include <linux/of.h>
-#include <linux/of_device.h>
 #include <linux/of_irq.h>
 #include <linux/platform_device.h>
 #include <linux/spinlock.h>
diff --git a/drivers/gpio/gpio-vf610.c b/drivers/gpio/gpio-vf610.c
index d3f3a69d4907..54e7c51f48c8 100644
--- a/drivers/gpio/gpio-vf610.c
+++ b/drivers/gpio/gpio-vf610.c
@@ -17,7 +17,6 @@
 #include <linux/irq.h>
 #include <linux/platform_device.h>
 #include <linux/of.h>
-#include <linux/of_device.h>
 #include <linux/of_irq.h>
 #include <linux/pinctrl/consumer.h>
 
diff --git a/drivers/gpio/gpio-wcd934x.c b/drivers/gpio/gpio-wcd934x.c
index 817750e4e033..2bba27b13947 100644
--- a/drivers/gpio/gpio-wcd934x.c
+++ b/drivers/gpio/gpio-wcd934x.c
@@ -1,11 +1,12 @@
 // SPDX-License-Identifier: GPL-2.0
 // Copyright (c) 2019, Linaro Limited
 
+#include <linux/mod_devicetable.h>
 #include <linux/module.h>
 #include <linux/gpio/driver.h>
+#include <linux/platform_device.h>
 #include <linux/regmap.h>
 #include <linux/slab.h>
-#include <linux/of_device.h>
 
 #define WCD_PIN_MASK(p) BIT(p)
 #define WCD_REG_DIR_CTL_OFFSET 0x42
diff --git a/drivers/gpio/gpio-xilinx.c b/drivers/gpio/gpio-xilinx.c
index 1fa66f2a667f..a16945e8319e 100644
--- a/drivers/gpio/gpio-xilinx.c
+++ b/drivers/gpio/gpio-xilinx.c
@@ -15,8 +15,8 @@
 #include <linux/io.h>
 #include <linux/irq.h>
 #include <linux/module.h>
-#include <linux/of_device.h>
-#include <linux/of_platform.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
 #include <linux/slab.h>
 
diff --git a/drivers/gpio/gpio-xra1403.c b/drivers/gpio/gpio-xra1403.c
index bbc06cdd9634..eed8a1684830 100644
--- a/drivers/gpio/gpio-xra1403.c
+++ b/drivers/gpio/gpio-xra1403.c
@@ -8,9 +8,9 @@
 #include <linux/bitops.h>
 #include <linux/gpio/driver.h>
 #include <linux/kernel.h>
+#include <linux/mod_devicetable.h>
 #include <linux/module.h>
 #include <linux/mutex.h>
-#include <linux/of_device.h>
 #include <linux/seq_file.h>
 #include <linux/spi/spi.h>
 #include <linux/regmap.h>
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
