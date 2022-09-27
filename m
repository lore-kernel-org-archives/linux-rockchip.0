Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09C63C07E9D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 09:06:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iYFpc/Kmt+gMZIxwyMUVdKUhc0T64WmCLTm1jbbS9JU=; b=IrmYsUtjtxxfRk
	sKzVOZzieVVM2JR1voQ+lNPp3/8yIqscWB6OrEccEiYItVT8aZN2SgzOVixPMtAp6slMy/UPaF4wW
	n6sjZ5hH1n5jk9vvThqyjiKTtY/u5XodIUA2CGfnoE/wT4AclTLOA+1g5L3E+RBLaNbrLeR3aF9zg
	xI5zCuQdhIa3idTue/1RFj4EgPguMAAgcioddCGgGxo+AZoJEbeJLwIO59tPJRCHhPcZ3Worr2XXK
	kJTV+IAmvTNDkR9Z4lJbYnqq49qFMCoa44PWHL49k225QZP1cmVCpJ7kGSChEHyYKSk/9cPV6hM2H
	PAqa2/FgxmuwCPvI+eFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od6XE-009NQC-Ts; Tue, 27 Sep 2022 09:05:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od6V5-009ML8-8J
	for linux-rockchip@bombadil.infradead.org; Tue, 27 Sep 2022 09:03:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Q4N9p9400PLUtdaZmzB/PKY2HSpZteQvpiDlvRaNw2k=; b=RmWqnYGkbi86bGW1VA54KSt+Rh
	GxziF6jKKVgGGCLb9yh6hrFIASYu19IFYJHXLVT5bEDQR+APgPh1sLS4yQfV/mkb/lbNCPACpJ0uY
	IyW7QQP7XqSRxcH8iXll/gJv7a5l98WG0pqK0F6QFjDYJltcAXlCCRlWnJSpMey2nIuNzG0o2vYex
	F1NRTu61myp6O5i3sKw9Sx3/8qVya04GSTtAVAU1nTc4GBEOlJFridrmG3mMwKhBtiMMjDwIwXbSh
	lBLQzjPpWP2egeSE7nogWJzbNI4fFbjy0TwDTtq3/4BiCU9vicO1FGKSFAXZgjCuG1zP/82qJim0s
	vPRKQXaw==;
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5Rc-00GEnN-IM
	for linux-rockchip@lists.infradead.org; Tue, 27 Sep 2022 07:56:00 +0000
Received: by mail-wm1-x334.google.com with SMTP id d12-20020a05600c3acc00b003b4c12e47f3so4953091wms.4
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Sep 2022 00:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=Q4N9p9400PLUtdaZmzB/PKY2HSpZteQvpiDlvRaNw2k=;
        b=2YNx7Vm/cu9BQX7KzXYyP5dyfR9lielU/tKDaNk634elT/ixEzFH7iMcAlmh/rT1tb
         TZ4jhnw59rw7hH8C1ENLtCx5ozeASrFLKMKqy1WY+sVylzRCKJ9LVlgpHreIXawCOZc9
         jEr/xQgxsVG1iBdsHPhrV0reBL2C3ASQg/Ay9OEeNgrwoFLvUAuyRaGxa36TTL5IYAyt
         5TEqABNapcZhcZNjbAcjhzAPaoiTjlh38M0x+t3MJT2wxa4P5HBC9us/FozEEt2OAWSv
         wWvNV5rAPCv/IYTYQsGC33gLh2XtELcf5gRESRXh5X/OfFtb0Kp/E0GQUK75IMO8nxCY
         ZSjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=Q4N9p9400PLUtdaZmzB/PKY2HSpZteQvpiDlvRaNw2k=;
        b=FvSaMRAIo1762h3maZMdiGUlWWwpmoMQSgfpRUW8m+fSFhaP/7fM82SAxRTKb4RQFA
         12G+HKiAdV0zRQLJ75TjlaA42Rm3jMpbbqQe+tKUIvUTJIUNAUzkobk98yIKXyKIZAjM
         aIecWDncwlVj58b4w7TLcMFw/ras2onwjkyvBo7b4yDwh2tJHaaomElR2tmQ/A29SjmA
         qRg2JafHgv0hrD7G4sTlbim0lYYOtAXPNtISu0zpR1yV8BRwURlGa0RAxpmviuNf7SIh
         HOaXFsLTQsSyYYj69I5jlbEds3LMmQxprEUGvZF8R6oHZ5bgk22wVM8Whloiv+p5KJ9p
         XtWA==
X-Gm-Message-State: ACrzQf1+R26H+5NVmIyq0tu1XrBT8b09zjjIP332p3RK5ub/VHS0s38d
	C1729NCjqOXBc82H4aEmX2cHTw==
X-Google-Smtp-Source: AMsMyM47ZgGy8Hel1AQ0L7w3l2RRrzmJJV3djR8qtlt06P0yc+cy9Isj7Cl5G7LBgIyvG2HUIEJX9Q==
X-Received: by 2002:a05:600c:4256:b0:3b4:7cfc:a626 with SMTP id r22-20020a05600c425600b003b47cfca626mr1643910wmm.187.1664265355647;
        Tue, 27 Sep 2022 00:55:55 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id x8-20020adfdcc8000000b0022afbd02c69sm1076654wrm.56.2022.09.27.00.55.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 00:55:55 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	ardb@kernel.org,
	davem@davemloft.net,
	herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Corentin Labbe <clabbe@baylibre.com>,
	John Keeping <john@metanate.com>
Subject: [PATCH v10 20/33] crypto: rockchip: rename ablk functions to cipher
Date: Tue, 27 Sep 2022 07:54:58 +0000
Message-Id: <20220927075511.3147847-21-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220927075511.3147847-1-clabbe@baylibre.com>
References: <20220927075511.3147847-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_085557_306675_84DDCD9E 
X-CRM114-Status: GOOD (  10.79  )
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
