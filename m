Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77CDFC07E9D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 09:05:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7SOx+iAXlq6yNXvzopTrDrui2BIXsjYxviGstDzetSg=; b=0t9RJcoDPXmG50
	evEPj7rSlAlMneO/yPCEqdKlndqJykFNVqwvaE11ToDxh1g7sdnRAxc6QbsbJeMnYMv5Bi8mLn5cR
	2T6pt+BKJ7No+lqbBz1qwNWAlhOafdRJCfC5id98EzE+ft8HXGZZqiInS4ceVh9YT+gI/bc8EurNn
	iteLW4/P7gjoP+R6NTmcyLN3DGZcWXhIRSRxXhhkMIn5itMT+JR/22QzQBi9bWX0DQNxyUGb9qctq
	rbY1FwiP4kTgLOh9T7e5le5t5pgDIt6Wpv7JKxzOR5f0P1EtjQy/PP3FA+EC30HxakFQGnJVUytOc
	cVnsuWp1j+09u4XDEUzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od6WT-009Mxp-16; Tue, 27 Sep 2022 09:05:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od6V0-009ML8-3J
	for linux-rockchip@bombadil.infradead.org; Tue, 27 Sep 2022 09:03:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=0KerGvUzdejWLAwshDyy9ppWCWrJnFuYbHleK5z5lUU=; b=gHfHiRwqNj2MkiPYFHZ1FIjA64
	AOxoQBmQ0V0Pc5VNzxAfLCOKMRXOM4TQqHLm5OWyB5xI0+kF3dlDjfHVUoYFBHjhNvJIDDOnXBFCY
	3JtGx6W+JCaT5905xOMOcJma/vGH7csuPuk+Vlu919QPGbP//AQ09M5maonxKoGuK72tx0pQtyThm
	10b7nJEo0cTEmndZLBCofepITb4CS7/nNaQ/qYP6aiH7o+J+Gk4ONIRGbFw2d222GeoTUOzfBr2Z9
	h64gMYxUvWZghjw6x165Vk4LtpTfH7exFShhM5cPwpFFkJ7zwWe07Lb6wYOd/DMz/uK+qtvMpft9g
	MNnBogcw==;
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5Rg-00GEol-9s
	for linux-rockchip@lists.infradead.org; Tue, 27 Sep 2022 07:56:05 +0000
Received: by mail-wr1-x435.google.com with SMTP id h7so1287202wru.10
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Sep 2022 00:56:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=0KerGvUzdejWLAwshDyy9ppWCWrJnFuYbHleK5z5lUU=;
        b=tFZZkGLF12zpJ31kndQX4/eM+ARGjrnucK7XCQ8xEzjNs8rXqJXlW9DOiPgvta1cA0
         Yy9+5gkNcMt20ahW61SdWn0goPxqolClL5ZlG+JTNs278lWWZq453BNrLGlUX/q/Z8mx
         1LYi9+zNPagPwC71r/b8mMLvjoKFrQcG99vO5jCh+QgbOBn9ntWmGCYNEjZDvVCZmyj2
         l4QUUuEbbcrs4NIHGKG9IwB9S9/nUTSwAzTFoPQYAZMneUoXm8ypujPZAKTJ7amhwD0e
         P5wdhOt3nio9X2nmDhWLztkpWl5ax1AXyki3jhpErcshNVxIZXh2JEDgx4/mwoVzU/Ti
         hBQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=0KerGvUzdejWLAwshDyy9ppWCWrJnFuYbHleK5z5lUU=;
        b=tFHwV4IdkKUSTZs50prxlz4DXMUSx5mH17qCAiQfK4Tss6el7hcXeExTYQYaOAdeq8
         K1mt8kSdvXt+j6RKdrUEDRGYZkucwx7UroDvkDa+d/hGmUClskPuIB1kiyJiIeIKFVTN
         dQRUA8qwxU/ioWVR7orJ0t2pwFa0ssAvpUIL4W2T9SYf8rQNCUXW0Va5NtkNAaPpcxXt
         X8LhpKymRu9Psn8qOyjCBkYSWQZz+F6pfEhW49wftyIR9X+J3BeeqLmLYAm4pzneTfOg
         v2ezLhEkbdJQW6fBFcSBh5PeTW40v+6DLiDLNZz7dzowCF1636tUDqd2dk6QTy2GuA/Y
         9KqQ==
X-Gm-Message-State: ACrzQf0Qq1bpmPW4FZvExF+g2QrzF32ACGh40oyvHkfYtuu1oxI7F3Bs
	5ZB4i+UVUzgiQHLecPq7LU5LQQ==
X-Google-Smtp-Source: AMsMyM7cTV+QeJCXQ/wabYGrCDeuge3SgCP1vYJoewZaxtGyOUU+Nm9KENJZ/QjBK8MeyIn1pqZGSQ==
X-Received: by 2002:adf:9cd0:0:b0:22a:7cea:d3c3 with SMTP id h16-20020adf9cd0000000b0022a7cead3c3mr16728656wre.196.1664265359229;
        Tue, 27 Sep 2022 00:55:59 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id x8-20020adfdcc8000000b0022afbd02c69sm1076654wrm.56.2022.09.27.00.55.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 00:55:58 -0700 (PDT)
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
Subject: [PATCH v10 23/33] crypto: rockchip: use the rk_crypto_info given as parameter
Date: Tue, 27 Sep 2022 07:55:01 +0000
Message-Id: <20220927075511.3147847-24-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220927075511.3147847-1-clabbe@baylibre.com>
References: <20220927075511.3147847-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_085600_937688_1BDD589D 
X-CRM114-Status: GOOD (  11.22  )
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

Instead of using the crypto_info from TFM ctx, use the one given as parameter.

Reviewed-by: John Keeping <john@metanate.com>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto_skcipher.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
index 6a1bea98fded..cf0dfb6029d8 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
@@ -254,7 +254,7 @@ static void rk_cipher_hw_init(struct rk_crypto_info *dev, struct skcipher_reques
 			     RK_CRYPTO_TDES_BYTESWAP_KEY |
 			     RK_CRYPTO_TDES_BYTESWAP_IV;
 		CRYPTO_WRITE(dev, RK_CRYPTO_TDES_CTRL, rctx->mode);
-		memcpy_toio(ctx->dev->reg + RK_CRYPTO_TDES_KEY1_0, ctx->key, ctx->keylen);
+		memcpy_toio(dev->reg + RK_CRYPTO_TDES_KEY1_0, ctx->key, ctx->keylen);
 		conf_reg = RK_CRYPTO_DESSEL;
 	} else {
 		rctx->mode |= RK_CRYPTO_AES_FIFO_MODE |
@@ -266,7 +266,7 @@ static void rk_cipher_hw_init(struct rk_crypto_info *dev, struct skcipher_reques
 		else if (ctx->keylen == AES_KEYSIZE_256)
 			rctx->mode |= RK_CRYPTO_AES_256BIT_key;
 		CRYPTO_WRITE(dev, RK_CRYPTO_AES_CTRL, rctx->mode);
-		memcpy_toio(ctx->dev->reg + RK_CRYPTO_AES_KEY_0, ctx->key, ctx->keylen);
+		memcpy_toio(dev->reg + RK_CRYPTO_AES_KEY_0, ctx->key, ctx->keylen);
 	}
 	conf_reg |= RK_CRYPTO_BYTESWAP_BTFIFO |
 		    RK_CRYPTO_BYTESWAP_BRFIFO;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
