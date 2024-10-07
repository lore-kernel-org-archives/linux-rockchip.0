Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04602CFB442
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 04:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NI75BztvP1cSyGZljJPxIsA+DAP0xmXRODjMQUE0ZCk=; b=i18Zg3OdzQcQ7O
	S3w8GxzUtrTKjWqzFZs0ztS9a9hsr2iXZugJlLi8atAh07wh3IyKpaXaj7gWze6xXp+eAVzf2LpUb
	1rQvP/6A3ZmrVhTEAZyUNyJd/0v3/Jilk1h82UHovX8OnGMbtXjJzjVACRxcFhJAnF2IDVrdNdKzG
	7hHLR9179+0Et448ZKrBP6S7BBqhhwcHCmVAUKPqaTHm0v2u31V/d9Oeii3AzInSfaYR7IiTzF/Nm
	1KI2KR2br0TzgyYe/PeT0wtwrHTGmqZuq/5EFQE3CpuWCvybq2RU9InlzjTaf0xwxNqpE4Ee3fOB0
	7i4dT9hKAusV/HbUfANA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxf6x-00000001DAU-3XXA;
	Mon, 07 Oct 2024 04:12:43 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxf6u-00000001D67-2hk9
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Oct 2024 04:12:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 48440A414F1;
	Mon,  7 Oct 2024 04:12:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC52CC4CED2;
	Mon,  7 Oct 2024 04:12:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728274359;
	bh=fKsYpad1zguMtK/DfpCjZvBQjZDyg/qD7gNXQQtFa1E=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JpzGI8yohiZntr6lfBNgRPxh77k3ANxGOcSoRp0xgh9ExHXgC08ZIa0vkWpgHJfDI
	 S79xZX4bDSTZuONlqkRNb7t4L/AEsTNYXRSXQTtKLieWQg9MadYnIxT43fzHvDe6XN
	 tKtcQRfiw21p/itA0sdgwrL8YJKFbz54wRkpvnwsb4bhfK75vwWrqTsoqLwcMajB/T
	 KF8eeA9O8Uyg3dCHKheJEHHz7FGL+gaynnxEd2jLO+Q8V0hHS6Qa4J6s/e5Q/t+2Kf
	 LLorDtATbrwdWcL6mcT1UaGhj03FdJ/up4QR8yusJgCWE/VYK2W/MJEqe1QBtDViMJ
	 fEagBXR+83Z4g==
From: Damien Le Moal <dlemoal@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: [PATCH v3 08/12] PCI: rockchip-ep: Refactor endpoint link training enable
Date: Mon,  7 Oct 2024 13:12:14 +0900
Message-ID: <20241007041218.157516-9-dlemoal@kernel.org>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241007041218.157516-1-dlemoal@kernel.org>
References: <20241007041218.157516-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_211240_845647_1A246176 
X-CRM114-Status: GOOD (  13.74  )
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

The function rockchip_pcie_init_port() enables link training for a
controller configured in EP mode. Enabling link training is again done
in rockchip_pcie_ep_probe() after that function executed
rockchip_pcie_init_port(). Enabling link training only needs to be done
once, and doing so at the probe stage before the controller is actually
started by the user serves no purpose.

Refactor this by removing the link training enablement from both
rockchip_pcie_init_port() and rockchip_pcie_ep_probe() and moving it to
the endpoint start operation defined with rockchip_pcie_ep_start().
Enabling the controller configuration using the PCIE_CLIENT_CONF_ENABLE
bit in the same PCIE_CLIENT_CONFIG register is also move to
rockchip_pcie_ep_start() and both the controller configuration and link
training enable bits are set with a single call to
rockchip_pcie_write().

Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 11 ++++++-----
 drivers/pci/controller/pcie-rockchip.c    |  5 +++--
 2 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index 7a1798fcc2ad..99f26f4a485b 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -459,6 +459,12 @@ static int rockchip_pcie_ep_start(struct pci_epc *epc)
 
 	rockchip_pcie_write(rockchip, cfg, PCIE_CORE_PHY_FUNC_CFG);
 
+	/* Enable configuration and start link training */
+	rockchip_pcie_write(rockchip,
+			    PCIE_CLIENT_LINK_TRAIN_ENABLE |
+			    PCIE_CLIENT_CONF_ENABLE,
+			    PCIE_CLIENT_CONFIG);
+
 	return 0;
 }
 
@@ -537,7 +543,6 @@ static int rockchip_pcie_ep_get_resources(struct rockchip_pcie_ep *ep)
 
 	ep->ob_addr = devm_kcalloc(dev, ep->max_regions, sizeof(*ep->ob_addr),
 				   GFP_KERNEL);
-
 	if (!ep->ob_addr)
 		return -ENOMEM;
 
@@ -648,10 +653,6 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 
 	rockchip_pcie_ep_hide_msix_cap(rockchip);
 
-	/* Establish the link automatically */
-	rockchip_pcie_write(rockchip, PCIE_CLIENT_LINK_TRAIN_ENABLE,
-			    PCIE_CLIENT_CONFIG);
-
 	/* Only enable function 0 by default */
 	rockchip_pcie_write(rockchip, BIT(0), PCIE_CORE_PHY_FUNC_CFG);
 
diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index c07d7129f1c7..154e78819e6e 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/pcie-rockchip.c
@@ -244,11 +244,12 @@ int rockchip_pcie_init_port(struct rockchip_pcie *rockchip)
 		rockchip_pcie_write(rockchip, PCIE_CLIENT_GEN_SEL_1,
 				    PCIE_CLIENT_CONFIG);
 
-	regs = PCIE_CLIENT_LINK_TRAIN_ENABLE | PCIE_CLIENT_ARI_ENABLE |
+	regs = PCIE_CLIENT_ARI_ENABLE |
 	       PCIE_CLIENT_CONF_LANE_NUM(rockchip->lanes);
 
 	if (rockchip->is_rc)
-		regs |= PCIE_CLIENT_CONF_ENABLE | PCIE_CLIENT_MODE_RC;
+		regs |= PCIE_CLIENT_LINK_TRAIN_ENABLE |
+			PCIE_CLIENT_CONF_ENABLE | PCIE_CLIENT_MODE_RC;
 	else
 		regs |= PCIE_CLIENT_CONF_DISABLE | PCIE_CLIENT_MODE_EP;
 
-- 
2.46.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
