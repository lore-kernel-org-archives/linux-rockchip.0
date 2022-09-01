Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7026DECAAD3
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 14:07:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vx5f6qfrl3Le9X/yqk2QEnlc7MpmIFMAGZJ98NZ5vt4=; b=XDaR+x2VsEf5J2
	4nPMk7peKbqH6riYT1+MbLNFS8iCqXJCEgES8XSFhXOJ2qy5hH/O7EPivbmlf8mp4ZbIEWTUUZtfG
	rw0r8dNPsdNUzTLa1kD9wkHuw3cndid0HMGhOOW2yCuD21gSVeTBJATXbZr+7Wyal0zSYEI3uVHjl
	AqJgtWkBqiB46FyofBbOGkH0sSuIvwWYvalGjYYiYfHykScWuslh68GdMqP/NnS9XO0ouk5JA6VBu
	n7R4gBNtCaCnXWa6ylkfACQvi/lg32XBseh+p2AQQQh9Tvfj+tUcS7zj9ovch1M99ExS+Tk9I3osv
	sNIXKp12CHsWP0uxsZ/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTkqh-00CL3C-Ei; Thu, 01 Sep 2022 14:07:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTkn2-00CIuS-N4
	for linux-rockchip@bombadil.infradead.org; Thu, 01 Sep 2022 14:03:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=WjVYDZUAlIRp4eDHOXKi9ug5c8rK8IrdaxVWhXjYQvc=; b=g/QZmEDvuzYfngXOy/Spkhrn9e
	llj5RUX0Pu9zjHcazQ1AS0n6zcOpgn6QmgHzJMY98GMC4hUil7+53t2LUER8qKNJbGMvG7/zKvwAX
	JnL+UmV474/gX6xIiK95GhcP324hTSDO0e6BgqzIvyoorDKAKDcYRxF7WkzlBlPk0mQ3AaFhGPsuu
	28mJhak1wj7HKqqqwbqrcidPKqdd6uMZDIleSl+nPMKgfDnFkVRzeVhczfBNCnFqzOZRgyPRCkcFN
	nyBmRndM/X6XZ4k+bF8sfEQ9XVa+NqWsctjHGYezoChg4jaZGessOrX/8L0vPRYw7TQf6YFuz1vMM
	LvHSoE1g==;
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTjlB-008P1C-GJ
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 12:57:37 +0000
Received: by mail-wr1-x42f.google.com with SMTP id w5so6069523wrn.12
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Sep 2022 05:57:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=WjVYDZUAlIRp4eDHOXKi9ug5c8rK8IrdaxVWhXjYQvc=;
        b=f4oDM/WllYteqwgfLnxeYrcbUOvmNxk338eHSiF9+PEBWHhSp6t1ZR+QYPA4k5gHVh
         LUm6fbEr0PdJUOnl6CBlpRwSlag7mlqK9kk1YR5+/+xiBfQmpyOIIqOg7+g+dxO+/dsv
         gXO71M8Uyro5rObKE/+mgKPKcmiaoaDXcOK+wTkMWAJ0OFBmcf1NuYf4bj4vfxst3ZVW
         lMpBYtrTkGHtQai1cFXXYOsXnluSbpNINDLGZcN3gIoBdYmict0YWm3O69Bl4B1xxHbH
         UMt96PfSsmiZzTo7dpb0q5MXlPEJqHcws9/m41pixF0vf3lGkz+xwRtwrb+bPDSBv+He
         kDnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=WjVYDZUAlIRp4eDHOXKi9ug5c8rK8IrdaxVWhXjYQvc=;
        b=t7CbN8GV5/YTuqW6PqCw96uMkzQuY5DLhWqueQtV5h19AbExudG93MfznODw7vAIrG
         +JwVyjFWsC4pvmz4v4uYsuILpwRp4pp29VDSsqBwgD8ClhgAUqlh5JSOfENmDdkoa+oI
         kU1b0re2AbpviTeiu4rf0E/s+7rXmB51L7RLnjJ/B6u0URsJiNOAcyQO4MxUU+PUhjad
         zxNy0cVr6O9J4piL5QoimDZWLjDnhdt0sx+glKShhVUBWhmSx0gE63aBPZbk8yWIu7eU
         X5+PoEMC95U69qoqlKWjabzSEkA0zZM9wTfKb5i/TTy78Eer12J1d/swHN8Qtd4lLZCI
         YsHg==
X-Gm-Message-State: ACgBeo3ROKjTlDTktjnYVGcggoy2KqjRcHthmEeItK/r+CKpw4HtdwSf
	HKUllUC2Ljniio6igLYOZURt9A==
X-Google-Smtp-Source: AA6agR4lqqkz4cbTSnZ1zUOR+0U5brtnRx9ZasizdynDxTHaeCCeHRIfawIFze4SJyNbS/t8v2T2BA==
X-Received: by 2002:adf:db90:0:b0:226:cecd:d10b with SMTP id u16-20020adfdb90000000b00226cecdd10bmr14729774wri.531.1662037046133;
        Thu, 01 Sep 2022 05:57:26 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v5-20020a5d59c5000000b002257fd37877sm15556709wry.6.2022.09.01.05.57.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 05:57:25 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	ardb@kernel.org,
	davem@davemloft.net,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	Corentin Labbe <clabbe@baylibre.com>,
	John Keeping <john@metanate.com>
Subject: [PATCH v9 09/33] crypto: rockchip: remove non-aligned handling
Date: Thu,  1 Sep 2022 12:56:46 +0000
Message-Id: <20220901125710.3733083-10-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901125710.3733083-1-clabbe@baylibre.com>
References: <20220901125710.3733083-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_135729_849309_53A9AF01 
X-CRM114-Status: GOOD (  17.58  )
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

Now driver have fallback for un-aligned cases, remove all code handling
those cases.

Fixes: ce0183cb6464b ("crypto: rockchip - switch to skcipher API")
Reviewed-by: John Keeping <john@metanate.com>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c       | 69 +++++--------------
 drivers/crypto/rockchip/rk3288_crypto.h       |  4 --
 drivers/crypto/rockchip/rk3288_crypto_ahash.c | 22 ++----
 .../crypto/rockchip/rk3288_crypto_skcipher.c  | 39 +++--------
 4 files changed, 31 insertions(+), 103 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index 4cff49b82983..b3db096e2ec2 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -88,63 +88,26 @@ static int rk_load_data(struct rk_crypto_info *dev,
 {
 	unsigned int count;
 
-	dev->aligned = dev->aligned ?
-		check_alignment(sg_src, sg_dst, dev->align_size) :
-		dev->aligned;
-	if (dev->aligned) {
-		count = min(dev->left_bytes, sg_src->length);
-		dev->left_bytes -= count;
-
-		if (!dma_map_sg(dev->dev, sg_src, 1, DMA_TO_DEVICE)) {
-			dev_err(dev->dev, "[%s:%d] dma_map_sg(src)  error\n",
+	count = min(dev->left_bytes, sg_src->length);
+	dev->left_bytes -= count;
+
+	if (!dma_map_sg(dev->dev, sg_src, 1, DMA_TO_DEVICE)) {
+		dev_err(dev->dev, "[%s:%d] dma_map_sg(src)  error\n",
 				__func__, __LINE__);
-			return -EINVAL;
-		}
-		dev->addr_in = sg_dma_address(sg_src);
+		return -EINVAL;
+	}
+	dev->addr_in = sg_dma_address(sg_src);
 
-		if (sg_dst) {
-			if (!dma_map_sg(dev->dev, sg_dst, 1, DMA_FROM_DEVICE)) {
-				dev_err(dev->dev,
+	if (sg_dst) {
+		if (!dma_map_sg(dev->dev, sg_dst, 1, DMA_FROM_DEVICE)) {
+			dev_err(dev->dev,
 					"[%s:%d] dma_map_sg(dst)  error\n",
 					__func__, __LINE__);
-				dma_unmap_sg(dev->dev, sg_src, 1,
-					     DMA_TO_DEVICE);
-				return -EINVAL;
-			}
-			dev->addr_out = sg_dma_address(sg_dst);
-		}
-	} else {
-		count = (dev->left_bytes > PAGE_SIZE) ?
-			PAGE_SIZE : dev->left_bytes;
-
-		if (!sg_pcopy_to_buffer(dev->first, dev->src_nents,
-					dev->addr_vir, count,
-					dev->total - dev->left_bytes)) {
-			dev_err(dev->dev, "[%s:%d] pcopy err\n",
-				__func__, __LINE__);
+			dma_unmap_sg(dev->dev, sg_src, 1,
+					DMA_TO_DEVICE);
 			return -EINVAL;
 		}
-		dev->left_bytes -= count;
-		sg_init_one(&dev->sg_tmp, dev->addr_vir, count);
-		if (!dma_map_sg(dev->dev, &dev->sg_tmp, 1, DMA_TO_DEVICE)) {
-			dev_err(dev->dev, "[%s:%d] dma_map_sg(sg_tmp)  error\n",
-				__func__, __LINE__);
-			return -ENOMEM;
-		}
-		dev->addr_in = sg_dma_address(&dev->sg_tmp);
-
-		if (sg_dst) {
-			if (!dma_map_sg(dev->dev, &dev->sg_tmp, 1,
-					DMA_FROM_DEVICE)) {
-				dev_err(dev->dev,
-					"[%s:%d] dma_map_sg(sg_tmp)  error\n",
-					__func__, __LINE__);
-				dma_unmap_sg(dev->dev, &dev->sg_tmp, 1,
-					     DMA_TO_DEVICE);
-				return -ENOMEM;
-			}
-			dev->addr_out = sg_dma_address(&dev->sg_tmp);
-		}
+		dev->addr_out = sg_dma_address(sg_dst);
 	}
 	dev->count = count;
 	return 0;
@@ -154,11 +117,11 @@ static void rk_unload_data(struct rk_crypto_info *dev)
 {
 	struct scatterlist *sg_in, *sg_out;
 
-	sg_in = dev->aligned ? dev->sg_src : &dev->sg_tmp;
+	sg_in = dev->sg_src;
 	dma_unmap_sg(dev->dev, sg_in, 1, DMA_TO_DEVICE);
 
 	if (dev->sg_dst) {
-		sg_out = dev->aligned ? dev->sg_dst : &dev->sg_tmp;
+		sg_out = dev->sg_dst;
 		dma_unmap_sg(dev->dev, sg_out, 1, DMA_FROM_DEVICE);
 	}
 }
diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/rockchip/rk3288_crypto.h
index 540b81a14b9b..a7de5738f6dc 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.h
+++ b/drivers/crypto/rockchip/rk3288_crypto.h
@@ -204,12 +204,8 @@ struct rk_crypto_info {
 	/* the public variable */
 	struct scatterlist		*sg_src;
 	struct scatterlist		*sg_dst;
-	struct scatterlist		sg_tmp;
 	struct scatterlist		*first;
 	unsigned int			left_bytes;
-	void				*addr_vir;
-	int				aligned;
-	int				align_size;
 	size_t				src_nents;
 	size_t				dst_nents;
 	unsigned int			total;
diff --git a/drivers/crypto/rockchip/rk3288_crypto_ahash.c b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
index 16009bb0bf16..c762e462eb57 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_ahash.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
@@ -236,8 +236,6 @@ static int rk_ahash_start(struct rk_crypto_info *dev)
 
 	dev->total = req->nbytes;
 	dev->left_bytes = req->nbytes;
-	dev->aligned = 0;
-	dev->align_size = 4;
 	dev->sg_dst = NULL;
 	dev->sg_src = req->src;
 	dev->first = req->src;
@@ -272,15 +270,13 @@ static int rk_ahash_crypto_rx(struct rk_crypto_info *dev)
 
 	dev->unload_data(dev);
 	if (dev->left_bytes) {
-		if (dev->aligned) {
-			if (sg_is_last(dev->sg_src)) {
-				dev_warn(dev->dev, "[%s:%d], Lack of data\n",
-					 __func__, __LINE__);
-				err = -ENOMEM;
-				goto out_rx;
-			}
-			dev->sg_src = sg_next(dev->sg_src);
+		if (sg_is_last(dev->sg_src)) {
+			dev_warn(dev->dev, "[%s:%d], Lack of data\n",
+					__func__, __LINE__);
+			err = -ENOMEM;
+			goto out_rx;
 		}
+		dev->sg_src = sg_next(dev->sg_src);
 		err = rk_ahash_set_data_start(dev);
 	} else {
 		/*
@@ -318,11 +314,6 @@ static int rk_cra_hash_init(struct crypto_tfm *tfm)
 	algt = container_of(alg, struct rk_crypto_tmp, alg.hash);
 
 	tctx->dev = algt->dev;
-	tctx->dev->addr_vir = (void *)__get_free_page(GFP_KERNEL);
-	if (!tctx->dev->addr_vir) {
-		dev_err(tctx->dev->dev, "failed to kmalloc for addr_vir\n");
-		return -ENOMEM;
-	}
 	tctx->dev->start = rk_ahash_start;
 	tctx->dev->update = rk_ahash_crypto_rx;
 	tctx->dev->complete = rk_ahash_crypto_complete;
@@ -345,7 +336,6 @@ static void rk_cra_hash_exit(struct crypto_tfm *tfm)
 {
 	struct rk_ahash_ctx *tctx = crypto_tfm_ctx(tfm);
 
-	free_page((unsigned long)tctx->dev->addr_vir);
 	crypto_free_ahash(tctx->fallback_tfm);
 }
 
diff --git a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
index 1ef94f8db2c5..d067b7f09165 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
@@ -356,7 +356,6 @@ static int rk_ablk_start(struct rk_crypto_info *dev)
 	dev->src_nents = sg_nents(req->src);
 	dev->sg_dst = req->dst;
 	dev->dst_nents = sg_nents(req->dst);
-	dev->aligned = 1;
 
 	spin_lock_irqsave(&dev->lock, flags);
 	rk_ablk_hw_init(dev);
@@ -376,13 +375,9 @@ static void rk_iv_copyback(struct rk_crypto_info *dev)
 
 	/* Update the IV buffer to contain the next IV for encryption mode. */
 	if (!(rctx->mode & RK_CRYPTO_DEC)) {
-		if (dev->aligned) {
-			memcpy(req->iv, sg_virt(dev->sg_dst) +
-				dev->sg_dst->length - ivsize, ivsize);
-		} else {
-			memcpy(req->iv, dev->addr_vir +
-				dev->count - ivsize, ivsize);
-		}
+		memcpy(req->iv,
+		       sg_virt(dev->sg_dst) + dev->sg_dst->length - ivsize,
+		       ivsize);
 	}
 }
 
@@ -420,27 +415,16 @@ static int rk_ablk_rx(struct rk_crypto_info *dev)
 		skcipher_request_cast(dev->async_req);
 
 	dev->unload_data(dev);
-	if (!dev->aligned) {
-		if (!sg_pcopy_from_buffer(req->dst, dev->dst_nents,
-					  dev->addr_vir, dev->count,
-					  dev->total - dev->left_bytes -
-					  dev->count)) {
-			err = -EINVAL;
-			goto out_rx;
-		}
-	}
 	if (dev->left_bytes) {
 		rk_update_iv(dev);
-		if (dev->aligned) {
-			if (sg_is_last(dev->sg_src)) {
-				dev_err(dev->dev, "[%s:%d] Lack of data\n",
+		if (sg_is_last(dev->sg_src)) {
+			dev_err(dev->dev, "[%s:%d] Lack of data\n",
 					__func__, __LINE__);
-				err = -ENOMEM;
-				goto out_rx;
-			}
-			dev->sg_src = sg_next(dev->sg_src);
-			dev->sg_dst = sg_next(dev->sg_dst);
+			err = -ENOMEM;
+			goto out_rx;
 		}
+		dev->sg_src = sg_next(dev->sg_src);
+		dev->sg_dst = sg_next(dev->sg_dst);
 		err = rk_set_data_start(dev);
 	} else {
 		rk_iv_copyback(dev);
@@ -462,13 +446,9 @@ static int rk_ablk_init_tfm(struct crypto_skcipher *tfm)
 	algt = container_of(alg, struct rk_crypto_tmp, alg.skcipher);
 
 	ctx->dev = algt->dev;
-	ctx->dev->align_size = crypto_tfm_alg_alignmask(crypto_skcipher_tfm(tfm)) + 1;
 	ctx->dev->start = rk_ablk_start;
 	ctx->dev->update = rk_ablk_rx;
 	ctx->dev->complete = rk_crypto_complete;
-	ctx->dev->addr_vir = (char *)__get_free_page(GFP_KERNEL);
-	if (!ctx->dev->addr_vir)
-		return -ENOMEM;
 
 	ctx->fallback_tfm = crypto_alloc_skcipher(name, 0, CRYPTO_ALG_NEED_FALLBACK);
 	if (IS_ERR(ctx->fallback_tfm)) {
@@ -488,7 +468,6 @@ static void rk_ablk_exit_tfm(struct crypto_skcipher *tfm)
 	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 
 	memzero_explicit(ctx->key, ctx->keylen);
-	free_page((unsigned long)ctx->dev->addr_vir);
 	crypto_free_skcipher(ctx->fallback_tfm);
 }
 
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
