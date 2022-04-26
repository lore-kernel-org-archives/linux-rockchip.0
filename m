Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35E40C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Apr 2022 13:24:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5nvHbNTz1NnxotZynudCnjELJ7KRBuLdp1eCNnAQ7Tw=; b=vPS+JSbAWBJ7Fa
	Nj79qy5yIZ+hn5CU65WAAaf7W3+uoyChBHjpTKLyhljEaE8Q/P33f8fQLuyXdc+AFaKw40O7EOyK1
	+5mTlSfc4nalC6ri86Fo1yiD8Pi8aLQ7/p6YlM9ymPe2K8OKRG0+Xh/yjHqFIS1ZdOSAxjBS8gz6H
	OZPZF3KY2qe5IZFocM82PYTjqQWKH+8p0kHcwTBk1fp95bklkdlxwV5CBRSiChCl+7I8u51mI+ej9
	EDfFzo/HOj7LbzEWT1D1ooGzRtQCEHoLzWBRfGdgOMPKKpK7xCgVvf3pTdm14v8J+5BANqUpfd2Mu
	vU8WAgJCbJCtM2VjB75w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njLBM-00EZDC-VW; Tue, 26 Apr 2022 13:24:45 +0000
Received: from mxout2.routing.net ([2a03:2900:1:a::b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njL8k-00EXlQ-IP; Tue, 26 Apr 2022 13:22:05 +0000
Received: from mxbox1.masterlogin.de (unknown [192.168.10.88])
 by mxout2.routing.net (Postfix) with ESMTP id BD83960524;
 Tue, 26 Apr 2022 13:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1650979320;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=NbsPLOQv/aOSQhJqaMOaTJWV5WJaJFEJWdIHjZJE2yk=;
 b=JB8STSEy48bhKqCXcnF4CnGccg53Kxy6tE9rGSpP148bA235amDWQN9veU8+Bq06BVvvwu
 F2VZBOFu8QaN6LqHMUcuNI6OW1p6sUZSpKrzu2zH9h2yMp4mgNhRJyXfoMYSsTUZCLw63c
 DUWe2KBOj5VUkg9MEq8RjKb3ClNGbNE=
Received: from localhost.localdomain (fttx-pool-80.245.77.37.bambit.de
 [80.245.77.37])
 by mxbox1.masterlogin.de (Postfix) with ESMTPSA id B73144059D;
 Tue, 26 Apr 2022 13:21:59 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [RFC/RFT v2 06/11] PCI: rockchip-dwc: add PCIe bifurcation
Date: Tue, 26 Apr 2022 15:21:34 +0200
Message-Id: <20220426132139.26761-7-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220426132139.26761-1-linux@fw-web.de>
References: <20220426132139.26761-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: 4395d81b-c371-47ff-a8b0-3ecb543b8d9b
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_062202_787015_B1248254 
X-CRM114-Status: GOOD (  12.83  )
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
Add support for this in existing PCIe driver that can be enabled
by new "bifurcation" devicetree property.

Co-developed-by: Peter Geis <pgwipeout@gmail.com>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>

---
changes in v2:
- change rockchip,bifurcation to vendor unspecific bifurcation
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index b00832d653ea..79e909df241c 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -20,6 +20,7 @@
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
 #include <linux/reset.h>
+#include <linux/phy/pcie.h>
 
 #include "pcie-designware.h"
 
@@ -58,6 +59,7 @@ struct rockchip_pcie {
 	struct gpio_desc		*rst_gpio;
 	struct regulator                *vpcie3v3;
 	struct irq_domain		*irq_domain;
+	bool				bifurcation;
 };
 
 static int rockchip_pcie_readl_apb(struct rockchip_pcie *rockchip,
@@ -259,6 +261,12 @@ static int rockchip_pcie_phy_init(struct rockchip_pcie *rockchip)
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
@@ -319,6 +327,9 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 		}
 	}
 
+	if (device_property_read_bool(dev, "bifurcation"))
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
