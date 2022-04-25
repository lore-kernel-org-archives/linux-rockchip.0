Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97B8AC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 20:44:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fKmS42YYe3qd7KOAa0RxvX50l2qviJhtofZ/oQi+PkA=; b=KpFdEEDOLMdUN4
	4/jmbTUe8zMCvj/jgwdqTkSAqGXIJHqqiIfMYGUcss4R/LsrclnT4adECmYWFo2xYSyHmTPf7EKDu
	+GFR2QvClp0bC6ROWp26r+Pb0sw5ZFmDOivQMdwLdn2zpyR392bckeq0vZs4IQrBfdklIwRPPdknp
	M0XVuZx6lqr+lRH9w+cnvZRYtX7gEu3edu9c2ZEcp5OljinRSUCeTwNg86rqGEECZcVz3HumkKmwi
	/hXSTZF/sia+eIRLOVijcKTcqWyYJXrmpq+oZG9hANyyIwDktqHvweWVp4l7r9XtaBNncfjlX08ry
	31Qqt8axqYSx9AGAx0sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj5Yz-00BL3c-Pi; Mon, 25 Apr 2022 20:44:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj5De-00BBIt-MG
 for linux-rockchip@bombadil.infradead.org; Mon, 25 Apr 2022 20:22:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=Nsyj2GbVJ+5Tcjp4O8de9yMeRnwH0mr/qG7FdaAqb/o=; b=XvlTxZrPHs6A0zxsuDrML3WBK0
 bbnIBBxLsn6XjMEvqNh2eDk+FO57UtyuElxiUtm93EnN0KvP7M2U9TOyDHlhVpvuT2pRzNPQegyw3
 7tF1UDS0muqB13lUXhisViwMGFC+9RrP8e/LEPwmBrL6tBdyar/nIMPYRlfm+atZmmgFJPslv6P9w
 xSxpSKynrB8LDTSMz4YfWZhvHy6KNxyRVJiD8ZCrsEwuEUIG+qGgSUg7EhmeQdOr/mSnTOkRWoTes
 +f86jcJ28y9KvvzWxbR961vlKeR2nPs3Hz7So6pA1pp/0HOFZp2jd4cqE0NCBYgW/HRq2jIMirs7Y
 ccG1q+pQ==;
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj5DX-008cyG-ED
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 20:21:59 +0000
Received: by mail-wr1-x429.google.com with SMTP id q23so9600125wra.1
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 13:21:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Nsyj2GbVJ+5Tcjp4O8de9yMeRnwH0mr/qG7FdaAqb/o=;
 b=fiVPTqpqDOVnyQvjQPpC3tEH0fqTp/okGFmdByZBBDjsQBOvaBJaQZcUoUqF6F2LHH
 JaoUvgYZvD8PvDOqiJCFtKxUN/ujCFHv2DINrTTdjVrYyvcuA7rGIfz0WMgL4oANaSuI
 Uttf0WTcAyVslqe/1LzCs30/04J/pI9Axvhal568/HLJRm35P67BSWTorikvy+510kDg
 cM9cq5m9lWOX46lufHjgjsMVV9Bp01Np8bJordFfbHEo2raXM+MQzKv9jPSbrQhyuNzQ
 1cVvAN8Kpq3/8L+bIq2G4Fa2O0b2q9qYXX5ziUUvDtXNCkwH3lNMTHlsqhdTXv6D0CAf
 nTOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Nsyj2GbVJ+5Tcjp4O8de9yMeRnwH0mr/qG7FdaAqb/o=;
 b=hGv//NSdkoGpjps8rfRUvXaKtCBkrmeSYQJABblq+7hke/AeZk4wkstTVnpteN95uc
 Jog5r+DdefniOOAtzNSqWBZdTVys96b1t3DcQlJ2qN+BBKsggZVV0N7cQZ+gIh2EfSPd
 3goccs8j3ui6plgm7A3mqWBkyIvmt9RUzjeuVJOAt31npAwEGjrXJ+9Rwv7HtejM6FA4
 Mo2dTMS5y+v5uMWEmKh0tDTkQ2GYi5SlekFFqRpAxLGEzuitmMaQDur0S0wfNX73hM/m
 ava1Sl0TV9HQ/j2MPdQrymXrbsHABI/4nTTV6IniPdVE5NKi1TkB1N0w6hgsBD8CzsYM
 RwVw==
X-Gm-Message-State: AOAM533gu05rQYPV8lQHVvJiSXmHf/+M2ww/7iqeFV7qC9MIX9TqkNUo
 eowUT3aqKCw4462ByjT0vyLoEg==
X-Google-Smtp-Source: ABdhPJz8kEueXAGOzDGihbn4uiAg8HqlT/JHGjreG+j8poU/wTb883BRrf+2dAxyhkljbSzHhN5lCQ==
X-Received: by 2002:adf:c64c:0:b0:20a:79c7:4bf2 with SMTP id
 u12-20020adfc64c000000b0020a79c74bf2mr15549938wrg.587.1650918107735; 
 Mon, 25 Apr 2022 13:21:47 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 p3-20020a5d59a3000000b0020a9132d1fbsm11101003wrr.37.2022.04.25.13.21.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 13:21:47 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v6 21/33] crypto: rockchip: rework rk_handle_req function
Date: Mon, 25 Apr 2022 20:21:07 +0000
Message-Id: <20220425202119.3566743-22-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220425202119.3566743-1-clabbe@baylibre.com>
References: <20220425202119.3566743-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_212156_180451_67E4484E 
X-CRM114-Status: GOOD (  10.52  )
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

This patch rework the rk_handle_req(), simply removing the
rk_crypto_info parameter.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../crypto/rockchip/rk3288_crypto_skcipher.c  | 68 +++++--------------
 1 file changed, 17 insertions(+), 51 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
index d60c206e717d..3187869c4c68 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
@@ -82,10 +82,12 @@ static int rk_cipher_fallback(struct skcipher_request *areq)
 	return err;
 }
 
-static int rk_handle_req(struct rk_crypto_info *dev,
-			 struct skcipher_request *req)
+static int rk_cipher_handle_req(struct skcipher_request *req)
 {
-	struct crypto_engine *engine = dev->engine;
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
+	struct rk_cipher_ctx *tctx = crypto_skcipher_ctx(tfm);
+	struct rk_crypto_info *rkc = tctx->dev;
+	struct crypto_engine *engine = rkc->engine;
 
 	if (rk_cipher_need_fallback(req))
 		return rk_cipher_fallback(req);
@@ -142,135 +144,99 @@ static int rk_tdes_setkey(struct crypto_skcipher *cipher,
 
 static int rk_aes_ecb_encrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = RK_CRYPTO_AES_ECB_MODE;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static int rk_aes_ecb_decrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = RK_CRYPTO_AES_ECB_MODE | RK_CRYPTO_DEC;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static int rk_aes_cbc_encrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = RK_CRYPTO_AES_CBC_MODE;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static int rk_aes_cbc_decrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = RK_CRYPTO_AES_CBC_MODE | RK_CRYPTO_DEC;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static int rk_des_ecb_encrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = 0;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static int rk_des_ecb_decrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = RK_CRYPTO_DEC;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static int rk_des_cbc_encrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = RK_CRYPTO_TDES_CHAINMODE_CBC;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static int rk_des_cbc_decrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = RK_CRYPTO_TDES_CHAINMODE_CBC | RK_CRYPTO_DEC;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static int rk_des3_ede_ecb_encrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = RK_CRYPTO_TDES_SELECT;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static int rk_des3_ede_ecb_decrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = RK_CRYPTO_TDES_SELECT | RK_CRYPTO_DEC;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static int rk_des3_ede_cbc_encrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = RK_CRYPTO_TDES_SELECT | RK_CRYPTO_TDES_CHAINMODE_CBC;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static int rk_des3_ede_cbc_decrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = RK_CRYPTO_TDES_SELECT | RK_CRYPTO_TDES_CHAINMODE_CBC |
 		    RK_CRYPTO_DEC;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static void rk_cipher_hw_init(struct rk_crypto_info *dev, struct skcipher_request *req)
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
