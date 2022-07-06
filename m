Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBE6BC43334
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jul 2022 09:57:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iYqeSwn0PMkywmWB963Ul/zlgHEpKX8jXtl82zhBAGQ=; b=ae4gek0TVuJvLh
	la6TP3MfcsEtW5Ir8pIR6JaqrgTr+SnreUBiXlnpbHosqfkTX/5kSTZ3u6M9RWbJKHcHAM1pFRtSD
	Gebs0H1D4Gr6xu0s0F4uvi3MawM/LW6x9Wp144iWj5saWnl26vhO7erBIOSikb/PquI35XHGjTBYI
	YDr9wkMcLhpWf4BD/jclecYJPRV1Nuw7AdxUCNpXUw98/BQVyPXxN7+eqVlqRLvVBHmFA/iNE/HGN
	J/SCTrL9Iy7Q2bThpOe2wJz4BL+VyhK2qClgoJbaRsCb4H9OBnROwNl/+tzM7JuMEdmm7Wle2sTCz
	BWw/rvat2KfyHq+D5p/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o91mS-0081cr-FU; Wed, 06 Jul 2022 09:57:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o91Uy-007qIs-8M
	for linux-rockchip@bombadil.infradead.org; Wed, 06 Jul 2022 09:39:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=k3IddiKdhwAn8qAKW9Ise9jrX8X5WN4qU+7hTXJ6Zgw=; b=Wuqq2ZsECgZxye3ZvBYOAmoGOj
	FDQRznwrwIhYVGsXBIyKeIJvbkoX7e5zNYqqvsUK9pnzXcdwcEz/r8wEBuUKfMzmSP4NFH5SMzEtQ
	uS7MtYukwvhKFn/s9ZCT5ATzcZT8CRFyzTVvjdl9L5NfFkeGwb/Mz93yxyqihhELrrL0eXDCNISrH
	49gotWWdkBSiHQsVEWq32WXGsw0rxsreEF0N+E8WkEu2saX1mBu2tWwh/IvGrhuKuxBd5yJhwqGe+
	SPM48I95EOmSFn8JmFU9YpkTATvFWkU9mzAmDC3wbfiVZxKYvk40GpBo+KLqyQhyqxCfFoutXgq7p
	mIVDFLlg==;
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o90xk-000NIb-1G
	for linux-rockchip@lists.infradead.org; Wed, 06 Jul 2022 09:04:53 +0000
Received: by mail-wm1-x335.google.com with SMTP id g39-20020a05600c4ca700b003a03ac7d540so11170913wmp.3
        for <linux-rockchip@lists.infradead.org>; Wed, 06 Jul 2022 02:04:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=k3IddiKdhwAn8qAKW9Ise9jrX8X5WN4qU+7hTXJ6Zgw=;
        b=7WjXF0GDN3xQ0v+bTFX4uu+yaqnM4EnQeUBwb7RwOzEs/j5dN72bx//ztFHVFy/4E8
         xSuCBWyjezvO3ycJmIWMK9bJGhp3izvzS2iI0FkT3RF+J3mQmDsQCrRqbZ5r/xoQge7z
         qpfKJUjbsxtLF1eaovFYMynQlGHwU958LyS/+7x8jGjpifz7GaWmmtCD5cFe5m1ffwgF
         pHQu+NxzNhpKhDU2ssO/SMkigYVPusNTedTH7ynIckXwAUZ13BiHErMm2hjZaw16a6p6
         C3RIEg2QO2qu00vzW0FoDSzLhfrUugFqAeT7Jqs5ErV7FdDjYFWZV5lwbJAsnw6d9CcP
         l72g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=k3IddiKdhwAn8qAKW9Ise9jrX8X5WN4qU+7hTXJ6Zgw=;
        b=JOP+pZTntCStnTc5/kYk/nh3j4xLWw52t8I6x4pDeEb/icvi0+8UDOM3vZag3rD10i
         qrfefPluptAbEavlZhOeQg0A7+pCmFTNP+BtpWXF8/UjdHOFOXsc706rfwmLYAnf/Y7E
         Pks2u4vcpp3SRRZIOeunMqUqQUPHHQahtPu8Di3+5ZYhT2EOg1+fsMYDXafhRkiDuFOV
         qlyyT/o4TXP7pPDSvjj8UZPZTk8T2GELQEciAs8Up0JPvTBkJxbl0B+056QgAOk+AY6t
         /dh2nrZpTiqDCR7QMjb6O/cxHbz4aeITtHcwTrisM3OONXDK73VkG0IdRsvIQsu+5DFF
         tQ+g==
X-Gm-Message-State: AJIora/gKlqVuVGfMCkYj9lA/SfZWi0S7gOGnLb8ZTLIalgYsRvkK+q2
	rweIeD+95R3in4p7Ul+2Wk3j6g==
X-Google-Smtp-Source: AGRyM1vVHbQnK9eVYA/FZEipQU6Dk9G2Sv3HQTRjOv3M84zMVuw2s0ZmgNF9e6cuHsyrf+ErO6mnKA==
X-Received: by 2002:a05:600c:a18d:b0:3a0:2c9a:b3de with SMTP id id13-20020a05600ca18d00b003a02c9ab3demr40211045wmb.147.1657098286534;
        Wed, 06 Jul 2022 02:04:46 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v11-20020adfe28b000000b0021d6ef34b2asm5230223wri.51.2022.07.06.02.04.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 02:04:46 -0700 (PDT)
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
Subject: [PATCH v8 13/33] crypto: rockchip: introduce PM
Date: Wed,  6 Jul 2022 09:03:52 +0000
Message-Id: <20220706090412.806101-14-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220706090412.806101-1-clabbe@baylibre.com>
References: <20220706090412.806101-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_100449_454176_07561F5C 
X-CRM114-Status: GOOD (  19.29  )
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

Add runtime PM support for rockchip crypto.

Reviewed-by: John Keeping <john@metanate.com>
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
index 945a8184bbad..ddbb9246ce16 100644
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
index 91b8a4c574da..3bdb304aa794 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
@@ -454,6 +454,7 @@ static int rk_ablk_init_tfm(struct crypto_skcipher *tfm)
 	struct skcipher_alg *alg = crypto_skcipher_alg(tfm);
 	const char *name = crypto_tfm_alg_name(&tfm->base);
 	struct rk_crypto_tmp *algt;
+	int err;
 
 	algt = container_of(alg, struct rk_crypto_tmp, alg.skcipher);
 
@@ -471,7 +472,14 @@ static int rk_ablk_init_tfm(struct crypto_skcipher *tfm)
 
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
@@ -480,6 +488,7 @@ static void rk_ablk_exit_tfm(struct crypto_skcipher *tfm)
 
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
