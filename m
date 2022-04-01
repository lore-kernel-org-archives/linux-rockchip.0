Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B05DC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Apr 2022 20:35:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gX1L8oThqqYKIjThnc6e+bcs8WMIpwNHbLm8fuFwVXU=; b=AtTylRZkrFcieH
	rVCoi+YzsbIFNtWswK4fmTh1w2xYVk4mcsxBf2DFUcsSPp5CpW1SKIgB7bAIormSNbdr540mLaNv5
	Wz00+U4e/Iu75vwIcrs0un/G8JyOTjDbyVgoqFlocdR4sBCiK7KpzA20r1W+GTF4qLZ2Y3OMfw9Fh
	oRgjCEeM4xcdrwb1jrvQpvjkwHTivj78ncjmGbe6T2IzIUBEkB8ADNa9YqImBDDCC64v4/aFW/juo
	MtM3Hh1qDX9ncZQ3WUKV5K4GUTcHGdl47Ztzo1Ken1QS3itZVZZZz+ISTwPBGwKGhYeUrUnnpub1+
	gpzhSrp/jaDAgcuyUEpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naNzD-007DNY-7t; Fri, 01 Apr 2022 20:35:11 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naNjA-0075BB-2k
 for linux-rockchip@lists.infradead.org; Fri, 01 Apr 2022 20:18:38 +0000
Received: by mail-wr1-x431.google.com with SMTP id j18so5800951wrd.6
 for <linux-rockchip@lists.infradead.org>; Fri, 01 Apr 2022 13:18:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4CfXM7leMN5pRFOjPHWHxGcJrApetL12geqzG0hLkdA=;
 b=xgTbv0BySELvx8Y6w1muFk/fSYXMJa+Ne1fthEts2plXS8pZu/NuZSx5P8+V5wIg+D
 n8UVA2MVIvhx9nfmseXaju/85nmFurPxGG//0WdLCecD62vejPXRW8CqUQrrL6fG0+VZ
 0+2f0vlHwtMaoV9YK5EM37kv26mif+jrfbWTVHHw1sxZj9ShApITGr1AuqZtg72gGrGi
 Kh5Ki1YJC+k2oFvkaGa25mQguTTrXVBkPtxPFpKZsnDcTSizxfQTCmpManurk2GVZ89F
 aaaC+ewHiIfQsmDUGSg6oiwzjTbKbAnhsefDal7jnShyMmml64ASz/BYNntU4d/Z5LSr
 fyfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4CfXM7leMN5pRFOjPHWHxGcJrApetL12geqzG0hLkdA=;
 b=1SyeSu2SN9SiBAgpXI+3Ojn30F88jIQ9r3jr6WkZ/di69TKfKfBYFqWBOIxZ3M2GXZ
 B8rQ51DpHAJnIRYr1oZpaZ7W5cNdWz+OgXrau5sC0hXhd/+jfzEKA4AnaSTj/6a1n48n
 H89zyVHcLqw8BrRAA2ihyUgcWbi1ofcEtyJTvuK2L4YDtU28lgoKuAUdFAlR4OKotTMD
 Fkm/ZvnMR0S8zzJW5BJ8az+A3NmG0gV4F3w3JAiTXNLHzQ3VxbPiq2n9FlrBk3Y3Fnc2
 XijSsQFaJbX8ddnZji3E60nWlYfNU9i0iVMQAFhDaXmEiLoFcD9s1KK7/SjG5zxnBFE2
 JqHg==
X-Gm-Message-State: AOAM5302wiik772R6SpSiP2KQClLGS9PAsgd/7S/hWe5Q1+JfJYsdn2E
 K7bcuXiIKy0OE0xZH6y/gtWPZA==
X-Google-Smtp-Source: ABdhPJwL0g8nYklbcJJtem7pvN8rmEB5bnkJhEB8bG5p00EedbdcmqrsBo0vMQsd6IexZoar32yoIw==
X-Received: by 2002:adf:eb4d:0:b0:1ed:c1f7:a951 with SMTP id
 u13-20020adfeb4d000000b001edc1f7a951mr8648367wrn.454.1648844314873; 
 Fri, 01 Apr 2022 13:18:34 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 j16-20020a05600c191000b0038ca3500494sm17823838wmq.27.2022.04.01.13.18.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Apr 2022 13:18:34 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v4 33/33] crypto: rockchip: Check for clocks numbers and their
 frequencies
Date: Fri,  1 Apr 2022 20:18:04 +0000
Message-Id: <20220401201804.2867154-34-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220401201804.2867154-1-clabbe@baylibre.com>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_131836_167014_7214F38A 
X-CRM114-Status: GOOD (  19.05  )
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

Add the number of clocks needed for each compatible.
Rockchip's datasheet give maximum frequencies for some clocks, so add
checks for verifying they are within limits. Let's start with rk3288 for
clock frequency check, other will came later.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 56 +++++++++++++++++++++----
 drivers/crypto/rockchip/rk3288_crypto.h |  9 ++++
 2 files changed, 57 insertions(+), 8 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index 89a6aa65d2c1..f759ed7160d0 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -29,20 +29,63 @@ static struct rk_crypto_info *main;
 
 static const struct rk_variant rk3288_variant = {
 	.main = true,
+	.num_clks = 4,
+	.rkclks = {
+		{ "sclk", 150000000},
+	}
 };
 
 static const struct rk_variant rk3328_variant = {
 	.main = true,
+	.num_clks = 3,
 };
 
 static const struct rk_variant rk3399_variant0 = {
 	.main = true,
+	.num_clks = 3,
 };
 
 static const struct rk_variant rk3399_variant1 = {
 	.sub = true,
+	.num_clks = 3,
 };
 
+static int rk_crypto_get_clks(struct rk_crypto_info *dev)
+{
+	int i, j, err;
+	unsigned long cr;
+
+	dev->num_clks = devm_clk_bulk_get_all(dev->dev, &dev->clks);
+	if (dev->num_clks < dev->variant->num_clks) {
+		dev_err(dev->dev, "Missing clocks, got %d instead of %d\n",
+			dev->num_clks, dev->variant->num_clks);
+		return -EINVAL;
+	}
+
+	for (i = 0; i < dev->num_clks; i++) {
+		cr = clk_get_rate(dev->clks[i].clk);
+		for (j = 0; j < ARRAY_SIZE(dev->variant->rkclks); j++) {
+			if (dev->variant->rkclks[j].max == 0)
+				continue;
+			if (strcmp(dev->variant->rkclks[j].name, dev->clks[i].id))
+				continue;
+			if (cr > dev->variant->rkclks[j].max) {
+				err = clk_set_rate(dev->clks[i].clk,
+						   dev->variant->rkclks[j].max);
+				if (err)
+					dev_err(dev->dev, "Fail downclocking %s from %lu to %lu\n",
+						dev->variant->rkclks[j].name, cr,
+						dev->variant->rkclks[j].max);
+				else
+					dev_info(dev->dev, "Downclocking %s from %lu to %lu\n",
+						 dev->variant->rkclks[j].name, cr,
+						 dev->variant->rkclks[j].max);
+			}
+		}
+	}
+	return 0;
+}
+
 static int rk_crypto_enable_clk(struct rk_crypto_info *dev)
 {
 	int err;
@@ -266,6 +309,9 @@ static int rk_crypto_probe(struct platform_device *pdev)
 		goto err_crypto;
 	}
 
+	crypto_info->dev = &pdev->dev;
+	platform_set_drvdata(pdev, crypto_info);
+
 	crypto_info->variant = of_device_get_match_data(&pdev->dev);
 	if (!crypto_info->variant) {
 		dev_err(&pdev->dev, "Missing variant\n");
@@ -289,12 +335,9 @@ static int rk_crypto_probe(struct platform_device *pdev)
 		goto err_crypto;
 	}
 
-	crypto_info->num_clks = devm_clk_bulk_get_all(&pdev->dev,
-						      &crypto_info->clks);
-	if (crypto_info->num_clks < 3) {
-		err = -EINVAL;
+	err = rk_crypto_get_clks(crypto_info);
+	if (err)
 		goto err_crypto;
-	}
 
 	crypto_info->irq = platform_get_irq(pdev, 0);
 	if (crypto_info->irq < 0) {
@@ -312,9 +355,6 @@ static int rk_crypto_probe(struct platform_device *pdev)
 		goto err_crypto;
 	}
 
-	crypto_info->dev = &pdev->dev;
-	platform_set_drvdata(pdev, crypto_info);
-
 	crypto_info->engine = crypto_engine_alloc_init(&pdev->dev, true);
 	crypto_engine_start(crypto_info->engine);
 	init_completion(&crypto_info->complete);
diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/rockchip/rk3288_crypto.h
index 5662a1491a9e..b49bdc7541b1 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.h
+++ b/drivers/crypto/rockchip/rk3288_crypto.h
@@ -188,9 +188,18 @@
 #define CRYPTO_WRITE(dev, offset, val)	  \
 		writel_relaxed((val), ((dev)->reg + (offset)))
 
+#define RK_MAX_CLKS 4
+
+struct rk_clks {
+	const char *name;
+	unsigned long max;
+};
+
 struct rk_variant {
 	bool main;
 	bool sub;
+	int num_clks;
+	struct rk_clks rkclks[RK_MAX_CLKS];
 };
 
 struct rk_crypto_info {
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
