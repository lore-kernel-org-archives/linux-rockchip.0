Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 776FDC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 21:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6+onIBkoQEfpbCG4Uxo9vmIbZGVoBuTQ1LoksZ4uiMc=; b=CC4smeZgo+KE1l
	HFpkVmPUeubzWymcZhme0nj5LfN+wHIijjzDn9z+kv6uQlnjj2JMd/VDKtpfByCY87n96pdnMQ3Iw
	NoMmNFREXe+tE+WpI3hzOJOaDgZw3YmXB/U29bGE3zdR/RbVcsxeDGRDwFi3s4tHPBN0DIECSe5gC
	XLDb3GpdzDSBLYWhezhOcu5q2adasbEQHeCXMmybWzdD+OIMVvPgYuMXmORESn0e+4M1p04ykBiw2
	DtiD2zfub6yVZTyOC2tceyRUyZcokVopYLEXWiokq/Sxd+qyVc/tGUGsblx0Y9U4Sy9HAmlQs2Rfn
	JTQYDhWYexYRuR9mTKlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPWU1-004IXo-3c; Wed, 02 Mar 2022 21:26:05 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPWFx-004Bln-4M
 for linux-rockchip@lists.infradead.org; Wed, 02 Mar 2022 21:11:41 +0000
Received: by mail-wr1-x42e.google.com with SMTP id p9so4705416wra.12
 for <linux-rockchip@lists.infradead.org>; Wed, 02 Mar 2022 13:11:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Mq94Dr5+JVccORut3g3YoAFCHNwJha9oYdYCZSmtj94=;
 b=U0DTL4S6GNXCxomapNhQbk6QlG9hRPJv1j5HQJ0h09vEfdgbVOM7InDA3E6lUAdTrz
 uRqA9AxWXGRWAporGp8wFF71zA/8cO4jaRJAMomxRx/5b3yOIiw3cUEl6eBy0NyeIbP3
 G682W5sAueKScefqW0j5QuAPnx5vYhXW0wmSF+vzvUHpP/JUIWGKhUbv5RAus3Mhtim0
 C98fu98v22ASVbY9MBUXeo9MUKM5g0ZKZowOQZQkkebVmJlCFGOw693/tQ/c0TScfHf3
 D1gpk6n6UHErJxZz0XhgwkjyJzEiP4U+v/bZsagYAs84CFffnWvq7elwEuKrUcyLx+T3
 DiqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Mq94Dr5+JVccORut3g3YoAFCHNwJha9oYdYCZSmtj94=;
 b=7Cno4N+z0cNcvp+B8BGeQ5gfWEwyf9Z4XLx6Oa69iU2u3D7LbV7lfITIkpqzj3w3ru
 nxn4tiYQ58htvMiUJNpT82UOe3fCuWTr5PDdqnrCOOE0ICYh1LC6A67drkbLTLWvgdqy
 w0cncUOJrmHSz+RhfPG9OZqM9dKj+hD8kCgLqr/neaAHSZ9NFQ1AhT78aGoY6w5Aruhn
 T0BqBT/uE7XLYqs3FQr+S88XpxaudXSB3h9zH+5tTYcT+isyW1kOK3zA3NiHXJXEbLuw
 wPMZ7+zkRTtfd9hEuWqDAhU3xuPrMkwzhGGnJhU0E9jPow5G7Y2MUU8FalnLFu76BLDk
 MELw==
X-Gm-Message-State: AOAM531GW3Rew4DeaECMrMmFAaSF1IdP9lgsJgy1u+bmkw4wmJTvUHx5
 ehPr3ly1qs7AZSeuKEPSCvPSjg==
X-Google-Smtp-Source: ABdhPJzNrviGuhF6beRfYB3gHyxCFqqZ+/HGFHv0JfNIUXWA3/kfT5jahwXLRaO3xGZoJD2iUvKvtw==
X-Received: by 2002:a05:6000:3cc:b0:1ef:9b6d:60c6 with SMTP id
 b12-20020a05600003cc00b001ef9b6d60c6mr13743574wrg.480.1646255491524; 
 Wed, 02 Mar 2022 13:11:31 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 z5-20020a05600c0a0500b0037fa93193a8sm145776wmp.44.2022.03.02.13.11.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Mar 2022 13:11:31 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, john@metanate.com,
 Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v2 11/18] crypto: rockhip: do not handle dma clock
Date: Wed,  2 Mar 2022 21:11:06 +0000
Message-Id: <20220302211113.4003816-12-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220302211113.4003816-1-clabbe@baylibre.com>
References: <20220302211113.4003816-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_131133_244474_0F19378D 
X-CRM114-Status: GOOD (  13.87  )
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

The DMA clock is handled by the DMA controller, so the crypto does not
have to touch it.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 16 +---------------
 drivers/crypto/rockchip/rk3288_crypto.h |  1 -
 2 files changed, 1 insertion(+), 16 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index 94ef1283789f..645855d2651b 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -40,15 +40,8 @@ static int rk_crypto_enable_clk(struct rk_crypto_info *dev)
 			__func__, __LINE__);
 		goto err_hclk;
 	}
-	err = clk_prepare_enable(dev->dmaclk);
-	if (err) {
-		dev_err(dev->dev, "[%s:%d], Couldn't enable clock dmaclk\n",
-			__func__, __LINE__);
-		goto err_dmaclk;
-	}
+
 	return err;
-err_dmaclk:
-	clk_disable_unprepare(dev->hclk);
 err_hclk:
 	clk_disable_unprepare(dev->aclk);
 err_aclk:
@@ -59,7 +52,6 @@ static int rk_crypto_enable_clk(struct rk_crypto_info *dev)
 
 static void rk_crypto_disable_clk(struct rk_crypto_info *dev)
 {
-	clk_disable_unprepare(dev->dmaclk);
 	clk_disable_unprepare(dev->hclk);
 	clk_disable_unprepare(dev->aclk);
 	clk_disable_unprepare(dev->sclk);
@@ -199,12 +191,6 @@ static int rk_crypto_probe(struct platform_device *pdev)
 		goto err_crypto;
 	}
 
-	crypto_info->dmaclk = devm_clk_get(&pdev->dev, "apb_pclk");
-	if (IS_ERR(crypto_info->dmaclk)) {
-		err = PTR_ERR(crypto_info->dmaclk);
-		goto err_crypto;
-	}
-
 	crypto_info->irq = platform_get_irq(pdev, 0);
 	if (crypto_info->irq < 0) {
 		dev_err(&pdev->dev, "control Interrupt is not available.\n");
diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/rockchip/rk3288_crypto.h
index c741e97057dc..963fbfc4d14e 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.h
+++ b/drivers/crypto/rockchip/rk3288_crypto.h
@@ -191,7 +191,6 @@ struct rk_crypto_info {
 	struct clk			*aclk;
 	struct clk			*hclk;
 	struct clk			*sclk;
-	struct clk			*dmaclk;
 	struct reset_control		*rst;
 	void __iomem			*reg;
 	int				irq;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
