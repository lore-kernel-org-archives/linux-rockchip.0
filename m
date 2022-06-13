Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14AC4C43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jun 2022 09:28:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N6g9Vv9nWMtVs0cVrbCw4SoBJk8zwQoPCWIRDqMA9kg=; b=V3jP6vTjXIrFfm
	X9llcnJVJo4ZJqqavsjGYvSWRFOgeWpKMuIc9VyWrX39Nqz3UWxiHCNQxYC66G8lfl9Bda7x88VJq
	YFcg6y/4xTko02vLWrH23BN0e9JynHKkjF95230jdUPlxCgzyhXu1Q/g2x5mtP7t2Aos4Xzvoz5oS
	i08DGoh7x9ZAtxflqwvXUHVEL5uP08P5jQh5ZIz5e1g0CjeADj/hv/0fYCBHN7bP7YWrEGrjsQWU0
	XdOCtmj9ukGe4PTUsKbHqqbljv9eu0+0PKdWyOkuE2UB/38GmlFANm01GND0ebAP7mHSLRD11O6WP
	ftDynHsSN2sHOfrNqPKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0gMg-002Xtn-NX; Mon, 13 Jun 2022 09:28:06 +0000
Received: from mail-m121144.qiye.163.com ([115.236.121.144])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0gMT-002Xpd-OP; Mon, 13 Jun 2022 09:27:55 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m121144.qiye.163.com (Hmail) with ESMTPA id 0A824AC04CF;
	Mon, 13 Jun 2022 17:27:48 +0800 (CST)
From: Jon Lin <jon.lin@rock-chips.com>
To: broonie@kernel.org
Cc: heiko@sntech.de,
	linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jon Lin <jon.lin@rock-chips.com>
Subject: [PATCH] spi: rockchip: Disable local irq when pio write out of interrupt service
Date: Mon, 13 Jun 2022 17:27:44 +0800
Message-Id: <20220613092744.9726-1-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
	kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWUNLSBlWGEtJSktLHU
	saGh1DVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PCo6CRw4KT09IQ0QPUkXDygS
	HUoKFANVSlVKTU5OSkpJT01DTUlLVTMWGhIXVREUFVUXEhU7CRQYEFYYExILCFUYFBZFWVdZEgtZ
	QVlOQ1VJSVVMVUpKT1lXWQgBWUFJTENLNwY+
X-HM-Tid: 0a815c640702b039kuuu0a824ac04cf
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_022753_956316_0A0BB973 
X-CRM114-Status: GOOD (  10.11  )
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

Avoid interrupt come and interrupt the pio_writer.

Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
Signed-off-by: Jon <jon.lin@rock-chips.com>
---

 drivers/spi/spi-rockchip.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index a08215eb9e14..2184de146928 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -199,6 +199,7 @@ struct rockchip_spi {
 	bool cs_high_supported; /* native CS supports active-high polarity */
 
 	struct spi_transfer *xfer; /* Store xfer temporarily */
+	spinlock_t lock; /* prevent I/O concurrent access */
 };
 
 static inline void spi_enable_chip(struct rockchip_spi *rs, bool enable)
@@ -293,9 +294,13 @@ static void rockchip_spi_handle_err(struct spi_controller *ctlr,
 
 static void rockchip_spi_pio_writer(struct rockchip_spi *rs)
 {
-	u32 tx_free = rs->fifo_len - readl_relaxed(rs->regs + ROCKCHIP_SPI_TXFLR);
-	u32 words = min(rs->tx_left, tx_free);
+	u32 tx_free;
+	u32 words;
+	unsigned long flags;
 
+	spin_lock_irqsave(&rs->lock, flags);
+	tx_free = rs->fifo_len - readl_relaxed(rs->regs + ROCKCHIP_SPI_TXFLR);
+	words = min(rs->tx_left, tx_free);
 	rs->tx_left -= words;
 	for (; words; words--) {
 		u32 txw;
@@ -308,6 +313,7 @@ static void rockchip_spi_pio_writer(struct rockchip_spi *rs)
 		writel_relaxed(txw, rs->regs + ROCKCHIP_SPI_TXDR);
 		rs->tx += rs->n_bytes;
 	}
+	spin_unlock_irqrestore(&rs->lock, flags);
 }
 
 static void rockchip_spi_pio_reader(struct rockchip_spi *rs)
@@ -779,6 +785,8 @@ static int rockchip_spi_probe(struct platform_device *pdev)
 		goto err_put_ctlr;
 	}
 
+	spin_lock_init(&rs->lock);
+
 	rs->apb_pclk = devm_clk_get(&pdev->dev, "apb_pclk");
 	if (IS_ERR(rs->apb_pclk)) {
 		dev_err(&pdev->dev, "Failed to get apb_pclk\n");
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
