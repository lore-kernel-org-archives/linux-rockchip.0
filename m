Return-Path: <SRS0=31Gl=OS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 358F2C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Sep 2021 05:55:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ED3EA611CA
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Sep 2021 05:55:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org ED3EA611CA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yEHHLGZ53XGIs4UH23sKrqyPAb8dc/TXyRUdbMhXaXg=; b=iX9qeGtMmyy0ZZ
	0Yu3z1wh8ZLpAURubJIAWMDB2cmlOKdwa8XjRHQWFM0HTDKNspCCVwZ6paI1WrPdsbvo8xm3fv3jW
	0+Y2GpyRl+7uuXW9UGoOXNFwEcVYUQ0Cr2tKp1hCAOUHZw8OMtpA6jFxSBglmLMy3UOw/4hCsVa38
	Nq0c47BN8BpXGj3tfNPFhsgiQrcgLZan6sY4t/lbHZcSN+xmr+XzR8TUU6W5HulvlIooaaOG0hHU1
	ONlM7nDLkcwi5LrmYOPUEmuA0+jw1GmiTaEg/+p7Bscec/7sr4dXyGg/houzeJyx1qVXqIqtP/Cx5
	Ff3YK1pbtOosTHCRcg7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mV65a-005iWl-EK; Tue, 28 Sep 2021 05:55:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mV65O-005iUZ-DU; Tue, 28 Sep 2021 05:55:27 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5C03A611C3;
 Tue, 28 Sep 2021 05:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632808525;
 bh=kE7fRXuUwpMLCFyX72ic6RwxCWG3c0BVu7eSXiZ6SEc=;
 h=From:To:Cc:Subject:Date:From;
 b=RxrSidJOgdvWwU4pQTgqC5Xeh/XsaYaTtI47Y37PxSocqNcwL0GfH6gUKk9CYPtiY
 +lzC2AffIVF2M3J6PNW7ZF/3nZxAi8NJKJ8suoxb/hjJ2iJa6sdIwxQnh2myNSQQLF
 woQPhH8MIz5SdvHLg9fu8lJofcJ6lL41Iv+c8fATLIa75NFqfzW2EpAcBeHGeqnlvX
 OpkxsBjVFAirmdzXzDKih/+Yw4UQNI/a+b2L/4S1yTxVMsUQBHmNTM9Nv+eF+x7EJ4
 LSA2t9kgeQPO39edV/9gnJ23CF8fOAZu7TopMfqHoVhBPIwC69qZUhOQACT+UbilSP
 9VoB8r0DCU2sg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tobias Schramm <t.schramm@manjaro.org>, Mark Brown <broonie@kernel.org>,
 Sasha Levin <sashal@kernel.org>, heiko@sntech.de,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.14 01/40] spi: rockchip: handle zero length
 transfers without timing out
Date: Tue, 28 Sep 2021 01:54:45 -0400
Message-Id: <20210928055524.172051-1-sashal@kernel.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210927_225526_520589_96687846 
X-CRM114-Status: UNSURE (   9.86  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Tobias Schramm <t.schramm@manjaro.org>

[ Upstream commit 5457773ef99f25fcc4b238ac76b68e28273250f4 ]

Previously zero length transfers submitted to the Rokchip SPI driver would
time out in the SPI layer. This happens because the SPI peripheral does
not trigger a transfer completion interrupt for zero length transfers.

Fix that by completing zero length transfers immediately at start of
transfer.

Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
Link: https://lore.kernel.org/r/20210827050357.165409-1-t.schramm@manjaro.org
Signed-off-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/spi/spi-rockchip.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 540861ca2ba3..553b6b9d0222 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -600,6 +600,12 @@ static int rockchip_spi_transfer_one(
 	int ret;
 	bool use_dma;
 
+	/* Zero length transfers won't trigger an interrupt on completion */
+	if (!xfer->len) {
+		spi_finalize_current_transfer(ctlr);
+		return 1;
+	}
+
 	WARN_ON(readl_relaxed(rs->regs + ROCKCHIP_SPI_SSIENR) &&
 		(readl_relaxed(rs->regs + ROCKCHIP_SPI_SR) & SR_BUSY));
 
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
