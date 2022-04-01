Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72485C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Apr 2022 20:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=86U1S4D3ucUwJDiGf4Xa4kz8Z7RUMx3koY8gXBCuQYk=; b=HI2DACaDFhnSxX
	c54t/3X0ARheizfA6R2D90IHUjXJB6MQcP3mxlLYY8idI2l3m4Z5l5TLIMeNXuR9BFv9uT1hfDGZf
	7XraI0+3+5dUEsU2MBvqS8PWHX6qovdvf9MB84MaB7oABkYeUD4OGAKNYgPpFJK5mD2a3CZWx/leu
	G48YxcucmrO1oMYNbq7bQtPkq8CdTxHD58woAHfNM2JJXZ8TkWqVyt5OawcmDAXhE+0S/sJ5dqulA
	t/6UizvBquxrR2qm6BgvemyXxnZTuFz6NsGXiOjZ2tQge70i4UKiBa50tL7HPPoKbDZl/JjiHvhkr
	r8NlR3R+9Eww7BN13r/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naODj-007JYn-6r; Fri, 01 Apr 2022 20:50:11 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naODG-007IwW-2o
 for linux-rockchip@bombadil.infradead.org; Fri, 01 Apr 2022 20:49:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=41WwiG2hYkDaYUoIBM78RppkWLusFi33pXJ3vgOX1eE=; b=fChLLOf2rI6NoMwB3r/0/4liKo
 ga8nQZsKkoMseeHuNItA+th5XSmdrZi9eRGCKYts5XNWrfF9npDgTekP1NYlkqjuZzn15iA6reK7T
 yjh3G26gNK1xu08BhxIi4Yv+dgB9PydFbOyAveP8KJtPk7qN6pSDBuT8rjRtS+jIFlcSPoAcIJ3eN
 b1iaNJGMAlgcrKhGcT1uVW7gEjPw2qPBKcl9Fi2mBs4cMdfEjd2RhGUc1y//dum8aIhuFBVSTcBLm
 TrZyRdlhqIb7j7fwkR3UsO187j2T1lMae2da1aX5oSKwB1OHQhIVrUtIvtPQ50cUzG1E98L94Srf7
 cw6/WCDQ==;
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naNj1-000f8K-CI
 for linux-rockchip@lists.infradead.org; Fri, 01 Apr 2022 20:18:30 +0000
Received: by mail-wm1-x336.google.com with SMTP id n35so2408895wms.5
 for <linux-rockchip@lists.infradead.org>; Fri, 01 Apr 2022 13:18:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=41WwiG2hYkDaYUoIBM78RppkWLusFi33pXJ3vgOX1eE=;
 b=qr2WEj9Dfo8e9NtBEKIRGcGk73EWWGgZ90jeHiKN3JkYWiwWZwAAAzAxmv1RiCHzrL
 Ju6pH1iRGV2okJzmVM/I+69zWCNKvxdTdJ4MmSZt+bxNaEOF+Sfmyem70XdJ9V7DqqBs
 Hn4xMzhBXpdQqLZjEBivKM07eWZyw+haedhVQdKYw1uOgE/y7M8cPOokdPRrqDJN+zHv
 yv66xMp4ij3qmxWccD8KwE7Llh8MYYLIDhGnNV5X/Ep3cGhUPyQGGiJ8WWUxoQn2Sv4A
 doy8neLSm1AvrlvWp0KwsFKQPXc15wOmRB32RU6PkjbaB6LyQ3CzygzFniEoha442+RY
 rSSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=41WwiG2hYkDaYUoIBM78RppkWLusFi33pXJ3vgOX1eE=;
 b=6LWTvIMMpt+rtPa6c3Frgp3aLy8QcVFNvhSvFO+scORcF69n6jsuqZ6UYt3cNgEBt0
 ncruQTD1lgn0iHhk2UUTq6jXIV8alHiN+wp/7koYPGDZE3XCiqFz5qhxF4ymz+RB5A9v
 VYM1vmrGsXCy9zszpSGgMNm8vpGoTSbgtQbMXK5g7XWNEmaCUp5uoTVxoeeInzLKiDfa
 lZsfTQYVle96fYheBXmvDuAvWuTptgvt68Hn4rCdPr2iHFApJ5myAzYtYfbtcdRdFi/s
 lNcOgsW7voaVoOUPBil3D+NTisfK4U0whyAqOtPqELqDW350vb0GYou6UtUQJ9+nGAxr
 UWig==
X-Gm-Message-State: AOAM533zQInr6KK5U6io6/D/T6cgBi9e+WQRfnQ4zNh76XaHgBUL8TeP
 ufCaoENLMWDqziQMIEvM0rB5Jw==
X-Google-Smtp-Source: ABdhPJzh2Vzk0MHEcuRtsDCDPIG0Mq+XxJ7O8oYzcB4AtYRfnWj4tETVXls/Ga34y2blhNKbLGD9xA==
X-Received: by 2002:a05:600c:154d:b0:38c:e9b8:d13f with SMTP id
 f13-20020a05600c154d00b0038ce9b8d13fmr10060817wmg.183.1648844305577; 
 Fri, 01 Apr 2022 13:18:25 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 j16-20020a05600c191000b0038ca3500494sm17823838wmq.27.2022.04.01.13.18.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Apr 2022 13:18:25 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v4 20/33] crypto: rockchip: rename ablk functions to cipher
Date: Fri,  1 Apr 2022 20:17:51 +0000
Message-Id: <20220401201804.2867154-21-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220401201804.2867154-1-clabbe@baylibre.com>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_211828_535007_1B20B42A 
X-CRM114-Status: GOOD (  10.39  )
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

Some functions have still ablk in their name even if there are
not handling ablk_cipher anymore.
So let's rename them.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../crypto/rockchip/rk3288_crypto_skcipher.c  | 32 +++++++++----------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
index 8d3a60db0cf6..c5e7090c77c8 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
@@ -283,7 +283,7 @@ static int rk_des3_ede_cbc_decrypt(struct skcipher_request *req)
 	return rk_handle_req(dev, req);
 }
 
-static void rk_ablk_hw_init(struct rk_crypto_info *dev, struct skcipher_request *req)
+static void rk_cipher_hw_init(struct rk_crypto_info *dev, struct skcipher_request *req)
 {
 	struct crypto_skcipher *cipher = crypto_skcipher_reqtfm(req);
 	struct crypto_tfm *tfm = crypto_skcipher_tfm(cipher);
@@ -393,7 +393,7 @@ static int rk_cipher_run(struct crypto_engine *engine, void *async_req)
 			}
 		}
 		err = 0;
-		rk_ablk_hw_init(ctx->dev, areq);
+		rk_cipher_hw_init(ctx->dev, areq);
 		if (ivsize) {
 			if (ivsize == DES_BLOCK_SIZE)
 				memcpy_toio(ctx->dev->reg + RK_CRYPTO_TDES_IV_0, ivtouse, ivsize);
@@ -460,7 +460,7 @@ static int rk_cipher_run(struct crypto_engine *engine, void *async_req)
 	return err;
 }
 
-static int rk_ablk_init_tfm(struct crypto_skcipher *tfm)
+static int rk_cipher_tfm_init(struct crypto_skcipher *tfm)
 {
 	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct skcipher_alg *alg = crypto_skcipher_alg(tfm);
@@ -494,7 +494,7 @@ static int rk_ablk_init_tfm(struct crypto_skcipher *tfm)
 	return err;
 }
 
-static void rk_ablk_exit_tfm(struct crypto_skcipher *tfm)
+static void rk_cipher_tfm_exit(struct crypto_skcipher *tfm)
 {
 	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 
@@ -515,8 +515,8 @@ struct rk_crypto_tmp rk_ecb_aes_alg = {
 		.base.cra_alignmask	= 0x0f,
 		.base.cra_module	= THIS_MODULE,
 
-		.init			= rk_ablk_init_tfm,
-		.exit			= rk_ablk_exit_tfm,
+		.init			= rk_cipher_tfm_init,
+		.exit			= rk_cipher_tfm_exit,
 		.min_keysize		= AES_MIN_KEY_SIZE,
 		.max_keysize		= AES_MAX_KEY_SIZE,
 		.setkey			= rk_aes_setkey,
@@ -537,8 +537,8 @@ struct rk_crypto_tmp rk_cbc_aes_alg = {
 		.base.cra_alignmask	= 0x0f,
 		.base.cra_module	= THIS_MODULE,
 
-		.init			= rk_ablk_init_tfm,
-		.exit			= rk_ablk_exit_tfm,
+		.init			= rk_cipher_tfm_init,
+		.exit			= rk_cipher_tfm_exit,
 		.min_keysize		= AES_MIN_KEY_SIZE,
 		.max_keysize		= AES_MAX_KEY_SIZE,
 		.ivsize			= AES_BLOCK_SIZE,
@@ -560,8 +560,8 @@ struct rk_crypto_tmp rk_ecb_des_alg = {
 		.base.cra_alignmask	= 0x07,
 		.base.cra_module	= THIS_MODULE,
 
-		.init			= rk_ablk_init_tfm,
-		.exit			= rk_ablk_exit_tfm,
+		.init			= rk_cipher_tfm_init,
+		.exit			= rk_cipher_tfm_exit,
 		.min_keysize		= DES_KEY_SIZE,
 		.max_keysize		= DES_KEY_SIZE,
 		.setkey			= rk_des_setkey,
@@ -582,8 +582,8 @@ struct rk_crypto_tmp rk_cbc_des_alg = {
 		.base.cra_alignmask	= 0x07,
 		.base.cra_module	= THIS_MODULE,
 
-		.init			= rk_ablk_init_tfm,
-		.exit			= rk_ablk_exit_tfm,
+		.init			= rk_cipher_tfm_init,
+		.exit			= rk_cipher_tfm_exit,
 		.min_keysize		= DES_KEY_SIZE,
 		.max_keysize		= DES_KEY_SIZE,
 		.ivsize			= DES_BLOCK_SIZE,
@@ -605,8 +605,8 @@ struct rk_crypto_tmp rk_ecb_des3_ede_alg = {
 		.base.cra_alignmask	= 0x07,
 		.base.cra_module	= THIS_MODULE,
 
-		.init			= rk_ablk_init_tfm,
-		.exit			= rk_ablk_exit_tfm,
+		.init			= rk_cipher_tfm_init,
+		.exit			= rk_cipher_tfm_exit,
 		.min_keysize		= DES3_EDE_KEY_SIZE,
 		.max_keysize		= DES3_EDE_KEY_SIZE,
 		.setkey			= rk_tdes_setkey,
@@ -627,8 +627,8 @@ struct rk_crypto_tmp rk_cbc_des3_ede_alg = {
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
