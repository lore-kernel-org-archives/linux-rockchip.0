Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDBDAC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 20:35:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MHeEZI9y4dqTWAGWVRbft0dY3WkLwR8vW/49bLBlS+s=; b=pSA/TCFK3WwoqD
	itBRSWV+XzVgkEDMgzY42gc1ycKE2UuM9p+I64hLUm2djTPA5KvrlgC/9x4r59JGGDWJsK4lr7EdE
	HdBcB4zWDdQkzkPTx8NyWnR2eVqVkfuT+EtCGIVHr0Dmxd17QIVeHloJRXxcjxjEYliuJ3SsAH/Bz
	6UQuUeMjnZn7VfnI37S+D6suPaH1H3iyDUAzJUFXUCcZg5YV0goW3wVM0YNsBBSoxh+V/sU3jFpPE
	iYMRE55UIF1uXy+rjCzy8re/+DRMSVbFjsoo50k7sPo15YwDLPlwoAfvxZpeijNa9ti/ZcQOwwf1J
	+JVjHP9FJINnjFBvHJLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnncs-00BQJF-N0; Sun, 08 May 2022 20:35:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnnWH-00BLwj-Mh
 for linux-rockchip@bombadil.infradead.org; Sun, 08 May 2022 20:28:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=14i+SOudfJbJ9v02t/NcQA5xEDzCR2m7kQoedfmFeDE=; b=J/DVRg+sefjvy1mf2NbmMPo0sV
 c45oxjynel7Knq8FM1jaUISITj9yn79faYgkRDe2ClVj/sbdfMeT4YZsSGRLWfDC9Jw6oRIp5vAKO
 8QTkicEhlQ4FuStwh5vqa3gTcHSJ8av5Z4CXpEy3J/LTVHMyDnVvQHycNqhqD75MSCRdH2mcXvEsy
 xmb40u7syNIGuBVEiu/qGx7vfUD1p7hHI2SgdPcHNS0Puzj0Dw4zHRKkBu1UnzEp/8navIH+GNVRe
 EzjYtVcarSSK7QOxlPnkyZ6P+9bCPNwinAyxym2u+t3l7a5QMqiEUawPTsee48OvKNpVVWOucfbG0
 Ykej+iDQ==;
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnm8i-00CL3V-8p
 for linux-rockchip@lists.infradead.org; Sun, 08 May 2022 19:00:23 +0000
Received: by mail-wr1-x42a.google.com with SMTP id c11so16689301wrn.8
 for <linux-rockchip@lists.infradead.org>; Sun, 08 May 2022 12:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=14i+SOudfJbJ9v02t/NcQA5xEDzCR2m7kQoedfmFeDE=;
 b=wnnwshW4dOSiYKfQQTb2qz3zPZSsWxe0D21l1bMV18jcC3UBFcvVcc1927f1trRw4C
 ESNoOOCqsSUm4lTNVlnDCWm+EDKXzXuCbPfB7wzT1UQ2JWoatSTePNBAJXJr9tMjY6bG
 H+3CZhasLh/mUSy5045daQjRGACUaIn73XXvjFE7jXexKi11PPh6oc2YImvfjltolPW5
 JCSkrkXFaGKwJfBWPF6rRU+YX9wbbjYXY/JJYVGnlsvc80/FV3O2YLFfmxFaYcdgYInE
 dw8ufODKByJ0+OKvJ6LUOPGWo7lmTAT3B+twHTFfsZCtKaiZUDpekLt8HiYaIA16Dl+C
 xZkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=14i+SOudfJbJ9v02t/NcQA5xEDzCR2m7kQoedfmFeDE=;
 b=16MixGHHumRTpIXsCFU75nRallmhtS9DLot7jwIqQGTfdqWi2YO4j2fnbV5A9BFLYq
 K7cvIiXmEpj55SoMDv0wa4mvVGxI1fsmOkhjGXqjQ87W0tWzd/ezc8FCjsRp6rnAFzps
 LW4ssYa2EvuBrr9u42DWpLLHHw5nSXtwmCmCRHnCmgv1yJMjiTY0qaD3bWqfOCiJG5Eg
 vd2V76ooTUB8c7WLADngdn/EdWBFN9cof1ffUYL4/tnQ+UpXbMQqEZyfDRJskzBHPbiT
 KzPzb2pM7tDX1Pl9wc8V3hqYwk6C/5sp3MQ7nQ1AqmMYJwgLqrx5n6BSmSySbtRSk/fC
 tRkQ==
X-Gm-Message-State: AOAM530gNxy8pRXSem+45uaQxeXzSI922Jp93BoMF4VvCMy2IiZ2Q2vQ
 o3V7OE96ot81Bj5WISyUmuei+w==
X-Google-Smtp-Source: ABdhPJx0RBlo6uOQr4wpBgkdXmLtnJ0tHUDM/ix1FrFeMF/NhVjbQEhdDHWAlNvAAXd8qlVLb98JXw==
X-Received: by 2002:a5d:4008:0:b0:20a:ea86:e101 with SMTP id
 n8-20020a5d4008000000b0020aea86e101mr11115863wrp.141.1652036418701; 
 Sun, 08 May 2022 12:00:18 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 n16-20020a05600c3b9000b00394699f803dsm10552348wms.46.2022.05.08.12.00.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 May 2022 12:00:18 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, ardb@kernel.org, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v7 13/33] crypto: rockchip: introduce PM
Date: Sun,  8 May 2022 18:59:37 +0000
Message-Id: <20220508185957.3629088-14-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220508185957.3629088-1-clabbe@baylibre.com>
References: <20220508185957.3629088-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_200020_462445_84A27811 
X-CRM114-Status: GOOD (  19.37  )
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
