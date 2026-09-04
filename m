Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35429C61DD3
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2026 01:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tiEoqWm4rDGaN7BUm3um80b5xeMzXWoc4q3RXoYzytg=; b=V8TH0vhQffxuLe
	JMcp2s9SoUwtDrh2b5Pb+zW+7lro7qBmQ8s5tE7sxomBrODFjM5o8ZATnkZ3a+DFK4BSaZUxhq/HQ
	uQPwvXOTLZZxAEc1o0nK3x+MD/EuG/3gyp7fWCqQSjaXl2dDVp75NPFLjEyrORM1Apv4uDZ2r6Zaz
	IwopbKBEKrHobtuA0A8UnN2lu0g9OuTJJDUjOmvzLjcK6bzSkh//qZj3po2Lq2j6Q9pqeB3lXwP3f
	RI7v0DtTOMBDdA6FxFY2P6ghh5pRSb/cltHwIxpWCxZzVbJRb85Hq5c0U3IWlOkFFnjsZrXsvO6oO
	SI1Dj68IahRcdHmq8NuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2IZr-00000000q3H-2HnA;
	Fri, 04 Sep 2026 01:18:47 +0000
Received: from mail-m103131191193.xmail.ntesmail.com ([103.131.191.193])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2IZn-00000000q1j-1al6
	for linux-rockchip@lists.infradead.org;
	Fri, 04 Sep 2026 01:18:46 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4c7b37536;
	Fri, 4 Sep 2026 09:18:35 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-rockchip@lists.infradead.org,
	linux-pci@vger.kernel.org,
	Niklas Cassel <cassel@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 0/2] Small INTx fixes for Rockchip's dwc based PCIe controller driver
Date: Fri,  4 Sep 2026 09:18:27 +0800
Message-Id: <1788484709-139123-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0aa069ff03b803a4kunm9a952c5910a91f
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZGkwaHlZCHUlDShgaGE
	pMS0pWFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=b0D08dEDNSXmTg3sPQ1bTGx9OB0mLt9praK1SjcNM3Ify72uOwx9Yfa14DCD+2+11IP/28sIqRITewbpCwlxL35sfwPxywvSm0czDpU83jsITV/KP7drEIUDK2LOjSZjVJCw+NtUxAt/lllPOqI3lNBis4wkP8/fVlvZy4jGx6o=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=ROTLj6fPCz77hVdZ7jCZX91HY49Q/uQv7uzwaMq3URA=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_181844_045036_B0B7287C 
X-CRM114-Status: UNSURE (   9.28  )
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


This short series fixes the INTx handling around the newly introduced
.reset_root_port() (b376b3ff9cb0):

Patch 1 stops .reset_root_port() from recreating the INTx irq domain
on every root port reset, which leaked the old domain and silently
broke INTx delivery afterwards, by moving the of_irq_get_byname()
lookup, the INTx irq domain creation and the chained handler
installation into rockchip_pcie_configure_rc(), right after
dw_pcie_host_init(), per Niklas' suggestion. The irq domain is made
devm-managed and the chained handler is uninstalled through a devres
action, which also addresses the probe failure leak/use-after-free
flagged by the Sashiko review.

Patch 2 keeps the INTx IRQ masked while .reset_root_port() gates the
controller clocks, so the chained handler cannot read the unclocked
APB bus and raise a synchronous external abort.

This series supersedes the v1 series:
https://lore.kernel.org/linux-pci/1788403477-71491-1-git-send-email-shawn.lin@rock-chips.com/


Changes in v2:
- Moved the of_irq_get_byname() lookup, the INTx irq domain creation
  and the chained handler installation out of the host ops .init()
  callback into rockchip_pcie_configure_rc(), right after
  dw_pcie_host_init(), as suggested by Niklas Cassel. This supersedes
  v1 patch 1/2, as .init() no longer creates the irq domain, and
  removes the rockchip_pcie_host_hw_init() helper from v1.
- Made the INTx irq domain devm-managed with
  devm_irq_domain_instantiate() and uninstall the chained handler
  through a devres action, addressing the probe failure leak and
  use-after-free flagged by the Sashiko review.
- keep the INTx IRQ masked while .reset_root_port()
  gates the controller clocks, responding to the Sashiko review
  finding about accessing the unclocked APB bus.

Shawn Lin (2):
  PCI: dw-rockchip: Move the INTx irq setup to probe and make it
    devm-managed
  PCI: dw-rockchip: Mask the INTx IRQ while the controller clocks are
    gated

 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 77 ++++++++++++++++++++-------
 1 file changed, 57 insertions(+), 20 deletions(-)

-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
