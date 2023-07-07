Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30A1AEB64DA
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jul 2023 11:53:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V9DzV/9Y9t0IQ6hcloHwjQyqbuGNL81zC2y8QSm2Awc=; b=Kzb0S8PnTdbDdO
	JtHc9QrPbRYo4xVYT5sHv0EeQPtrDkjjlE/YTI/gBDeihoh0IWQ9MzJAIW7uykQe0S8fbSM5qh368
	Cyi4aGwBdkV5iYH6qVuzFC/7dpy0Q+2/+REkQcCvteezOcP92ItiM6FL/+HFcpEWqUOWg1R3xlvkg
	h3NYloL6SdhgvrU5XfN2pG+V0MJ02/9xtmWbP+eQLPgFYntKrdzEGP40d+AOFruoO9Pl7OFxcirN3
	h7KW6Q6LSQqoNdQXgdg/zdABRtOIIAD4kEwMdhpwFxj9zKUSR6d2+hXQaH87Oacqe82mcKfIbDKdf
	P4UoO3N2pb4mSnnRWhmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHk1B-004Yt6-1c;
	Fri, 07 Jul 2023 11:52:57 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHk16-004Yrv-2V
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Jul 2023 11:52:56 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4fb9fd28025so2691608e87.2
        for <linux-rockchip@lists.infradead.org>; Fri, 07 Jul 2023 04:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1688730769; x=1691322769;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6Y+w5MWn1C4WePLmVKNCgDBxYp/cgybF0xRRwrd/3RQ=;
        b=OuMo2BMxADQbrsKT0W8wGl73KWgm8hjySdTfGMs8oYzmrITQ+lupJ2k3/OySL706m8
         f5RGlVwK/2rCu6q7w36wY/BKMCXvKLtp1rrT95c9a23/ZmIuBBU328exBDzFqd1btFoO
         bLiCr4okVXEQwd7oYKtFiHvDKhwc+uhEEMINaOn0RbbbKztOhed6gub/VO+IB/EU6ruL
         KWMvFvLphPW3G1fVkDQEjP2DhPIVycY+D1Jg2B4jAzxdWfVAfHYgTFhSMETI1JtiG8xl
         rVNhZiapjjVbCG/dmoS/5CpX8s73ZM3DzzefTqL/63HxIcPNPFtUIyBuKAkWlGSY48xs
         3ECA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688730769; x=1691322769;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6Y+w5MWn1C4WePLmVKNCgDBxYp/cgybF0xRRwrd/3RQ=;
        b=Ev7q7T1QVjP1gS840tiPGVeK7aQJy2sfJ2bz5eK+ItYUkYq4XknHjrP2hnw639vUpt
         Uu0Nr77A0J6vQBSgcXuahCQtdQT3Z5pZYsRYiVPUaBNil0M28xz1LsKVxuWHTOABQdRV
         lmcbNUW/HwNdKO8pEGReW/DCMjkJRPKp5a8wt3s96ELcRKJztd8pP0gm5rga6LeIqPbC
         Ux3nH7JK3uqjok9SUuioeGEHJ+Xqm5zeNeNIdryG5/T6qUIZwzivYbzdRP0uvxK8hOTn
         /J/iKzm36CSrZ3+2dRlAKE5ARym4kguDtlEOqIVLZtd1lTevjfd6Rk5j7WfbXII8Z7hB
         W+FA==
X-Gm-Message-State: ABy/qLadrojoR2gfy2VEcDGrkaRiaX9zzZDu10uDqU3aYUTt1InYHZnw
	ZjQw6BW8dSOAPjaU7lTvJ0gLOQ==
X-Google-Smtp-Source: APBJJlGOl2VA+2ZazmcSGkNBJZj6EcraqSmx1XdKxrhA5LS4C165elUeY/Wqemgx4Z8WpL2bFc317A==
X-Received: by 2002:a05:6512:3297:b0:4fb:c740:326 with SMTP id p23-20020a056512329700b004fbc7400326mr3399631lfe.55.1688730769012;
        Fri, 07 Jul 2023 04:52:49 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id 23-20020a05600c025700b003fbc9371193sm2243284wmj.13.2023.07.07.04.52.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jul 2023 04:52:48 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net,
	heiko@sntech.de,
	herbert@gondor.apana.org.au
Cc: linux-arm-kernel@lists.infradead.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	mike.rudenko@gmail.com,
	Jason@zx2c4.com,
	Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH RFC/RFT] crypto: rk3288: enable support for TRNG
Date: Fri,  7 Jul 2023 11:52:42 +0000
Message-Id: <20230707115242.3411259-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230707_045252_901359_52E44AC0 
X-CRM114-Status: GOOD (  32.29  )
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

The rockchip IP has a TRNG which could be used as a hwrng.
Since TRNG is only failling rngtests on rk3328 and does not work on
rk3288, the TRNG is enabled only on rk3399 via a variant.
But this is not a surprise since when vendor tried to add support for TRNG upstream,
rk3288 was not handled, and rk3328 was added "disabled", so I conclude
this is a known problem.
Anyway the quality of rk3399 TRNG is low, so a dedicated kconfig option
is done to not enabled it by default.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
Hello

All rk3288 compatible crypto IP have a TRNG and supporting it was awaited for
some time (https://bugzilla.kernel.org/show_bug.cgi?id=216502)

I has some problem with this one, it was the first time I hit so many 100% failure on rngtest.

I finally bisected a RNG_SAMPLE value (1200) which lead to "only" 50-70% failure.
The calcul of fail rate is done with (FIPS 140-2 successes/FIPS 140-2 failures) of rngtest.
Since it is the first time I hit that case, does setting rng_quality to 300 is
what to do (using the worst succes rate of 30%) ?

But I am really puzzled why vendor default is to use RNG_SAMPLE=100 which is total failure (according to rngtest).
Unfortunatly all my try to have more answer from them seems to have been forwarded to /dev/null.

Thanks
Regards
 drivers/crypto/Kconfig                        |  8 ++
 drivers/crypto/rockchip/Makefile              |  1 +
 drivers/crypto/rockchip/rk3288_crypto.c       | 18 +++-
 drivers/crypto/rockchip/rk3288_crypto.h       | 18 ++++
 drivers/crypto/rockchip/rk3288_crypto_ahash.c |  2 +
 .../crypto/rockchip/rk3288_crypto_skcipher.c  |  2 +
 drivers/crypto/rockchip/rk3288_crypto_trng.c  | 92 +++++++++++++++++++
 7 files changed, 140 insertions(+), 1 deletion(-)
 create mode 100644 drivers/crypto/rockchip/rk3288_crypto_trng.c

diff --git a/drivers/crypto/Kconfig b/drivers/crypto/Kconfig
index 44e44b8d9ce6..7226d441686c 100644
--- a/drivers/crypto/Kconfig
+++ b/drivers/crypto/Kconfig
@@ -650,6 +650,14 @@ config CRYPTO_DEV_ROCKCHIP
 	  This driver interfaces with the hardware crypto accelerator.
 	  Supporting cbc/ecb chainmode, and aes/des/des3_ede cipher mode.
 
+config CRYPTO_DEV_ROCKCHIP_TRNG
+	bool "Support for Rockchip TRNG"
+	depends on CRYPTO_DEV_ROCKCHIP
+	select HW_RANDOM
+	help
+	  Select this option if you want to provide kernel-side support for
+	  the True Random Number Generator found in the Crypto IP.
+
 config CRYPTO_DEV_ROCKCHIP_DEBUG
 	bool "Enable Rockchip crypto stats"
 	depends on CRYPTO_DEV_ROCKCHIP
diff --git a/drivers/crypto/rockchip/Makefile b/drivers/crypto/rockchip/Makefile
index 785277aca71e..11910f0e6a62 100644
--- a/drivers/crypto/rockchip/Makefile
+++ b/drivers/crypto/rockchip/Makefile
@@ -3,3 +3,4 @@ obj-$(CONFIG_CRYPTO_DEV_ROCKCHIP) += rk_crypto.o
 rk_crypto-objs := rk3288_crypto.o \
 		  rk3288_crypto_skcipher.o \
 		  rk3288_crypto_ahash.o
+rk_crypto-$(CONFIG_CRYPTO_DEV_ROCKCHIP_TRNG) += rk3288_crypto_trng.o
diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index 9f6ba770a90a..880e4db812a2 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -40,15 +40,18 @@ static const struct rk_variant rk3288_variant = {
 	.num_clks = 4,
 	.rkclks = {
 		{ "sclk", 150000000},
-	}
+	},
+	.trng = false,
 };
 
 static const struct rk_variant rk3328_variant = {
 	.num_clks = 3,
+	.trng = false,
 };
 
 static const struct rk_variant rk3399_variant = {
 	.num_clks = 3,
+	.trng = true,
 };
 
 static int rk_crypto_get_clks(struct rk_crypto_info *dev)
@@ -195,6 +198,10 @@ static int rk_crypto_debugfs_show(struct seq_file *seq, void *v)
 		seq_printf(seq, "%s %s requests: %lu\n",
 			   dev_driver_string(dd->dev), dev_name(dd->dev),
 			   dd->nreq);
+#ifdef CONFIG_CRYPTO_DEV_ROCKCHIP_TRNG
+		seq_printf(seq, "HWRNG: %lu %lu\n",
+			   dd->hwrng_stat_req, dd->hwrng_stat_bytes);
+#endif
 	}
 	spin_unlock(&rocklist.lock);
 
@@ -381,6 +388,10 @@ static int rk_crypto_probe(struct platform_device *pdev)
 			dev_err(dev, "Fail to register crypto algorithms");
 			goto err_register_alg;
 		}
+#ifdef CONFIG_CRYPTO_DEV_ROCKCHIP_TRNG
+		if (crypto_info->variant->trng)
+			rk3288_hwrng_register(crypto_info);
+#endif
 
 		register_debugfs(crypto_info);
 	}
@@ -411,6 +422,11 @@ static int rk_crypto_remove(struct platform_device *pdev)
 #ifdef CONFIG_CRYPTO_DEV_ROCKCHIP_DEBUG
 		debugfs_remove_recursive(rocklist.dbgfs_dir);
 #endif
+#ifdef CONFIG_CRYPTO_DEV_ROCKCHIP_TRNG
+		if (crypto_tmp->variant->trng)
+			rk3288_hwrng_unregister(crypto_tmp);
+#endif
+
 		rk_crypto_unregister();
 	}
 	rk_crypto_pm_exit(crypto_tmp);
diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/rockchip/rk3288_crypto.h
index b2695258cade..016c3b72c19c 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.h
+++ b/drivers/crypto/rockchip/rk3288_crypto.h
@@ -9,6 +9,7 @@
 #include <linux/interrupt.h>
 #include <linux/debugfs.h>
 #include <linux/delay.h>
+#include <linux/hw_random.h>
 #include <linux/pm_runtime.h>
 #include <linux/scatterlist.h>
 #include <crypto/engine.h>
@@ -183,6 +184,16 @@
 #define RK_CRYPTO_HASH_DOUT_6		0x01a4
 #define RK_CRYPTO_HASH_DOUT_7		0x01a8
 
+#define RK_CRYPTO_TRNG_CTRL		0x0200
+#define RK_CRYPTO_OSC_ENABLE		BIT(16)
+#define RK_CRYPTO_TRNG_DOUT_0		0x0204
+/* sample < 1000 lead to 100% failure on rngtest,
+ * using more than 1200 does not increase success.
+ */
+#define RK_CRYPTO_RNG_SAMPLE		1200
+
+#define RK_CRYPTO_MAX_TRNG_BYTE		32
+
 #define CRYPTO_READ(dev, offset)		  \
 		readl_relaxed(((dev)->reg + (offset)))
 #define CRYPTO_WRITE(dev, offset, val)	  \
@@ -212,6 +223,7 @@ struct rk_clks {
 struct rk_variant {
 	int num_clks;
 	struct rk_clks rkclks[RK_MAX_CLKS];
+	bool trng;
 };
 
 struct rk_crypto_info {
@@ -222,11 +234,15 @@ struct rk_crypto_info {
 	struct reset_control		*rst;
 	void __iomem			*reg;
 	int				irq;
+	struct mutex			lock;
+	struct hwrng			hwrng;
 	const struct rk_variant *variant;
 	unsigned long nreq;
 	struct crypto_engine *engine;
 	struct completion complete;
 	int status;
+	unsigned long hwrng_stat_req;
+	unsigned long hwrng_stat_bytes;
 };
 
 /* the private variable of hash */
@@ -288,3 +304,5 @@ extern struct rk_crypto_tmp rk_ahash_md5;
 
 struct rk_crypto_info *get_rk_crypto(void);
 #endif
+int rk3288_hwrng_register(struct rk_crypto_info *rk);
+void rk3288_hwrng_unregister(struct rk_crypto_info *rk);
diff --git a/drivers/crypto/rockchip/rk3288_crypto_ahash.c b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
index a78ff3dcd0b1..67ed3a54bc7b 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_ahash.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
@@ -287,6 +287,7 @@ static int rk_hash_run(struct crypto_engine *engine, void *breq)
 		goto theend;
 	}
 
+	mutex_lock(&rkc->lock);
 	rk_ahash_reg_init(areq, rkc);
 
 	while (sg) {
@@ -321,6 +322,7 @@ static int rk_hash_run(struct crypto_engine *engine, void *breq)
 	}
 
 theend:
+	mutex_unlock(&rkc->lock);
 	pm_runtime_put_autosuspend(rkc->dev);
 
 	local_bh_disable();
diff --git a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
index 59069457582b..304c2c44fea0 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
@@ -357,6 +357,7 @@ static int rk_cipher_run(struct crypto_engine *engine, void *async_req)
 			}
 		}
 		err = 0;
+		mutex_unlock(&rkc->lock);
 		rk_cipher_hw_init(rkc, areq);
 		if (ivsize) {
 			if (ivsize == DES_BLOCK_SIZE)
@@ -372,6 +373,7 @@ static int rk_cipher_run(struct crypto_engine *engine, void *async_req)
 		crypto_dma_start(rkc, sgs, sgd, todo / 4);
 		wait_for_completion_interruptible_timeout(&rkc->complete,
 							  msecs_to_jiffies(2000));
+		mutex_unlock(&rkc->lock);
 		if (!rkc->status) {
 			dev_err(rkc->dev, "DMA timeout\n");
 			err = -EFAULT;
diff --git a/drivers/crypto/rockchip/rk3288_crypto_trng.c b/drivers/crypto/rockchip/rk3288_crypto_trng.c
new file mode 100644
index 000000000000..7a0e1300d0e8
--- /dev/null
+++ b/drivers/crypto/rockchip/rk3288_crypto_trng.c
@@ -0,0 +1,92 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * rk3288_crypto_trng.c - hardware cryptographic offloader for rockchip
+ *
+ * Copyright (C) 2022-2023 Corentin Labbe <clabbe@baylibre.com>
+ *
+ * This file handle the TRNG
+ */
+#include "rk3288_crypto.h"
+#include <linux/hw_random.h>
+#include <linux/iopoll.h>
+#include <linux/pm_runtime.h>
+
+static int rk3288_trng_read(struct hwrng *hwrng, void *data, size_t max, bool wait)
+{
+	struct rk_crypto_info *rk;
+	unsigned int todo;
+	int err = 0;
+	int i;
+	u32 v;
+
+	rk = container_of(hwrng, struct rk_crypto_info, hwrng);
+
+	todo = min_t(size_t, max, RK_CRYPTO_MAX_TRNG_BYTE);
+
+#ifdef CONFIG_CRYPTO_DEV_ROCKCHIP_DEBUG
+	rk->hwrng_stat_req++;
+	rk->hwrng_stat_bytes += todo;
+#endif
+
+	err = pm_runtime_resume_and_get(rk->dev);
+	if (err < 0)
+		goto err_pm;
+
+	mutex_lock(&rk->lock);
+
+#define HIWORD_UPDATE(val, mask, shift) \
+			((val) << (shift) | (mask) << ((shift) + 16))
+	v = RK_CRYPTO_OSC_ENABLE | RK_CRYPTO_RNG_SAMPLE;
+	CRYPTO_WRITE(rk, RK_CRYPTO_TRNG_CTRL, v);
+
+	v = HIWORD_UPDATE(RK_CRYPTO_TRNG_START, RK_CRYPTO_TRNG_START, 0);
+	CRYPTO_WRITE(rk, RK_CRYPTO_CTRL, v);
+	wmb();
+
+	err = readl_poll_timeout(rk->reg + RK_CRYPTO_CTRL, v,
+				 !(v & RK_CRYPTO_TRNG_START),
+				 100, 2000);
+	if (err) {
+		dev_err(rk->dev, "HWRNG read timeout");
+		goto readfail;
+	}
+
+	for (i = 0; i < todo / 4; i++) {
+		v = readl(rk->reg + RK_CRYPTO_TRNG_DOUT_0 + i * 4);
+		put_unaligned_le32(v, data + i * 4);
+	}
+
+	err = todo;
+
+	v = HIWORD_UPDATE(0, RK_CRYPTO_TRNG_START, 0);
+	CRYPTO_WRITE(rk, RK_CRYPTO_CTRL, v);
+
+readfail:
+	mutex_unlock(&rk->lock);
+
+	pm_runtime_put(rk->dev);
+
+err_pm:
+	return err;
+}
+
+int rk3288_hwrng_register(struct rk_crypto_info *rk)
+{
+	int ret;
+
+	dev_info(rk->dev, "Register TRNG with sample=%d\n", RK_CRYPTO_RNG_SAMPLE);
+
+	rk->hwrng.name = "Rockchip rk3288 TRNG";
+	rk->hwrng.read = rk3288_trng_read;
+	rk->hwrng.quality = 300;
+
+	ret = hwrng_register(&rk->hwrng);
+	if (ret)
+		dev_err(rk->dev, "Fail to register the TRNG\n");
+	return ret;
+}
+
+void rk3288_hwrng_unregister(struct rk_crypto_info *rk)
+{
+	hwrng_unregister(&rk->hwrng);
+}
-- 
2.39.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
