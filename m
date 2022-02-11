Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A181C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Feb 2022 03:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oig/oKkxlRQQwOmNPIZzgT/P17dtdvVgiYFECHf8jL0=; b=x0uL8iEM6nh8et
	OseiPCvyYiYq33hHFmEDt0GW2ga5Au0FKLrVqgSd2YQH1DEAOItWI6L91JMmrZmzvrqqix8Kk2BF2
	A8pVPLGz82ZB61yEjqMp8Muwq1ks0ip265LscD5huNuacNc9gK5I8DC+FHEnT0uw3yXCEdJVyh+TI
	8wmxnp9ql8fTzfZyHBY1ae/lZga/CAyA7lDgzScGN8aVlJ3+jqlobXDMfn42xG54Mi0tr2+/li2s4
	WG+HRBPO9kDgSKdpkdAfSyWV2Rp2GXs6FHM7Se+j2BZF4a7eJcuU1RfmOT2kXiVMIvAyq1fdsbamq
	mLD0083itERgIjzW8IRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIMyv-005fcC-Us; Fri, 11 Feb 2022 03:52:25 +0000
Received: from mail-m17664.qiye.163.com ([59.111.176.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIMwM-005eNS-Ks; Fri, 11 Feb 2022 03:49:56 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
 by mail-m17664.qiye.163.com (Hmail) with ESMTPA id D6F9E140149;
 Fri, 11 Feb 2022 11:49:44 +0800 (CST)
From: Jon Lin <jon.lin@rock-chips.com>
To: broonie@kernel.org
Cc: heiko@sntech.de, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jon Lin <jon.lin@rock-chips.com>
Subject: [RFC PATCH v1 1/6] spi: rockchip: Stop spi slave dma receiver when cs
 inactive
Date: Fri, 11 Feb 2022 11:49:33 +0800
Message-Id: <20220211034938.25097-2-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220211034938.25097-1-jon.lin@rock-chips.com>
References: <20220211034938.25097-1-jon.lin@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUhPN1dZLVlBSVdZDwkaFQgSH1lBWRpOHhpWTkNPGhpPHx1ITk
 pDVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWVVLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PzI6MSo6LD4DDh46CEg6DSsU
 LQEwFDRVSlVKTU9PTk5KSENOSUJNVTMWGhIXVREUFVUXEhU7CRQYEFYYExILCFUYFBZFWVdZEgtZ
 QVlOQ1VJSVVMVUpKT1lXWQgBWUFMTE9INwY+
X-HM-Tid: 0a7ee6e6afccda2fkuwsd6f9e140149
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220210_194947_047237_4E7B50D2 
X-CRM114-Status: GOOD (  19.34  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The spi which's version is higher than ver 2 will automatically
enable this feature.

If the length of master transmission is uncertain, the RK spi slave
is better to automatically stop after cs inactive instead of waiting
for xfer_completion forever.

Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
---

 drivers/spi/spi-rockchip.c | 85 ++++++++++++++++++++++++++++++++++----
 1 file changed, 77 insertions(+), 8 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 553b6b9d0222..7ac07569e103 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -133,7 +133,8 @@
 #define INT_TF_OVERFLOW				(1 << 1)
 #define INT_RF_UNDERFLOW			(1 << 2)
 #define INT_RF_OVERFLOW				(1 << 3)
-#define INT_RF_FULL					(1 << 4)
+#define INT_RF_FULL				(1 << 4)
+#define INT_CS_INACTIVE				(1 << 6)
 
 /* Bit fields in ICR, 4bit */
 #define ICR_MASK					0x0f
@@ -194,6 +195,8 @@ struct rockchip_spi {
 	bool cs_asserted[ROCKCHIP_SPI_MAX_CS_NUM];
 
 	bool slave_abort;
+	bool cs_inactive; /* spi slave tansmition stop when cs inactive */
+	struct spi_transfer *xfer; /* Store xfer temporarily */
 };
 
 static inline void spi_enable_chip(struct rockchip_spi *rs, bool enable)
@@ -343,6 +346,15 @@ static irqreturn_t rockchip_spi_isr(int irq, void *dev_id)
 	struct spi_controller *ctlr = dev_id;
 	struct rockchip_spi *rs = spi_controller_get_devdata(ctlr);
 
+	/* When int_cs_inactive comes, spi slave abort */
+	if (rs->cs_inactive && readl_relaxed(rs->regs + ROCKCHIP_SPI_IMR) & INT_CS_INACTIVE) {
+		ctlr->slave_abort(ctlr);
+		writel_relaxed(0, rs->regs + ROCKCHIP_SPI_IMR);
+		writel_relaxed(0xffffffff, rs->regs + ROCKCHIP_SPI_ICR);
+
+		return IRQ_HANDLED;
+	}
+
 	if (rs->tx_left)
 		rockchip_spi_pio_writer(rs);
 
@@ -350,6 +362,7 @@ static irqreturn_t rockchip_spi_isr(int irq, void *dev_id)
 	if (!rs->rx_left) {
 		spi_enable_chip(rs, false);
 		writel_relaxed(0, rs->regs + ROCKCHIP_SPI_IMR);
+		writel_relaxed(0xffffffff, rs->regs + ROCKCHIP_SPI_ICR);
 		spi_finalize_current_transfer(ctlr);
 	}
 
@@ -357,14 +370,18 @@ static irqreturn_t rockchip_spi_isr(int irq, void *dev_id)
 }
 
 static int rockchip_spi_prepare_irq(struct rockchip_spi *rs,
-		struct spi_transfer *xfer)
+				    struct spi_controller *ctlr,
+				    struct spi_transfer *xfer)
 {
 	rs->tx = xfer->tx_buf;
 	rs->rx = xfer->rx_buf;
 	rs->tx_left = rs->tx ? xfer->len / rs->n_bytes : 0;
 	rs->rx_left = xfer->len / rs->n_bytes;
 
-	writel_relaxed(INT_RF_FULL, rs->regs + ROCKCHIP_SPI_IMR);
+	if (rs->cs_inactive)
+		writel_relaxed(INT_RF_FULL | INT_CS_INACTIVE, rs->regs + ROCKCHIP_SPI_IMR);
+	else
+		writel_relaxed(INT_RF_FULL, rs->regs + ROCKCHIP_SPI_IMR);
 	spi_enable_chip(rs, true);
 
 	if (rs->tx_left)
@@ -383,6 +400,9 @@ static void rockchip_spi_dma_rxcb(void *data)
 	if (state & TXDMA && !rs->slave_abort)
 		return;
 
+	if (rs->cs_inactive)
+		writel_relaxed(0, rs->regs + ROCKCHIP_SPI_IMR);
+
 	spi_enable_chip(rs, false);
 	spi_finalize_current_transfer(ctlr);
 }
@@ -423,14 +443,16 @@ static int rockchip_spi_prepare_dma(struct rockchip_spi *rs,
 
 	atomic_set(&rs->state, 0);
 
+	rs->tx = xfer->tx_buf;
+	rs->rx = xfer->rx_buf;
+
 	rxdesc = NULL;
 	if (xfer->rx_buf) {
 		struct dma_slave_config rxconf = {
 			.direction = DMA_DEV_TO_MEM,
 			.src_addr = rs->dma_addr_rx,
 			.src_addr_width = rs->n_bytes,
-			.src_maxburst = rockchip_spi_calc_burst_size(xfer->len /
-								     rs->n_bytes),
+			.src_maxburst = rockchip_spi_calc_burst_size(xfer->len / rs->n_bytes),
 		};
 
 		dmaengine_slave_config(ctlr->dma_rx, &rxconf);
@@ -474,10 +496,13 @@ static int rockchip_spi_prepare_dma(struct rockchip_spi *rs,
 	/* rx must be started before tx due to spi instinct */
 	if (rxdesc) {
 		atomic_or(RXDMA, &rs->state);
-		dmaengine_submit(rxdesc);
+		ctlr->dma_rx->cookie = dmaengine_submit(rxdesc);
 		dma_async_issue_pending(ctlr->dma_rx);
 	}
 
+	if (rs->cs_inactive)
+		writel_relaxed(INT_CS_INACTIVE, rs->regs + ROCKCHIP_SPI_IMR);
+
 	spi_enable_chip(rs, true);
 
 	if (txdesc) {
@@ -584,7 +609,46 @@ static size_t rockchip_spi_max_transfer_size(struct spi_device *spi)
 static int rockchip_spi_slave_abort(struct spi_controller *ctlr)
 {
 	struct rockchip_spi *rs = spi_controller_get_devdata(ctlr);
+	u32 rx_fifo_left;
+	struct dma_tx_state state;
+	enum dma_status status;
+
+	/* Get current dma rx point */
+	if (atomic_read(&rs->state) & RXDMA) {
+		dmaengine_pause(ctlr->dma_rx);
+		status = dmaengine_tx_status(ctlr->dma_rx, ctlr->dma_rx->cookie, &state);
+		dmaengine_terminate_sync(ctlr->dma_rx);
+		atomic_set(&rs->state, 0);
+		if (status == DMA_ERROR) {
+			rs->rx = rs->xfer->rx_buf;
+			rs->xfer->len = 0;
+			rx_fifo_left = readl_relaxed(rs->regs + ROCKCHIP_SPI_RXFLR);
+			for (; rx_fifo_left; rx_fifo_left--)
+				readl_relaxed(rs->regs + ROCKCHIP_SPI_RXDR);
+			goto out;
+		} else {
+			rs->rx += rs->xfer->len - rs->n_bytes * state.residue;
+		}
+	}
+
+	/* Get the valid data left in rx fifo and set rs->xfer->len real rx size */
+	if (rs->rx) {
+		rx_fifo_left = readl_relaxed(rs->regs + ROCKCHIP_SPI_RXFLR);
+		for (; rx_fifo_left; rx_fifo_left--) {
+			u32 rxw = readl_relaxed(rs->regs + ROCKCHIP_SPI_RXDR);
+
+			if (rs->n_bytes == 1)
+				*(u8 *)rs->rx = (u8)rxw;
+			else
+				*(u16 *)rs->rx = (u16)rxw;
+			rs->rx += rs->n_bytes;
+		}
 
+		rs->xfer->len = (unsigned int)(rs->rx - rs->xfer->rx_buf);
+	}
+
+out:
+	spi_enable_chip(rs, false);
 	rs->slave_abort = true;
 	spi_finalize_current_transfer(ctlr);
 
@@ -620,7 +684,7 @@ static int rockchip_spi_transfer_one(
 	}
 
 	rs->n_bytes = xfer->bits_per_word <= 8 ? 1 : 2;
-
+	rs->xfer = xfer;
 	use_dma = ctlr->can_dma ? ctlr->can_dma(ctlr, spi, xfer) : false;
 
 	ret = rockchip_spi_config(rs, spi, xfer, use_dma, ctlr->slave);
@@ -630,7 +694,7 @@ static int rockchip_spi_transfer_one(
 	if (use_dma)
 		return rockchip_spi_prepare_dma(rs, ctlr, xfer);
 
-	return rockchip_spi_prepare_irq(rs, xfer);
+	return rockchip_spi_prepare_irq(rs, ctlr, xfer);
 }
 
 static bool rockchip_spi_can_dma(struct spi_controller *ctlr,
@@ -808,8 +872,13 @@ static int rockchip_spi_probe(struct platform_device *pdev)
 	switch (readl_relaxed(rs->regs + ROCKCHIP_SPI_VERSION)) {
 	case ROCKCHIP_SPI_VER2_TYPE2:
 		ctlr->mode_bits |= SPI_CS_HIGH;
+		if (ctlr->can_dma && slave_mode)
+			rs->cs_inactive = true;
+		else
+			rs->cs_inactive = false;
 		break;
 	default:
+		rs->cs_inactive = false;
 		break;
 	}
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
