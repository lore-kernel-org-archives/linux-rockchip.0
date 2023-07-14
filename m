Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D006C001E0
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jul 2023 17:48:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c0pwgsryE0TIBEkx3vuj7uqyY/sZtvDIBSpKfs7Be98=; b=38IAuWb1GJYdFJ
	Rav4OMeCTmk8aVtGvJ6GlHQSujhrjnS6B14zn0BT8XNnQT2XYv4J3rnIzE8GXgf9snW7CHkNLfjiA
	8e/oT93vnBytueKCfIuclu/Rr3bzRm5QoIB0m7F85WD6neyFzzALwUnptBg2bN+7EFgH193SafpCr
	0faJjMrpksha8givuL1imGUl9A9K0/x4Unow1a0hiVP+K096hxQOegFcjVMC376+8re84u1YIcCKJ
	PK7IjSWYNgiAvoxErQqAMj6zG+HgHhX9lsco23t60bcm9/HeQZ5gUjEvzbGhjTinAM/noTkipFWqb
	Y6GkS7YKTgudkkmLjO0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qKMuS-006pdc-1Y;
	Fri, 14 Jul 2023 17:48:52 +0000
Received: from mail-io1-f50.google.com ([209.85.166.50])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qKMuL-006pZi-0W;
	Fri, 14 Jul 2023 17:48:48 +0000
Received: by mail-io1-f50.google.com with SMTP id ca18e2360f4ac-78372b895d6so89509739f.2;
        Fri, 14 Jul 2023 10:48:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689356924; x=1691948924;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zBtCJ1Wj7uyT3akzTe+POqH017QGVk7t8G9DBPGwg8k=;
        b=hZDc4BpPa4qPSUEVeLrrDjhdXBNUe4/oV9Xcfly8ZBIuriwhO7SiynlUAyemeKLMB0
         IOYJl/VUsgS48lhFSGV4SD656iMkWIwTSlNBbwn84bHBfaUpy+lHbrPfFK69MgsXIt7d
         jyTdzfefsbppHVXvHdAX2XbQfoShlxhrRBVMP1zt4f1BQVWKVZ2TDb5NX7M6Mjmjbo20
         nSQaaCTeQ/UUyuj4iSlEjNW+WVbhxIMZnp08kN2MvMBlFV1Wxlh5hMm8cDF2ezu0S3Yb
         9NmaTWw9/Kn0w9lCoRxT9tvTQkeJRcDFoTLvqjeuI2PM3TP/YT3pJN0PyMeAtwdJndSj
         3qRA==
X-Gm-Message-State: ABy/qLb6Jco4Mnv7JDBCNTzZM3aL2Mtw5WYLrqURwt9I7zKEe8Hm+OwU
	dyUJQEKmtOB2wRrLt8a+Bg==
X-Google-Smtp-Source: APBJJlF8/H7PmCypetZ49vRz8/piqGg71JXmwKFXt4Fz7m/Z/JPp9nESxuf4M6YPl/KXPamXOPxMZw==
X-Received: by 2002:a6b:a04:0:b0:776:fd07:3c96 with SMTP id z4-20020a6b0a04000000b00776fd073c96mr5721801ioi.7.1689356924343;
        Fri, 14 Jul 2023 10:48:44 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id u14-20020a6be30e000000b00786f5990435sm2843368ioc.7.2023.07.14.10.48.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jul 2023 10:48:43 -0700 (PDT)
Received: (nullmailer pid 4061709 invoked by uid 1000);
	Fri, 14 Jul 2023 17:48:31 -0000
From: Rob Herring <robh@kernel.org>
To: Vignesh Raghavendra <vigneshr@ti.com>, Tom Joseph <tjoseph@cadence.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Richard Zhu <hongxing.zhu@nxp.com>, Lucas Stach <l.stach@pengutronix.de>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	NXP Linux Team <linux-imx@nxp.com>, Yue Wang <yue.wang@Amlogic.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
	Jesper Nilsson <jesper.nilsson@axis.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, 
	Heiko Stuebner <heiko@sntech.de>, Chuanhua Lei <lchuanhua@maxlinear.com>, 
	Xiaowei Song <songxiaowei@hisilicon.com>, Binghui Wang <wangbinghui@hisilicon.com>, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, 
	Will Deacon <will@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Joyce Ooi <joyce.ooi@intel.com>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: devicetree@vger.kernel.org, linux-omap@vger.kernel.org, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, linux-amlogic@lists.infradead.org, linux-arm-kernel@axis.com, linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org, linux-tegra@vger.kernel.org
Subject: [PATCH] PCI: Explicitly include correct DT includes
Date: Fri, 14 Jul 2023 11:48:25 -0600
Message-Id: <20230714174827.4061572-1-robh@kernel.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230714_104845_214002_D4E9AACD 
X-CRM114-Status: GOOD (  13.71  )
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
 drivers/pci/controller/cadence/pci-j721e.c           | 2 +-
 drivers/pci/controller/cadence/pcie-cadence-plat.c   | 3 +--
 drivers/pci/controller/cadence/pcie-cadence.c        | 1 +
 drivers/pci/controller/dwc/pci-dra7xx.c              | 2 +-
 drivers/pci/controller/dwc/pci-exynos.c              | 2 +-
 drivers/pci/controller/dwc/pci-imx6.c                | 2 +-
 drivers/pci/controller/dwc/pci-keystone.c            | 1 -
 drivers/pci/controller/dwc/pci-meson.c               | 2 +-
 drivers/pci/controller/dwc/pcie-artpec6.c            | 2 +-
 drivers/pci/controller/dwc/pcie-designware-plat.c    | 2 +-
 drivers/pci/controller/dwc/pcie-designware.c         | 2 +-
 drivers/pci/controller/dwc/pcie-dw-rockchip.c        | 2 +-
 drivers/pci/controller/dwc/pcie-intel-gw.c           | 2 ++
 drivers/pci/controller/dwc/pcie-kirin.c              | 3 +--
 drivers/pci/controller/dwc/pcie-qcom.c               | 2 +-
 drivers/pci/controller/dwc/pcie-tegra194.c           | 1 -
 drivers/pci/controller/dwc/pcie-uniphier-ep.c        | 2 +-
 drivers/pci/controller/mobiveil/pcie-mobiveil-host.c | 3 ---
 drivers/pci/controller/pci-ftpci100.c                | 3 +--
 drivers/pci/controller/pci-host-common.c             | 2 +-
 drivers/pci/controller/pci-ixp4xx.c                  | 3 +--
 drivers/pci/controller/pci-loongson.c                | 2 +-
 drivers/pci/controller/pci-v3-semi.c                 | 3 +--
 drivers/pci/controller/pcie-altera.c                 | 5 ++---
 drivers/pci/controller/pcie-rockchip-host.c          | 4 +---
 drivers/pci/controller/pcie-rockchip.c               | 1 +
 drivers/pci/endpoint/pci-epc-core.c                  | 1 -
 drivers/pci/probe.c                                  | 1 -
 28 files changed, 25 insertions(+), 36 deletions(-)

diff --git a/drivers/pci/controller/cadence/pci-j721e.c b/drivers/pci/controller/cadence/pci-j721e.c
index e70213c9060a..2c87e7728a65 100644
--- a/drivers/pci/controller/cadence/pci-j721e.c
+++ b/drivers/pci/controller/cadence/pci-j721e.c
@@ -14,8 +14,8 @@
 #include <linux/irqdomain.h>
 #include <linux/mfd/syscon.h>
 #include <linux/of.h>
-#include <linux/of_device.h>
 #include <linux/pci.h>
+#include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
 #include <linux/regmap.h>
 
diff --git a/drivers/pci/controller/cadence/pcie-cadence-plat.c b/drivers/pci/controller/cadence/pcie-cadence-plat.c
index bac0541317c1..371ffc1f00f8 100644
--- a/drivers/pci/controller/cadence/pcie-cadence-plat.c
+++ b/drivers/pci/controller/cadence/pcie-cadence-plat.c
@@ -6,11 +6,10 @@
  * Author: Tom Joseph <tjoseph@cadence.com>
  */
 #include <linux/kernel.h>
-#include <linux/of_address.h>
+#include <linux/of.h>
 #include <linux/of_pci.h>
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
-#include <linux/of_device.h>
 #include "pcie-cadence.h"
 
 #define CDNS_PLAT_CPU_TO_BUS_ADDR	0x0FFFFFFF
diff --git a/drivers/pci/controller/cadence/pcie-cadence.c b/drivers/pci/controller/cadence/pcie-cadence.c
index 13c4032ca379..4251fac5e310 100644
--- a/drivers/pci/controller/cadence/pcie-cadence.c
+++ b/drivers/pci/controller/cadence/pcie-cadence.c
@@ -4,6 +4,7 @@
 // Author: Cyrille Pitchen <cyrille.pitchen@free-electrons.com>
 
 #include <linux/kernel.h>
+#include <linux/of.h>
 
 #include "pcie-cadence.h"
 
diff --git a/drivers/pci/controller/dwc/pci-dra7xx.c b/drivers/pci/controller/dwc/pci-dra7xx.c
index 4ae807e7cf79..b445ffe95e3f 100644
--- a/drivers/pci/controller/dwc/pci-dra7xx.c
+++ b/drivers/pci/controller/dwc/pci-dra7xx.c
@@ -16,7 +16,7 @@
 #include <linux/irqdomain.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
-#include <linux/of_device.h>
+#include <linux/of.h>
 #include <linux/of_gpio.h>
 #include <linux/of_pci.h>
 #include <linux/pci.h>
diff --git a/drivers/pci/controller/dwc/pci-exynos.c b/drivers/pci/controller/dwc/pci-exynos.c
index ec5611005566..6319082301d6 100644
--- a/drivers/pci/controller/dwc/pci-exynos.c
+++ b/drivers/pci/controller/dwc/pci-exynos.c
@@ -14,11 +14,11 @@
 #include <linux/interrupt.h>
 #include <linux/kernel.h>
 #include <linux/init.h>
-#include <linux/of_device.h>
 #include <linux/pci.h>
 #include <linux/platform_device.h>
 #include <linux/phy/phy.h>
 #include <linux/regulator/consumer.h>
+#include <linux/mod_devicetable.h>
 #include <linux/module.h>
 
 #include "pcie-designware.h"
diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
index 27aaa2a6bf39..d123797a06a2 100644
--- a/drivers/pci/controller/dwc/pci-imx6.c
+++ b/drivers/pci/controller/dwc/pci-imx6.c
@@ -17,8 +17,8 @@
 #include <linux/mfd/syscon/imx6q-iomuxc-gpr.h>
 #include <linux/mfd/syscon/imx7-iomuxc-gpr.h>
 #include <linux/module.h>
+#include <linux/of.h>
 #include <linux/of_gpio.h>
-#include <linux/of_device.h>
 #include <linux/of_address.h>
 #include <linux/pci.h>
 #include <linux/platform_device.h>
diff --git a/drivers/pci/controller/dwc/pci-keystone.c b/drivers/pci/controller/dwc/pci-keystone.c
index 78818853af9e..49aea6ce3e87 100644
--- a/drivers/pci/controller/dwc/pci-keystone.c
+++ b/drivers/pci/controller/dwc/pci-keystone.c
@@ -19,7 +19,6 @@
 #include <linux/mfd/syscon.h>
 #include <linux/msi.h>
 #include <linux/of.h>
-#include <linux/of_device.h>
 #include <linux/of_irq.h>
 #include <linux/of_pci.h>
 #include <linux/phy/phy.h>
diff --git a/drivers/pci/controller/dwc/pci-meson.c b/drivers/pci/controller/dwc/pci-meson.c
index c1527693bed9..973b0fc81315 100644
--- a/drivers/pci/controller/dwc/pci-meson.c
+++ b/drivers/pci/controller/dwc/pci-meson.c
@@ -9,7 +9,6 @@
 #include <linux/clk.h>
 #include <linux/delay.h>
 #include <linux/gpio/consumer.h>
-#include <linux/of_device.h>
 #include <linux/of_gpio.h>
 #include <linux/pci.h>
 #include <linux/platform_device.h>
@@ -17,6 +16,7 @@
 #include <linux/resource.h>
 #include <linux/types.h>
 #include <linux/phy/phy.h>
+#include <linux/mod_devicetable.h>
 #include <linux/module.h>
 
 #include "pcie-designware.h"
diff --git a/drivers/pci/controller/dwc/pcie-artpec6.c b/drivers/pci/controller/dwc/pcie-artpec6.c
index 98102079e26d..9b572a2b2c9a 100644
--- a/drivers/pci/controller/dwc/pcie-artpec6.c
+++ b/drivers/pci/controller/dwc/pcie-artpec6.c
@@ -10,7 +10,7 @@
 #include <linux/delay.h>
 #include <linux/kernel.h>
 #include <linux/init.h>
-#include <linux/of_device.h>
+#include <linux/of.h>
 #include <linux/pci.h>
 #include <linux/platform_device.h>
 #include <linux/resource.h>
diff --git a/drivers/pci/controller/dwc/pcie-designware-plat.c b/drivers/pci/controller/dwc/pcie-designware-plat.c
index 1fcfb840f238..b625841e98aa 100644
--- a/drivers/pci/controller/dwc/pcie-designware-plat.c
+++ b/drivers/pci/controller/dwc/pcie-designware-plat.c
@@ -12,7 +12,7 @@
 #include <linux/interrupt.h>
 #include <linux/kernel.h>
 #include <linux/init.h>
-#include <linux/of_device.h>
+#include <linux/of.h>
 #include <linux/pci.h>
 #include <linux/platform_device.h>
 #include <linux/resource.h>
diff --git a/drivers/pci/controller/dwc/pcie-designware.c b/drivers/pci/controller/dwc/pcie-designware.c
index c87848cd8686..2459f2a61b9b 100644
--- a/drivers/pci/controller/dwc/pcie-designware.c
+++ b/drivers/pci/controller/dwc/pcie-designware.c
@@ -16,7 +16,7 @@
 #include <linux/gpio/consumer.h>
 #include <linux/ioport.h>
 #include <linux/of.h>
-#include <linux/of_platform.h>
+#include <linux/platform_device.h>
 #include <linux/sizes.h>
 #include <linux/types.h>
 
diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index c1e7653e508e..2fe42c70097f 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -14,7 +14,7 @@
 #include <linux/irqdomain.h>
 #include <linux/mfd/syscon.h>
 #include <linux/module.h>
-#include <linux/of_device.h>
+#include <linux/of.h>
 #include <linux/of_irq.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
diff --git a/drivers/pci/controller/dwc/pcie-intel-gw.c b/drivers/pci/controller/dwc/pcie-intel-gw.c
index 9c7caed9e706..c9c93524e01d 100644
--- a/drivers/pci/controller/dwc/pcie-intel-gw.c
+++ b/drivers/pci/controller/dwc/pcie-intel-gw.c
@@ -9,9 +9,11 @@
 #include <linux/clk.h>
 #include <linux/gpio/consumer.h>
 #include <linux/iopoll.h>
+#include <linux/mod_devicetable.h>
 #include <linux/pci_regs.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
+#include <linux/property.h>
 #include <linux/reset.h>
 
 #include "../../pci.h"
diff --git a/drivers/pci/controller/dwc/pcie-kirin.c b/drivers/pci/controller/dwc/pcie-kirin.c
index d09507f822a7..d93bc2906950 100644
--- a/drivers/pci/controller/dwc/pcie-kirin.c
+++ b/drivers/pci/controller/dwc/pcie-kirin.c
@@ -16,8 +16,7 @@
 #include <linux/gpio/consumer.h>
 #include <linux/interrupt.h>
 #include <linux/mfd/syscon.h>
-#include <linux/of_address.h>
-#include <linux/of_device.h>
+#include <linux/of.h>
 #include <linux/of_gpio.h>
 #include <linux/of_pci.h>
 #include <linux/phy/phy.h>
diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 7a87a47eb7ed..cee4e400a695 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -19,7 +19,7 @@
 #include <linux/iopoll.h>
 #include <linux/kernel.h>
 #include <linux/init.h>
-#include <linux/of_device.h>
+#include <linux/of.h>
 #include <linux/of_gpio.h>
 #include <linux/pci.h>
 #include <linux/pm_runtime.h>
diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
index e1db909f53ec..383ba71d1e8f 100644
--- a/drivers/pci/controller/dwc/pcie-tegra194.c
+++ b/drivers/pci/controller/dwc/pcie-tegra194.c
@@ -20,7 +20,6 @@
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/of.h>
-#include <linux/of_device.h>
 #include <linux/of_gpio.h>
 #include <linux/of_pci.h>
 #include <linux/pci.h>
diff --git a/drivers/pci/controller/dwc/pcie-uniphier-ep.c b/drivers/pci/controller/dwc/pcie-uniphier-ep.c
index 4d0a587c0ba5..cba3c88fcf39 100644
--- a/drivers/pci/controller/dwc/pcie-uniphier-ep.c
+++ b/drivers/pci/controller/dwc/pcie-uniphier-ep.c
@@ -11,7 +11,7 @@
 #include <linux/delay.h>
 #include <linux/init.h>
 #include <linux/iopoll.h>
-#include <linux/of_device.h>
+#include <linux/of.h>
 #include <linux/pci.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c b/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
index 31a7bdebe540..45b97a4b14db 100644
--- a/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
+++ b/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
@@ -17,9 +17,6 @@
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/msi.h>
-#include <linux/of_address.h>
-#include <linux/of_irq.h>
-#include <linux/of_platform.h>
 #include <linux/of_pci.h>
 #include <linux/pci.h>
 #include <linux/platform_device.h>
diff --git a/drivers/pci/controller/pci-ftpci100.c b/drivers/pci/controller/pci-ftpci100.c
index 6e7981d2ed5e..ffdeed25e961 100644
--- a/drivers/pci/controller/pci-ftpci100.c
+++ b/drivers/pci/controller/pci-ftpci100.c
@@ -15,8 +15,7 @@
 #include <linux/interrupt.h>
 #include <linux/io.h>
 #include <linux/kernel.h>
-#include <linux/of_address.h>
-#include <linux/of_device.h>
+#include <linux/of.h>
 #include <linux/of_irq.h>
 #include <linux/of_pci.h>
 #include <linux/pci.h>
diff --git a/drivers/pci/controller/pci-host-common.c b/drivers/pci/controller/pci-host-common.c
index d3924a44db02..6be3266cd7b5 100644
--- a/drivers/pci/controller/pci-host-common.c
+++ b/drivers/pci/controller/pci-host-common.c
@@ -9,8 +9,8 @@
 
 #include <linux/kernel.h>
 #include <linux/module.h>
+#include <linux/of.h>
 #include <linux/of_address.h>
-#include <linux/of_device.h>
 #include <linux/of_pci.h>
 #include <linux/pci-ecam.h>
 #include <linux/platform_device.h>
diff --git a/drivers/pci/controller/pci-ixp4xx.c b/drivers/pci/controller/pci-ixp4xx.c
index e44252db6085..acb85e0d5675 100644
--- a/drivers/pci/controller/pci-ixp4xx.c
+++ b/drivers/pci/controller/pci-ixp4xx.c
@@ -19,8 +19,7 @@
 #include <linux/init.h>
 #include <linux/io.h>
 #include <linux/kernel.h>
-#include <linux/of_address.h>
-#include <linux/of_device.h>
+#include <linux/of.h>
 #include <linux/of_pci.h>
 #include <linux/pci.h>
 #include <linux/platform_device.h>
diff --git a/drivers/pci/controller/pci-loongson.c b/drivers/pci/controller/pci-loongson.c
index fe0f732f6e43..d45e7b8dc530 100644
--- a/drivers/pci/controller/pci-loongson.c
+++ b/drivers/pci/controller/pci-loongson.c
@@ -5,7 +5,7 @@
  * Copyright (C) 2020 Jiaxun Yang <jiaxun.yang@flygoat.com>
  */
 
-#include <linux/of_device.h>
+#include <linux/of.h>
 #include <linux/of_pci.h>
 #include <linux/pci.h>
 #include <linux/pci_ids.h>
diff --git a/drivers/pci/controller/pci-v3-semi.c b/drivers/pci/controller/pci-v3-semi.c
index ca44b0c83d1b..0917f571bb6d 100644
--- a/drivers/pci/controller/pci-v3-semi.c
+++ b/drivers/pci/controller/pci-v3-semi.c
@@ -20,8 +20,7 @@
 #include <linux/interrupt.h>
 #include <linux/io.h>
 #include <linux/kernel.h>
-#include <linux/of_address.h>
-#include <linux/of_device.h>
+#include <linux/of.h>
 #include <linux/of_pci.h>
 #include <linux/pci.h>
 #include <linux/platform_device.h>
diff --git a/drivers/pci/controller/pcie-altera.c b/drivers/pci/controller/pcie-altera.c
index c95a29fff8bf..a9536dc4bf96 100644
--- a/drivers/pci/controller/pcie-altera.c
+++ b/drivers/pci/controller/pcie-altera.c
@@ -9,11 +9,10 @@
 #include <linux/delay.h>
 #include <linux/interrupt.h>
 #include <linux/irqchip/chained_irq.h>
+#include <linux/irqdomain.h>
 #include <linux/init.h>
 #include <linux/module.h>
-#include <linux/of_address.h>
-#include <linux/of_device.h>
-#include <linux/of_irq.h>
+#include <linux/of.h>
 #include <linux/of_pci.h>
 #include <linux/pci.h>
 #include <linux/platform_device.h>
diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index 2438bc9b3a1a..afbbdccd195d 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -24,10 +24,8 @@
 #include <linux/kernel.h>
 #include <linux/mfd/syscon.h>
 #include <linux/module.h>
-#include <linux/of_address.h>
-#include <linux/of_device.h>
+#include <linux/of.h>
 #include <linux/of_pci.h>
-#include <linux/of_platform.h>
 #include <linux/pci.h>
 #include <linux/pci_ids.h>
 #include <linux/phy/phy.h>
diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index 1aa84035a8bc..0ef2e622d36e 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/pcie-rockchip.c
@@ -15,6 +15,7 @@
 #include <linux/delay.h>
 #include <linux/gpio/consumer.h>
 #include <linux/iopoll.h>
+#include <linux/of.h>
 #include <linux/of_pci.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index 6c54fa5684d2..5a4a8b0be626 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -9,7 +9,6 @@
 #include <linux/device.h>
 #include <linux/slab.h>
 #include <linux/module.h>
-#include <linux/of_device.h>
 
 #include <linux/pci-epc.h>
 #include <linux/pci-epf.h>
diff --git a/drivers/pci/probe.c b/drivers/pci/probe.c
index 8bac3ce02609..31fb02fbb2cc 100644
--- a/drivers/pci/probe.c
+++ b/drivers/pci/probe.c
@@ -8,7 +8,6 @@
 #include <linux/init.h>
 #include <linux/pci.h>
 #include <linux/msi.h>
-#include <linux/of_device.h>
 #include <linux/of_pci.h>
 #include <linux/pci_hotplug.h>
 #include <linux/slab.h>
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
