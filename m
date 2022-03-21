Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AA05C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Mar 2022 20:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KtWW4uWDP/7zktX85zvy6jL/H/EfRkcaLafwUOUhb9s=; b=yyH0VTbuC0BODM
	RzUkHCxdL85Br/TYpE6dfY5U0c5TcGORZ11q+yeJkZdNt3gCU4lnpqcaULUTur2XjKpW/9erzmr+v
	JkDdZlLO5DoWyybpZCV7AnP3xtfuSBUvbAAbv6qnqs8N1H+YOGY+5IguslhfQd977PVmfMIKUghRv
	skva59EwD+6omO4Uvk26GSkte47/mVtTDTsk2JqDJ5gZwTvEv6jPQYM1ARLdcjiAm8+jFoJ/B3BKJ
	bmqFoKoC4AMIGJQYTf9CzssoA2sHiSzyJt+aehUudZ/RL6kl2o4Jk5HoJKg1hGH53VzUbPFxeJUDD
	myJ1xOhagnkrBcvUXZVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWOZU-00925a-UA; Mon, 21 Mar 2022 20:24:08 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWOK0-008tcq-RB
 for linux-rockchip@lists.infradead.org; Mon, 21 Mar 2022 20:08:16 +0000
Received: by mail-wr1-x42b.google.com with SMTP id v22so8308782wra.2
 for <linux-rockchip@lists.infradead.org>; Mon, 21 Mar 2022 13:08:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Y7w+zqe3BXjvjhchXa/pBa1pkRP5bMMQhUOTBznLw9o=;
 b=Ar1L+2wA/o0Q1EkoN38a9f7c73jKiqze4tO2slfF6d+t30zZ8dQqDCYQRkjeBh8Dsk
 hMqHjcCm501iWNMalE6VUn1bq4XXKr2jB6GfraCpwiy7Pqngk/r5jlkrzyKaYS3CJTPa
 /6KwzzhqH6cBSkf957di2qKLlZQ8uk0wLnwHw4WLAb2Df5e2DoRI0DH6F6msPQXwRlzH
 7Q5fLQXJV+jWxt05rCTdWUN912h2wBHsZ1wQZ6fN6sFNMOdVpwQCOTdaU4/gaGaHVwcb
 VARjhoj3Ln1MuUSNWL4eh1CE7CG5zxjF9+DVJ1X41IRPGjC87rthU+Dg4dTOeZnPh3IE
 HhcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Y7w+zqe3BXjvjhchXa/pBa1pkRP5bMMQhUOTBznLw9o=;
 b=zqWDE8lteCWHk0C0T5s9CW+L/LPJLmbCFI4MDT1yCIPeWG3cHbdyQYeXpZu4DKKNdH
 hlQk9ttSMG0CiCfs8FfXXb2zACMhJpTHFfAJCSu2VSAuXQuBCETWSQkcZ05MMZXNkxBx
 JN0g0nMGs/XvLrGBkzlXtg++rFHTdUV77QWjBFgE82k6ye3ZJGXjN0hWaxc2s+V3nNM9
 UHrn+JFEQxhCRIyvhiXZ3feDf4Y8M9xArRSkxxfSqNVsYRbOGj0+GWMf9yMOEVHxIcH6
 GKutDGAangtY3iqCWLmYJTgbzFcD4e9ixxvA201XkZnDsG2ZLmBmdMhqGYOuaI6jODX6
 esYQ==
X-Gm-Message-State: AOAM532xKqjWUUDeZkf2+SlrWkh09+NttPsVOZimBq25cBVjCW7whFMT
 P+8zOJKWvfO6PmVOnOw+ski/UQ==
X-Google-Smtp-Source: ABdhPJwsy1g21VlpFB3wtwTflfz/CG4Cqj1CkSmAuDpWHDVVKi6WMOpu+elSjE5RWqjHtlshh+yWHw==
X-Received: by 2002:adf:f20f:0:b0:203:fc73:a9a0 with SMTP id
 p15-20020adff20f000000b00203fc73a9a0mr12135240wro.418.1647893287604; 
 Mon, 21 Mar 2022 13:08:07 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 i14-20020a0560001ace00b00203da1fa749sm24426988wry.72.2022.03.21.13.08.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Mar 2022 13:08:07 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v3 23/26] crypto: rockchip: Check for maximum frequency of
 clocks
Date: Mon, 21 Mar 2022 20:07:36 +0000
Message-Id: <20220321200739.3572792-24-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220321200739.3572792-1-clabbe@baylibre.com>
References: <20220321200739.3572792-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_130808_932213_0DE6586F 
X-CRM114-Status: GOOD (  17.50  )
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

Rockchip's datasheet give maximum frequencies for some clocks, so add
checks for verifying they are within limits.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 57 +++++++++++++++++++++----
 drivers/crypto/rockchip/rk3288_crypto.h |  9 ++++
 2 files changed, 57 insertions(+), 9 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index bb1adbe947f9..ededae9f2671 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -21,16 +21,58 @@
 
 static const struct rk_variant rk3328_variant = {
 	.num_instance = 1,
+	.num_clks = 3,
 };
 
 static const struct rk_variant rk3288_variant = {
-	.num_instance = 1
+	.num_instance = 1,
+	.num_clks = 3,
+	.rkclks = {
+		{ "sclk", 150000000},
+	}
 };
 
 static const struct rk_variant rk3399_variant = {
-	.num_instance = 2
+	.num_instance = 2,
+	.num_clks = 6,
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
@@ -281,16 +323,13 @@ static int rk_crypto_probe(struct platform_device *pdev)
 		goto err_crypto;
 	}
 
-	crypto_info->num_clks = devm_clk_bulk_get_all(&pdev->dev,
-			&crypto_info->clks);
-	if (crypto_info->num_clks < 3) {
-		err = -EINVAL;
-		goto err_crypto;
-	}
-
 	crypto_info->dev = &pdev->dev;
 	platform_set_drvdata(pdev, crypto_info);
 
+	err = rk_crypto_get_clks(crypto_info);
+	if (err)
+		goto err_crypto;
+
 	err = rk_crypto_pm_init(crypto_info);
 	if (err)
 		goto err_pm;
diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/rockchip/rk3288_crypto.h
index e1dac351bc64..8fd46cda5189 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.h
+++ b/drivers/crypto/rockchip/rk3288_crypto.h
@@ -183,8 +183,17 @@
 #define RK_CRYPTO_HASH_DOUT_6		0x01a4
 #define RK_CRYPTO_HASH_DOUT_7		0x01a8
 
+#define RK_MAX_CLKS 6
+
+struct rk_clks {
+	const char *name;
+	unsigned long max;
+};
+
 struct rk_variant {
 	int num_instance;
+	int num_clks;
+	struct rk_clks rkclks[RK_MAX_CLKS];
 };
 
 struct rk_instance {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
