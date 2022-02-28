Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 058C2C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 19:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jy+cQFyMOF/w4s7iBdE5wgUKUjJ5lsTxEioex87U3UQ=; b=uxRT0rLOkOSICC
	cL/P4d5OMoBZpCfQkkTz8F50oEQdcXewxnWvU11lQFpgCPvgv8bfbUzeXyigUQlYu+p4kEIYhL6WV
	FyN1FaaGIHa6s3G48/qE/KXBJDW3Z5C8dXl+7Cc1e/kLzZJrowCB2XuhvVmGi8F++e1ps6/kEN3Lr
	6ZoGGSh7ySR0IpjS2Scxrg0E6yx5pmUAK/TaTtRGgd8NFveQGcf8GUvcHd3TzA1y79aLoPtD9raY7
	8ErGx5t+n3KiSGQhUWkHRYO/S0hnQtTZvqc9d1WWReapaFRrTUdZkS/C8Wwh99Ib1yYxjeGCLRUHz
	u/JpqcUZyO4Jbd7f+Qpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOlvx-00Doqn-Hw; Mon, 28 Feb 2022 19:43:49 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOlt4-00DnaM-Vr
 for linux-rockchip@lists.infradead.org; Mon, 28 Feb 2022 19:40:55 +0000
Received: by mail-wm1-x335.google.com with SMTP id
 n13-20020a05600c3b8d00b0037bff8a24ebso49929wms.4
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Feb 2022 11:40:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=F29NhyhRGwZzMFTx8mQRXilZvucaQuN0j6i5TN7/b3I=;
 b=VQXUifG0yVtXpgJZZlDW91n8TBcQ1Gf9UgRoho0rrVVplb120K1t18s+NcwxGoAbNz
 Xe55meGo81BEee65Kzi+Ql5BTOQd+Lx8hvBQyv8mfzgPGBC6goTuMfWnxWPjAEmdbV7D
 n4fUJsNoy8SMxorYJ6sL2nUqVxgWgonj9Z3ak1OSQRVHDKVq+C9zIDhbDvwPDqhs3YgF
 TC1vG5JC1w5xlf4g2v8W/jb0tM8pTHGQqjvaVpGtdLPN0f2AMpt4i6xd3uKuFge1K3YC
 4ZlnVWEoQtavNghlofYcHOP6GcwdoBZuvp6AEf9yUGkOq9djs7YQoY4loIxHSxZoEDsN
 96lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=F29NhyhRGwZzMFTx8mQRXilZvucaQuN0j6i5TN7/b3I=;
 b=i4p/MhzNzaPVubgAF9EE1KJolMtzmzPUaF0MNsnsyP+JAfr0grOT7LvfhC8Sh0TmM9
 Q3WDY+A8NGwOnBpUH5KZoD1A3/mYT1Z6V8urtXGeOdwnV0PYF1aIr9nGDwcJmVVxm/2P
 FX9tHiuHX7Db/kBuVVc9MpIKEiNNuO+A4u6tx93gmSXQN5lcf34e2x0NY55O35td/+a8
 B3/7s2dmr58fxgX7HLPilq6IbxNaPaK1ueGGzdgC+QPoF0oZRCh/TTwX+GXu6SvryRjb
 NTA67n8/TnT0BQMD4EdZlqCimyH++zyCnp9JrB/Jifx1bVv3Y2ezMLUcwN8eYQxr45PS
 oVWA==
X-Gm-Message-State: AOAM532zcl7wsdEtYoMaM0Ismy+9+1uIEJ806wM9KaTZp13G7RYg7c5/
 HVNRDS7sLNG9jIP+9PGN6gWsmUG7UpfNOg==
X-Google-Smtp-Source: ABdhPJw3awcmd3PzDK6cgXM+7gY5JHwNU8oy961e1ncnFg6bhv5kCTrmL0gcmLKYifc0TFgTTF0RLw==
X-Received: by 2002:a05:600c:297:b0:381:41d3:e22f with SMTP id
 23-20020a05600c029700b0038141d3e22fmr11662361wmk.108.1646077249449; 
 Mon, 28 Feb 2022 11:40:49 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 v25-20020a05600c215900b0038117f41728sm274143wml.43.2022.02.28.11.40.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 11:40:49 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski@canonical.com, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH 08/16] crypto: rockchip: better handle cipher key
Date: Mon, 28 Feb 2022 19:40:29 +0000
Message-Id: <20220228194037.1600509-9-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220228194037.1600509-1-clabbe@baylibre.com>
References: <20220228194037.1600509-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_114051_096888_42A89827 
X-CRM114-Status: GOOD (  12.76  )
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

The key should not be set in hardware too much in advance, this will
fail it 2 TFM with different keys generate alternative requests.
The key should be stored and used just before doing cipher operations.

Fixes: ce0183cb6464b ("crypto: rockchip - switch to skcipher API")
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.h          | 1 +
 drivers/crypto/rockchip/rk3288_crypto_skcipher.c | 9 ++++++---
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/rockchip/rk3288_crypto.h
index 8b1e15d8ddc6..826508e4a0c3 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.h
+++ b/drivers/crypto/rockchip/rk3288_crypto.h
@@ -245,6 +245,7 @@ struct rk_ahash_rctx {
 struct rk_cipher_ctx {
 	struct rk_crypto_info		*dev;
 	unsigned int			keylen;
+	u32 key[AES_MAX_KEY_SIZE / 4];
 	u8				iv[AES_BLOCK_SIZE];
 	struct crypto_skcipher *fallback_tfm;
 };
diff --git a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
index 060d52f18b31..cc817d361fda 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
@@ -95,7 +95,7 @@ static int rk_aes_setkey(struct crypto_skcipher *cipher,
 	    keylen != AES_KEYSIZE_256)
 		return -EINVAL;
 	ctx->keylen = keylen;
-	memcpy_toio(ctx->dev->reg + RK_CRYPTO_AES_KEY_0, key, keylen);
+	memcpy(ctx->key, key, keylen);
 
 	return crypto_skcipher_setkey(ctx->fallback_tfm, key, keylen);
 }
@@ -111,7 +111,7 @@ static int rk_des_setkey(struct crypto_skcipher *cipher,
 		return err;
 
 	ctx->keylen = keylen;
-	memcpy_toio(ctx->dev->reg + RK_CRYPTO_TDES_KEY1_0, key, keylen);
+	memcpy(ctx->key, key, keylen);
 
 	return crypto_skcipher_setkey(ctx->fallback_tfm, key, keylen);
 }
@@ -127,7 +127,8 @@ static int rk_tdes_setkey(struct crypto_skcipher *cipher,
 		return err;
 
 	ctx->keylen = keylen;
-	memcpy_toio(ctx->dev->reg + RK_CRYPTO_TDES_KEY1_0, key, keylen);
+	memcpy(ctx->key, key, keylen);
+
 	return crypto_skcipher_setkey(ctx->fallback_tfm, key, keylen);
 }
 
@@ -283,6 +284,7 @@ static void rk_ablk_hw_init(struct rk_crypto_info *dev)
 			     RK_CRYPTO_TDES_BYTESWAP_IV;
 		CRYPTO_WRITE(dev, RK_CRYPTO_TDES_CTRL, rctx->mode);
 		memcpy_toio(dev->reg + RK_CRYPTO_TDES_IV_0, req->iv, ivsize);
+		memcpy_toio(ctx->dev->reg + RK_CRYPTO_TDES_KEY1_0, ctx->key, ctx->keylen);
 		conf_reg = RK_CRYPTO_DESSEL;
 	} else {
 		rctx->mode |= RK_CRYPTO_AES_FIFO_MODE |
@@ -295,6 +297,7 @@ static void rk_ablk_hw_init(struct rk_crypto_info *dev)
 			rctx->mode |= RK_CRYPTO_AES_256BIT_key;
 		CRYPTO_WRITE(dev, RK_CRYPTO_AES_CTRL, rctx->mode);
 		memcpy_toio(dev->reg + RK_CRYPTO_AES_IV_0, req->iv, ivsize);
+		memcpy_toio(ctx->dev->reg + RK_CRYPTO_AES_KEY_0, ctx->key, ctx->keylen);
 	}
 	conf_reg |= RK_CRYPTO_BYTESWAP_BTFIFO |
 		    RK_CRYPTO_BYTESWAP_BRFIFO;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
