Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7B95C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jun 2022 02:27:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KuXOUq1KoufocZxZRTV0Ty5hoZNIq+phqpXKFJOanmg=; b=Wddwt7ktsX1k6Q
	YplwRozQOaoEqnQOzMDpk9bshmrg7dgnKq8kBmMFGHlCWqpJjmgyJ5Ffu3GDRmaq/l3Hf36l4iP5k
	0a/Mtzn7VNnSUABuuK9NAkB4vORay9J4T5ViJYt/FuQUXgGVaMlhhTL4Lkn/wrlg7Ng6940nSIbr8
	+M6TmdGPsPeR4rX0NWZqSMTNI0j9em7e9UF2+TuVZSzd92T0qT0fyOi6MjTA+I92mSLsimYnS0TPv
	p5CSXNpGOeNQHiT7pI0fkOfOFdRsWPBCNfARoeNxEx3IAcTJ3XK0qX6iznFJriBZFDwk6eynahL4X
	sPHmHAlWvgdNKlDNEN/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o60wg-003jG4-9Y; Tue, 28 Jun 2022 02:27:18 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o60rQ-003g18-Ln; Tue, 28 Jun 2022 02:21:54 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2861F61857;
	Tue, 28 Jun 2022 02:21:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01A40C36AF2;
	Tue, 28 Jun 2022 02:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1656382912;
	bh=NiB08PHBrGbxEHA9x3A6NC5XZ6j/Z0J8wAaPOiplP7w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=L/A5hOL4GTXKlaAdwHaizBhDbsAM30pqAkshQMeO3mC+37AYm6vWx7IWqcu1p0jm0
	 2pKtfKqix53ahdJWcGHqExN7+EKvBTUWyIofCEGAt2h+Xbl0vAEN0uvZbXZBiv/nHX
	 PlJPF8O+DZfNqvYKdHfERQxJslQwaxIPuHS5TerWZYI/qcahpJ1bvZeBNGB+nVJDsB
	 cGaL+bT3tbyIr5Xfu/EeqSBORfy0+lD3TotTX8ZO9ipPRewLIYwVmSpko+6iFgTvhs
	 cMXLyN8wti8WP3g5yEj9WiSVGuczGmcgXSHyF30gXgsQG0UTL0+Jb/3dfPFKiNLJ88
	 NA9l5F/WyhU6Q==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jon Lin <jon.lin@rock-chips.com>,
	Mark Brown <broonie@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	heiko@sntech.de,
	linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.15 19/41] spi: rockchip: Unmask IRQ at the final to avoid preemption
Date: Mon, 27 Jun 2022 22:20:38 -0400
Message-Id: <20220628022100.595243-19-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220628022100.595243-1-sashal@kernel.org>
References: <20220628022100.595243-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220627_192152_778024_6F7CC248 
X-CRM114-Status: GOOD (  12.66  )
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

From: Jon Lin <jon.lin@rock-chips.com>

[ Upstream commit 419bc8f681a0dc63588cee693b6d45e7caa6006c ]

Avoid pio_write process is preempted, resulting in abnormal state.

Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
Signed-off-by: Jon <jon.lin@rock-chips.com>
Link: https://lore.kernel.org/r/20220617124251.5051-1-jon.lin@rock-chips.com
Signed-off-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/spi/spi-rockchip.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index b721b62118e1..7880a4f25284 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -380,15 +380,18 @@ static int rockchip_spi_prepare_irq(struct rockchip_spi *rs,
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
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
