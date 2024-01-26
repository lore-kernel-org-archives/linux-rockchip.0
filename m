Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC076C47DDB
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jan 2024 19:46:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Cc:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KSyirAIHflpOk6FB5ClC7YzSLuWXu/hoailei2Gi0a0=; b=bylfLaASdZiMhh
	PPRd7AU6TJ8JKSK7cgCzSXzkYutkqqv3DWdpNrVXuBHhaiCbevOJPSQP9UInJEEeQWDF6tgcIGI3E
	ksdZdCiOC8d/W9Ij6FCNKsb9SvsNCg888l5FICCBzhLJiq5v3Z6CnTN/Kt62IypYCxHBBRH3qWYG9
	2vvujJheUQBcheb/zBTj/uyQlrSvfwRNKhRrfsCjLYVvXOm0bRPyg7MW9MiYFT9tSLDmOTq2f2VeS
	n0h2PrtOnwvrIS/K5CNwYTtp65oeGrUc4YZLhN8cwAnws9V1Njbt3SCugKNGSzPYJV0wn5pJmg6un
	6s2WGj0FsT8ZGnGNmGJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTS9u-00000005Gpy-2djL;
	Fri, 26 Jan 2024 19:46:38 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTS9r-00000005Gp8-2O3u;
	Fri, 26 Jan 2024 19:46:36 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-33934567777so960336f8f.1;
        Fri, 26 Jan 2024 11:46:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706298394; x=1706903194; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:date:cc:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ELPxmtn49SBjAi9TU0DUsydleKjJ78oJdceadEbwh5I=;
        b=hYtZkKuC9DeeJxhSjc4TMlw850af4XepYq56qmFISoXcLj91vgbdQPdEHwmBiyX+6j
         xMHGSx3wlUEnEV8Gyls9E9aBq1bewc1oRTLacMB0VNSMx4IxD1+6yIoovCPCNJAoErA9
         kuHFwtXuObX4GPmNu37HWZwIqGhxnfcGTlXMKQGjgfTwIlRqFVqVPL+rEbwqJMP+/1kr
         kfUhaH2dKfEviVWDjMwFOEGnBpQWnNQWyuaet6dOPh+ia//T6MY4Wms4EtGQQmleFIMQ
         CSlUzERoATDr3giWpO+j2KRBleJcbjl470mB0ZIJv+lUxp5vGYjc4wQu32Zh+S5BrVZi
         mr5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706298394; x=1706903194;
        h=mime-version:user-agent:content-transfer-encoding:date:cc:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ELPxmtn49SBjAi9TU0DUsydleKjJ78oJdceadEbwh5I=;
        b=BByAJvGqCCe64p3/Tdlg4vO/380RD4s0XabHzZoV3xUCt92CYUabkzJnzTN7OhmBCG
         IlQJK/xdswjgmaWoU8/9/TMTFHKrpWshyx/CNETniNVAXkGzRhNVWVB72zci7VvALlgd
         IekWUy0/bYIk0MwhmLYXU/dHwXQGN4uELhK79Si7HTFechhGNwzM4Hba1dQ+IMzO8V3t
         +b+4OQYE7FrBxjo+yn/i5cOr0Tf5ZYHZv4+tRr9P0BgeHwvce2wFF+EEBWPGiFqdJD9M
         I7DQge8WLiAAdfFeAQ2sucubeUXpGj/cMKL5WmAuD66Vad9nFBMWgKj2grSkeBAu6DfZ
         Fu+Q==
X-Gm-Message-State: AOJu0YziMnItzH807RRXVbvM7aLGKzJ+DK+mHKsGfxYiDRibnNixKsah
	wWKu+mJy3RrFwV/Vy5+L60Nd/Gnz6DpOfRAcglFSS4sAu4hxMzqmMGzAnAPXySCTBA==
X-Google-Smtp-Source: AGHT+IFDktryRMsL2GnllBeHMRu5xBVFqB3atm9WtCpg9CMFwPfsoTLWDKvyE2nSetolmi+Q1tYvmQ==
X-Received: by 2002:a7b:c8ca:0:b0:40e:e97c:247a with SMTP id f10-20020a7bc8ca000000b0040ee97c247amr224674wml.51.1706298393788;
        Fri, 26 Jan 2024 11:46:33 -0800 (PST)
Received: from [192.168.0.5] (cm-83-97-153-254.telecable.es. [83.97.153.254])
        by smtp.gmail.com with ESMTPSA id c4-20020a05600c0a4400b0040e621feca9sm2723301wmq.17.2024.01.26.11.46.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 11:46:33 -0800 (PST)
Message-ID: <d0a0c4b94f933f7f43973c34765214303ee82b77.camel@gmail.com>
Subject: [PATCH 1/3] spi: spi-rockchip: Fix out of bounds array access
From: Luis de Arquer <ldearquer@gmail.com>
To: linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: broonie@kernel.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org,  Robin Murphy <robin.murphy@arm.com>,
 luis.dearquer@inertim.com
Date: Fri, 26 Jan 2024 20:46:22 +0100
User-Agent: Evolution 3.44.4-0ubuntu2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240126_114635_637775_7951CE46 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
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

Since spi-rockchip enables use_gpio_descriptors and the
SPI_CONTROLLER_GPIO_SS flag, the spi subsytem may call set_cs()
for spi devices with indexes above ROCKCHIP_SPI_MAX_CS_NUM

Remove array cs_asserted[] which held a shadow copy of the state
of the chip select lines with the only purpose of optimizing out
rewriting a chip select line to the current state (no-op)
This case is already handled by spi.c

Signed-off-by: Luis de Arquer <luis.dearquer@inertim.com>
---
 drivers/spi/spi-rockchip.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 4b9669da2cf3..2fb2d65bd5f4 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -192,8 +192,6 @@ struct rockchip_spi {
 	u8 n_bytes;
 	u8 rsd;
 
-	bool cs_asserted[ROCKCHIP_SPI_MAX_CS_NUM];
-
 	bool target_abort;
 	bool cs_inactive; /* spi target tansmition stop when cs inactive */
 	bool cs_high_supported; /* native CS supports active-high polarity */
@@ -245,10 +243,6 @@ static void rockchip_spi_set_cs(struct spi_device *spi, bool enable)
 	struct rockchip_spi *rs = spi_controller_get_devdata(ctlr);
 	bool cs_asserted = spi->mode & SPI_CS_HIGH ? enable : !enable;
 
-	/* Return immediately for no-op */
-	if (cs_asserted == rs->cs_asserted[spi_get_chipselect(spi, 0)])
-		return;
-
 	if (cs_asserted) {
 		/* Keep things powered as long as CS is asserted */
 		pm_runtime_get_sync(rs->dev);
@@ -268,8 +262,6 @@ static void rockchip_spi_set_cs(struct spi_device *spi, bool enable)
 		/* Drop reference from when we first asserted CS */
 		pm_runtime_put(rs->dev);
 	}
-
-	rs->cs_asserted[spi_get_chipselect(spi, 0)] = cs_asserted;
 }
 
 static void rockchip_spi_handle_err(struct spi_controller *ctlr,
-- 
2.34.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
