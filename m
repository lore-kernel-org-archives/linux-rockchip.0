Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A5BBC982FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 02:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MyA356GRjkXFEEVJdUsQBGuvQqZprS4iJcX0Psy4WDw=; b=nEmSCJJa6kNXhN
	OwDBYs/mNE2UXuns56VvZ5nEbRUjbJl60p8bHi9VvY/B4qgc3tCRbn507J1/dNSHdBoHgKltbF/yg
	IoMD+lS9ADFU7DgfvpaB82ASO7NV74IbxKcnWoAkWDR6zY7IROv0hT2rqLQIP6ZDyTegdHGNsR+XV
	OzsbAd47DqvI6RVDh55djXfNYzkJSFTo+cuSs0J8mk6TJDMVsoIwTKatO94Ck0fk/LYyvzmKHy0pV
	deKyutkAsoy7nvdvui4d24nzx0FBacefThVT9jK8SYyexHUKP/G+C1tbJWBlrgi4aByyYNnklwDPd
	QnUcgM1erm9F0edCmEIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8qSk-000000040zi-2LPm;
	Tue, 22 Sep 2026 02:42:30 +0000
Received: from mail-m121148.qiye.163.com ([115.236.121.148])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8qSh-000000040y0-2zWU
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Sep 2026 02:42:29 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4ea70fec8;
	Tue, 22 Sep 2026 10:37:21 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-rockchip@lists.infradead.org,
	linux-pci@vger.kernel.org,
	Niklas Cassel <cassel@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v3 3/3] PCI: dw-rockchip: Mask the INTx IRQ while the controller clocks are gated
Date: Tue, 22 Sep 2026 10:37:02 +0800
Message-Id: <1790044622-164744-4-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1790044622-164744-1-git-send-email-shawn.lin@rock-chips.com>
References: <1790044622-164744-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0aa0c6f99ab603a4kunm27853d20398d79
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZGUNNTlZMH0kaQxlLHx
	9NTEtWFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=AOKqTXkRSGqFq1fEzs0ov+9BglDWsp28kYrlumywI4Ix/9rfrPnng4JvzRwPcFEx0s4RPa/GRyXUSL/WQHnRA3FJTIQQ9KWxRtIdBtI8lCagOarWQ1R+JqvIIPSgJ7eJdlx5LY2y4swnNQJCrgfAsiY7W+/FJIvu34m4U647vwQ=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=v6siiizUWVS2NDNT9IPCWzDsKSNZnVJES9EOoQV5CEc=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_194227_988857_1CB305D9 
X-CRM114-Status: GOOD (  13.16  )
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

.reset_root_port() gates the controller clocks and PHY before
re-initializing the hardware. Devices on the bus may keep their INTx
line asserted across this window, so the chained INTx handler can run
and read the APB registers of the unclocked controller, raising a
synchronous external abort.

Mask the INTx IRQ before turning the clocks off and re-enable it once
the clocks are running again. On the error paths the clocks stay
gated, so the IRQ is deliberately left masked there.

Fixes: b376b3ff9cb0 ("PCI: dw-rockchip: Implement .reset_root_port() and use for link down")
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v3: None
Changes in v2:
- keep the INTx IRQ masked while .reset_root_port()
  gates the controller clocks, responding to the Sashiko review
  finding about accessing the unclocked APB bus.

 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index f395a66..fd5cc6f 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -925,6 +925,16 @@ static int rockchip_pcie_rc_reset_root_port(struct pci_host_bridge *bridge,
 	u32 val;
 	int ret;
 
+	/*
+	 * Devices may keep their INTx line asserted across the reset. Mask
+	 * the INTx IRQ so that the chained handler does not touch the
+	 * unclocked APB bus, which would raise a synchronous external abort.
+	 * The IRQ is re-enabled once the clocks are restored, and is
+	 * deliberately left masked on the error paths where the controller
+	 * remains unclocked.
+	 */
+	disable_irq(rockchip->intx_irq);
+
 	dw_pcie_stop_link(pci);
 	clk_bulk_disable_unprepare(rockchip->clk_cnt, rockchip->clks);
 	rockchip_pcie_phy_deinit(rockchip);
@@ -975,6 +985,7 @@ static int rockchip_pcie_rc_reset_root_port(struct pci_host_bridge *bridge,
 
 	/* Ignore errors, the link may come up later */
 	dw_pcie_wait_for_link(pci);
+	enable_irq(rockchip->intx_irq);
 	dev_dbg(dev, "Root Port reset completed\n");
 	return ret;
 
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
