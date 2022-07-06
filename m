Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0C79C43334
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jul 2022 09:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JjPLQ8ndJQMWudtiG2QquBS/NVK/fk4TyO+tnpdkAQ4=; b=l4SdRa2Q5AXW/2
	XcjqONoMaYPK4ICGmr4Ddeo4GgF5Iz1Ri8ZrETdC7VSbekokmEXdjYQEwFhIWQ86ij1BPCCgV/kij
	FQX2kDESwwaMn9Q/qh6h226kR0eC6//yW3PcB6TQz8kHlke0nzFP8x9PlvpuK5JCj6+3Gf0OUfHBZ
	09QFXU/qBXJmxmXyvvhtog3PJkA+geeVOE2W/Ohj4GZyZUyM8PoA5VAvZo4Iu7StyVbFXwHbuF2gQ
	ZmkR183xQsW+uB+RGSnwpLggwfcnhT0NgA/j0BW+cPf6KlCqPtAxkODEz+vE5JggV4X3KTnrzg5bG
	gRgJV0OB9XbCEtkt4cCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o91gZ-007wvQ-0o; Wed, 06 Jul 2022 09:51:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o91Uv-007qGk-Pz
	for linux-rockchip@bombadil.infradead.org; Wed, 06 Jul 2022 09:39:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=UGbdJwhNtYNfg6qIard96SGzNtmQLkXSB3qcyDfr1D0=; b=rAUqpOJIWP7ZgVDcolB69IZ88m
	KIVbcRQAuA77G2PQw+H4wNVrNlxmrBYw0pVR7XOEXJf9Uq4vaVp9PxIxYdXwQJqOarJkR8+vfRz2k
	4KsaUn+WyQhzLStFhRWzVcFXd1BZU4Whz3k2mot0AgGJp/fTCv/u8b6aPHZwBOst2xhPYpWK8x7br
	NJdE7010Y1bgKZP07Zs5eCb03xDfpluxErGJtaoOSZBBxZHFmn7k3AETV/859U0LYWA8R4D0FknsR
	Rccv7hUlXhRYLKNLNOR3mtaxIie2a0zlwCdbzfd9okrANqttwLagvnMM3qJUvb22nLcH76qb8FEN9
	cTX8/kmQ==;
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o90xm-000NJb-QU
	for linux-rockchip@lists.infradead.org; Wed, 06 Jul 2022 09:05:15 +0000
Received: by mail-wr1-x431.google.com with SMTP id cl1so21070459wrb.4
        for <linux-rockchip@lists.infradead.org>; Wed, 06 Jul 2022 02:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UGbdJwhNtYNfg6qIard96SGzNtmQLkXSB3qcyDfr1D0=;
        b=gm0KhrhBhAvk1tfsnOGMz6wra9Y+oeNBjeba+VWedHQ1UHOgbxpAe4LFPDlUaxPqrs
         8rY3aJf6geSq7/4QDfQac2ydBq8/0UOd9Dg1hB9jTv8DqsQLhGproaiZbYW+8TGZ/KTg
         /kUyJsmfSig9d3Pw1cRz7WFr7bDZJ62YOonLu3BpwE7VrewVppQo4QTEaBl8Ee80XnvP
         edD55QxtgY54jNehTdtmI3YMApuaxf5olBUlh6AJ4xfrveDlwFDYRXejtm89MgLaIj+Z
         TpZmTqBzHpU2xbi5l56oBPcj/KhHrMO8hreMhRkxEV7Sx7/JUZC08F4UCHZWeuvUBr5h
         EbzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UGbdJwhNtYNfg6qIard96SGzNtmQLkXSB3qcyDfr1D0=;
        b=d5m2KRr3hoDkK/DspijOyWdww7v0NiC+qaagqiILraucWmljt3A6rZfAo5DBIkRjK9
         hjd4M6MISLGFGzV3Ft+Tz0Shypvx/WvoopigayQasfke+bEJVEATfbbu7Irco+V3MX/m
         wLqF9GIJec1/fqAWnqxWY7izt36xL4VvTqXDIG4ToZLIn+mKbNRNOLXqew/+gqFKxJdJ
         vA1K+N1Ery14KiZH5zqF+2rRDf2x4rEsLW6+bYrSMd2KXAsaVfbKah93MoJzjj4CyVyZ
         YgVNB1LkAzTLaAAS24RkUh0UBuo29hvZYTprEChjEK9dAwj7kLjLS3OG103hfJEOTOEC
         ZOKA==
X-Gm-Message-State: AJIora9u0hoYPmR1KuUfS+E0tmPovxbvSQHDnwLIjaR6837pYu7Dm5hy
	POFx8s9w918HFn6MYRa0sQ9t/Q==
X-Google-Smtp-Source: AGRyM1sp1cGtTs7HtYrnntFH8WN9VXQNVfvKy2ZfLC7LeqIDohbIK8azWU+UPDvtgEh1Mr//Z+4FxQ==
X-Received: by 2002:adf:db12:0:b0:21b:970b:e882 with SMTP id s18-20020adfdb12000000b0021b970be882mr37315917wri.6.1657098289008;
        Wed, 06 Jul 2022 02:04:49 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v11-20020adfe28b000000b0021d6ef34b2asm5230223wri.51.2022.07.06.02.04.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 02:04:48 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	p.zabel@pengutronix.de,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	john@metanate.com,
	didi.debian@cknow.org,
	Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v8 15/33] crypto: rockchip: use clk_bulk to simplify clock management
Date: Wed,  6 Jul 2022 09:03:54 +0000
Message-Id: <20220706090412.806101-16-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220706090412.806101-1-clabbe@baylibre.com>
References: <20220706090412.806101-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_100452_956876_B8F1F2A5 
X-CRM114-Status: GOOD (  14.25  )
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

rk3328 does not have the same clock names than rk3288, instead of using a complex
clock management, let's use clk_bulk to simplify their handling.

Reviewed-by: John Keeping <john@metanate.com>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 66 ++++---------------------
 drivers/crypto/rockchip/rk3288_crypto.h |  6 +--
 2 files changed, 11 insertions(+), 61 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index 399829ef92e0..a635029ac71d 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -22,47 +22,16 @@ static int rk_crypto_enable_clk(struct rk_crypto_info *dev)
 {
 	int err;
 
-	err = clk_prepare_enable(dev->sclk);
-	if (err) {
-		dev_err(dev->dev, "[%s:%d], Couldn't enable clock sclk\n",
-			__func__, __LINE__);
-		goto err_return;
-	}
-	err = clk_prepare_enable(dev->aclk);
-	if (err) {
-		dev_err(dev->dev, "[%s:%d], Couldn't enable clock aclk\n",
-			__func__, __LINE__);
-		goto err_aclk;
-	}
-	err = clk_prepare_enable(dev->hclk);
-	if (err) {
-		dev_err(dev->dev, "[%s:%d], Couldn't enable clock hclk\n",
-			__func__, __LINE__);
-		goto err_hclk;
-	}
-	err = clk_prepare_enable(dev->dmaclk);
-	if (err) {
-		dev_err(dev->dev, "[%s:%d], Couldn't enable clock dmaclk\n",
-			__func__, __LINE__);
-		goto err_dmaclk;
-	}
-	return err;
-err_dmaclk:
-	clk_disable_unprepare(dev->hclk);
-err_hclk:
-	clk_disable_unprepare(dev->aclk);
-err_aclk:
-	clk_disable_unprepare(dev->sclk);
-err_return:
+	err = clk_bulk_prepare_enable(dev->num_clks, dev->clks);
+	if (err)
+		dev_err(dev->dev, "Could not enable clock clks\n");
+
 	return err;
 }
 
 static void rk_crypto_disable_clk(struct rk_crypto_info *dev)
 {
-	clk_disable_unprepare(dev->dmaclk);
-	clk_disable_unprepare(dev->hclk);
-	clk_disable_unprepare(dev->aclk);
-	clk_disable_unprepare(dev->sclk);
+	clk_bulk_disable_unprepare(dev->num_clks, dev->clks);
 }
 
 /*
@@ -266,27 +235,10 @@ static int rk_crypto_probe(struct platform_device *pdev)
 		goto err_crypto;
 	}
 
-	crypto_info->aclk = devm_clk_get(&pdev->dev, "aclk");
-	if (IS_ERR(crypto_info->aclk)) {
-		err = PTR_ERR(crypto_info->aclk);
-		goto err_crypto;
-	}
-
-	crypto_info->hclk = devm_clk_get(&pdev->dev, "hclk");
-	if (IS_ERR(crypto_info->hclk)) {
-		err = PTR_ERR(crypto_info->hclk);
-		goto err_crypto;
-	}
-
-	crypto_info->sclk = devm_clk_get(&pdev->dev, "sclk");
-	if (IS_ERR(crypto_info->sclk)) {
-		err = PTR_ERR(crypto_info->sclk);
-		goto err_crypto;
-	}
-
-	crypto_info->dmaclk = devm_clk_get(&pdev->dev, "apb_pclk");
-	if (IS_ERR(crypto_info->dmaclk)) {
-		err = PTR_ERR(crypto_info->dmaclk);
+	crypto_info->num_clks = devm_clk_bulk_get_all(&pdev->dev,
+						      &crypto_info->clks);
+	if (crypto_info->num_clks < 3) {
+		err = -EINVAL;
 		goto err_crypto;
 	}
 
diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/rockchip/rk3288_crypto.h
index ddbb9246ce16..28bf09fe1c1d 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.h
+++ b/drivers/crypto/rockchip/rk3288_crypto.h
@@ -190,10 +190,8 @@
 
 struct rk_crypto_info {
 	struct device			*dev;
-	struct clk			*aclk;
-	struct clk			*hclk;
-	struct clk			*sclk;
-	struct clk			*dmaclk;
+	struct clk_bulk_data		*clks;
+	int num_clks;
 	struct reset_control		*rst;
 	void __iomem			*reg;
 	int				irq;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
