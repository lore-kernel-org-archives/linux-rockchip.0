Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E006C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Apr 2022 13:56:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5qFxXirQk4DA6Wpbp2ICxeHvjTLekGwLGCTMjYBojfc=; b=CyLijuWUaZ7B3F
	Rt/RbREGC8yH+ZHlvdH35f8vk4Run/mBmYn+q06Vxe7zoQ+LSvDtJ4DkwomGITcqddOUJLwQAaFWq
	EjKl7dfwfbjaKTqxrUAuKCWiyDosuZMB/3XkFWP3PNd+5r9dWK2woFXUBfTFLob/HoyHjiBJA6R/X
	GHSGGZEzLFIbWR5QL4CFA0T/gKz0el2d8KNOab3ElXT6UKMS6jWCAYWwTExrga1rje+95HqBA+EeZ
	Y7iaFjZZnMe6AuVjH4UzWHhDtZrUwnvCwGhseT315zdxS4+HV+OjhPutCZl2QNiVo9WnfbQhue4iD
	1gIMdSBNCA6ftfOyn99Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nfiuL-00D2LD-Kw; Sat, 16 Apr 2022 13:56:13 +0000
Received: from mxout4.routing.net ([2a03:2900:1:a::9])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nfito-00D256-Hw; Sat, 16 Apr 2022 13:55:42 +0000
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
 by mxout4.routing.net (Postfix) with ESMTP id AEF821007A0;
 Sat, 16 Apr 2022 13:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1650117336;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5P+kuagV6Z84gNo/RLW8HroxGzgqmpKqpzpblsOEYl4=;
 b=SAxjKjmrGjaI1uK2U/O/6+N2p68chmV2mmP0kNgXJkUHVP5KL3bknUE0AkqdNT+5e+l2kG
 XrqOi5Hjk5GehVDEX+/mX7WQqtUy9X+XoZEWVw1Si5Or1yjMXtD9besm0+TK6yIjW63ZJs
 MQmC1tcWWEXhAI7nih/OVDT1onLdqpg=
Received: from localhost.localdomain (fttx-pool-217.61.150.108.bambit.de
 [217.61.150.108])
 by mxbox2.masterlogin.de (Postfix) with ESMTPSA id 6ADE81006D1;
 Sat, 16 Apr 2022 13:55:35 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org
Subject: [RFC/RFT 4/6] PCI: rockchip-dwc: add pcie bifurcation
Date: Sat, 16 Apr 2022 15:54:56 +0200
Message-Id: <20220416135458.104048-5-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220416135458.104048-1-linux@fw-web.de>
References: <20220416135458.104048-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: 81dc4821-c206-4329-8a32-b1fae495dacc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220416_065540_773675_BDA1F24E 
X-CRM114-Status: GOOD (  11.71  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

From: Frank Wunderlich <frank-w@public-files.de>

PCIe Lanes can be split to 2 slots with bifurcation.
Add support for this in existing pcie driver.

Co-developed-by: Peter Geis <pgwipeout@gmail.com>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 863374604fb1..1b0c2115b32e 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -20,6 +20,7 @@
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
 #include <linux/reset.h>
+#include <linux/phy/pcie.h>
 
 #include "pcie-designware.h"
 
@@ -59,6 +60,7 @@ struct rockchip_pcie {
 	struct regulator                *vpcie3v3;
 	struct irq_domain		*irq_domain;
 	raw_spinlock_t			irq_lock;
+	bool				bifurcation;
 };
 
 static int rockchip_pcie_readl_apb(struct rockchip_pcie *rockchip,
@@ -273,6 +275,12 @@ static int rockchip_pcie_phy_init(struct rockchip_pcie *rockchip)
 		return dev_err_probe(dev, PTR_ERR(rockchip->phy),
 				     "missing PHY\n");
 
+	if (rockchip->bifurcation) {
+		ret = phy_set_mode_ext(rockchip->phy, PHY_MODE_PCIE, PHY_MODE_PCIE_BIFURCATION);
+		if (ret)
+			return ret;
+	}
+
 	ret = phy_init(rockchip->phy);
 	if (ret < 0)
 		return ret;
@@ -345,6 +353,9 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 		}
 	}
 
+	if (device_property_read_bool(dev, "rockchip,bifurcation"))
+		rockchip->bifurcation = true;
+
 	ret = rockchip_pcie_phy_init(rockchip);
 	if (ret)
 		goto disable_regulator;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
