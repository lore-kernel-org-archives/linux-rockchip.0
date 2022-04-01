Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34BAFC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Apr 2022 20:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q0YZeuBuLEkgbGoKcUm7sKCNWETavwYQBLD4VTgljV0=; b=r+49Xpdgn6d5Kk
	2bZ5V9TaSrCNdH59uV81YH62oD+gSzXyvFdtVSxrg+GWgpqxRAdqZvO3hOp8yMXDsNWEOsZau9QPs
	2ykCJy3xkXp0FqVZZjt1XtPwR/SDTA+Q6zV1PKjrQU2y2vJZn7g4UX+kgFtCZax2+nRmro1hm0X4n
	TgNaJZTBa+pZ0SgjHawgMO1OPbnyRd9wEC6kLzB95JegGK//nNl9UeygKqjKe9dM56pVnMLLNh54n
	EVx3vdGKX5Lcl32l0cHSQj3EAaoKhUb/5IYzc3Kca1MF6N5CvV599oYrrseAnpJP9RaqRE2CfLc97
	I4afLkpwStaP1lu3NoWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naOFG-007KdL-50; Fri, 01 Apr 2022 20:51:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naODP-007IwW-CQ
 for linux-rockchip@bombadil.infradead.org; Fri, 01 Apr 2022 20:49:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=xTqOlfauoDMfSsktjhcUkKoseBz3IdfqxDYnQJsUj0Y=; b=bPUaOE0gEUdFo1qdI4xvM0LTaH
 QLS5D6pHBH6KKM3iI/f6bx/sk8c/giruwKQFFvnpK0TscXehJfgrUIl0hQbToSLbgywf25jJAxBCT
 5UStO/bGfz1yXBEiQRh68VeTr7hKtdFx0Mggd0mdvDnq5h6JD+b2/A3pngw9wt3miTJMQU1iRP3hS
 RsKLXniuu7wdNMb7Pqr4JIpU5dW7DwkKTj4+qxlQjW0MoX8/qzYu8y42sboqB3nad5h+Yhr7A17sW
 LHML330e6k9FKHIggF9ODY9mXhbG6XT/X9boIaQZwtJ6o9744+RrBSVw3Z76qsMP/zGxC1/15Pg/T
 U6ipR9Dw==;
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naNiw-000f7S-3B
 for linux-rockchip@lists.infradead.org; Fri, 01 Apr 2022 20:18:27 +0000
Received: by mail-wr1-x42c.google.com with SMTP id a1so5764382wrh.10
 for <linux-rockchip@lists.infradead.org>; Fri, 01 Apr 2022 13:18:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xTqOlfauoDMfSsktjhcUkKoseBz3IdfqxDYnQJsUj0Y=;
 b=NFofBZETD7/ZI9ttHOYpu+qqFBIbShpTrhOQ11HMIMfxdQnROA3rRrkhL/41hBJW6g
 zdBVT+H62fWpENNc5sbPhFO9gHCAaFd1l3k87TU1Wur5TgRN67LQ6rNsNQad5GMewQAT
 RFAvyhFVA3cCUAjhQOG/XRbvXKdd7Vv4jM+ZnDy2iPDnEzmHIRWqYefVqlLzHHTAKctb
 jc+ZNXRxt+gi/OKWXuurr5CXlJD2z7+9OG3CUPSv29EcXwFkVJBOH8sy3SZlgxRpjhy7
 SlJXJppHbSZe8r9WcsmlUpAbO35z8vfw8wszQcHBGR1AhhVvvqh6Oz8WFbMJ49uv2IpG
 QqCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xTqOlfauoDMfSsktjhcUkKoseBz3IdfqxDYnQJsUj0Y=;
 b=c8x0Gyn2FkXqWFs8eXFSCUr5whPvVypp+gU2wI0y6/czcDHzL0MAserjrTq1gI66Y1
 q6wm4kn3M+R2D4eMbnpl0Q5nmv/TAlc9LcdEPePBuc+kCNFd29haP7GlNzsqWZn4E7Pq
 bUDFeIXDkqSB3hOXYaziMj9W5WGARaLxzYeaPDsdQKD0Aevjrjsw266zU5YU1vd6FamG
 Dw0Tw7elx5Y/FSHL3KMLdvBnWnL8WzagrBBAPWKCZAG/i7VA6x5T1T+FGeG4/YOzzMLX
 3INs895RA/XGkBIE13ivFZmUF/Js3YiyP3RgEm9cx2IuKXbzjU2l+fAof+Ct9WU5Lf6m
 Ii4Q==
X-Gm-Message-State: AOAM5310cYE7ivepWhOxG5WQws9CwBmnhc+Y77UpB+6SGjLXkaLYNI3k
 Yb0DFALJkJKY9n+KmPtVgKYp6Q==
X-Google-Smtp-Source: ABdhPJw+HhUOMUtlEzf9Nd3KThbMgE5o9QwmzDyEM+hHZQLflqUTiyEw2R1CYljeadt7eKBJCI9WFg==
X-Received: by 2002:adf:eb88:0:b0:205:e113:dcb5 with SMTP id
 t8-20020adfeb88000000b00205e113dcb5mr8747955wrn.598.1648844300425; 
 Fri, 01 Apr 2022 13:18:20 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 j16-20020a05600c191000b0038ca3500494sm17823838wmq.27.2022.04.01.13.18.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Apr 2022 13:18:20 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v4 13/33] crypto: rockchip: introduce PM
Date: Fri,  1 Apr 2022 20:17:44 +0000
Message-Id: <20220401201804.2867154-14-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220401201804.2867154-1-clabbe@baylibre.com>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_211825_177774_9CCBD646 
X-CRM114-Status: GOOD (  19.57  )
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

Add runtime PM support for rockchip crypto.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c       | 51 ++++++++++++++++++-
 drivers/crypto/rockchip/rk3288_crypto.h       |  1 +
 drivers/crypto/rockchip/rk3288_crypto_ahash.c | 10 ++++
 .../crypto/rockchip/rk3288_crypto_skcipher.c  |  9 ++++
 4 files changed, 69 insertions(+), 2 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index 3e1b4f3b2422..d9258b9e71b3 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -65,6 +65,48 @@ static void rk_crypto_disable_clk(struct rk_crypto_info *dev)
 	clk_disable_unprepare(dev->sclk);
 }
 
+/*
+ * Power management strategy: The device is suspended unless a TFM exists for
+ * one of the algorithms proposed by this driver.
+ */
+static int rk_crypto_pm_suspend(struct device *dev)
+{
+	struct rk_crypto_info *rkdev = dev_get_drvdata(dev);
+
+	rk_crypto_disable_clk(rkdev);
+	return 0;
+}
+
+static int rk_crypto_pm_resume(struct device *dev)
+{
+	struct rk_crypto_info *rkdev = dev_get_drvdata(dev);
+
+	return rk_crypto_enable_clk(rkdev);
+}
+
+static const struct dev_pm_ops rk_crypto_pm_ops = {
+	SET_RUNTIME_PM_OPS(rk_crypto_pm_suspend, rk_crypto_pm_resume, NULL)
+};
+
+static int rk_crypto_pm_init(struct rk_crypto_info *rkdev)
+{
+	int err;
+
+	pm_runtime_use_autosuspend(rkdev->dev);
+	pm_runtime_set_autosuspend_delay(rkdev->dev, 2000);
+
+	err = pm_runtime_set_suspended(rkdev->dev);
+	if (err)
+		return err;
+	pm_runtime_enable(rkdev->dev);
+	return err;
+}
+
+static void rk_crypto_pm_exit(struct rk_crypto_info *rkdev)
+{
+	pm_runtime_disable(rkdev->dev);
+}
+
 static irqreturn_t rk_crypto_irq_handle(int irq, void *dev_id)
 {
 	struct rk_crypto_info *dev  = platform_get_drvdata(dev_id);
@@ -273,7 +315,9 @@ static int rk_crypto_probe(struct platform_device *pdev)
 	crypto_engine_start(crypto_info->engine);
 	init_completion(&crypto_info->complete);
 
-	rk_crypto_enable_clk(crypto_info);
+	err = rk_crypto_pm_init(crypto_info);
+	if (err)
+		goto err_pm;
 
 	err = rk_crypto_register(crypto_info);
 	if (err) {
@@ -294,6 +338,8 @@ static int rk_crypto_probe(struct platform_device *pdev)
 	return 0;
 
 err_register_alg:
+	rk_crypto_pm_exit(crypto_info);
+err_pm:
 	crypto_engine_exit(crypto_info->engine);
 err_crypto:
 	dev_err(dev, "Crypto Accelerator not successfully registered\n");
@@ -308,7 +354,7 @@ static int rk_crypto_remove(struct platform_device *pdev)
 	debugfs_remove_recursive(crypto_tmp->dbgfs_dir);
 #endif
 	rk_crypto_unregister();
-	rk_crypto_disable_clk(crypto_tmp);
+	rk_crypto_pm_exit(crypto_tmp);
 	crypto_engine_exit(crypto_tmp->engine);
 	return 0;
 }
@@ -318,6 +364,7 @@ static struct platform_driver crypto_driver = {
 	.remove		= rk_crypto_remove,
 	.driver		= {
 		.name	= "rk3288-crypto",
+		.pm		= &rk_crypto_pm_ops,
 		.of_match_table	= crypto_of_id_table,
 	},
 };
diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/rockchip/rk3288_crypto.h
index f85144e3d124..6a1f09d409bf 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.h
+++ b/drivers/crypto/rockchip/rk3288_crypto.h
@@ -9,6 +9,7 @@
 #include <linux/interrupt.h>
 #include <linux/debugfs.h>
 #include <linux/delay.h>
+#include <linux/pm_runtime.h>
 #include <linux/scatterlist.h>
 #include <crypto/engine.h>
 #include <crypto/internal/hash.h>
diff --git a/drivers/crypto/rockchip/rk3288_crypto_ahash.c b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
index 8856c6226be6..137013bd4410 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_ahash.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
@@ -328,6 +328,7 @@ static int rk_cra_hash_init(struct crypto_tfm *tfm)
 	struct ahash_alg *alg = __crypto_ahash_alg(tfm->__crt_alg);
 
 	const char *alg_name = crypto_tfm_alg_name(tfm);
+	int err;
 
 	algt = container_of(alg, struct rk_crypto_tmp, alg.hash);
 
@@ -349,7 +350,15 @@ static int rk_cra_hash_init(struct crypto_tfm *tfm)
 	tctx->enginectx.op.prepare_request = rk_hash_prepare;
 	tctx->enginectx.op.unprepare_request = rk_hash_unprepare;
 
+	err = pm_runtime_resume_and_get(tctx->dev->dev);
+	if (err < 0)
+		goto error_pm;
+
 	return 0;
+error_pm:
+	crypto_free_ahash(tctx->fallback_tfm);
+
+	return err;
 }
 
 static void rk_cra_hash_exit(struct crypto_tfm *tfm)
@@ -357,6 +366,7 @@ static void rk_cra_hash_exit(struct crypto_tfm *tfm)
 	struct rk_ahash_ctx *tctx = crypto_tfm_ctx(tfm);
 
 	crypto_free_ahash(tctx->fallback_tfm);
+	pm_runtime_put_autosuspend(tctx->dev->dev);
 }
 
 struct rk_crypto_tmp rk_ahash_sha1 = {
diff --git a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
index 4ff08238156b..8d3a60db0cf6 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
@@ -466,6 +466,7 @@ static int rk_ablk_init_tfm(struct crypto_skcipher *tfm)
 	struct skcipher_alg *alg = crypto_skcipher_alg(tfm);
 	const char *name = crypto_tfm_alg_name(&tfm->base);
 	struct rk_crypto_tmp *algt;
+	int err;
 
 	algt = container_of(alg, struct rk_crypto_tmp, alg.skcipher);
 
@@ -483,7 +484,14 @@ static int rk_ablk_init_tfm(struct crypto_skcipher *tfm)
 
 	ctx->enginectx.op.do_one_request = rk_cipher_run;
 
+	err = pm_runtime_resume_and_get(ctx->dev->dev);
+	if (err < 0)
+		goto error_pm;
+
 	return 0;
+error_pm:
+	crypto_free_skcipher(ctx->fallback_tfm);
+	return err;
 }
 
 static void rk_ablk_exit_tfm(struct crypto_skcipher *tfm)
@@ -492,6 +500,7 @@ static void rk_ablk_exit_tfm(struct crypto_skcipher *tfm)
 
 	memzero_explicit(ctx->key, ctx->keylen);
 	crypto_free_skcipher(ctx->fallback_tfm);
+	pm_runtime_put_autosuspend(ctx->dev->dev);
 }
 
 struct rk_crypto_tmp rk_ecb_aes_alg = {
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
