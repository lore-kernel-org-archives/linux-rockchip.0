Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFB7AC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Feb 2022 03:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ndCLdFHbZ1LfP4HTMkkcZ0f3TxPcWLfQT7W0Itb2oGQ=; b=eUS1+kmL2C4YVc
	pkAOR1e9SWwKXCXbW8QMypE7Htq2UDcONZb4KEkIz0aED7sVHT03WEoidqSQxAEBxK3FTZEYrWHrZ
	j0j92Z7cgrXNZRB5RVzcAXv9QxJs/mFrGVSgmETurjZH470RnSHkqlu30/5sxQjB/+nIOEv/1ODWm
	622IMczyub2p9kX5hrwh+b6allxPELKlgoKBGHjW2YsztRkP+qNwpZ8rjW1fVU9OgVMyNAInMC2Z0
	Zsk1QEnW5s8txQAkCJDQk2cGSgDqqiz/Zv3s5vAY56g1GuhNEU9AmplN839dcJkJjRPQ9EGLUQcWi
	dvkHQXjklTwyNbux/m9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIN0P-005gSg-VO; Fri, 11 Feb 2022 03:53:57 +0000
Received: from mail-m17664.qiye.163.com ([59.111.176.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIMwR-005eQ1-Bq; Fri, 11 Feb 2022 03:49:58 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
 by mail-m17664.qiye.163.com (Hmail) with ESMTPA id 6DED2140218;
 Fri, 11 Feb 2022 11:49:49 +0800 (CST)
From: Jon Lin <jon.lin@rock-chips.com>
To: broonie@kernel.org
Cc: heiko@sntech.de, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jon Lin <jon.lin@rock-chips.com>
Subject: [RFC PATCH v1 5/6] spi: rockchip: terminate dma transmission when
 slave abort
Date: Fri, 11 Feb 2022 11:49:37 +0800
Message-Id: <20220211034938.25097-6-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220211034938.25097-1-jon.lin@rock-chips.com>
References: <20220211034938.25097-1-jon.lin@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUhPN1dZLVlBSVdZDwkaFQgSH1lBWUIaTUNWTBpNSUNCH05CGk
 NIVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWVVLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pz46NTo5Ij5REh4RNklKDTMP
 FR4aCxlVSlVKTU9PTk5KSENCQ0NJVTMWGhIXVREUFVUXEhU7CRQYEFYYExILCFUYFBZFWVdZEgtZ
 QVlOQ1VJSVVMVUpKT1lXWQgBWUFISE5JNwY+
X-HM-Tid: 0a7ee6e6c1acda2fkuws6ded2140218
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220210_194951_575757_1BB796B8 
X-CRM114-Status: UNSURE (   9.49  )
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

After slave abort, all DMA should be stopped, or it will affect the
next transmission:

[   31.693877] Unable to handle kernel paging request at virtual address ffffff8105a2a7c0
[   31.694643] Mem abort info:
[   31.694898]   ESR = 0x96000045
[   31.695179]   EC = 0x25: DABT (current EL), IL = 32 bits
[   31.695653]   SET = 0, FnV = 0
[   31.695931]   EA = 0, S1PTW = 0
[   31.696218] Data abort info:
[   31.696485]   ISV = 0, ISS = 0x00000045
[   31.696832]   CM = 0, WnR = 1
[   31.697112] swapper pgtable: 4k pages, 39-bit VAs, pgdp=000000000142f000
[   31.697713] [ffffff8105a2a7c0] pgd=0000000000000000, p4d=0000000000000000, pud=0000000000000000
[   31.698502] Internal error: Oops: 96000045 [#1] SMP
[   31.698943] Modules linked in:
[   31.699235] CPU: 0 PID: 0 Comm: swapper/0 Tainted: G        W         5.10.43 #8
[   31.699895] Hardware name: Rockchip RK3588 EVB1 LP4 V10 Board (DT)
[   31.700455] pstate: 60400089 (nZCv daIf +PAN -UAO -TCO BTYPE=--)
[   31.701000] pc : rockchip_spi_slave_abort+0x150/0x18c
[   31.701456] lr : rockchip_spi_slave_abort+0x78/0x18c

Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
---

 drivers/spi/spi-rockchip.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 5457af616a44..3d4e95eda4a6 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -617,8 +617,6 @@ static int rockchip_spi_slave_abort(struct spi_controller *ctlr)
 	if (atomic_read(&rs->state) & RXDMA) {
 		dmaengine_pause(ctlr->dma_rx);
 		status = dmaengine_tx_status(ctlr->dma_rx, ctlr->dma_rx->cookie, &state);
-		dmaengine_terminate_sync(ctlr->dma_rx);
-		atomic_set(&rs->state, 0);
 		if (status == DMA_ERROR) {
 			rs->rx = rs->xfer->rx_buf;
 			rs->xfer->len = 0;
@@ -648,6 +646,11 @@ static int rockchip_spi_slave_abort(struct spi_controller *ctlr)
 	}
 
 out:
+	if (atomic_read(&rs->state) & RXDMA)
+		dmaengine_terminate_sync(ctlr->dma_rx);
+	if (atomic_read(&rs->state) & TXDMA)
+		dmaengine_terminate_sync(ctlr->dma_tx);
+	atomic_set(&rs->state, 0);
 	spi_enable_chip(rs, false);
 	rs->slave_abort = true;
 	spi_finalize_current_transfer(ctlr);
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
