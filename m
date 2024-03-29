Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72D0FC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Mar 2024 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4WD/mnabA/EUeSX6yusZqPo7yJ+eTD38YdwMVSAz6mQ=; b=QNqwsSEWQveRFb
	T0pk0FHVKAk3AybaxU5K8ugNSjsn9jcGIczCkwqNhPWKsI0VaiXvgPzAn1/Xp9JxeDMte8QIQcJRN
	BJEIHfMA9lRAK/4aumMb4Lm5h8cXpol0qjNHERltbJEktOJh8lPZC82XiFAf60q3hkvzsx7zSyFNE
	DMQxse13QBkZYVcJLDtm5uwLabWBt1yUYJwNmla6yXDL1V2zLy9W7OzeYNoXP8jT0+Msgoi7yDBuu
	ai1H3OIryJY2PfkgG3NDh3Blz0fp3AAPgU9eN8Mdn3ZXhguKtZwn7iTtepeLhRoM+Oh9ck3/h+ez7
	VAGsjSXqpaVQIyuW0/kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq8Fo-0000000HQY4-1y8N;
	Fri, 29 Mar 2024 09:10:28 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq8FX-0000000HQBr-1Y1S
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Mar 2024 09:10:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 309CF618E2;
	Fri, 29 Mar 2024 09:10:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9ED51C433F1;
	Fri, 29 Mar 2024 09:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711703410;
	bh=h8X8PrPgY8Hng7qpmyQmQNd4ZBulxmwQHIfO5ggjjo4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=nG9gQ7xQmyJ2v7u6XspNZLnVQNnX3iWwigV9fQyL/NpnIq+kDuIRhn0EcKlX0v+IY
	 WS/I16TOqOHY3Oe8uHG0E5d7u+OjKAQISXIXRqcnx/RZSz5CrSKIFwMfRv4w9IKUNR
	 zC4t9SpoyRZOP9BQAT3SDWjYB637IfxQ7Bqqjhgi5Xo24qUbKxBJR0dw4sEBPMEYAv
	 4fyER67K3NZn4Cnpz3Ln+CNTabOg8PVcbqavrROoSvKxDI8Yb6zP1cddZ6OF4qwrOf
	 3LdDacAErm3+lOLAtgM36/+4td8EAObcRM/LqvNP/6eYkVz2m61NLHO6b5YhnM1nFm
	 jSe8I0MaWCKsA==
From: Damien Le Moal <dlemoal@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org
Subject: [PATCH 15/19] PCI: rockchip-ep: Refactor endpoint link training enable
Date: Fri, 29 Mar 2024 18:09:41 +0900
Message-ID: <20240329090945.1097609-16-dlemoal@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240329090945.1097609-1-dlemoal@kernel.org>
References: <20240329090945.1097609-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_021011_755759_EF4C6EE0 
X-CRM114-Status: GOOD (  13.22  )
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
 drivers/pci/controller/pcie-rockchip-ep.c | 14 ++++++--------
 drivers/pci/controller/pcie-rockchip.c    |  5 +++--
 2 files changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index b6b9161932c9..7df036098ecd 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -461,6 +461,12 @@ static int rockchip_pcie_ep_start(struct pci_epc *epc)
 
 	rockchip_pcie_write(rockchip, cfg, PCIE_CORE_PHY_FUNC_CFG);
 
+	/* Enable configuration and start link training */
+	rockchip_pcie_write(rockchip,
+			    PCIE_CLIENT_LINK_TRAIN_ENABLE |
+			    PCIE_CLIENT_CONF_ENABLE,
+			    PCIE_CLIENT_CONFIG);
+
 	return 0;
 }
 
@@ -539,7 +545,6 @@ static int rockchip_pcie_ep_get_resources(struct rockchip_pcie_ep *ep)
 
 	ep->ob_addr = devm_kcalloc(dev, ep->max_regions, sizeof(*ep->ob_addr),
 				   GFP_KERNEL);
-
 	if (!ep->ob_addr)
 		return -ENOMEM;
 
@@ -650,16 +655,9 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 
 	rockchip_pcie_ep_hide_msix_cap(rockchip);
 
-	/* Establish the link automatically */
-	rockchip_pcie_write(rockchip, PCIE_CLIENT_LINK_TRAIN_ENABLE,
-			    PCIE_CLIENT_CONFIG);
-
 	/* Only enable function 0 by default */
 	rockchip_pcie_write(rockchip, BIT(0), PCIE_CORE_PHY_FUNC_CFG);
 
-	rockchip_pcie_write(rockchip, PCIE_CLIENT_CONF_ENABLE,
-			    PCIE_CLIENT_CONFIG);
-
 	return 0;
 err_release_resources:
 	rockchip_pcie_ep_release_resources(ep);
diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index 0ef2e622d36e..dbec700ba9f9 100644
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
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
