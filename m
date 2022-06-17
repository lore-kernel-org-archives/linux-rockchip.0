Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D764C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 12:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=riDIVH1whowa6K+se4MKnfZVZAShFh2OoAUiWsNO9H8=; b=RWpAG80h7nbZ+o
	PCGTnwFTmfYrXjjplKnlQBpzaeqx375RfsytPZFO1+gn+XGGCZ4+cvVcpRXByEz2WNEKFEz094Ss7
	MZn0BIJNo64p6ftctTjKVnoloiZk4gVvzvLpZVdaKEQqtKK5XXqaffLEMVhEOIe9x99fnZ09JgqBV
	QxHSiOGwy7qvUS6IKFOYelgf5vhd5KHu/bWFqa7UlTDA3h/YzAmlJ2B+K8NKCzv4Eb+ffs/6tcmGI
	+W98KcEjgtXs+mnA11TQAfI/LQSjQi/XXIBMINO44T5WFI81TLd0bNUVxfwF9/OA0Net9Mt9L5EMi
	SvzeMCxYIEqb0WZmcPvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2BPu-007hlv-ML; Fri, 17 Jun 2022 12:49:38 +0000
Received: from mail-m12736.qiye.163.com ([115.236.127.36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2BPj-007hh0-31; Fri, 17 Jun 2022 12:49:28 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m12736.qiye.163.com (Hmail) with ESMTPA id EC3797E01CA;
	Fri, 17 Jun 2022 20:42:53 +0800 (CST)
From: Jon Lin <jon.lin@rock-chips.com>
To: broonie@kernel.org
Cc: heiko@sntech.de,
	linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jon Lin <jon.lin@rock-chips.com>
Subject: [PATCH] spi: rockchip: Unmask IRQ at the final to avoid preemption
Date: Fri, 17 Jun 2022 20:42:51 +0800
Message-Id: <20220617124251.5051-1-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVkaTkkYVkoZHkJPHhhNTkNJTVUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktITkhVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OhQ6EBw5MT09VkkSARY#Exg1
	Pk0wChlVSlVKTU5OT01CTExPT0NDVTMWGhIXVREUFVUXEhU7CRQYEFYYExILCFUYFBZFWVdZEgtZ
	QVlOQ1VJSVVMVUpKT1lXWQgBWUFJS0xMNwY+
X-HM-Tid: 0a8171b01537b20fkuuuec3797e01ca
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_054927_312313_0D672FC5 
X-CRM114-Status: UNSURE (   8.16  )
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

Avoid pio_write process is preempted, resulting in abnormal state.

Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
Signed-off-by: Jon <jon.lin@rock-chips.com>
---

 drivers/spi/spi-rockchip.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index a08215eb9e14..79242dc5272d 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -381,15 +381,18 @@ static int rockchip_spi_prepare_irq(struct rockchip_spi *rs,
 	rs->tx_left = rs->tx ? xfer->len / rs->n_bytes : 0;
 	rs->rx_left = xfer->len / rs->n_bytes;
 
-	if (rs->cs_inactive)
-		writel_relaxed(INT_RF_FULL | INT_CS_INACTIVE, rs->regs + ROCKCHIP_SPI_IMR);
-	else
-		writel_relaxed(INT_RF_FULL, rs->regs + ROCKCHIP_SPI_IMR);
+	writel_relaxed(0xffffffff, rs->regs + ROCKCHIP_SPI_ICR);
+
 	spi_enable_chip(rs, true);
 
 	if (rs->tx_left)
 		rockchip_spi_pio_writer(rs);
 
+	if (rs->cs_inactive)
+		writel_relaxed(INT_RF_FULL | INT_CS_INACTIVE, rs->regs + ROCKCHIP_SPI_IMR);
+	else
+		writel_relaxed(INT_RF_FULL, rs->regs + ROCKCHIP_SPI_IMR);
+
 	/* 1 means the transfer is in progress */
 	return 1;
 }
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
