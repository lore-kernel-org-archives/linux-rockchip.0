Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDAC0C0502C
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 14:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WAPXXihdVJ+21V4ph0jCloTOLOp7bS1fGX26qrL/Faw=; b=LBsAQNroR5vKd5
	yiOu0c85jMTfHdfZwe/nPj6FdQ30eyDftdb0gQ1rVW48qJDeh6Vm81jZFDZkt91jyebxe55qI8jex
	X0ccJbSCU0qhyoyGgamtsgtheRQAil6qJXv35VqqWvOGaVc43cg6FsxkuMZ+5ag5Bj48V2laziwWh
	SYsS14EUVAjbTQFkiEgshf9b4d2qKOR0bt5y38wppjaLEr6QonNkhiuFzewCpBXujc3li4ZtZqXa2
	1Te496dHG96QYjTvl856vROKsBU5z+xWvVZIAI0meVC5K9XBnIn0siE3fJuEGTyQd2c3oyCNA2Yha
	pLjL5L8LAP01UK1nik/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTkpB-00CK9O-0s; Thu, 01 Sep 2022 14:05:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTkn0-00CIuS-Ls
	for linux-rockchip@bombadil.infradead.org; Thu, 01 Sep 2022 14:03:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=LTH5XZUoNfw5j5g91Ov715oBhaysSZASayzIPMZPNtU=; b=qaCL46tfjGslSSatOjmnNi+T1B
	5AYZrhqZVOjkN1nloYpod90ox3VAE1YizNWOjT7qkcaBZFTcrYmUDAvrCv+0sFPfpZC2KOdBQCWJJ
	Al1++4CRNGqfTGQj7n35qj0y2dWNHaYXSPmYPOmdHMhyC2VjW4NCpUjIOjTBFsibSNYySZH04XJHd
	72394lIADixRfSTCZzlnipesOxg+QZugE0mQmxkBtbgxGM1hT+rmScJJIMBWp9yBprBZtwADSElW/
	8998xBxfTRb/gxEIxB5zp+9O0dtqQSYbblwTOYeMGlKWWKXIq41DBOwMXCboQ5GN2Bw0Xf0UNSiq6
	RPb/4YkA==;
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTjlE-008P18-36
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 12:57:39 +0000
Received: by mail-wr1-x429.google.com with SMTP id b5so22236298wrr.5
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Sep 2022 05:57:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=LTH5XZUoNfw5j5g91Ov715oBhaysSZASayzIPMZPNtU=;
        b=VYxGYEc6y8usYO+JZP4QiOgrlAGRG1wLu624U1JUq4TxEmK1mbvCkzUiuKEXm22xal
         3H9qP5Da0oEc3yXxL3PIie1urXWExvZQWjGbsUnGVuQH5OJLJFNPHj2xAlsUqZSMqKcb
         gitBQXGi9lPoVR438U+lKSxjtEzbkwxYUrul5CsmLyZN8Vti2mWjqCY+cpTuJGv2rU6m
         is3XTP2TZ8tmH88lnBilKEgZ8zy323Y6duRYXAM8uUJdxuaRDSqZXUPDQw8A2uktrxSF
         QAoFZQPurp8fgI/hWuGmyrWlnVSplO03GTQUvhDiqUP/W88mk4jD+jQE7DhKfA4UGY6+
         CUmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=LTH5XZUoNfw5j5g91Ov715oBhaysSZASayzIPMZPNtU=;
        b=c+BarQptTH7iA9s6Rsb9AfCpZsfAOySQ+O+b08BiOzM8PntE5qCZ6gH2ouWZ6hbfVS
         UBehJUn++NpY+52lslcKaQCY3fUqfqyX6zJqyNyv28751TgqCcuYYBk/qjGG6jmF5tJF
         ehU6kEVrjZ/gaqjJ+e5nnf8DUM6heAdTr0xyNy4v9FqmSnIlhwyRfA+ozCXQjmral5uJ
         F0K/y4vQ5nIFk+Iujcbo1pqq277KHQNo/B0xFmzNH/BMJYAqDQO9ckxFcisV3HfxjuWS
         AkvbFZR9Y619rRzSV37TQ5+K7NLpGuHIABcFk0ym21JuPnJ6MJBtOWn1iDaZp/cW9th6
         3uqA==
X-Gm-Message-State: ACgBeo3PwzjbbZ0AL0IN956DXNd+S4eFlJ/tLMzDiKZtBb7zqbsJuzPe
	ZA8QZ+z3L7NvdMFIUpJ0328CWQ==
X-Google-Smtp-Source: AA6agR4mV5NDTCwgX/NSmjzhziV9s7rwYzU4FAVxYvSMWarz5wSaDTCmBz5mHC5Ia9l4DI5pwguT/w==
X-Received: by 2002:a5d:4c51:0:b0:226:d2fb:85d7 with SMTP id n17-20020a5d4c51000000b00226d2fb85d7mr13699878wrt.210.1662037045073;
        Thu, 01 Sep 2022 05:57:25 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v5-20020a5d59c5000000b002257fd37877sm15556709wry.6.2022.09.01.05.57.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 05:57:24 -0700 (PDT)
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
Subject: [PATCH v9 08/33] crypto: rockchip: better handle cipher key
Date: Thu,  1 Sep 2022 12:56:45 +0000
Message-Id: <20220901125710.3733083-9-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901125710.3733083-1-clabbe@baylibre.com>
References: <20220901125710.3733083-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_135732_307577_72C34E3E 
X-CRM114-Status: GOOD (  13.57  )
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

The key should not be set in hardware too much in advance, this will
fail it 2 TFM with different keys generate alternative requests.
The key should be stored and used just before doing cipher operations.

Fixes: ce0183cb6464b ("crypto: rockchip - switch to skcipher API")
Reviewed-by: John Keeping <john@metanate.com>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.h          |  1 +
 drivers/crypto/rockchip/rk3288_crypto_skcipher.c | 10 +++++++---
 2 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/rockchip/rk3288_crypto.h
index 8b1e15d8ddc6..540b81a14b9b 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.h
+++ b/drivers/crypto/rockchip/rk3288_crypto.h
@@ -245,6 +245,7 @@ struct rk_ahash_rctx {
 struct rk_cipher_ctx {
 	struct rk_crypto_info		*dev;
 	unsigned int			keylen;
+	u8				key[AES_MAX_KEY_SIZE];
 	u8				iv[AES_BLOCK_SIZE];
 	struct crypto_skcipher *fallback_tfm;
 };
diff --git a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
index eac5bba66e25..1ef94f8db2c5 100644
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
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
