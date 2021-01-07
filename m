Return-Path: <SRS0=faov=GK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4CA1FC433E6
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jan 2021 23:59:27 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 080A8235FD
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jan 2021 23:59:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 080A8235FD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e6roGhyAb7mBBgolkk4NKC/qU0WXI75cdmP2pHJoVsU=; b=rIhkc9/AzqGA3fX4bHIAkkO6H8
	LPks8KaUBbLEKlZJSNLlyjgsrAOCH6i+sAtH+ShY7RKz8g9lwgexS4nhHKs+BobJ8ccZjMweQJ216
	e+DqUtgcU9VMLIy2ZV9o3tAWJtEkseAFNpF3mt8YpggMI2mTeIXbzeGw5ubdUPyGTYnqo3jdh5SmI
	h0+1YIoJpfvdVJPG9SHG3Z033mb1ezSqzzN6ZB4mXf5ZoVIxZ+IsCHIQwtlADxQFHE7JjuZLrV8XI
	hbHAL9ZdZeQxmmXn+1rLyXjXfZiFxZAyNtSf/ViTjwbIe1Zz+tq4jWv5X2zdWwGJhJkTTxNHqkzrA
	bRJ+Onqg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kxfBb-00023q-La; Thu, 07 Jan 2021 23:59:23 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxfBZ-00022h-He; Thu, 07 Jan 2021 23:59:22 +0000
Received: by mail-pf1-x433.google.com with SMTP id m6so5088298pfm.6;
 Thu, 07 Jan 2021 15:59:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=gVWRVkXWEtpIQllAztl5ByGC/c1eu5QBEtUSi0NXW/E=;
 b=i2YgCFwgtZZdzRZJD4YSySL+q2WsW9ZSAkmserIOkBQABL1Cl6Xj+Fz0WYqQEi4png
 Y1V8zuiIrxG6y1fSAHsrqb0IJPI/bwuDcdEh60XvU8mqNiPYn78RAEemIn/DupetEaL7
 RFTNQDuZmagTKCjD+1xmsSinxjHAUCxBRR9+0lg1yHM1JaYSPgik4JXN6ovAo59ckBJG
 k74Mb62iLRIVxvXxCUFmRNOY8jfviVzfjqqfubRKbfYRm4vZnotTkC+qgLb0Nm8y98rd
 QGS+5IgvGfyKq8aNtflEXaLM6nwfGWAKw9vUkRAINbOzWPelHiqpzcjKtUILw6OeUcWU
 hovg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gVWRVkXWEtpIQllAztl5ByGC/c1eu5QBEtUSi0NXW/E=;
 b=LOGiY824nQAJyc/yQZSTMK5p7idDaQYDMdyiSEw5tBv1y+KqtabmpWHADg7JRp4Rbf
 DvTsdvoFUjbNAAaTjAeMVIgBZzpZFPdkTaVdJ0Oe1mjyjbL8rxRM8EdV8YLbjqCa93ld
 lR2U7a/73Jo6opkkqvaaY/EFkGUeSS2Lze7fx1IVi1FCo073qZ87q+xl5Bs9GNMhnGOT
 GMdAq85UTjygQRFYTLGlu8yAbQ0e68whWbQeSI6Vvrgb8s+uVYWOWWk0LKdKcBYU2WY1
 nAchWo9yIAYDfYMDxVf5wlYZEJdIsUc75TmInpD+xrCWmJ59BFq/e1UZU/nqnsiZbJKk
 lMIA==
X-Gm-Message-State: AOAM533c40J/wGYHZJkK9L0A0OuvSkRW5r5gXhi6Z5WRp73bYcNJP1NZ
 801z42yFU8epsEEEEBrNFlBACJTo8st8SQ==
X-Google-Smtp-Source: ABdhPJy63j9zOI2U7M1X9Cl7DDOIvjhpbkAHlxM9fj1EcOvbRS5cAbyP56glxIhoqpxTXx1uNFvn8A==
X-Received: by 2002:a63:c64:: with SMTP id 36mr4200685pgm.255.1610063959705;
 Thu, 07 Jan 2021 15:59:19 -0800 (PST)
Received: from x2.lan ([2400:4070:175b:7500::7a7])
 by smtp.gmail.com with ESMTPSA id bf3sm6448195pjb.45.2021.01.07.15.59.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Jan 2021 15:59:19 -0800 (PST)
From: Vincent Pelletier <plr.vincent@gmail.com>
To: Mark Brown <broonie@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, linux-rpi-kernel@lists.infradead.org
Subject: [2/3] spi: bcm2835aux: Call the dedicated transfer completion
 function.
Date: Thu,  7 Jan 2021 23:58:31 +0000
Message-Id: <2636096a3b40febf680f9fff33944a5480561df9.1610062884.git.plr.vincent@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <633c3d5c350dde4d14ce2120c32698c25b95d302.1610062884.git.plr.vincent@gmail.com>
References: <633c3d5c350dde4d14ce2120c32698c25b95d302.1610062884.git.plr.vincent@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210107_185921_610634_08B9DF18 
X-CRM114-Status: GOOD (  11.32  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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

spi_finalize_current_transfer currently only calls "complete", so no
functional change is expected.

Signed-off-by: Vincent Pelletier <plr.vincent@gmail.com>
---
 drivers/spi/spi-bcm2835aux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/spi-bcm2835aux.c b/drivers/spi/spi-bcm2835aux.c
index 1a26865c42f8..75589ac6e95f 100644
--- a/drivers/spi/spi-bcm2835aux.c
+++ b/drivers/spi/spi-bcm2835aux.c
@@ -254,7 +254,7 @@ static irqreturn_t bcm2835aux_spi_interrupt(int irq, void *dev_id)
 	/* and if rx_len is 0 then disable interrupts and wake up completion */
 	if (!bs->rx_len) {
 		bcm2835aux_wr(bs, BCM2835_AUX_SPI_CNTL1, bs->cntl[1]);
-		complete(&master->xfer_completion);
+		spi_finalize_current_transfer(master);
 	}
 
 	return IRQ_HANDLED;
-- 
2.30.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
