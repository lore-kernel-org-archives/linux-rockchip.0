Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06CA4C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Apr 2022 20:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1gtaeH1lKVJEYHLy5d0WtsuenVZ9jx9MN/OVGNFv8hY=; b=1YgvDucVeQqi4J
	0gHawH96rocM+HBbNHgbuMpnEL0x+dzXXmLroptkT2X7KqRsWQPB6au4hhl/R4cP5neB4tO6giho9
	OJJkSlAIlIx/Eu00yIqFoDweMHTlqMgb0OBYXJyIFMo2260tASU92DtRqTkBM+V9CjtEDiqPj/bPO
	DWQfbETy4+TUoSvEc5hjgcSegepeA00GACJGXgx0Wb72YQY885ohv1K3z4kHOmWNAT5IBEQZ/ZjsJ
	b0FXuLZhrSa4vO/h9GbbSoIIa+wV+uZG9CiTCRTLEGi6ug6HBiX/OU5V0ScrQbCHbyE/ACiqHiCfA
	J2evUEZ6vP/4GAbjozMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naNls-007733-B9; Fri, 01 Apr 2022 20:21:24 +0000
Received: from mail-wr1-f51.google.com ([209.85.221.51])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naNiw-0074y7-Nb
 for linux-rockchip@lists.infradead.org; Fri, 01 Apr 2022 20:18:27 +0000
Received: by mail-wr1-f51.google.com with SMTP id a1so5764358wrh.10
 for <linux-rockchip@lists.infradead.org>; Fri, 01 Apr 2022 13:18:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5d6RL6tWifBxk+9N8dDKMGmuUlW9l+/GHPBmt3Wt0Ys=;
 b=DcFA2EceMX8LP05s4SNlZe/8DNsRTubpqCOD3p6C4blVMRrLhEp193aLwSmEenOhlX
 85gwtFOe0cu+X5ZLHDawssN7Wxxh3qPznpRf6w0qOfP/EBOv0iEEW49Q/v1WQYv340CM
 mpoyQqdy5YKhVvni1Zbo7A7+/aPzj/yCn8AFYRiG4U95yD8zbYEgMk/80lKl73jZFIex
 4C5qrBS+JLX94VDy4QJ/6gs/lfunq4yCUzkUG2MXiKLG73dP9o4az/QxiLStoVB7PVuy
 +fpk5Jq5j5WZ8NeuzyXhaZOOtA0ElH9RU2T7BJv6Zkyo650wlGbN6PL/SifAQ53PfUmn
 7HPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5d6RL6tWifBxk+9N8dDKMGmuUlW9l+/GHPBmt3Wt0Ys=;
 b=3CiMKEuDRxthFLpmGj5pz7KlY+IHmE+v2TrJtAGQoI/0iDq2LpfCkdJsL95egpzUkM
 QJmDnlpbIC66hsVb+x4Hn0X4VgOwGAioe3rF9hYmZtH/umCB4OOa8oQi41MYLIP8Romp
 AxPlap0RUIUFraf9NWXcc//5wCINrvVvMjlgzEfFOyLVAmYLuzGcKVtdx67dt1P2TrqM
 oH6q79LfK2F0pELrf13In1SRNROsnsce3jbeMFGL48OK8GPsvjdpMA3+enk3+zC84r8t
 GDr6izD6McuNWQXYioHTM/5M79CnbiQ4ttdIXVkgKGqDzScsaT8Tgw+K3eNYIiuQYXix
 5/Bg==
X-Gm-Message-State: AOAM532ukXZNSBV7da4Us9/NcdGXw6oEO6BDvUiwjV6/GCGY9IfuinlJ
 wvPefnhlPnWsQDaZSFkFNAmMqw==
X-Google-Smtp-Source: ABdhPJzH9RT4rIKq0+cq15ZNTe9T/G8wvhw1vU1sShc7m3YAeqPD386L2QymKuJTB6dTL4GP7tB/yw==
X-Received: by 2002:a5d:59ab:0:b0:205:7e81:53f9 with SMTP id
 p11-20020a5d59ab000000b002057e8153f9mr9007822wrr.457.1648844299694; 
 Fri, 01 Apr 2022 13:18:19 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 j16-20020a05600c191000b0038ca3500494sm17823838wmq.27.2022.04.01.13.18.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Apr 2022 13:18:19 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v4 12/33] crypto: rockchip: add debugfs
Date: Fri,  1 Apr 2022 20:17:43 +0000
Message-Id: <20220401201804.2867154-13-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220401201804.2867154-1-clabbe@baylibre.com>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_131822_849180_27C179F8 
X-CRM114-Status: GOOD (  20.46  )
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
 .../crypto/rockchip/rk3288_crypto_skcipher.c  | 19 +++++++-
 5 files changed, 94 insertions(+), 1 deletion(-)

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
index 99b93841fbff..f85144e3d124 100644
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
index 19bb9a9576d8..4ff08238156b 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
@@ -16,6 +16,9 @@
 
 static int rk_cipher_need_fallback(struct skcipher_request *req)
 {
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
+	struct skcipher_alg *alg = crypto_skcipher_alg(tfm);
+	struct rk_crypto_tmp *algt = container_of(alg, struct rk_crypto_tmp, alg.skcipher);
 	struct scatterlist *sgs, *sgd;
 	unsigned int todo, len;
 	unsigned int bs = crypto_skcipher_blocksize(tfm);
@@ -27,10 +30,12 @@ static int rk_cipher_need_fallback(struct skcipher_request *req)
 	sgs = req->src;
 	while (sgs) {
 		if (!IS_ALIGNED(sgs->offset, sizeof(u32))) {
+			algt->stat_fb_align++;
 			return true;
 		}
 		todo = min(len, sgs->length);
 		if (todo % bs) {
+			algt->stat_fb_len++;
 			return true;
 		}
 		len -= todo;
@@ -40,10 +45,12 @@ static int rk_cipher_need_fallback(struct skcipher_request *req)
 	sgd = req->dst;
 	while (sgd) {
 		if (!IS_ALIGNED(sgd->offset, sizeof(u32))) {
+			algt->stat_fb_align++;
 			return true;
 		}
 		todo = min(len, sgd->length);
 		if (todo % bs) {
+			algt->stat_fb_len++;
 			return true;
 		}
 		len -= todo;
@@ -52,8 +59,10 @@ static int rk_cipher_need_fallback(struct skcipher_request *req)
 	sgs = req->src;
 	sgd = req->dst;
 	while (sgs && sgd) {
-		if (sgs->length != sgd->length)
+		if (sgs->length != sgd->length) {
+			algt->stat_fb_sgdiff++;
 			return true;
+		}
 		sgs = sg_next(sgs);
 		sgd = sg_next(sgd);
 	}
@@ -65,8 +74,12 @@ static int rk_cipher_fallback(struct skcipher_request *areq)
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
@@ -333,6 +346,10 @@ static int rk_cipher_run(struct crypto_engine *engine, void *async_req)
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
