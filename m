Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4910C07E9D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 09:08:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iYqeSwn0PMkywmWB963Ul/zlgHEpKX8jXtl82zhBAGQ=; b=1sxElpTEqr7Hms
	pTeBVeU96YcKhOKZwqSYWirGYwNIB6TtP5Rsi+eXKiKa4gJPaffJAi61AQXzwEkCxcd7Xl/x4+4bo
	8SP7ACYNawDTHLxUGu68/nBdHA3e47MRnX67XKrkJt044noN3bRTcZQTm2PlJKwwmV5M1yZmP9j51
	1sn8ME/oWnHhs6rVhPhy/YCzDLDV+RXhUGxW6A2NcGjCPqa6D8Ihjr7nQViRquMXZpsEsuoBtaD6s
	dRWetXEJ3WEf6XtETvUbBiq6jwz319WdvF5jcxHzrdrycL2Pcezk7lwo78bBWVAs3Vi8rud3h+0eL
	RuSv7Du1KPaKlf5ByKsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od6Z1-009OQO-1B; Tue, 27 Sep 2022 09:07:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od6V9-009ML8-D2
	for linux-rockchip@bombadil.infradead.org; Tue, 27 Sep 2022 09:03:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=k3IddiKdhwAn8qAKW9Ise9jrX8X5WN4qU+7hTXJ6Zgw=; b=Ype0CETpoOghqF4RaN40nAerR1
	/xZBPhpdHVLrMj4gv1ztQyyhcecJTu2btsDWCKB9gfMBAzYDPCEWzvIZ4CmEwPRXsRRbSmU5JxVmS
	+TFxb/f0iaG8fcf5cIMS2bz3R9BgQTCgqp8vfIvdWWnqEmmpoPR2DeIb+tfpkFydiIxmMa2JF5u8+
	f9tzmOcZVRWAQelRFJC/Z4q69Mivkf2mhQrrniawWt8dvmgd+u8RzKUEw2VOJvj576KUmbGY+bhhF
	V9IXbeE62h3hcxau6kJahqWAvvvmE5hjfGwhHLTKWLwILdKAaXI5mboCw9U2ViYq82C5fP0xXNNrb
	B/9xsfbw==;
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5RW-00GEl7-Gq
	for linux-rockchip@lists.infradead.org; Tue, 27 Sep 2022 07:55:56 +0000
Received: by mail-wm1-x32a.google.com with SMTP id o5so6000082wms.1
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Sep 2022 00:55:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=k3IddiKdhwAn8qAKW9Ise9jrX8X5WN4qU+7hTXJ6Zgw=;
        b=1dStpo4HzhMoMbxjDkUb3bFnlbEQP+ZlShuzex9XwYN99ohVGGmJM4OZtJpApjRO8g
         ZSLliG5Kub4MOCEv5uY65BMYSMMGUVJ5seRgCIMkwq3oUaFX/Qu686MqgjODb1nS6wQm
         5Pd97Ier9gEjeA0PXdwyZwxsGba3y6quMV620yiRvDebBQxXkGDK57k0UNjeVKGm0IlM
         m9yIPjkQpqdjuHmxo18GLGYPKgF5imJRhSBqZlt5bIahYdCMLp93cYnumb5szL4C59Mm
         iRmAb2bNNF6nUeNM3B04Kz0mlTGJA4sGe4GyDpYUrvUDTqAVWJnffSQRBxhYeVByndp2
         Lrxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=k3IddiKdhwAn8qAKW9Ise9jrX8X5WN4qU+7hTXJ6Zgw=;
        b=4BBJSAJNjf27+BvlKXLoFw5IUjimGLhWDkK//sOcg0XHikQ7XbxTM9Vu7lhPjoVLMW
         j7C09IDtKMUW/2s9yIM3u/UVdp17e7pjUMY9ry3KWkinVCNHIbK8FEyvu/vejMfxMTNV
         yxrcg9i4/ecOVtLe0PXhvTCAXfFsTv1uRBB6WsulSRqZS9eiw4ByAhtvxa7/WQcqnQrW
         7qI/xSn/7nh3it4IQ+kbWBVTaLkDdepQ1ZrvntO7Q+OLxH8HeksypW/52sSQrAjiK4TN
         ZZlhJN+uJQUBDD+Ffz+xugmkWAdMS0w9MV4wYsod1xjFd7VfERhAHqoQ9PFSJ+bpIBSk
         H5pg==
X-Gm-Message-State: ACrzQf0TrIVXVTam2T7WFvu0UOMitkiWMKEeAzQqj47bl2PsFJJ4lneg
	91SGoPxWuHhxCjVXaf/sK2xXuA==
X-Google-Smtp-Source: AMsMyM4vYXm9vml7hwC/BmH70eNQHE64Uecz5pGbpe9kPxs2Az79Q1eu5C/yIXPlf3NJwTTX0tOceQ==
X-Received: by 2002:a05:600c:46c6:b0:3b4:d069:913f with SMTP id q6-20020a05600c46c600b003b4d069913fmr1607696wmo.27.1664265347653;
        Tue, 27 Sep 2022 00:55:47 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id x8-20020adfdcc8000000b0022afbd02c69sm1076654wrm.56.2022.09.27.00.55.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 00:55:47 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	ardb@kernel.org,
	davem@davemloft.net,
	herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Corentin Labbe <clabbe@baylibre.com>,
	John Keeping <john@metanate.com>
Subject: [PATCH v10 13/33] crypto: rockchip: introduce PM
Date: Tue, 27 Sep 2022 07:54:51 +0000
Message-Id: <20220927075511.3147847-14-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220927075511.3147847-1-clabbe@baylibre.com>
References: <20220927075511.3147847-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_085551_218705_9D847D91 
X-CRM114-Status: GOOD (  19.67  )
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
