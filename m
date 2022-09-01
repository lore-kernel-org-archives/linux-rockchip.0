Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62831C0502C
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 13:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iYFpc/Kmt+gMZIxwyMUVdKUhc0T64WmCLTm1jbbS9JU=; b=Sf+xUeKf8/wXv5
	9QIb9Ysal2594qQGm61MSCJu8xK/l1mwrsffkGL2rjQ5M+XaQ5+3WoKT47idkXrBVgXshhG+jmmd8
	KeO7LpnO0W7pL4QZNVjKloTPeULv0jQ+3S33kDInzYf1w0GhxpF0qZvBiRXOpV59OdjUE46wnxWfa
	eAjtwxyiPd1U+KsrDhzRyp0b+LkG1o3vn0uscqapwMlIkRcTVW0/HD8zA25+8cbUuqHtuAm2yf85q
	XiSulHCmNrR4GbxwI+hgBhlP8k1ik6JDcKCMk5ay6vHR+dnd70yXLuvrTAQ1qG+bY/VY6rVrNlrTS
	QI23PCWQZKG/Fdp3cXFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTjps-00BqRD-2W; Thu, 01 Sep 2022 13:02:20 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTjlJ-00BnlL-Vx
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 12:57:39 +0000
Received: by mail-wr1-x435.google.com with SMTP id v16so19521502wrm.8
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Sep 2022 05:57:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=Q4N9p9400PLUtdaZmzB/PKY2HSpZteQvpiDlvRaNw2k=;
        b=P2LFdx5RKeVOaV/RmLoKixcLnM6mZVHHwl8TxVlQhU4ildksy+ZrHtN+HIBw4+FDJt
         OOb6CgivmYKWp+bXKCNkhy77Ha+nWPsfaN+MsMig4qe+HiPPusAxFKGhhDcq7+vTl9Q+
         KoDiyKA81QxYEBTLJuQr4XG6SkyhqcROAmwsbJWDjH7/tfM1P79gYgW7bduBVKm2qi7S
         LbMwD6vPiTaKxdgiVwXMPo4MH+wlD2s/xXOe8LYLjEMed02Q/o5gl8FI/x1ZN1IFF9EB
         M5Uw7A2p5qMRNDh3UMg49dheziR5ou2NGHkRIItMCvjcd7kqfc0SHehb+75PR/TSsDWX
         Snpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=Q4N9p9400PLUtdaZmzB/PKY2HSpZteQvpiDlvRaNw2k=;
        b=evyF8cbpUR+MhEKJnNUVN1Gfx5F6UNjvOgvW+thVcktVP4KgxYwQkG06mOU08sUa93
         OfhVa+maVIr4TbbDyPionI0119fIfQnGnh9L3wC3GCKw1r3jGqnGKV96Gs/G56vtRkNg
         r4YxkHo74czGlG/cTzcUnqDbuId7gErA4MPr04XabOxKtpSTsuIYvN81LkjO6ZI6RCC6
         ZOVh3cOYqLZQhfULpNTU5Q6tPatHiiMKOAA80R7gMpVSdf148cnRZV9dK13Gy4ylRb2f
         Vu2sDVDIYtY3J2mEU3H1fyL2kUjvzauitg9tqmrmgBdAsC7a5a55wMQocor7xS6fKbQx
         fRYA==
X-Gm-Message-State: ACgBeo2gbF1kL7d4xFXC+1iviowggzyIIH6Tp4je7+QOfJ0LGCLsScmc
	PLe6Dk3hUHF3X2fTgrQ/GV0LFw==
X-Google-Smtp-Source: AA6agR7wDcHlgrmkphmGc0EI6uiFAbBrS4ra9wtHUL6aG2VdwesaVBvcjAu6ImJfD+Xp1KjGguUmQA==
X-Received: by 2002:adf:f942:0:b0:225:82f9:1c0f with SMTP id q2-20020adff942000000b0022582f91c0fmr14878436wrr.332.1662037057494;
        Thu, 01 Sep 2022 05:57:37 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v5-20020a5d59c5000000b002257fd37877sm15556709wry.6.2022.09.01.05.57.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 05:57:37 -0700 (PDT)
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
Subject: [PATCH v9 20/33] crypto: rockchip: rename ablk functions to cipher
Date: Thu,  1 Sep 2022 12:56:57 +0000
Message-Id: <20220901125710.3733083-21-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901125710.3733083-1-clabbe@baylibre.com>
References: <20220901125710.3733083-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_055738_046889_80CE9483 
X-CRM114-Status: GOOD (  10.93  )
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

Some functions have still ablk in their name even if there are
not handling ablk_cipher anymore.
So let's rename them.

Reviewed-by: John Keeping <john@metanate.com>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../crypto/rockchip/rk3288_crypto_skcipher.c  | 32 +++++++++----------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
index 3bdb304aa794..d60c206e717d 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
@@ -273,7 +273,7 @@ static int rk_des3_ede_cbc_decrypt(struct skcipher_request *req)
 	return rk_handle_req(dev, req);
 }
 
-static void rk_ablk_hw_init(struct rk_crypto_info *dev, struct skcipher_request *req)
+static void rk_cipher_hw_init(struct rk_crypto_info *dev, struct skcipher_request *req)
 {
 	struct crypto_skcipher *cipher = crypto_skcipher_reqtfm(req);
 	struct crypto_tfm *tfm = crypto_skcipher_tfm(cipher);
@@ -382,7 +382,7 @@ static int rk_cipher_run(struct crypto_engine *engine, void *async_req)
 			}
 		}
 		err = 0;
-		rk_ablk_hw_init(ctx->dev, areq);
+		rk_cipher_hw_init(ctx->dev, areq);
 		if (ivsize) {
 			if (ivsize == DES_BLOCK_SIZE)
 				memcpy_toio(ctx->dev->reg + RK_CRYPTO_TDES_IV_0, ivtouse, ivsize);
@@ -448,7 +448,7 @@ static int rk_cipher_run(struct crypto_engine *engine, void *async_req)
 	return err;
 }
 
-static int rk_ablk_init_tfm(struct crypto_skcipher *tfm)
+static int rk_cipher_tfm_init(struct crypto_skcipher *tfm)
 {
 	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct skcipher_alg *alg = crypto_skcipher_alg(tfm);
@@ -482,7 +482,7 @@ static int rk_ablk_init_tfm(struct crypto_skcipher *tfm)
 	return err;
 }
 
-static void rk_ablk_exit_tfm(struct crypto_skcipher *tfm)
+static void rk_cipher_tfm_exit(struct crypto_skcipher *tfm)
 {
 	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 
@@ -503,8 +503,8 @@ struct rk_crypto_tmp rk_ecb_aes_alg = {
 		.base.cra_alignmask	= 0x0f,
 		.base.cra_module	= THIS_MODULE,
 
-		.init			= rk_ablk_init_tfm,
-		.exit			= rk_ablk_exit_tfm,
+		.init			= rk_cipher_tfm_init,
+		.exit			= rk_cipher_tfm_exit,
 		.min_keysize		= AES_MIN_KEY_SIZE,
 		.max_keysize		= AES_MAX_KEY_SIZE,
 		.setkey			= rk_aes_setkey,
@@ -525,8 +525,8 @@ struct rk_crypto_tmp rk_cbc_aes_alg = {
 		.base.cra_alignmask	= 0x0f,
 		.base.cra_module	= THIS_MODULE,
 
-		.init			= rk_ablk_init_tfm,
-		.exit			= rk_ablk_exit_tfm,
+		.init			= rk_cipher_tfm_init,
+		.exit			= rk_cipher_tfm_exit,
 		.min_keysize		= AES_MIN_KEY_SIZE,
 		.max_keysize		= AES_MAX_KEY_SIZE,
 		.ivsize			= AES_BLOCK_SIZE,
@@ -548,8 +548,8 @@ struct rk_crypto_tmp rk_ecb_des_alg = {
 		.base.cra_alignmask	= 0x07,
 		.base.cra_module	= THIS_MODULE,
 
-		.init			= rk_ablk_init_tfm,
-		.exit			= rk_ablk_exit_tfm,
+		.init			= rk_cipher_tfm_init,
+		.exit			= rk_cipher_tfm_exit,
 		.min_keysize		= DES_KEY_SIZE,
 		.max_keysize		= DES_KEY_SIZE,
 		.setkey			= rk_des_setkey,
@@ -570,8 +570,8 @@ struct rk_crypto_tmp rk_cbc_des_alg = {
 		.base.cra_alignmask	= 0x07,
 		.base.cra_module	= THIS_MODULE,
 
-		.init			= rk_ablk_init_tfm,
-		.exit			= rk_ablk_exit_tfm,
+		.init			= rk_cipher_tfm_init,
+		.exit			= rk_cipher_tfm_exit,
 		.min_keysize		= DES_KEY_SIZE,
 		.max_keysize		= DES_KEY_SIZE,
 		.ivsize			= DES_BLOCK_SIZE,
@@ -593,8 +593,8 @@ struct rk_crypto_tmp rk_ecb_des3_ede_alg = {
 		.base.cra_alignmask	= 0x07,
 		.base.cra_module	= THIS_MODULE,
 
-		.init			= rk_ablk_init_tfm,
-		.exit			= rk_ablk_exit_tfm,
+		.init			= rk_cipher_tfm_init,
+		.exit			= rk_cipher_tfm_exit,
 		.min_keysize		= DES3_EDE_KEY_SIZE,
 		.max_keysize		= DES3_EDE_KEY_SIZE,
 		.setkey			= rk_tdes_setkey,
@@ -615,8 +615,8 @@ struct rk_crypto_tmp rk_cbc_des3_ede_alg = {
 		.base.cra_alignmask	= 0x07,
 		.base.cra_module	= THIS_MODULE,
 
-		.init			= rk_ablk_init_tfm,
-		.exit			= rk_ablk_exit_tfm,
+		.init			= rk_cipher_tfm_init,
+		.exit			= rk_cipher_tfm_exit,
 		.min_keysize		= DES3_EDE_KEY_SIZE,
 		.max_keysize		= DES3_EDE_KEY_SIZE,
 		.ivsize			= DES_BLOCK_SIZE,
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
