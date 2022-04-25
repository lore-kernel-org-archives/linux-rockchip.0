Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A045C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 20:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gLQsKHegW+TCTAFVonO8Ws4KJk4KnRnGS0aPTcFH6u0=; b=EWtoSBsXj13vgr
	RBAmrUnhgKvd1UzbLuQge5xPRE8e3d+uAjW2RYO/ZuYuyVu9pXyFRenhH96FneJzLwfPn/44vGUqb
	btjGX2cVKSW8hmd4FrO1phVdCNXzMS9rIyNVI+/b2CE1y+USgIUnHbIM2CQipURODRKhW0bhBnxL1
	Sb3t7cpNq73BwxxovZSSjTllDaVPsjiJwwtUA75bzxML1IhUWxphOTvJ3q97X9nfk17r9ZV7PQ/GS
	rv2XlCaw6sUjVWlacZSPy9eirWGzzVTfJjMYIfdn9+4WpyxqtcpT7Us9QelSqaNErPmS9S8OXnd6g
	XNTQlD2btKTD0YfSeuLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj5E1-00BBRe-4Y; Mon, 25 Apr 2022 20:22:25 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj5DB-00BAuL-RI
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 20:21:36 +0000
Received: by mail-wr1-x42a.google.com with SMTP id u3so22498740wrg.3
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 13:21:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7/VLG1dlj3zpu6COMXUYDrFqGjEneQqP9DO34Aaku7s=;
 b=4uH4j3ch+yXi4leFKe7In9qqcSBrcYprSU1GattxAeiSDEiZHfjvtDhw4lkCz8MmSd
 ePFKS4e99hp0zY7CwSWWuXWG9i9BhL/RYw3OOptcI+NsSM2qv2hCfZ7NwG6tR/iVIqSv
 IWCNlEvXri+jITLqk4uJms0yKb2uyWNtX0eGABARXI4a6CEifICBD4K8E3fEyWDNvGsb
 8ju07MIlt2wVtDwfI1LVuafp9xbWNbhx5xDWu+vL6hOOpscsPryhbZvAxTWQr76VsL2l
 M4u/ZOIQBxK/cvB4Hq4WHbhFl3f8NXuDoCPPniQFty2/fsbLL9u+2wyk9dI1rgN8H8TR
 O9sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7/VLG1dlj3zpu6COMXUYDrFqGjEneQqP9DO34Aaku7s=;
 b=qd1/ku5L+YbcQH85nGRA+v044jvQkvLuoe9mnrRC0lOHeJGezfFqVubz4TUeY4BZYz
 GF3llH4vk0Pu1RaUgqS9HS14BP03e1ixXV32Cf/blJHi4QkOO/I77bJAeplO5X8o/I7c
 c1NmLLt+5cv0bhyyuE9aP+EEpSToyVzSjKUmZLYT8e2elYuAszX7XyHBu5a5psX4BUPG
 brNxIZRqC0JTiY7Q+Smx/ECSNnUhi9yAbYE3wiOm/Ay2/6K3uUfIWrFW2K+E3TOmquDf
 jtjMU7wydtVGVp+bSYeIa6qassUEeokhuNeLvpmdJDmFtVFwtveY36q5bfpzpm+ALm7l
 92Ew==
X-Gm-Message-State: AOAM5314C6FMwZvn1XmFtdCIEW3WsvnxRo6bqsGNmQ1Z+QUtwCvO8dSd
 1e651q84UgPRvTAjFYsFozLr0w==
X-Google-Smtp-Source: ABdhPJynU8/kJdnZEBZ5SifGxxFydrn4IAUA7zi/7vStRZMfRuUEBxhsUEiApXBUoraa1avzz8vMxg==
X-Received: by 2002:a05:6000:1547:b0:20a:79dd:28bf with SMTP id
 7-20020a056000154700b0020a79dd28bfmr15140151wry.505.1650918090642; 
 Mon, 25 Apr 2022 13:21:30 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 p3-20020a5d59a3000000b0020a9132d1fbsm11101003wrr.37.2022.04.25.13.21.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 13:21:30 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v6 03/33] crypto: rockchip: do not do custom power management
Date: Mon, 25 Apr 2022 20:20:49 +0000
Message-Id: <20220425202119.3566743-4-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220425202119.3566743-1-clabbe@baylibre.com>
References: <20220425202119.3566743-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_132133_984357_818FF8DE 
X-CRM114-Status: GOOD (  15.47  )
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

The clock enable/disable at tfm init/exit is fragile,
if 2 tfm are init in the same time and one is removed just after,
it will leave the hardware uncloked even if a user remains.

Instead simply enable clocks at probe time.
We will do PM later.

Fixes: ce0183cb6464b ("crypto: rockchip - switch to skcipher API")
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c          | 4 ++--
 drivers/crypto/rockchip/rk3288_crypto.h          | 2 --
 drivers/crypto/rockchip/rk3288_crypto_ahash.c    | 3 +--
 drivers/crypto/rockchip/rk3288_crypto_skcipher.c | 5 +++--
 4 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index 21d3f1458584..4cff49b82983 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -394,8 +394,7 @@ static int rk_crypto_probe(struct platform_device *pdev)
 		     rk_crypto_done_task_cb, (unsigned long)crypto_info);
 	crypto_init_queue(&crypto_info->queue, 50);
 
-	crypto_info->enable_clk = rk_crypto_enable_clk;
-	crypto_info->disable_clk = rk_crypto_disable_clk;
+	rk_crypto_enable_clk(crypto_info);
 	crypto_info->load_data = rk_load_data;
 	crypto_info->unload_data = rk_unload_data;
 	crypto_info->enqueue = rk_crypto_enqueue;
@@ -422,6 +421,7 @@ static int rk_crypto_remove(struct platform_device *pdev)
 	struct rk_crypto_info *crypto_tmp = platform_get_drvdata(pdev);
 
 	rk_crypto_unregister();
+	rk_crypto_disable_clk(crypto_tmp);
 	tasklet_kill(&crypto_tmp->done_task);
 	tasklet_kill(&crypto_tmp->queue_task);
 	return 0;
diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/rockchip/rk3288_crypto.h
index 97278c2574ff..2fa7131e4060 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.h
+++ b/drivers/crypto/rockchip/rk3288_crypto.h
@@ -220,8 +220,6 @@ struct rk_crypto_info {
 	int (*start)(struct rk_crypto_info *dev);
 	int (*update)(struct rk_crypto_info *dev);
 	void (*complete)(struct crypto_async_request *base, int err);
-	int (*enable_clk)(struct rk_crypto_info *dev);
-	void (*disable_clk)(struct rk_crypto_info *dev);
 	int (*load_data)(struct rk_crypto_info *dev,
 			 struct scatterlist *sg_src,
 			 struct scatterlist *sg_dst);
diff --git a/drivers/crypto/rockchip/rk3288_crypto_ahash.c b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
index ed03058497bc..49017d1fb510 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_ahash.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
@@ -301,7 +301,7 @@ static int rk_cra_hash_init(struct crypto_tfm *tfm)
 				 sizeof(struct rk_ahash_rctx) +
 				 crypto_ahash_reqsize(tctx->fallback_tfm));
 
-	return tctx->dev->enable_clk(tctx->dev);
+	return 0;
 }
 
 static void rk_cra_hash_exit(struct crypto_tfm *tfm)
@@ -309,7 +309,6 @@ static void rk_cra_hash_exit(struct crypto_tfm *tfm)
 	struct rk_ahash_ctx *tctx = crypto_tfm_ctx(tfm);
 
 	free_page((unsigned long)tctx->dev->addr_vir);
-	return tctx->dev->disable_clk(tctx->dev);
 }
 
 struct rk_crypto_tmp rk_ahash_sha1 = {
diff --git a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
index 5bbf0d2722e1..8c44a19eab75 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
@@ -388,8 +388,10 @@ static int rk_ablk_init_tfm(struct crypto_skcipher *tfm)
 	ctx->dev->update = rk_ablk_rx;
 	ctx->dev->complete = rk_crypto_complete;
 	ctx->dev->addr_vir = (char *)__get_free_page(GFP_KERNEL);
+	if (!ctx->dev->addr_vir)
+		return -ENOMEM;
 
-	return ctx->dev->addr_vir ? ctx->dev->enable_clk(ctx->dev) : -ENOMEM;
+	return 0;
 }
 
 static void rk_ablk_exit_tfm(struct crypto_skcipher *tfm)
@@ -397,7 +399,6 @@ static void rk_ablk_exit_tfm(struct crypto_skcipher *tfm)
 	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 
 	free_page((unsigned long)ctx->dev->addr_vir);
-	ctx->dev->disable_clk(ctx->dev);
 }
 
 struct rk_crypto_tmp rk_ecb_aes_alg = {
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
