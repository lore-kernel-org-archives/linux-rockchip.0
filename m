Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A794DC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 19:46:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6+onIBkoQEfpbCG4Uxo9vmIbZGVoBuTQ1LoksZ4uiMc=; b=ZDAM7B5x+/qrnd
	8AwSNbN1eIK/jw8wtgPwWGzVSPrcRE/a2+v5zcaea/PhrJzDy1UeGIafV9ShEMtQfumsFEp2eA5r1
	ohx7xDvkwbqM34aBef1sL8rJ2FP8+a1RmqVu6aJl6FsdMY/w4Y0nPrsMh6lL6uq1n0Gjkdw+hegcC
	Z52NCsJOGWJ5pUWbeYMCtUTsPotQ9IiAboJ+d4WDUxOqI7vOk2A7XN6x1Il8kDdK6eJQB79yStX+8
	VnEREcSMpgYeIA/59MaHz5h1/C2ypj+SM1RgAius1MBv5A9WBLocl/ZJMq5fpc0I17XCJsLcMuBXc
	sA+T4je+O1LWGjO+WVkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOlys-00DqMF-MB; Mon, 28 Feb 2022 19:46:50 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOlt6-00Dnc8-Uk
 for linux-rockchip@lists.infradead.org; Mon, 28 Feb 2022 19:41:00 +0000
Received: by mail-wr1-x434.google.com with SMTP id d3so17136343wrf.1
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Feb 2022 11:40:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Mq94Dr5+JVccORut3g3YoAFCHNwJha9oYdYCZSmtj94=;
 b=15smI5CSaP0Zrj3xaQZQf+DZcj7sJcUvEGVixTMllyC0+17NwDBnX1yDzL0G8A3RMz
 JxsYzQMVj83p6RnrNOkbvb1mjyRd/XReb0l1vHOE5+LZmTKTJ2jlIW/Eq/FBAUPaNrGV
 mC7ruGFt3FlrzSQW2vtji5cxIXmmbmopkMkPNVUnPxXjP8B3x3nfJxwOhE3qJ8xi60bN
 eLPKMfiawx26wTTR9MtlgCfNWudyjLUyx4JOjYFV9nDwtra5p12oxQQPbYHxtN239YSQ
 ysS6bDXjFTwQMjyB/YkEeL3kPYon8daCYnwHohQWnU6ibA6TKJ4aDvoL9UUulW1H5vNG
 APTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Mq94Dr5+JVccORut3g3YoAFCHNwJha9oYdYCZSmtj94=;
 b=exf2W4DXShRHrRUTAH691xYA4qGgIiTXlLI1rblgBSip+8CW6qHGFywHUcQzmQ5qDw
 /hwEDbHbG+xJkb8cUG4M5uJloMMN6tjSLHH+oVO4o0ktN3caQZaAz1qcK77sU2BpCPPN
 fZepmszx+YEDemkeudXNN29etOhFvI3aPDPXK28A/Ayf+SN+gguglXR2r3dBiKMNQL3x
 HTQHm2yTi/aoAYMuc8nOFKeHlSvB0Pd5TlEjerM2aJrtX+gpCvaQ15zJORmt4bvAtpFq
 ymf3DCgnU3mYBeYs/NXaQXMnAxO2n2D2cfisCU2WYec01TZs11q9MqLJf88FhsMbgqc9
 9Ojg==
X-Gm-Message-State: AOAM532QxWRaTqNdNP3b5bswwJIMaeltgKkbYmBiP+9UPmZ4XLRioDqY
 CRBJCazBq8C3Bf3cT+RxS5o0OA==
X-Google-Smtp-Source: ABdhPJwZg11V8F1Kup6pt6wHNQPpNk/myS5kvvKb0nY3uqpqJek1arz6rT4spkUayXGNIeeF0wq6oQ==
X-Received: by 2002:a05:6000:c8:b0:1ef:7e4a:e3a1 with SMTP id
 q8-20020a05600000c800b001ef7e4ae3a1mr10429876wrx.452.1646077251620; 
 Mon, 28 Feb 2022 11:40:51 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 v25-20020a05600c215900b0038117f41728sm274143wml.43.2022.02.28.11.40.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 11:40:51 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski@canonical.com, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH 11/16] crypto: rockhip: do not handle dma clock
Date: Mon, 28 Feb 2022 19:40:32 +0000
Message-Id: <20220228194037.1600509-12-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220228194037.1600509-1-clabbe@baylibre.com>
References: <20220228194037.1600509-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_114053_069006_41612876 
X-CRM114-Status: GOOD (  13.09  )
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
