Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3067C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Feb 2022 03:45:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/K21gxg6zv3LgUlmUjxeOIctzxRTsPnVUrbxfonQGJI=; b=QFFU8e6XSPASTw
	iOT07M/VhxsDsV0SfFSL40rnrOuf6IeSzYbSha+naR9YmJqVfLo6139UMTnJbDxH6fpuSprK2hs8h
	7rAf6XgSSj1tW0Ie9JRNa0w2DDbRvXaPFYduKW/Jb0Vob1+2Ca0an7XWDU3wq4peSfXDWJG+RquzA
	YFFxvd0JsvH5tVbgIBJ47L8oDOvZUPt/8zni3tsXDiOzriWrKnPVEdwCre4P5yRicYR8mQkFq/+5Y
	Tu9P3yIRr/YooLPeKMvKR6iFSc5uAO4xuNfqlTUGDC3+7tWOQbocWj1kuBadzdERUaqyceJiOM8NU
	uRCD9mtdnprOuxjioj+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIMsB-005cDY-Ji; Fri, 11 Feb 2022 03:45:27 +0000
Received: from mail-m17664.qiye.163.com ([59.111.176.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIMqn-005bUC-OP; Fri, 11 Feb 2022 03:44:03 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
 by mail-m17664.qiye.163.com (Hmail) with ESMTPA id 3BDCC1401C9;
 Fri, 11 Feb 2022 11:43:53 +0800 (CST)
From: Jon Lin <jon.lin@rock-chips.com>
To: broonie@kernel.org
Cc: heiko@sntech.de, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jon Lin <jon.lin@rock-chips.com>
Subject: [PATCH 6/6] spi: rockchip: clear interrupt status in error handler
Date: Fri, 11 Feb 2022 11:43:43 +0800
Message-Id: <20220211034344.4130-7-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220211034344.4130-1-jon.lin@rock-chips.com>
References: <20220211034344.4130-1-jon.lin@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUhPN1dZLVlBSVdZDwkaFQgSH1lBWUJMGR5WSUlJT05DGEoZGB
 1LVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWVVLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OjI6TCo6SD5NTx4JTQ4IF0tK
 OhIwCjZVSlVKTU9PTk5KS0hITUxJVTMWGhIXVREUFVUXEhU7CRQYEFYYExILCFUYFBZFWVdZEgtZ
 QVlOQ1VJSVVMVUpKT1lXWQgBWUFKQkJMNwY+
X-HM-Tid: 0a7ee6e15238da2fkuws3bdcc1401c9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220210_194402_022573_C2B574E5 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
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

The interrupt status bit of the previous error data transmition will
affect the next operation and cause continuous SPI transmission failure.

Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
---

 drivers/spi/spi-rockchip.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 3d4e95eda4a6..bc547b79a2a1 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -278,8 +278,9 @@ static void rockchip_spi_handle_err(struct spi_controller *ctlr,
 	 */
 	spi_enable_chip(rs, false);
 
-	/* make sure all interrupts are masked */
+	/* make sure all interrupts are masked and status cleared */
 	writel_relaxed(0, rs->regs + ROCKCHIP_SPI_IMR);
+	writel_relaxed(0xffffffff, rs->regs + ROCKCHIP_SPI_ICR);
 
 	if (atomic_read(&rs->state) & TXDMA)
 		dmaengine_terminate_async(ctlr->dma_tx);
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
