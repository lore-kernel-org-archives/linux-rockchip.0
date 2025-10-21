Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FC57CCD1A5
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 07:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oxfQW7lHJrzxD1KknR3EjstTRwq+4jFlAyCztX2qUrE=; b=ba1brt98ytOODv
	wi5EzFEMnci3E4FAf/K9POTxGHKfmniVVamWoF7EAxFghdrEOj7TJkCr4ryAnC9Ax+VOV9zb12C1g
	aEmXqlhCfneA1c/ghY4AvmSuU6bHlDh/r7knlVl4fSo4mOzN3Frm9CfJTNs16oEHgcreTHF5iNPvO
	9WWgWe09UzRkdVbxQQlJ5zVVtcKCnqEmU0OQwk+mhjOQNl8/CPgZ82gtd/iEhpAKQ6xX+CSnxUPPG
	YsleUmNMNwCU1JevaI59XMAknpSfS1v1r82HCgxyP2ubQW28vJgfdY2rwCQlFIhi9g2cy3WIL4jCw
	h+4nuHXD3tMgAFXAWrDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB77G-0000000G9fG-35qn;
	Tue, 21 Oct 2025 07:49:10 +0000
Received: from mail-m49194.qiye.163.com ([45.254.49.194])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB77E-0000000G9cF-0gGx
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Oct 2025 07:49:09 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 26a1f52a0;
	Tue, 21 Oct 2025 15:49:04 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: Thierry Reding <thierry.reding@gmail.com>,
	linux-rockchip@lists.infradead.org,
	Niklas Cassel <cassel@kernel.org>,
	linux-pci@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 2/4] PCI: tegra194: Use of_pci_clkreq_present() instead
Date: Tue, 21 Oct 2025 15:48:25 +0800
Message-Id: <1761032907-154829-3-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1761032907-154829-1-git-send-email-shawn.lin@rock-chips.com>
References: <1761032907-154829-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9a05be39e209cckunm38953c586480f8
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkkeGlYYSh9ITk4dQ0lOSBlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=ddgCww/yC7uFtFO7BjsjoC3ZiNcvp2aVVgsrSbTqogSsUFkKXupys9+hv8rUSGjN1tH+NKEDEsFc7+IH3DFePEg0G/iRypmUxOq6RaqYnBh99VTh4UaTs/ul+82BvX9ESahWOkxH/VN7aIHluFCRRU3xfBnn/YaFpAylOv2QWkg=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=4dvvzsqNL6KyJn3Dsf5VauyFQnqLWPdu6/TmuPxHihk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_004908_375067_D0926895 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
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

No functional changes intended.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---
 drivers/pci/controller/dwc/pcie-tegra194.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
index 10e74458e667..7a82a53e7c4d 100644
--- a/drivers/pci/controller/dwc/pcie-tegra194.c
+++ b/drivers/pci/controller/dwc/pcie-tegra194.c
@@ -1161,8 +1161,7 @@ static int tegra_pcie_dw_parse_dt(struct tegra_pcie_dw *pcie)
 					      "nvidia,enable-ext-refclk");
 	}
 
-	pcie->supports_clkreq =
-		of_property_read_bool(pcie->dev->of_node, "supports-clkreq");
+	pcie->supports_clkreq = of_pci_clkreq_present(pcie->dev->of_node);
 
 	pcie->enable_cdm_check =
 		of_property_read_bool(np, "snps,enable-cdm-check");
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
