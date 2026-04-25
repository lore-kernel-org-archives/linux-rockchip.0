Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82E93FF885D
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Apr 2026 09:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tp32GiiFpg4gdcFNFOVbsFId1TIV9VyJqEeVDUTNM+8=; b=mlv5LIt9Hfknsg
	EQ9JaLsyloqfejkGuGi3F+5bPU46ko0Zc231gjfi6SCg8pvQPn6EY7RKm4uvf4EF3qeMIpWpYMzp+
	s0er2tfJeeYXU1lw+gxmGOQhxLYrlzAAPgS2a5wCWStCekIvKr1BHTVqp7R8R0CydhqGlnSd7k/os
	wqA4vK8rLhiKxSUIjQ6GvTpZgC8v9P9nhdwuzCJsXgUWjZUyrjE0g3c94pq7rB2Ra2nZ26ra+EIL3
	AeifJxmGgSWfdlj+OX66hsrcMUhJnQvY2xUAxSVm2VPEdzy4gI6WM7BMwGu8zCXN106m6TwL73w6n
	ZwxC6jbxXzmoKzhZPOzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGZLL-0000000EHgQ-357b;
	Sat, 25 Apr 2026 09:30:31 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGZLE-0000000EHbj-3v3N
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Apr 2026 09:30:26 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-488a8ca4aadso118571695e9.3
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2026 02:30:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777109423; x=1777714223; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wdzu/OjVJDdorng+o0yxXBdxT5kIS9RVZ5Y0mWK92GQ=;
        b=q2PcG6T4lY5UXJQoKIYXmFnnzY5fTR6jEPvn4PkzOPlZIeufSak83qpkC+4rfm6S/y
         GWcidoL9jRFVeo/BfIwuHURjHFvfZ727qG+jYcOWnI6/UpPlPFbPXV5R4QJXiRoc85F9
         t+IgkWHAyFaYBWWU4vZMjOGL6+MgRU9q6SZYcCkfn36hsVxdPnkWYtU6TLNRl5IGuVLN
         85H0p/JwZzcvpkwJyF4C8qKC01FYjwjEHjP/gPulwSIJoQN2q1qS+MZLQyC6H9+/9AwH
         NQ54GmsUhIzWoscW8dTcfI4V04heICL0y7XOOw5SD/AvDiHoqAD1gM9l87mItqzWRt96
         QfCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777109423; x=1777714223;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Wdzu/OjVJDdorng+o0yxXBdxT5kIS9RVZ5Y0mWK92GQ=;
        b=ewUSu8ZDkF92564HnfCTWiM5D0eukbNbyCbn6mlTX+3oUmGUDc8eI1nNPVE/+7yPeG
         cUFif/S9GXcCTgViZAOnyQGlxyyfss2XfsBIN938wWIH5pDka2LglkT8rSubxiqqtWoo
         4uCjsaaC7N2bZjXWxhyijymL8mPMU3YNC2mWATl2N/NLBxwHOlf7KdqU4+7RJDcL8t6b
         fhB68AG4+lOLRxtR4q7OXVlNc9DERu0stU8p/SzcNHQZbGypQPwSVYTVhobom24KFwo0
         nHQdfSRjOBwHr2RpPWNlxDfPXzjn2GzxtxrWuF9y1yAilT1woQnkDPRKUjDlH7Ecd5PJ
         fkNg==
X-Forwarded-Encrypted: i=1; AFNElJ8V5wiQHboeSdYkZMOQZKXDmwF0rYo6iq6BgDwgvYtdqLTViohgiVgJdRUFttf9iETaUgjlwEIO4dH8WJ4JWw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx8pIwJi21wo2PyKOtWtu+nM6lKic1MpzCiZB5K5jVWeZMV055L
	pZthLM9dioCsJoWrwJPkmk08hQPNSSkUy/JM2mGmTUQGygGsYWCrkRxh
X-Gm-Gg: AeBDieux3+r/x6YkBgkZKQeoUCyGqwcUbuwV0FoVrbZs3xVvGWowTdjN1QGt2EvUChb
	Fk7jAqTA1B0Pwb0PzSjUnHvLU/+bFh6M+54A+ny8b4+KF53EK6Ea4zRROtJ4PUSj2tGYjt8BLM5
	1Zn8aLBHHbn41nh5/ab2of6uUQR+xeqC6Paj59kCZ0uzmjRUWNDZHZKTPZfJfMLi0eMBba5hl23
	I6cxhjYkjDcFIQpPW3hQi7Xnd2rlNoU6PvayJySi+DokRql2PSsru5leu7MV0WAobtGVZlOjE9w
	QQhR6IDXJfY8W81MMzUzt/b3lmu7k6KMWIyF1go+evSUo2wrAeTIXVZ9Kie+/7h5Cx1ba3U0LXO
	nQtJuzymcdS0Tf6IX5dM6DL5UuU6IzVV4I4YrPiY7iiyyaNMd5Xe+I4w4jpGfuBgSgmUNmS4Y+v
	E/FudBZTqcvZlLY0eL2IOcZ6YKWiEXlCKB8UDwe/eVwaX9cV7UFz4NC4TRdyfgFGW/cedTmMojy
	eVM
X-Received: by 2002:a05:600c:8183:b0:488:b187:3c with SMTP id 5b1f17b1804b1-488fb765ab5mr507183895e9.14.1777109422978;
        Sat, 25 Apr 2026 02:30:22 -0700 (PDT)
Received: from localhost.localdomain (ns31537009.ip-141-94-163.eu. [141.94.163.193])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488fb7b2716sm204422615e9.30.2026.04.25.02.30.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Apr 2026 02:30:22 -0700 (PDT)
From: John Madieu <john.madieu@gmail.com>
To: broonie@kernel.org,
	heiko@sntech.de
Cc: jon.lin@rock-chips.com,
	linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	John Madieu <john.madieu@gmail.com>
Subject: [PATCH 1/3] spi: rockchip: Read ISR, not IMR, to detect cs-inactive IRQ
Date: Sat, 25 Apr 2026 09:29:34 +0000
Message-Id: <20260425092936.2590132-2-john.madieu@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260425092936.2590132-1-john.madieu@gmail.com>
References: <20260425092936.2590132-1-john.madieu@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260425_023024_983031_605B00E7 
X-CRM114-Status: GOOD (  14.46  )
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

rockchip_spi_isr() decides whether the current interrupt was the
cs-inactive event by reading IMR:

	if (rs->cs_inactive &&
	    readl_relaxed(rs->regs + ROCKCHIP_SPI_IMR) & INT_CS_INACTIVE)
		ctlr->target_abort(ctlr);

IMR is the interrupt mask register: it tells which sources are enabled,
not which one fired. In the PIO path, rockchip_spi_prepare_irq() enables
both INT_RF_FULL and INT_CS_INACTIVE in IMR when rs->cs_inactive is true:

	if (rs->cs_inactive)
		writel_relaxed(INT_RF_FULL | INT_CS_INACTIVE,
			       rs->regs + ROCKCHIP_SPI_IMR);

so the IMR check is always true once cs_inactive is enabled, and every
PIO interrupt - including normal RF_FULL completions - is dispatched to
ctlr->target_abort(), aborting the transfer. The bug is reachable on
ROCKCHIP_SPI_VER2_TYPE2 in target mode with a DMA-capable controller
when the transfer is short enough to fall back to PIO
(rockchip_spi_can_dma() returns false below fifo_len).

Read ISR (which is RISR masked by IMR) so the check actually reflects
which interrupt fired, and parenthesise the expression for clarity while
at it.

Fixes: 869f2c94db92 ("spi: rockchip: Stop spi slave dma receiver when cs inactive")
Signed-off-by: John Madieu <john.madieu@gmail.com>
---
 drivers/spi/spi-rockchip.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 14cd1b9d9793..de39f5da62cb 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -357,7 +357,8 @@ static irqreturn_t rockchip_spi_isr(int irq, void *dev_id)
 	struct rockchip_spi *rs = spi_controller_get_devdata(ctlr);
 
 	/* When int_cs_inactive comes, spi target abort */
-	if (rs->cs_inactive && readl_relaxed(rs->regs + ROCKCHIP_SPI_IMR) & INT_CS_INACTIVE) {
+	if (rs->cs_inactive &&
+	    (readl_relaxed(rs->regs + ROCKCHIP_SPI_ISR) & INT_CS_INACTIVE)) {
 		ctlr->target_abort(ctlr);
 		writel_relaxed(0, rs->regs + ROCKCHIP_SPI_IMR);
 		writel_relaxed(0xffffffff, rs->regs + ROCKCHIP_SPI_ICR);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
