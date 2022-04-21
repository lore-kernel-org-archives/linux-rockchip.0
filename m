Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12428C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Apr 2022 21:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uBnxiIiE7Hp+ANO3Wj8KxrY5eITT0Jl6rjnFEjClq5I=; b=pbsZ5u5GQnJKI6
	bxGNWC9/HW46mDS0elTeUNlMegL3aTsvjfxBhIDOTLbz5lw73oDi1fJ61M8YexZhWvRw3p65i7XFC
	m9Any37WYITel3WrfYA+uLTuEnPKAQTaKrjTztoxIJLWrbTSNXkBUTk6jkves2IHazAMl+V+4Mzc3
	iVW6kFZU3FIYVqTnbjzl426rK9w55gzIo9nKKWr80YJjPqfTtu4Ipe4U5479ent6S2B/mqLkvTSqi
	w1G7nluK/GFMJf3vRrfrA0iFzgRJrdSLjhGjpBrs5dCpnjWuFKjxts9ixnr2tT3TxrNgtxevLKHF9
	gWeJ577uW4WpfiPxVCeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nheRD-00F3dL-6J; Thu, 21 Apr 2022 21:34:07 +0000
Received: from relay3-d.mail.gandi.net ([2001:4b98:dc4:8::223])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nheR1-00F3ZT-Ti; Thu, 21 Apr 2022 21:33:58 +0000
Received: from melee.fritz.box (unknown [77.244.183.192])
 (Authenticated sender: luca.ceresoli@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPA id A93E760004;
 Thu, 21 Apr 2022 21:33:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1650576830;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=H1SCxsyir0yk12O74c3/slnu+DY/q/kHFuNIUrrfPek=;
 b=llanma7UwoiWXapTlRDnbMcAwLIiConDmuSs+6G2cs7QkoRu+9RoLDI1H5nFuuUG2fqm89
 j2RVWDIIwQqPOoxWN+wpWlgJIfMKBgHZ+RnbcGDoBi26WGrgC5tw/1km48rbzFGxqXAvVX
 5fCIIJ+EXKIPiulUfuomVxw8MJsVdCZbBqOfmNcC0AzN4Lwqw/Ppao7CGdkz6j+G9bbf8r
 JX678bAwQ9T5C18Gd4pV89DKf+3iTPV4nf1mhv8nveuZZhCHE7zTvKBPQGWaAxGX2gaN/T
 C26/bx0Q1TBb9oq9WL7+D9gMVnVHAMnR5d3CsI5TkPg8Vt5l093unA6EtiaO5A==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: linux-spi@vger.kernel.org
Cc: Luca Ceresoli <luca.ceresoli@bootlin.com>, Mark Brown <broonie@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Chris Ruehl <chris.ruehl@gtsys.com.hk>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] spi: rockchip: fix missing error on unsupported SPI_CS_HIGH
Date: Thu, 21 Apr 2022 23:32:51 +0200
Message-Id: <20220421213251.1077899-1-luca.ceresoli@bootlin.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_143356_308682_27D41062 
X-CRM114-Status: GOOD (  14.85  )
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

The hardware (except for the ROCKCHIP_SPI_VER2_TYPE2 version) does not
support active-high native chip selects. However if such a CS is configured
the core does not error as it normally should, because the
'ctlr->use_gpio_descriptors = true' line in rockchip_spi_probe() makes the
core set SPI_CS_HIGH in ctlr->mode_bits.

In such a case the spi-rockchip driver operates normally but produces an
active-low chip select signal without notice.

There is no provision in the current core code to handle this
situation. Fix by adding a check in the ctlr->setup function (similarly to
what spi-atmel.c does).

This cannot be done reading the SPI_CS_HIGH but in ctlr->mode_bits because
that bit gets always set by the core for master mode (see above).

Fixes: eb1262e3cc8b ("spi: spi-rockchip: use num-cs property and ctlr->enable_gpiods")
Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---
 drivers/spi/spi-rockchip.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index cdc16eecaf6b..a08215eb9e14 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -196,6 +196,8 @@ struct rockchip_spi {
 
 	bool slave_abort;
 	bool cs_inactive; /* spi slave tansmition stop when cs inactive */
+	bool cs_high_supported; /* native CS supports active-high polarity */
+
 	struct spi_transfer *xfer; /* Store xfer temporarily */
 };
 
@@ -719,6 +721,11 @@ static int rockchip_spi_setup(struct spi_device *spi)
 	struct rockchip_spi *rs = spi_controller_get_devdata(spi->controller);
 	u32 cr0;
 
+	if (!spi->cs_gpiod && (spi->mode & SPI_CS_HIGH) && !rs->cs_high_supported) {
+		dev_warn(&spi->dev, "setup: non GPIO CS can't be active-high\n");
+		return -EINVAL;
+	}
+
 	pm_runtime_get_sync(rs->dev);
 
 	cr0 = readl_relaxed(rs->regs + ROCKCHIP_SPI_CTRLR0);
@@ -899,6 +906,7 @@ static int rockchip_spi_probe(struct platform_device *pdev)
 
 	switch (readl_relaxed(rs->regs + ROCKCHIP_SPI_VERSION)) {
 	case ROCKCHIP_SPI_VER2_TYPE2:
+		rs->cs_high_supported = true;
 		ctlr->mode_bits |= SPI_CS_HIGH;
 		if (ctlr->can_dma && slave_mode)
 			rs->cs_inactive = true;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
