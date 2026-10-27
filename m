Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B93C2606A320
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 07:55:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=D/B+Lne3;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=BLUzfvVE
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=5prXfoUdshrNqdMAcwg5BnzmI4EXK+XFR5MF52yoVOA=; b=D/B+Lne37Yh8ccNngFL/H6xlqA
	t2FVJwNlpQHrKr0vPF7x+Er7gk1yhM/Vz46Ex9UxJI8wznx9V8HfULOlg8PZtGfUWqtzB79sLy9IT
	6/HdpnlPzg6ra0VvGrxtzRb2skdmKJGcg6NuLderT5gVbfDR+DJ+OyFxB1w1v2Jh8WMWlqAqbC9Mt
	QyJ0mQ6dSAhDJKkZeuSqFHvEc8qZOwHpOXinGbDCNTqH11dUCm8H021Q6XFfiEEjEiXIgjPJ76Tzo
	BYHbo10CeGz1L3cKQGDJVW4QHhygTUjXrnYLFR13MKKIX5N2kGX8KHKGBPFujPOXFF5vWrDf4H4cR
	ySNDW3Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLc23-00000003xJn-2QsX;
	Tue, 27 Oct 2026 07:55:43 +0000
Received: from mail-m10313119172.xmail.ntesmail.com ([103.131.191.72])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLc20-00000003xHf-0K6J
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Oct 2026 07:55:41 +0000
Received: from localhost.localdomain (unknown [61.154.14.87])
	by smtp.qiye.163.com (Hmail) with ESMTP id 527d681e8;
	Tue, 27 Oct 2026 15:55:36 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 1/2] PCI: dw-rockchip: Power on devices below the RC using pwrctrl
Date: Tue, 27 Oct 2026 15:55:19 +0800
Message-Id: <20261027075520.3591049-2-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20261027075520.3591049-1-shawn.lin@rock-chips.com>
References: <20261027075520.3591049-1-shawn.lin@rock-chips.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-HM-Tid: 0aa17c5b8a3e03a4kunmefbf004c4b829f
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDSUIeVkIZGU9PSx1JHxodQ1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ0xZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=BLUzfvVERZkOuAuadGQs/tf1RfnceYz5oc17HpQO5mMrOEY9oDptqOr0ZSAKLMlUTI4CLD18EdrYqZGp7/akBQyTQorBbwXCxRiOO0ps/Wcr6U0ILDiLH5+1uDGvcrS0ww9OSjU893ANevtS0saoYCUgHHBupEu7vxg/F6028Ig=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=mNQ1WjZEAeSXGXCl7Be8gGrg5RDOiHSk+NlohDHDsdo=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_005540_384499_F451DCE1 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Devices below the Rockchip PCIe host controller may need resources
(regulators, clocks) enabled before they can be detected on the bus. So
far the driver only enabled a single vpcie3v3 supply described by the
controller node itself, which cannot express per-device or per-slot
supplies.

Use the PCI pwrctrl framework: before initializing the PHY, create the
pwrctrl devices for the DT nodes below the controller and power them on.
The supplies of the slot must be up before PHY init, so this has to run
ahead of rockchip_pcie_phy_init().

The controller node supply is kept for backward compatibility: boards
that still describe vpcie3v3 on the controller keep working, and boards
that move the supply into a child node get it enabled by pwrctrl.

Only the RC mode is affected, the endpoint does not own the supplies of
the devices below it.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 30 ++++++++++++++++---
 1 file changed, 26 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index bd86e32cc2b1..952b4c6cc4bf 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -19,6 +19,7 @@
 #include <linux/of.h>
 #include <linux/of_irq.h>
 #include <linux/phy/phy.h>
+#include <linux/pci-pwrctrl.h>
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
@@ -841,16 +842,32 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	/*
+	 * Power on the devices described below this controller before the PHY
+	 * is initialized: the slot supplies must be up before PHY init.
+	 */
+	if (data->mode == DW_PCIE_RC_TYPE) {
+		ret = pci_pwrctrl_create_devices(dev);
+		if (ret)
+			return dev_err_probe(dev, ret,
+					     "failed to create pwrctrl devices\n");
+
+		ret = pci_pwrctrl_power_on_devices(dev);
+		if (ret) {
+			pci_pwrctrl_destroy_devices(dev);
+			return dev_err_probe(dev, ret,
+					     "failed to power on pwrctrl devices\n");
+		}
+	}
+
 	/* DON'T MOVE ME: must be enable before PHY init */
 	ret = devm_regulator_get_enable_optional(dev, "vpcie3v3");
 	if (ret < 0 && ret != -ENODEV)
-		return dev_err_probe(dev, ret,
-				     "failed to enable vpcie3v3 regulator\n");
+		goto err_pwrctrl_off;
 
 	ret = rockchip_pcie_phy_init(rockchip);
 	if (ret)
-		return dev_err_probe(dev, ret,
-				     "failed to initialize the phy\n");
+		goto err_pwrctrl_off;
 
 	ret = reset_control_deassert(rockchip->rst);
 	if (ret)
@@ -883,6 +900,11 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 	clk_bulk_disable_unprepare(rockchip->clk_cnt, rockchip->clks);
 deinit_phy:
 	rockchip_pcie_phy_deinit(rockchip);
+err_pwrctrl_off:
+	if (data->mode == DW_PCIE_RC_TYPE) {
+		pci_pwrctrl_power_off_devices(dev);
+		pci_pwrctrl_destroy_devices(dev);
+	}
 
 	return ret;
 }
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
