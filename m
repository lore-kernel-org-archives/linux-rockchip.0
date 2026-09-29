Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06748C9832A
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2026 06:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sfzaOnqFsJ9bGRI2QhIuWYgF7b53TvzzvgGxpgxhv4I=; b=e1tRrj/liju13R
	NGY9OAtvz3W0+Iy6TTqLMSAb8z3Fp6MqpzjnWvwytQmRtXWDk797a1fCJ/zqzaI5yZXlDXtnO6kyD
	BadrQiAm35zxLEDoXHIbmOYhwbzJ6U+kGR0C1zE++YF5hZUGthAA6KXnoCmf0vftcYD8Qee5+tfRl
	dujipOGtjdM8iJ7+FLNFxmIfM3RHQv5bPxdgYjjNOlsw3Juc6iWWksrLqoFqJrkx77jB8zfJ1xuWQ
	F/UpoGCDu7MJPtb9PIli+oM9vTw54B7s5oNYMq7Lau8qyuCzLjCvQPH9okS2wY0CZf1IuDQzdb0sO
	3z2gVXAYGHsCF5vHBZmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBRkI-00000002XO2-1w18;
	Tue, 29 Sep 2026 06:55:22 +0000
Received: from mail-m82181.xmail.ntesmail.com ([156.224.82.181])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBRkF-00000002XMe-0Y1N
	for linux-rockchip@lists.infradead.org;
	Tue, 29 Sep 2026 06:55:21 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4f768de6d;
	Tue, 29 Sep 2026 14:55:12 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-rockchip@lists.infradead.org,
	linux-pci@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] PCI: dw-rockchip: Enable INTx affinity support
Date: Tue, 29 Sep 2026 14:54:58 +0800
Message-Id: <1790664898-207928-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0aa0ebf22c3303a4kunm1b4a75ea81b7dc
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZGkxDQ1ZDHh0YHxkeSU
	NOHh1WFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSUJDQ0xVSktLVUtZBg++
DKIM-Signature: a=rsa-sha256;
	b=FPEEZ7ZgsC/LbXuk08N790+AGkezJzI4aL94BObdSzcdHzsGhTB7XpDirPA6pC9ioeyaALvNYGnAX3WLzizAATC8cUhbiPR/sSqS+tujObAbYPRxb8eAlTh11ffl4FwyECdH9HG/G5uMLTPMAN9+S2m3beAON0cPMyMLXskqkAE=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=/cZOLmf/WtiucRoMtKUvb7+Grkz4rDeltc4jZcDpcmc=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_235519_841983_2166D0D6 
X-CRM114-Status: GOOD (  15.59  )
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

Leverage the interrupt redirection infrastructure to enable CPU
affinity support for the legacy INTx interrupts. The INTx virqs are
demultiplexed by the chained handler of the "legacy" interrupt, whose
affinity cannot be changed, so affinity control for the INTx virqs is
achieved by redirecting the handler to run in IRQ work context on the
target CPU.

Mask the INTx source in .irq_pre_redirect() before the handler is
redirected: the legacy interrupt is level triggered, so an unmasked
line would keep re-firing the chained interrupt until the redirected
handler runs.

Same approach as the DesignWare core, commit eaf290c404f7c39f2 ("PCI:
dwc: Enable MSI affinity support").

Test was done on RK3588 EVB1 board with an NVMe with pci=nomsi
parameter. The /proc/interrupts columns are trimmed for brevity.

  # cat /proc/interrupts | grep INTx
  51:  137 0 0 0 0 0 0 0 INTx 0 Edge PCIe PME, nvme0q0, nvme0q1
  # echo 10 > /proc/irq/51/smp_affinity
  # dd if=/dev/nvme0n1p1 of=/dev/null bs=1M count=200
  200+0 records in
  200+0 records out
  209715200 bytes (210 MB, 200 MiB) copied, 0.182021 s, 1.2 GB/s
  # cat /proc/interrupts | grep INTx
  51:  137 0 0 0 946 0 0 0 INTx 0 Edge PCIe PME, nvme0q0, nvme0q1

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 1497686..af66142 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -149,7 +149,7 @@ static void rockchip_pcie_intx_handler(struct irq_desc *desc)
 	reg = rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_INTR_STATUS_LEGACY);
 
 	for_each_set_bit(hwirq, &reg, 4)
-		generic_handle_domain_irq(rockchip->irq_domain, hwirq);
+		generic_handle_demux_domain_irq(rockchip->irq_domain, hwirq);
 
 	chained_irq_exit(chip, desc);
 }
@@ -173,6 +173,16 @@ static struct irq_chip rockchip_intx_irq_chip = {
 	.irq_mask		= rockchip_intx_mask,
 	.irq_unmask		= rockchip_intx_unmask,
 	.flags			= IRQCHIP_SKIP_SET_WAKE | IRQCHIP_MASK_ON_SUSPEND,
+#ifdef CONFIG_SMP
+	/*
+	 * The legacy interrupt is level triggered. Mask the INTx source in
+	 * the parent's context before the handler is redirected, so that
+	 * the unmasked level line does not keep re-firing the chained
+	 * interrupt until the redirected handler runs.
+	 */
+	.irq_pre_redirect	= rockchip_intx_mask,
+	.irq_set_affinity	= irq_chip_redirect_set_affinity,
+#endif
 };
 
 static int rockchip_pcie_intx_map(struct irq_domain *domain, unsigned int irq,
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
