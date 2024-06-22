Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 020ECC27C53
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Jun 2024 13:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yB5owQ7i5CXBBCTnFHL9vhEEXHtLdHDw+rPRHMCPY4k=; b=i3X6mPDRTgQJyz
	fXx0KxqyxHvvBuUYz84OkW4xpgci98EuLhiC+7jVfaiebA7nrRMi82ba9e2S4VuvmYXeSB/fiCgjv
	191OYKwRQR1AzFq+rM1nAxAm02y3e4jwL4XOj7RkqmCZqbp74WKBntL3PtW57bauUr498y0n3OFz2
	lNdByEWCR4+nXCl3lzKrOJVyrtmseVY8hcx9zdwHxvjKMTQA8ikW1uyKpk2D0LoiqiBhgVlzYQP5S
	gR7QhijkbwxbFzkWKyn2rTIsHSR6XXkzXZRlNv5UVm3Xe3q8JqUMNjTSffWPptoaho7K7Y5B5ejfd
	rYHZQEmKkk5eizzNfRww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sL0fo-0000000C96K-0pGj;
	Sat, 22 Jun 2024 13:20:56 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sL0fi-0000000C94w-1h8U;
	Sat, 22 Jun 2024 13:20:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 39FDDCE09FA;
	Sat, 22 Jun 2024 13:20:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CC92C3277B;
	Sat, 22 Jun 2024 13:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719062446;
	bh=vimpA/8njPUgu92Mj2yrauXhwt2PHMqiXCQ/XhdBnBw=;
	h=From:To:Cc:Subject:Date:From;
	b=F/i3KwmMa7mrytFAuIbvmzFpOK8Mu+hFeFFSvoHRdAEzxoHzg681hvSMr4vyPaDYo
	 xnLDNqo9VXl8TaxokNDQduv4druWpnrGC5oGYbCv1429ZVEMVhTBij1zbtWv046fKz
	 ZPFCjoe3nT0udu7JTtq+2p5sLZdmYcBka/OovQa9iqcC/T/PCiK0lOzq/tF7d2Kp9y
	 gVAi46g9IDvdE7nKBHsjKbnWQ+rQb32bSdQifIax3YwXb7iEug4wK0qy4Qc0tWSlFq
	 mPk02ZhzAjnbxO6iPtrsDoGdu2jmDKeDx41qt2v6XFH6f4dZ0IRxzKxsKlCohFCLwT
	 QKcwr1gwPyJbw==
From: Niklas Cassel <cassel@kernel.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] PCI: dw-rockchip: Use pci_epc_init_notify() directly
Date: Sat, 22 Jun 2024 15:20:25 +0200
Message-ID: <20240622132024.2927799-2-cassel@kernel.org>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1304; i=cassel@kernel.org; h=from:subject; bh=vimpA/8njPUgu92Mj2yrauXhwt2PHMqiXCQ/XhdBnBw=; b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNLKzs/42POz3ree47z5GdY2O05uRl3nHS4cB1bNe7AtJ SD7LNuVjlIWBjEuBlkxRRbfHy77i7vdpxxXvGMDM4eVCWQIAxenAEykpozhv9/zh0fndj5q1L1f +VwsmL1+p+q6n1fO+ry/5h3Sq3brhSojw879KU/cxHb/331f0HjaPJkNu3r78nvEfsx80Svut8T tLwMA
X-Developer-Key: i=cassel@kernel.org; a=openpgp; fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240622_062050_648470_763BFA52 
X-CRM114-Status: GOOD (  11.95  )
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

Commit 9eba2f70362f ("PCI: dwc: ep: Remove dw_pcie_ep_init_notify()
wrapper") removed the dw_pcie_ep_init_notify() wrapper, and changed
the DWC glue drivers to instead use pci_epc_init_notify() directly.

The endpoint support for the dw-rockchip had not been merged at that
point in time, so commit 9eba2f70362f ("PCI: dwc: ep: Remove
dw_pcie_ep_init_notify() wrapper") did not update dw-rockchip.

Do the same change for dw-rockchip, so that the driver will not try
to use a function that has now been removed.

Signed-off-by: Niklas Cassel <cassel@kernel.org>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 0a0fdfc66b91..1170e1107508 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -488,7 +488,7 @@ static int rockchip_pcie_configure_ep(struct platform_device *pdev,
 		return ret;
 	}
 
-	dw_pcie_ep_init_notify(&rockchip->pci.ep);
+	pci_epc_init_notify(rockchip->pci.ep.epc);
 
 	/* unmask DLL up/down indicator and hot reset/link-down reset */
 	rockchip_pcie_writel_apb(rockchip, 0x60000, PCIE_CLIENT_INTR_MASK_MISC);
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
