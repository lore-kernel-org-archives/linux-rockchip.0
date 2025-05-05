Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6744CC3ABB9
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 May 2025 22:19:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lf7Ppw85aKwS9fOu31VXhKN1YAP86r1MWjzEHK7Rvaw=; b=ZLm/6Cjt/HlZER
	KTzSeJZ3kvTyj/chW2D0NGJMGDKKQ5tm58Oco9EZ19ZRMUqzAK3maOQGjQ/omfEgMXEd3ayJld1js
	Wh8UBjrXBT9P5UeVnR2zGvJqxQ2JvLAJKzPITstfhG8WPvkYDO91hYO7B9NfVe52BlB4r8Yql4gZR
	t4DGRzAguS2YEfMfHdFHnDwe04eX+jESIa1C5tNKcnIXgdFG0dZWQgarXY8cC1548X9r4+a0y1s13
	xsYTZzHv0tLPQyeaxL7R7g7Xr5DbTJBHDhgROWWOcTR5N4iT/5wSf7h5hdDypv/a8t/ltYrFxrjfU
	DuozR4dIEUDfnNfB5+uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uC49R-00000008iha-3kZ9;
	Mon, 05 May 2025 22:19:06 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uC45v-00000008hjz-3viV;
	Mon, 05 May 2025 22:15:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 89767629C5;
	Mon,  5 May 2025 22:14:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F82DC4CEED;
	Mon,  5 May 2025 22:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746483327;
	bh=lnta+hZMPY5VaUkaDF8fXZF2WkKJfxgBtucIMgpK6Sw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kiQ0ATgxjroPDOnvO9zV771Z0Dw6rlgLXCGaZt7DbeGPHL4tDDjcJhOmYdl6pBRds
	 m68vJGJi1C4AJleqG0Q9albUmimGK4VXKUsTVgh6IddLztdY+btV7znaSySOsZ1OOj
	 32WVqhhi3wTiEyazzq71cpZfJ9pAjuWE0/dXRuqHv6mvpdD26vekLamaIrShjAzHtl
	 oxpTAtgI7tkqd+/Xm8L3m13BAEVTOu3E9+jYgbutOx7tLUw8WmecF2r2aZ+YnA8Qnp
	 C/qz2N1UARtrlZmskA4DuotM0cFASw5aoqVWnMCjdyixXMgqF/WGC6ZKU8WULbyYY8
	 KQWgstagRsSpA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Luis de Arquer <luis.dearquer@inertim.com>,
	Mark Brown <broonie@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	heiko@sntech.de,
	linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.14 035/642] spi-rockchip: Fix register out of bounds access
Date: Mon,  5 May 2025 18:04:11 -0400
Message-Id: <20250505221419.2672473-35-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505221419.2672473-1-sashal@kernel.org>
References: <20250505221419.2672473-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.14.5
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

From: Luis de Arquer <luis.dearquer@inertim.com>

[ Upstream commit 7a874e8b54ea21094f7fd2d428b164394c6cb316 ]

Do not write native chip select stuff for GPIO chip selects.
GPIOs can be numbered much higher than native CS.
Also, it makes no sense.

Signed-off-by: Luis de Arquer <luis.dearquer@inertim.com>
Link: https://patch.msgid.link/365ccddfba110549202b3520f4401a6a936e82a8.camel@gmail.com
Signed-off-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/spi/spi-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 1bc012fce7cb8..1a6381de6f33d 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -547,7 +547,7 @@ static int rockchip_spi_config(struct rockchip_spi *rs,
 	cr0 |= (spi->mode & 0x3U) << CR0_SCPH_OFFSET;
 	if (spi->mode & SPI_LSB_FIRST)
 		cr0 |= CR0_FBM_LSB << CR0_FBM_OFFSET;
-	if (spi->mode & SPI_CS_HIGH)
+	if ((spi->mode & SPI_CS_HIGH) && !(spi_get_csgpiod(spi, 0)))
 		cr0 |= BIT(spi_get_chipselect(spi, 0)) << CR0_SOI_OFFSET;
 
 	if (xfer->rx_buf && xfer->tx_buf)
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
