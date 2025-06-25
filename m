Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EE97C7115C
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Jun 2025 11:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0DBBkvf+iHNIbCCDM+bboLSTf868Gu9kRKL5GmAjjqU=; b=YPFez5up8sOKbT
	jdHp5HFtPScOIsWoAFJvCHsHH0PLIpagyCh4TM4Sne7zA9zNaA7kTCn0iTE8Udn0e8zBLa9udAo1x
	MXCUpbc9M/DJvnWteThs3C1oDwqiH3JbAR02tMwm2I5+aD6JNQmdG1yt452tBQ2c9CkxPGP9orumZ
	XgZaFe4pBN7JLPiBWQnvj1R1mAS1NLvyTXBjerroMt0worBXPLrF1a0SZbNyXnpUvHGfDY/0NTtKt
	XSY9gKYHTA7fL4tfcYx0HYRgOvh5z4RNnGI8lh5rhrGR/b53Guet5ZzlgtiscY1tXaVsgUGGqGNda
	gEuJS5J1/p5gMA0miqow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUO1Y-00000008Qxg-3y0H;
	Wed, 25 Jun 2025 11:10:40 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUNIg-00000008Ikm-1thf;
	Wed, 25 Jun 2025 10:24:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 8CAD4615F1;
	Wed, 25 Jun 2025 10:24:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A5B7C4CEEA;
	Wed, 25 Jun 2025 10:24:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750847057;
	bh=wX1Jm2lYAIbPE66Dwi838XJj+Gobl7EuV/Pwtb/T0aU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=FTmem3FjeByuxN3AFYV8SvH4Jp6ywYl31k89fVhpLW0EPgAJobotpohjk3GlPLd4n
	 kYL+YDqYfjlr2I+bDaZsZrX+0aNmH+nwsWLJQX0RTi9SJavPkIpVBh9ynnx8X7xzM5
	 Wr02Lcg35Kf5y/KHFQaafbduDZXvAti/mGA+EkP7OX8XDuza7FwICuYcYDwpDsOGkM
	 St503jNuj7piVGM/T8kWrTbG6tu78LPdizjK8caC6p8228zgJT9z3a7eyxPKkI6AqT
	 G1VuSR6Q63E7CtSZsASdxtKAcmWbf3S9WYPuZS1NGELPdfUrHN3VvavxwR7qdV4VmU
	 Kij7n8/qUJjzA==
From: Niklas Cassel <cassel@kernel.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Laszlo Fiat <laszlo.fiat@proton.me>,
	Niklas Cassel <cassel@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v4 3/7] PCI: dw-rockchip: Wait PCIE_RESET_CONFIG_WAIT_MS after link-up IRQ
Date: Wed, 25 Jun 2025 12:23:49 +0200
Message-ID: <20250625102347.1205584-12-cassel@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250625102347.1205584-9-cassel@kernel.org>
References: <20250625102347.1205584-9-cassel@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1789; i=cassel@kernel.org; h=from:subject; bh=wX1Jm2lYAIbPE66Dwi838XJj+Gobl7EuV/Pwtb/T0aU=; b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGDKiz1nwc+3rkXhsPM2b29DQoijz7hTWMn2x4j+3OHgjf N9u/9zTUcrCIMbFICumyOL7w2V/cbf7lOOKd2xg5rAygQxh4OIUgIlMXMnI8Jp9W+It7TOTv29s yVplsObnXT4H5oaga5PfF1/T8dmbXsnwV1ztVuf106+WH1BsnbLryO0pvcp8/pvylvMu2dN14nn bFQ4A
X-Developer-Key: i=cassel@kernel.org; a=openpgp; fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
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

Per PCIe r6.0, sec 6.6.1, software must generally wait a minimum of
100ms (PCIE_RESET_CONFIG_WAIT_MS) after Link training completes before
sending a Configuration Request.

Prior to ec9fd499b9c6 ("PCI: dw-rockchip: Don't wait for link since
we can detect Link Up"), dw-rockchip used dw_pcie_wait_for_link(),
which waited between 0 and 90ms after the link came up before we
enumerate the bus, and this was apparently enough for most devices.

After ec9fd499b9c6, rockchip_pcie_rc_sys_irq_thread() started
enumeration immediately when handling the link-up IRQ, and devices
(e.g., Laszlo Fiat's PLEXTOR PX-256M8PeGN NVMe SSD) may not be ready
to handle config requests yet.

Delay PCIE_RESET_CONFIG_WAIT_MS after the link-up IRQ before starting
enumeration.

Cc: Laszlo Fiat <laszlo.fiat@proton.me>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Wilfred Mallawa <wilfred.mallawa@wdc.com>
Fixes: 0e898eb8df4e ("PCI: rockchip-dwc: Add Rockchip RK356X host controller driver")
Signed-off-by: Niklas Cassel <cassel@kernel.org>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 93171a392879..108d30637920 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -458,6 +458,7 @@ static irqreturn_t rockchip_pcie_rc_sys_irq_thread(int irq, void *arg)
 
 	if (reg & PCIE_RDLH_LINK_UP_CHGED) {
 		if (rockchip_pcie_link_up(pci)) {
+			msleep(PCIE_RESET_CONFIG_WAIT_MS);
 			dev_dbg(dev, "Received Link up event. Starting enumeration!\n");
 			/* Rescan the bus to enumerate endpoint devices */
 			pci_lock_rescan_remove();
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
