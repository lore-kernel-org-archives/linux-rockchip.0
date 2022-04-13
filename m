Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6F53C43217
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 19:12:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mmZoQNx7RiIcn5h38gfGiWpBD070HXbY3hsICJYVAZg=; b=wObssSiHoOGeML
	QWoJiH/XuFMwhpZc3vntkeR7qjQHFTqnDXuREf4pu2aTdDksLsGXskB3PFjKPTsT/9aeUitguopHk
	2nwxeFFb2aLOchcCDFQL5fIDWRbH4A2zZWUf9JdcBr0nZRiTHIhmgYEt5Ys6/RfXNhBfzwMAY46+R
	b0tm5qf9N+K0ADkb8KkKoAmdKFZukEhbaYthh6rYysgQHcGAcGGW0GLfk8jxmDlIUHFla/HX1I74j
	O6zQ0qdRHPW4xZA7W6UwWBwi821+q+ZmMz7W8L7t9oy0D1K1SkSuCFLc0OGN/8HRIA61DbvrmKFoC
	sFGhZJOe4vFoqEHZvBzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neiPE-002KRX-IN; Wed, 13 Apr 2022 19:11:56 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neiL1-002I5t-Ly
 for linux-rockchip@lists.infradead.org; Wed, 13 Apr 2022 19:07:40 +0000
Received: by mail-wr1-x431.google.com with SMTP id i20so3951345wrb.13
 for <linux-rockchip@lists.infradead.org>; Wed, 13 Apr 2022 12:07:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=S9VyfrMMeO74fGBihz9CdP7fNaeijlioCZxpeCtBsgM=;
 b=VJkZGMZ30BkWca8y5IRVe16sowoopuOm5O1GmP85NqlZJ0+Ha8t3uwYgClJdsQ8ZoD
 AyaMA5Iv8dZ/RzXsJWyWewzwHaobiJ8dbm1urhdyyClJbVYgIQ564kZQ2JJcfKW1MN0k
 VzL9rumsz5ojZAQSE7fui3qz8TK5DChxTeHTUvVbCEI0xRe7eqTR+O/k0OhNjUbANMHV
 VaBv0EH2ZSZqDDMb3AONxbL3XgeGT2icZF3FOv0nVjYgeyDbUZ0nuGd05w4rER4cVWR8
 oqxw1+j7k+uH/XVevjOrWGzcN2qXcD/uCCjA4jXPm8fsYxQzB/ViPGbpeSWQnfGIguJH
 HrGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=S9VyfrMMeO74fGBihz9CdP7fNaeijlioCZxpeCtBsgM=;
 b=zB2dgHoREDCXw1En3KdREMvfdrFUuacyHzuF+W7TddHHPj8CVo3FvQrgi6Iz82s1V4
 ZGdpZwy69JYoiWcX0bx782RtL7hnGofrjOBlAvJ07VM1Xm54r4Gkzw1tooDWd8YPcUAo
 KPzVe/nOrqhZNZGidljOm3d2hxa0ov09s2YXBTXQs1XwxQSMkOngm+//tYYcKNtsGD/R
 lJaxl3O+8BWqRTUQua17Imkk3otOeYlhruqGf6V6gUPrwyX25j4DSXYotcV7wEvDES/+
 MsfVFyBFyHExZJ52wmEF1IIzTxvu4lKbpI9hYGkKBM5OYIqIBug324lXyQsyLm0aHOZJ
 CMWw==
X-Gm-Message-State: AOAM533+dNKEpMuHh8lwfF5n721um9Ls1gjkR3FoTUxdAYavfChJCKt0
 fMO+5m6oS+Or24UclEtPdNz/RA==
X-Google-Smtp-Source: ABdhPJxdFfVAZr1iMyA3WEwo7PBMOWS1qHgOSSxBPwsLPV9fa5RyaDyeHHh3uIfBLIOw0ojM9xtTOg==
X-Received: by 2002:adf:f152:0:b0:207:b0fb:b332 with SMTP id
 y18-20020adff152000000b00207b0fbb332mr231659wro.17.1649876854515; 
 Wed, 13 Apr 2022 12:07:34 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 o29-20020a05600c511d00b0038e3532b23csm3551852wms.15.2022.04.13.12.07.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 12:07:33 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v5 12/33] crypto: rockchip: add debugfs
Date: Wed, 13 Apr 2022 19:06:52 +0000
Message-Id: <20220413190713.1427956-13-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220413190713.1427956-1-clabbe@baylibre.com>
References: <20220413190713.1427956-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_120735_819840_2E3721C9 
X-CRM114-Status: GOOD (  18.92  )
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

This patch enable to access usage stats for each algorithm.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/Kconfig                        | 10 ++++
 drivers/crypto/rockchip/rk3288_crypto.c       | 47 +++++++++++++++++++
 drivers/crypto/rockchip/rk3288_crypto.h       | 11 +++++
 drivers/crypto/rockchip/rk3288_crypto_ahash.c |  8 ++++
 .../crypto/rockchip/rk3288_crypto_skcipher.c  | 15 ++++++
 5 files changed, 91 insertions(+)

diff --git a/drivers/crypto/Kconfig b/drivers/crypto/Kconfig
index d68cc2dc2bd5..b609215ecd62 100644
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
