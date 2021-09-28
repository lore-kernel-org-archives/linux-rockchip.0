Return-Path: <SRS0=31Gl=OS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2FAD2C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Sep 2021 05:57:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ECAEB611CC
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Sep 2021 05:57:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org ECAEB611CC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=92CmkWitiARJpFuxAKbeCKf/MQeVwF4CjkDcU01UmSI=; b=dOHNOnb31AH1MJ
	GYUp3BRh9W+MJxbHa8dycfyEAgCncnQzP5DL4jUT58e+Ww8lbQyCasaR7EJEDi0PZelKuHyOZo/mB
	ttE7QKfYeeWOdpjXlIEy4PYiC8ABf84otV3p7fswwRsGGojh+SiO0hag4tRCe5EAGZZ1cUCOA0Eno
	LhiLMrLPGZ0sYALz909LB8kCon9zn+81edFYXy+k9qjzWAx/HH9gdCjcFETOJ1quCVJ8EJVrvgF0/
	Z79sHVdxVgZ0yumIovL8H9tF/gOpxYGQTXCuHWSmll6SN8UMSMWl6V2PGmmgUEgg+ONnuZrvVf3z/
	z/4R/JOcwap+OYsaNsVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mV66s-005iqS-Co; Tue, 28 Sep 2021 05:56:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mV66f-005ioe-UU; Tue, 28 Sep 2021 05:56:47 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8D6366127C;
 Tue, 28 Sep 2021 05:56:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632808605;
 bh=mUgukess8O9s+KgtEGp2K/ZCeaegdNTLZV51hG4FIk8=;
 h=From:To:Cc:Subject:Date:From;
 b=RKNMLXMJdQSLwZfJmTa0NwBQXb9+d24I/74wNXbfBD34PAvSCfF2Bx8LPIin6GNGj
 HPluCpMfQgYkaSLZdSHsILGH91/1ObdZ2qRLUOSuu4+6NXqB0xzXYwtMnuwHFbVlI6
 CBNIk3cgD3KxOMXtXoVcdjMYSPy0ZPB89KS9fDbi/3kJ35zMK2t/RZl71x7PBYBhwL
 L/fj8jZ5uN/a7vgOJEy+Ove9biZGiEYtXBEXIUQSXeUkn9wdKjutRRauaYaunKL09H
 MH2hKYAAcZ5mdTR6zkwg3YE/vTEqxoLpnGKFIkhwIOxFNl/+cezNbiGG2wRj6i3Rc5
 HEuyBZLkJYqvw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tobias Schramm <t.schramm@manjaro.org>, Mark Brown <broonie@kernel.org>,
 Sasha Levin <sashal@kernel.org>, heiko@sntech.de,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.10 01/23] spi: rockchip: handle zero length
 transfers without timing out
Date: Tue, 28 Sep 2021 01:56:22 -0400
Message-Id: <20210928055645.172544-1-sashal@kernel.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210927_225646_023246_A19A5A7B 
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
index 0aab37cd64e7..624273d0e727 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -582,6 +582,12 @@ static int rockchip_spi_transfer_one(
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
