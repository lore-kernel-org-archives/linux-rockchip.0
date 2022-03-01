Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23EDAC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Mar 2022 20:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2N0JmmbN88+6aoq2HkL3XbvFc45qabsfzFPPfgujspU=; b=VhBNCc+5QGErck
	qKS+iLLLlX46qGrb4XfyerajRAiH6vgkG1qTwhRBjawid4Qtwyi95OfNwbbQPL7tYUO+6tTDKASzr
	UNv69lFuKnPC455OprHhUUw35lyheC7WgpAc0xOGxPVUlnod91MlckfOCT3jKbmpSqo8xIjxKa6B9
	1Til1dZ16isijtIytaYLdBlu25qfqEstdH90ioof10EUHT1SIbi2PyIodxlS8OpdXGfC1LQZXf0Tv
	yFeQJb7WllCZLWPB0+HXuzAWr7S871EWLNRbPRWdaA5gbkRh7DRvOOFTXVZaJ7n4JrBvBHUMK4aqM
	F1yqaOZLXzM8CVmH06BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nP8td-000O9Z-4K; Tue, 01 Mar 2022 20:14:57 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nP8tG-000Nyj-0d; Tue, 01 Mar 2022 20:14:35 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 7079461715;
 Tue,  1 Mar 2022 20:14:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74AC7C340EE;
 Tue,  1 Mar 2022 20:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646165673;
 bh=HbSeXkCCNcIiCPTKco1bU66sLMchExDVmSqGybBsPP0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZDFS6KKgaxylDtMgtTw+ufHMumZEX8OEasU/5PtISb+cPks2+f4EQ+aTiXjVLOLEE
 3gy4GIdoAeufsMXW2B4Uzj0JPRnULfyWh1xP7IpH4t4vYyl1T5GhpcPgCrONmXb1Si
 vjxqa6Jzq2+fBiA3+kP/KZrVw1X3KLaipDSIrunBf8EMQKdkTQb3x7IVEnR2ushYlI
 jhZPj2qxWOOSO4QXzyuxfZU26MXmt3smM1P1ZGTvPodX0JuTUKnkdAxJJb8Afucu/k
 FDX+MKgqdwiESVxk0A7J7gLUXPDJFydxKNA2jHZWd1HM1xvWWZ9IL0ZPZlhGpZBAQp
 mq0umspHMIDEA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jon Lin <jon.lin@rock-chips.com>, Mark Brown <broonie@kernel.org>,
 Sasha Levin <sashal@kernel.org>, heiko@sntech.de,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.16 09/28] spi: rockchip: terminate dma transmission
 when slave abort
Date: Tue,  1 Mar 2022 15:13:14 -0500
Message-Id: <20220301201344.18191-9-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220301201344.18191-1-sashal@kernel.org>
References: <20220301201344.18191-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_121434_151520_9B3975FE 
X-CRM114-Status: GOOD (  11.42  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Jon Lin <jon.lin@rock-chips.com>

[ Upstream commit 80808768e41324d2e23de89972b5406c1020e6e4 ]

After slave abort, all DMA should be stopped, or it will affect the
next transmission and maybe abort again.

Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
Link: https://lore.kernel.org/r/20220216014028.8123-3-jon.lin@rock-chips.com
Signed-off-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/spi/spi-rockchip.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 4f65ba3dd19c2..c6a1bb09be056 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -585,6 +585,12 @@ static int rockchip_spi_slave_abort(struct spi_controller *ctlr)
 {
 	struct rockchip_spi *rs = spi_controller_get_devdata(ctlr);
 
+	if (atomic_read(&rs->state) & RXDMA)
+		dmaengine_terminate_sync(ctlr->dma_rx);
+	if (atomic_read(&rs->state) & TXDMA)
+		dmaengine_terminate_sync(ctlr->dma_tx);
+	atomic_set(&rs->state, 0);
+	spi_enable_chip(rs, false);
 	rs->slave_abort = true;
 	spi_finalize_current_transfer(ctlr);
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
