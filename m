Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DC00C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 20:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=am0d7dAvmVbN3B9mNgn3tDUZI/nrPcc4u4WJXhN2+KA=; b=Aj+Z5A6/mVL/B6
	RVFEIpk7VW0KCsR76b4zeTkT3ivuyOQwoPnNIiKQU3kbTd3wqAGTDnZGXc6ppimY248QNq0ypPP0t
	9bHB8TugnB/7mtNwIas+r5dSlb/dtNt0bCRT/sCHzMbVxvCB088cy3IDwz972hom4MfbZlfndLyU5
	u72l+Z5k5PX2kiqmdEvJ58mubG14uGutGcJM0p5DAv57YFZMARsrHCUQI3R08yUDqWtL7C8j896VK
	hPoKFOHHMPv6isG4UtLOcB5bREWFkjOiUpT2S/FhSzpPc/MZKxcJriaaYW8vuMFJCHcmyldISRB+T
	+7DdSR2opwqef6K21gxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnnW2-00BM4Z-3Z; Sun, 08 May 2022 20:28:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnnW0-00BLwj-5M
 for linux-rockchip@bombadil.infradead.org; Sun, 08 May 2022 20:28:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=5M1EQ6WsDJDi9glkqW5UPCpOuBDX/AR7k6YyL2ZeXO8=; b=X6c1u6UDbLMD7OycF9q3svrOlv
 PxYh/0MVeKpEO39wQhPscSQLUKDT5gkEsbsgiGgv7MmUH7phoxO1G3rtxeZ3RdnMduEbjXqTUcwcR
 3+Ty4EuJ+WqNZfrsYS5HhYj+4Pcd1MLUBCx+vyu+xUVd037tahTpS0U6NErJrYbyfjEcMYI1GL52i
 BTePEvAdKN/xCbYOYqmo8Mla27BXp1w43uGmt8+XgVq31QyERshr5Zz9baYMPh/BOKYkXW+EYTlrS
 qAGP/pU5rrfGopI6aApTsmthAlyoTn+um9vu53WFL6OiGQW6gIbw0PVvERXQG+vt5Gz95LBVXmDsg
 4fEKPuag==;
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnm8z-00CL2y-4K
 for linux-rockchip@lists.infradead.org; Sun, 08 May 2022 19:00:39 +0000
Received: by mail-wr1-x429.google.com with SMTP id x18so16736797wrc.0
 for <linux-rockchip@lists.infradead.org>; Sun, 08 May 2022 12:00:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5M1EQ6WsDJDi9glkqW5UPCpOuBDX/AR7k6YyL2ZeXO8=;
 b=NaUL1fJ9dNzuI5Jf455221FYwiHqJbSrUg6Cr8H7njK5wQ1shzFvd4O7NaWTnoRybo
 +dSY4b6MiPf7kjrtO9BYRvX1xwu726mSLBscd7CEPqHzTC4+3Z/rfTa4iqtLpzhBupTu
 1j7NHx1IqVLNSi5+mTgWZt42qw2JS5Q1sZIVnTUzkKHN5U8zZ4MNqlJuSwT6t55wQ4Cn
 OGoNia1V6EuqZRBJgxvFvbUM9gRTWJ1fcitSo/Ev4ohwZwrJcFnwc7uRRVmgEF2Y5kC8
 T21l4yQZ0CDf4MGMaEO8y3ZPnDBAMrGkldh9KXlgWMG/5DIpYF+TwcjvR7A19tc+g7yG
 ceTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5M1EQ6WsDJDi9glkqW5UPCpOuBDX/AR7k6YyL2ZeXO8=;
 b=tncva4VuyHutIGjhrHUS7fBcCGjOLPVy7HQtmm1ewb6Az0BCXoA9fUTM/9Mf4BYU3X
 xUwPeJRYNIOWSXK5QsXuQUitd9tuIK6qdUhTkTMcp4H7/5U81+EOZdcknagvC5ZmVG2U
 3a3HipzdYCZFtg3KrzUR2kosi0R92noqe+DC4B0j3CV+rmknDVAmA2mqRHJw9763JDsp
 gUkv8ka6Hnukdz59+JGhJJhMEsBvbL5dxqIFsy6YDtEeJ3BzR6Qx/jfbbgEBM3XHwqYD
 6xafCcz7m/bNc/5cS4VsIr+nKuaLDeNng8oRBWp3li4uNvH2AJcNrt7Z1nve7GNx1bkO
 WvRw==
X-Gm-Message-State: AOAM531Rv11Fn7WzEvlKOitzsr3GtkCkdXdGZOdCkyFC77S+R5JOStE4
 kN0205hja/yBE13zx3mj63Avww==
X-Google-Smtp-Source: ABdhPJwHoO6/v7qhXSHVLfwK5JVdjLpSFmx/OlrusUUOn5AjN8ppbZvMherTicXWS6wK6J4TAhRb4w==
X-Received: by 2002:a05:6000:12d1:b0:20a:d901:3828 with SMTP id
 l17-20020a05600012d100b0020ad9013828mr10663209wrx.313.1652036436834; 
 Sun, 08 May 2022 12:00:36 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 n16-20020a05600c3b9000b00394699f803dsm10552348wms.46.2022.05.08.12.00.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 May 2022 12:00:36 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, ardb@kernel.org, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v7 30/33] crypto: rockchip: Check for clocks numbers and their
 frequencies
Date: Sun,  8 May 2022 18:59:54 +0000
Message-Id: <20220508185957.3629088-31-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220508185957.3629088-1-clabbe@baylibre.com>
References: <20220508185957.3629088-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_200037_767686_26D3E920 
X-CRM114-Status: GOOD (  20.33  )
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
 drivers/crypto/rockchip/rk3288_crypto.c | 75 +++++++++++++++++++++----
 drivers/crypto/rockchip/rk3288_crypto.h | 16 +++++-
 2 files changed, 79 insertions(+), 12 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index 6147ce44f757..d6d78b8af57c 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -14,10 +14,58 @@
 #include <linux/module.h>
 #include <linux/platform_device.h>
 #include <linux/of.h>
+#include <linux/of_device.h>
 #include <linux/clk.h>
 #include <linux/crypto.h>
 #include <linux/reset.h>
 
+static const struct rk_variant rk3288_variant = {
+	.num_clks = 4,
+	.rkclks = {
+		{ "sclk", 150000000},
+	}
+};
+
+static const struct rk_variant rk3328_variant = {
+	.num_clks = 3,
+};
+
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
@@ -196,8 +244,12 @@ static void rk_crypto_unregister(void)
 }
 
 static const struct of_device_id crypto_of_id_table[] = {
-	{ .compatible = "rockchip,rk3288-crypto" },
-	{ .compatible = "rockchip,rk3328-crypto" },
+	{ .compatible = "rockchip,rk3288-crypto",
+	  .data = &rk3288_variant,
+	},
+	{ .compatible = "rockchip,rk3328-crypto",
+	  .data = &rk3328_variant,
+	},
 	{}
 };
 MODULE_DEVICE_TABLE(of, crypto_of_id_table);
@@ -215,6 +267,15 @@ static int rk_crypto_probe(struct platform_device *pdev)
 		goto err_crypto;
 	}
 
+	crypto_info->dev = &pdev->dev;
+	platform_set_drvdata(pdev, crypto_info);
+
+	crypto_info->variant = of_device_get_match_data(&pdev->dev);
+	if (!crypto_info->variant) {
+		dev_err(&pdev->dev, "Missing variant\n");
+		return -EINVAL;
+	}
+
 	crypto_info->rst = devm_reset_control_get(dev, "crypto-rst");
 	if (IS_ERR(crypto_info->rst)) {
 		err = PTR_ERR(crypto_info->rst);
@@ -227,12 +288,9 @@ static int rk_crypto_probe(struct platform_device *pdev)
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
@@ -250,9 +308,6 @@ static int rk_crypto_probe(struct platform_device *pdev)
 		goto err_crypto;
 	}
 
-	crypto_info->dev = &pdev->dev;
-	platform_set_drvdata(pdev, crypto_info);
-
 	crypto_info->engine = crypto_engine_alloc_init(&pdev->dev, true);
 	crypto_engine_start(crypto_info->engine);
 	init_completion(&crypto_info->complete);
diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/rockchip/rk3288_crypto.h
index ff9fc25972eb..ac979d67ced9 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.h
+++ b/drivers/crypto/rockchip/rk3288_crypto.h
@@ -188,14 +188,26 @@
 #define CRYPTO_WRITE(dev, offset, val)	  \
 		writel_relaxed((val), ((dev)->reg + (offset)))
 
+#define RK_MAX_CLKS 4
+
+struct rk_clks {
+	const char *name;
+	unsigned long max;
+};
+
+struct rk_variant {
+	int num_clks;
+	struct rk_clks rkclks[RK_MAX_CLKS];
+};
+
 struct rk_crypto_info {
 	struct device			*dev;
 	struct clk_bulk_data		*clks;
-	int num_clks;
+	int				num_clks;
 	struct reset_control		*rst;
 	void __iomem			*reg;
 	int				irq;
-
+	const struct rk_variant *variant;
 	struct crypto_engine *engine;
 	struct completion complete;
 	int status;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
