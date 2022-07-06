Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78665C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jul 2022 09:56:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/szwbkmiNtWIoXaRXd6YMBE3ntJww2bA7aDQ9ivIfsc=; b=HzVr2vJ7weHOzF
	es3mHijv4bFKD47nRj2PWXtBbPF6ZW3GEpe70bLhUbtLycahM2fvN/DjV9Wa3JKOn27KMRFVp/Chk
	X4/mjqRGGbY8xbFbgibhUaOkdYxHTfnD8ELHrwvF0wQaleDMjWOSbIqKyJchNf/mJguQLCEChbPJZ
	XXGefZ1uypkVTnPlJzXZKH9U9nnQyHtyHdDZkOwje+bi7Xf+eBUXZC0B+ZuE/1H3rbsGy0he5W9E9
	v4mNomHa7Sg4yIsVCWzFefOBiDesvaca4V6KA0NS/+geieyB4Hp1oor9CYu2x+ghSXELblBJnBvlZ
	LzsU13rpP54jL+MMsz4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o91lP-0080nY-4p; Wed, 06 Jul 2022 09:56:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o91Uy-007qGf-9Z
	for linux-rockchip@bombadil.infradead.org; Wed, 06 Jul 2022 09:39:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=SY27zUOPhGpfGqShGZHh/LeCOu4fFuQvT5QyG/wyCDc=; b=jeG1GBlk+uWSGueGJS0rGp9WUd
	QjwLGnLrdr7KrnCZndwag1RE9zKMLcdCUmcS5sY/OIqfvy4oizwJY5q6lu4tUjP4mgEwvOLlDgXj2
	1E9g7XMArc49XvNygyepKdWTnxq5DKj5jtYpjyh6tPQ36eTy23WyEHpp6j0z2naMlxrNh1isIW2Oi
	cmadbWO3pRUAo66IItN3zuM+fWqQ6ciFRYMX7JYorUOjuQ2aXVTCR/0O6H4P3lfm/1mbkerjtOtw+
	XXMkvOagK1KrS5cdwHoiS/JzOVXajhmZ86hal7eYf64xb7hybLsxn30K3nXF3gM0TGzXfQraf4NRu
	vt1hX6pw==;
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o90xk-000NHv-1E
	for linux-rockchip@lists.infradead.org; Wed, 06 Jul 2022 09:04:52 +0000
Received: by mail-wm1-x335.google.com with SMTP id bi22-20020a05600c3d9600b003a04de22ab6so8611734wmb.1
        for <linux-rockchip@lists.infradead.org>; Wed, 06 Jul 2022 02:04:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SY27zUOPhGpfGqShGZHh/LeCOu4fFuQvT5QyG/wyCDc=;
        b=XjbxgxbJEhDTeVVtqKznNTUbO8lMrqZv9weFUMmWunXx912sPJRUb3SGsIpy/xnU3F
         c6i4Sx3/TmCv/AD9fWJCYI77+O52JWqnfYamqcKYv0sonjiP9QtLDzVPwkQGoLpN+37W
         Bk7eSR5y4ZF7gLtvYCBZecrtEGb1rSncKC9DMBNdVTvH4WUZR7X9MYAkyFnfcC87fcMh
         Nwk+DueGSC1qER/Nvd7OqACbzobnIsLUxchHzz8qKdk/9v/G/aXVXOW1bIGhsTNAOATh
         5lBzrR9pLd5xbp+m0wBO8m4JmJhaPM3a+fkzVUs0+d9ZBbeG7Vo4khO4xh87IZ1CqQG+
         l2mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SY27zUOPhGpfGqShGZHh/LeCOu4fFuQvT5QyG/wyCDc=;
        b=hnPFuBoNdE3NQpmu7HK2XlRFPZx1iEE7YwvXgaQPq1Iql9k2pYr59H9ZOlEzU1f8zV
         5yfLUeya00sDplHCyNPkzb8+gSB0I1FEm+0oukhhVskbrAGMdZpHFyE/JweFYBfMZRMx
         3B1LM6F/D+kYpiG1RR85FNZFFWCe9cR5hVS9CLJc/h/FFfy6nxtIWJ3VKeaXjS5PoISO
         rqDE5ytjehUWOZPY7YIePsqnJBUlwgWaE1Koh8+ypQhg/PqtGOLi9YUBUUu8jbfm31AD
         qUoBxVnhm2sHfsC/fVFR8CitOycqlipCAmIIyXEzA7avvH2WtAQSr94zIWR+AQgKjCEC
         d3Jw==
X-Gm-Message-State: AJIora98JSUw644nGr0Kj3BEizn0UTS+GzVFaN46YAhAQv9JkCkZhol4
	YL56D/KpphhemQXOsi67xkZUig==
X-Google-Smtp-Source: AGRyM1udBfIKizGH5eGUAcz4VdU4gYzaO+ejM+zyiXdbdANDvA69tJ+B8/cxN3GOho73Ghpggd7E6g==
X-Received: by 2002:a05:600c:3788:b0:3a0:4279:5142 with SMTP id o8-20020a05600c378800b003a042795142mr38247479wmr.21.1657098285508;
        Wed, 06 Jul 2022 02:04:45 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v11-20020adfe28b000000b0021d6ef34b2asm5230223wri.51.2022.07.06.02.04.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 02:04:45 -0700 (PDT)
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
Subject: [PATCH v8 12/33] crypto: rockchip: add debugfs
Date: Wed,  6 Jul 2022 09:03:51 +0000
Message-Id: <20220706090412.806101-13-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220706090412.806101-1-clabbe@baylibre.com>
References: <20220706090412.806101-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_100448_525840_916A79E9 
X-CRM114-Status: GOOD (  19.09  )
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

This patch enable to access usage stats for each algorithm.

Reviewed-by: John Keeping <john@metanate.com>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/Kconfig                        | 10 ++++
 drivers/crypto/rockchip/rk3288_crypto.c       | 47 +++++++++++++++++++
 drivers/crypto/rockchip/rk3288_crypto.h       | 11 +++++
 drivers/crypto/rockchip/rk3288_crypto_ahash.c |  8 ++++
 .../crypto/rockchip/rk3288_crypto_skcipher.c  | 15 ++++++
 5 files changed, 91 insertions(+)

diff --git a/drivers/crypto/Kconfig b/drivers/crypto/Kconfig
index df4f0a2de098..2286df229c81 100644
--- a/drivers/crypto/Kconfig
+++ b/drivers/crypto/Kconfig
@@ -801,6 +801,16 @@ config CRYPTO_DEV_ROCKCHIP
 	  This driver interfaces with the hardware crypto accelerator.
 	  Supporting cbc/ecb chainmode, and aes/des/des3_ede cipher mode.
 
+config CRYPTO_DEV_ROCKCHIP_DEBUG
+	bool "Enable Rockchip crypto stats"
+	depends on CRYPTO_DEV_ROCKCHIP
+	depends on DEBUG_FS
+	help
+	  Say y to enable Rockchip crypto debug stats.
+	  This will create /sys/kernel/debug/rk3288_crypto/stats for displaying
+	  the number of requests per algorithm and other internal stats.
+
+
 config CRYPTO_DEV_ZYNQMP_AES
 	tristate "Support for Xilinx ZynqMP AES hw accelerator"
 	depends on ZYNQMP_FIRMWARE || COMPILE_TEST
diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index 8f9664acc78d..3e1b4f3b2422 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -95,6 +95,41 @@ static struct rk_crypto_tmp *rk_cipher_algs[] = {
 	&rk_ahash_md5,
 };
 
+#ifdef CONFIG_CRYPTO_DEV_ROCKCHIP_DEBUG
+static int rk_crypto_debugfs_show(struct seq_file *seq, void *v)
+{
+	unsigned int i;
+
+	for (i = 0; i < ARRAY_SIZE(rk_cipher_algs); i++) {
+		if (!rk_cipher_algs[i]->dev)
+			continue;
+		switch (rk_cipher_algs[i]->type) {
+		case CRYPTO_ALG_TYPE_SKCIPHER:
+			seq_printf(seq, "%s %s reqs=%lu fallback=%lu\n",
+				   rk_cipher_algs[i]->alg.skcipher.base.cra_driver_name,
+				   rk_cipher_algs[i]->alg.skcipher.base.cra_name,
+				   rk_cipher_algs[i]->stat_req, rk_cipher_algs[i]->stat_fb);
+			seq_printf(seq, "\tfallback due to length: %lu\n",
+				   rk_cipher_algs[i]->stat_fb_len);
+			seq_printf(seq, "\tfallback due to alignment: %lu\n",
+				   rk_cipher_algs[i]->stat_fb_align);
+			seq_printf(seq, "\tfallback due to SGs: %lu\n",
+				   rk_cipher_algs[i]->stat_fb_sgdiff);
+			break;
+		case CRYPTO_ALG_TYPE_AHASH:
+			seq_printf(seq, "%s %s reqs=%lu fallback=%lu\n",
+				   rk_cipher_algs[i]->alg.hash.halg.base.cra_driver_name,
+				   rk_cipher_algs[i]->alg.hash.halg.base.cra_name,
+				   rk_cipher_algs[i]->stat_req, rk_cipher_algs[i]->stat_fb);
+			break;
+		}
+	}
+	return 0;
+}
+
+DEFINE_SHOW_ATTRIBUTE(rk_crypto_debugfs);
+#endif
+
 static int rk_crypto_register(struct rk_crypto_info *crypto_info)
 {
 	unsigned int i, k;
@@ -246,6 +281,15 @@ static int rk_crypto_probe(struct platform_device *pdev)
 		goto err_register_alg;
 	}
 
+#ifdef CONFIG_CRYPTO_DEV_ROCKCHIP_DEBUG
+	/* Ignore error of debugfs */
+	crypto_info->dbgfs_dir = debugfs_create_dir("rk3288_crypto", NULL);
+	crypto_info->dbgfs_stats = debugfs_create_file("stats", 0444,
+						       crypto_info->dbgfs_dir,
+						       crypto_info,
+						       &rk_crypto_debugfs_fops);
+#endif
+
 	dev_info(dev, "Crypto Accelerator successfully registered\n");
 	return 0;
 
@@ -260,6 +304,9 @@ static int rk_crypto_remove(struct platform_device *pdev)
 {
 	struct rk_crypto_info *crypto_tmp = platform_get_drvdata(pdev);
 
+#ifdef CONFIG_CRYPTO_DEV_ROCKCHIP_DEBUG
+	debugfs_remove_recursive(crypto_tmp->dbgfs_dir);
+#endif
 	rk_crypto_unregister();
 	rk_crypto_disable_clk(crypto_tmp);
 	crypto_engine_exit(crypto_tmp->engine);
diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/rockchip/rk3288_crypto.h
index d924ea17402a..945a8184bbad 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.h
+++ b/drivers/crypto/rockchip/rk3288_crypto.h
@@ -7,6 +7,7 @@
 #include <crypto/algapi.h>
 #include <linux/dma-mapping.h>
 #include <linux/interrupt.h>
+#include <linux/debugfs.h>
 #include <linux/delay.h>
 #include <linux/scatterlist.h>
 #include <crypto/engine.h>
@@ -199,6 +200,10 @@ struct rk_crypto_info {
 	struct crypto_engine *engine;
 	struct completion complete;
 	int status;
+#ifdef CONFIG_CRYPTO_DEV_ROCKCHIP_DEBUG
+	struct dentry *dbgfs_dir;
+	struct dentry *dbgfs_stats;
+#endif
 };
 
 /* the private variable of hash */
@@ -239,6 +244,12 @@ struct rk_crypto_tmp {
 		struct skcipher_alg	skcipher;
 		struct ahash_alg	hash;
 	} alg;
+	unsigned long stat_req;
+	unsigned long stat_fb;
+	unsigned long stat_fb_len;
+	unsigned long stat_fb_sglen;
+	unsigned long stat_fb_align;
+	unsigned long stat_fb_sgdiff;
 };
 
 extern struct rk_crypto_tmp rk_ecb_aes_alg;
diff --git a/drivers/crypto/rockchip/rk3288_crypto_ahash.c b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
index d08e2438d356..8856c6226be6 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_ahash.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
@@ -39,6 +39,10 @@ static int rk_ahash_digest_fb(struct ahash_request *areq)
 	struct rk_ahash_rctx *rctx = ahash_request_ctx(areq);
 	struct crypto_ahash *tfm = crypto_ahash_reqtfm(areq);
 	struct rk_ahash_ctx *tfmctx = crypto_ahash_ctx(tfm);
+	struct ahash_alg *alg = __crypto_ahash_alg(tfm->base.__crt_alg);
+	struct rk_crypto_tmp *algt = container_of(alg, struct rk_crypto_tmp, alg.hash);
+
+	algt->stat_fb++;
 
 	ahash_request_set_tfm(&rctx->fallback_req, tfmctx->fallback_tfm);
 	rctx->fallback_req.base.flags = areq->base.flags &
@@ -249,6 +253,8 @@ static int rk_hash_run(struct crypto_engine *engine, void *breq)
 	struct crypto_ahash *tfm = crypto_ahash_reqtfm(areq);
 	struct rk_ahash_rctx *rctx = ahash_request_ctx(areq);
 	struct rk_ahash_ctx *tctx = crypto_ahash_ctx(tfm);
+	struct ahash_alg *alg = __crypto_ahash_alg(tfm->base.__crt_alg);
+	struct rk_crypto_tmp *algt = container_of(alg, struct rk_crypto_tmp, alg.hash);
 	struct scatterlist *sg = areq->src;
 	int err = 0;
 	int i;
@@ -256,6 +262,8 @@ static int rk_hash_run(struct crypto_engine *engine, void *breq)
 
 	rctx->mode = 0;
 
+	algt->stat_req++;
+
 	switch (crypto_ahash_digestsize(tfm)) {
 	case SHA1_DIGEST_SIZE:
 		rctx->mode = RK_CRYPTO_HASH_SHA1;
diff --git a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
index 1ed297f5d809..91b8a4c574da 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
@@ -18,6 +18,8 @@ static int rk_cipher_need_fallback(struct skcipher_request *req)
 {
 	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 	unsigned int bs = crypto_skcipher_blocksize(tfm);
+	struct skcipher_alg *alg = crypto_skcipher_alg(tfm);
+	struct rk_crypto_tmp *algt = container_of(alg, struct rk_crypto_tmp, alg.skcipher);
 	struct scatterlist *sgs, *sgd;
 	unsigned int stodo, dtodo, len;
 
@@ -29,20 +31,25 @@ static int rk_cipher_need_fallback(struct skcipher_request *req)
 	sgd = req->dst;
 	while (sgs && sgd) {
 		if (!IS_ALIGNED(sgs->offset, sizeof(u32))) {
+			algt->stat_fb_align++;
 			return true;
 		}
 		if (!IS_ALIGNED(sgd->offset, sizeof(u32))) {
+			algt->stat_fb_align++;
 			return true;
 		}
 		stodo = min(len, sgs->length);
 		if (stodo % bs) {
+			algt->stat_fb_len++;
 			return true;
 		}
 		dtodo = min(len, sgd->length);
 		if (dtodo % bs) {
+			algt->stat_fb_len++;
 			return true;
 		}
 		if (stodo != dtodo) {
+			algt->stat_fb_sgdiff++;
 			return true;
 		}
 		len -= stodo;
@@ -57,8 +64,12 @@ static int rk_cipher_fallback(struct skcipher_request *areq)
 	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(areq);
 	struct rk_cipher_ctx *op = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(areq);
+	struct skcipher_alg *alg = crypto_skcipher_alg(tfm);
+	struct rk_crypto_tmp *algt = container_of(alg, struct rk_crypto_tmp, alg.skcipher);
 	int err;
 
+	algt->stat_fb++;
+
 	skcipher_request_set_tfm(&rctx->fallback_req, op->fallback_tfm);
 	skcipher_request_set_callback(&rctx->fallback_req, areq->base.flags,
 				      areq->base.complete, areq->base.data);
@@ -324,6 +335,10 @@ static int rk_cipher_run(struct crypto_engine *engine, void *async_req)
 	u8 *ivtouse = areq->iv;
 	unsigned int len = areq->cryptlen;
 	unsigned int todo;
+	struct skcipher_alg *alg = crypto_skcipher_alg(tfm);
+	struct rk_crypto_tmp *algt = container_of(alg, struct rk_crypto_tmp, alg.skcipher);
+
+	algt->stat_req++;
 
 	ivsize = crypto_skcipher_ivsize(tfm);
 	if (areq->iv && crypto_skcipher_ivsize(tfm) > 0) {
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
