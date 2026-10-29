Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69131606A31A
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2026 02:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=AYQcmBjF;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=VN1oU6iK
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=mAyN2eXjWOYX7B68AExXMMyb6boGOPQEiUpymtYjmsk=; b=AYQcmBjF3HbKYphsTBeH+npKU4
	c44puRxFSinDX7UT5XqmrTGqRKYsuGQKHgkZeWzOJt7ugd/cGReM9GKGmSZ3B6dXLSBJeBw3vQgdW
	zYsMHeeuSPZejWHvzsvoZCasQE70acrw+2+IQ1+XhAaph34dE4Nds8ddZELq2DYEIi2/VS4h711eI
	w6CtoWGkAPXB3D9PlAvUgl70rw468YZ2+rvdgFP1ZfM4Wbr+bcMwJ154FBxH0rfZhpKUCcr8bC1VJ
	D0i4y9Ls3+Zd48pJBtS25pX2KnNoViZ/OHKMWuDtigcWqD/Encxhy4KU1UHAzuTNNLuwtEkj2Vv4o
	QfIDcDRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMG41-00000008CcE-42n8;
	Thu, 29 Oct 2026 02:40:25 +0000
Received: from mail-m32102.qiye.163.com ([220.197.32.102])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMG3x-00000008Caz-3O9k
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Oct 2026 02:40:24 +0000
Received: from localhost.localdomain (unknown [61.154.14.87])
	by smtp.qiye.163.com (Hmail) with ESMTP id 52bb2513c;
	Thu, 29 Oct 2026 10:40:17 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 1/2] PCI: dw-rockchip: Power on devices below the RC using pwrctrl
Date: Thu, 29 Oct 2026 10:40:05 +0800
Message-Id: <20261029024006.3483210-2-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20261029024006.3483210-1-shawn.lin@rock-chips.com>
References: <20261029024006.3483210-1-shawn.lin@rock-chips.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-HM-Tid: 0aa1858793bd03a4kunmf51ad3a01124d2
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCTBkfVkJJHkhCGR5MSEIYQlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ0xZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=VN1oU6iK8ExnJzaXpKNclErgWY8/2GrG98DPt5Hy52g/OsM3iVuEIHfv0vCtxOIuom/NlJ4Y9yvL9TLngiMLr1CYnXZOAzBiver+KN9fvawcSmeVIboApFit62IkZAmPFLyUVT81O3KU7jRn876JPK+enPqP97J62LY894TeZwQ=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=Nx1W1WCJnn1r84yYmREPvC6NMpW3HrcJCRQOWdP2Gds=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_194022_328480_639E1180 
X-CRM114-Status: GOOD (  18.76  )
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
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

Changes in v2:
- Select PCI_PWRCTRL_GENERIC from PCIE_ROCKCHIP_DW, so that the
  built-in controller driver cannot end up with undefined
  pci_pwrctrl_* references when the pwrctrl core is a module(sashiko)
- Do not destroy the pwrctrl devices on -EPROBE_DEFER, so that the
  deferred child devices can still bind and retrigger the
  probe(sashiko)

 drivers/pci/controller/dwc/Kconfig            |  1 +
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 32 ++++++++++++++++---
 2 files changed, 29 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
index 0a0d56fcf0ac..8e74a756271a 100644
--- a/drivers/pci/controller/dwc/Kconfig
+++ b/drivers/pci/controller/dwc/Kconfig
@@ -368,6 +368,7 @@ config PCIE_RCAR_GEN4_EP
 
 config PCIE_ROCKCHIP_DW
 	bool
+	select PCI_PWRCTRL_GENERIC
 
 config PCIE_ROCKCHIP_DW_HOST
 	bool "Rockchip DesignWare PCIe controller (host mode)"
diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index bd86e32cc2b1..4263181f63f5 100644
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
@@ -841,16 +842,33 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
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
+			if (ret != -EPROBE_DEFER)
+				pci_pwrctrl_destroy_devices(dev);
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
@@ -883,6 +901,12 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 	clk_bulk_disable_unprepare(rockchip->clk_cnt, rockchip->clks);
 deinit_phy:
 	rockchip_pcie_phy_deinit(rockchip);
+err_pwrctrl_off:
+	if (data->mode == DW_PCIE_RC_TYPE) {
+		pci_pwrctrl_power_off_devices(dev);
+		if (ret != -EPROBE_DEFER)
+			pci_pwrctrl_destroy_devices(dev);
+	}
 
 	return ret;
 }
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
