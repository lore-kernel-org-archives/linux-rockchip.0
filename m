Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1BDAC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 21:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9oDCRGogE/R/5d7feZnn6ErEhICUSbv2wT1UPDK174Q=; b=aoPXJ5hDmmVL3C
	RSFKrAE4eom0p5hnpho6kEtQshis57cKaio9IWO4DVjAJuKeDDWcDI7UBY78NOgvQ+j+ZRbCHW+MN
	S8u3HZTeeSUM2TRVPiY+M2VatWNuvyFJeweuR81LfYPU/7ufIEDw573uAu7fU+28aj/lMYT6LYDFb
	i0OeA8jolAeeiK60EUehINBFBEnAUki6fWw1xNYJ4Kr9ri58HZTJvmncI04d96R8IoWvRV68Q/aa7
	z73H692pLIGxVlleWdbjZ96PmdmQkIefesDd3n9ZGhPYUQAbCDcZ4Nw+67jcYDrqjicrj0Ca3Rsfi
	Xlw+5Jhmb0VieHl5tdeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPWR3-004HIv-5E; Wed, 02 Mar 2022 21:23:01 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPWFu-004BjX-C1
 for linux-rockchip@lists.infradead.org; Wed, 02 Mar 2022 21:11:36 +0000
Received: by mail-wr1-x431.google.com with SMTP id n14so4744989wrq.7
 for <linux-rockchip@lists.infradead.org>; Wed, 02 Mar 2022 13:11:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Rr/s1AMem5307bBAXneqYLyupU8V7ZeChNQeI5zxrzM=;
 b=JBokm6dBuOP85k33AG5O/a+3vXWgcircm+ObjEvEyE15/5/FznrW/eLqmqgCf+Zd/l
 8vSBREESzAA1q6MwsRukYIS10mZrreHEzZvXcnnJOwlIlsSwSFQw98Mr0odIVEIWXrVZ
 nWzVU/qO40hPqiUC9AFLM5W77cFiKY0KySME/yaveB3O5x6y2qXRnbVt+qbiTckLhztd
 gLUiAAYnJvf2airC1HvVd8apgN2KVuVKdm3t2mFXxsX1rnZJPY7q7c9g8v9odPmkwqe8
 QYt4Mohxp8bp9zq6HfmF9HAS8TLq76yN7ZotHxeZ6n9zsfU+QJcTn59MimmLnGwwSmTe
 ohgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Rr/s1AMem5307bBAXneqYLyupU8V7ZeChNQeI5zxrzM=;
 b=Ahx+mNn6qhUXTe8I4q7MJvQN85GcxCkuPuC5OpqrZp6PoivhpL20D4/FmYHtyety9q
 kIJkAhOLHv0RdJxXNkYuHhEtgWMx2ifLsGCknzDS4RWJ/MQNxOKj3JtFh/DeYRm9GJCN
 IWW++0vgEXJQF2lciE2XchxjNhARVkb4r4sUaQ/X7ViAE0gRrd5tke6ec0vMtLDbvJlS
 QXvftZlx0hIPTrAqdak7k4sPfQ2dsRrBQLivpSgyyB1Svq9M59B93rJI7g813QknSCBv
 1KRohjaQGdsL0Dk/B2+a0mo0JMNKca2PxOSioKgWfECDEDKUm99ZmUHM09t4FHewGJWO
 Lkvw==
X-Gm-Message-State: AOAM531MEvS9gB8vfWIXdGPvu9w1IaK4pWcmQHdT2Vy+kl/16zNScLNC
 DxNndkId15VcGR2PYzKgnLfvIA==
X-Google-Smtp-Source: ABdhPJwpp57UL2OgR9HnHGMBylSPpHRpY/bZQ4XhT2XosbTBwxO8IPFpsOZkvEcBj/RHvQVgMbViqA==
X-Received: by 2002:adf:fbcf:0:b0:1ef:d5f2:23a5 with SMTP id
 d15-20020adffbcf000000b001efd5f223a5mr11929581wrs.567.1646255489050; 
 Wed, 02 Mar 2022 13:11:29 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 z5-20020a05600c0a0500b0037fa93193a8sm145776wmp.44.2022.03.02.13.11.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Mar 2022 13:11:28 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, john@metanate.com,
 Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v2 08/18] crypto: rockchip: better handle cipher key
Date: Wed,  2 Mar 2022 21:11:03 +0000
Message-Id: <20220302211113.4003816-9-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220302211113.4003816-1-clabbe@baylibre.com>
References: <20220302211113.4003816-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_131130_567473_53A5AB73 
X-CRM114-Status: GOOD (  13.68  )
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
 drivers/crypto/rockchip/rk3288_crypto.h          |  1 +
 drivers/crypto/rockchip/rk3288_crypto_skcipher.c | 10 +++++++---
 2 files changed, 8 insertions(+), 3 deletions(-)

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
index bf9d398cc54c..26d74d4bd415 100644
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
@@ -484,6 +487,7 @@ static void rk_ablk_exit_tfm(struct crypto_skcipher *tfm)
 {
 	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 
+	memzero_explicit(ctx->key, ctx->keylen);
 	free_page((unsigned long)ctx->dev->addr_vir);
 	crypto_free_skcipher(ctx->fallback_tfm);
 }
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
