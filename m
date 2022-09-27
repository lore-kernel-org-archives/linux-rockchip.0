Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95A51C6FA83
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 08:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zvZNIDIhcnabxTjE92iLjr4QMJFv2RIy57SH0KW3teM=; b=PP3Z0+NR+1cg3p
	DITwcMCnVv51+l14ZHae1lNSCf4qEj5u64FGLxP6adwC2CktZSzlyf05zfLp4/qGaZ4KYnzByXKOv
	XGvrhoJujUAQVk2nTWnBkzR8ddLA1a4I/IOvQ1Bs0davvKAlhDtVt/S73oTXwAeIsAn8HLTuBT0bG
	pgwrUOk2OWbJN9T2ECgrBCMsLzRZLsd0n6Hh7zv6gKJMN6YlI3hQtcpKjZmdlBauoJQdtq56vKmzI
	fG/ekiuM7jChT/VkPuVhSC3hjhdWM7+NpANPx+wac6IVSTg7avL0wbLwNe/JSzSGkOvI5HHuMEkLP
	aN9x8LOXaQANMFLro6Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5mM-0094mg-4i; Tue, 27 Sep 2022 08:17:22 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5kL-0093wH-KM
	for linux-rockchip@bombadil.infradead.org; Tue, 27 Sep 2022 08:15:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=/HcULCDUWUOb7zL9pkaT5teTJK7hgsOh6ToY9+UZMac=; b=stz86EdY5cRZDSuNjjnT+EtVzo
	KAkSdUColOiXk1rUnEtbzUXm6ookgGQOd4ksod/g67si0vQFdGpkQsdskRtAb1MvwVhXJaokgFDA0
	B5VK+30dIaRzfP1YRtb5eupdq6v2OlVRnQb6K2RAoAFZba40g5Cp9d4U+SEZ7VAmx6QrR6cDkktGc
	hLawrXVf8k3xzmcyY/FmhdNQIkPNzcZSG7NWQeZRrmERuBR4F755m+OAHZqv69kls62ftHU+VYYTi
	uevyHCvWlP+Y3goq7ZjQ0EyE2Li/cbO8q2c9Nsb4poQayjsRv3/kpFC1q0ILu18/XJf9X34gL4QPO
	YdYEj8Mg==;
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5Rt-00BFbT-AH
	for linux-rockchip@lists.infradead.org; Tue, 27 Sep 2022 07:56:16 +0000
Received: by mail-wm1-x32a.google.com with SMTP id n40-20020a05600c3ba800b003b49aefc35fso4953038wms.5
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Sep 2022 00:56:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=/HcULCDUWUOb7zL9pkaT5teTJK7hgsOh6ToY9+UZMac=;
        b=7lLd0LEwj1X7XZMWENgGR2iUtmd3mQmo2CkvfLT1Mil4cjHHSmbIOAFJ01jDjX5pC2
         80mHdhoD/49EcCspvFrffQgX7nO5s1eAmwz/zW1oF1+4qCyv+rqFmnXWNwY+BO387Gf4
         c5YqFAiAl06up8ol/ZCBtqk+LeuQ3I0nJhxgKA9WL53Bm9r0qMcc6CUHnK46ySVDGmh/
         WGD1wirGtNiXPQZH5euvBPGCiNBqOgq2uzwBFySI5vjSCVy1mLRT3xrOu/h1BiImqXTf
         YQluU1dzfcWu4077Henz279+fKNBb0/CL6eBoe/ZGy1dH9iJ722p5K8Gz95MwWulnpdv
         qydA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=/HcULCDUWUOb7zL9pkaT5teTJK7hgsOh6ToY9+UZMac=;
        b=lA4q1b45uNOXL6ptIH+GeLuKG4Yp3YZb0eK0n8V8nUe6EXEa7rcStbX5SAgzXHOXvH
         T7ympb30WowvSlYsqIYYh9JqGuwP9TjU+dz2SsqQPAAb9ukFrhiuZ800Fce82nv0j5tL
         xXmAeEkYsj1d0fk7Q8NUjKl7rDitLkXu4fHkGdH5y/iS1MS5fCpkIiHU0yCNaTnZ6OmZ
         j07VS720HqWzhic+LUJhFYURa7HL6nE8tESKiBtqj2FFQ+xASriNcKFTxqs2qx1nHESV
         cHXyZH++5Y1tQJxaqGGpgpB6heHq27aTmK5CZnMSz2AicsgO/vGffOPmMgXrPp4A32Br
         M64A==
X-Gm-Message-State: ACrzQf1m1c6R8LDiRXeLqB75ppmsBlyFSbXuLz3vleiXkwdguvrgGZit
	HIoIHyQPMyvBPqWONrncA0p+Dg==
X-Google-Smtp-Source: AMsMyM4MKhcqcAW8tXr2t2zLzf0IU90hIT+K9JixREHhebzInhta7AbKkldKQKBi2KsiRvbjvtU36w==
X-Received: by 2002:a7b:c051:0:b0:3a6:36fc:8429 with SMTP id u17-20020a7bc051000000b003a636fc8429mr1572126wmc.78.1664265368752;
        Tue, 27 Sep 2022 00:56:08 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id x8-20020adfdcc8000000b0022afbd02c69sm1076654wrm.56.2022.09.27.00.56.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 00:56:08 -0700 (PDT)
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
	Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v10 31/33] crypto: rockchip: rk_ahash_reg_init use crypto_info from parameter
Date: Tue, 27 Sep 2022 07:55:09 +0000
Message-Id: <20220927075511.3147847-32-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220927075511.3147847-1-clabbe@baylibre.com>
References: <20220927075511.3147847-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_085613_384385_0F62EA03 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
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

rk_ahash_reg_init() use crypto_info from TFM context, since we will
remove it, let's take if from parameters.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto_ahash.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto_ahash.c b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
index d1bf68cb390d..30f78256c955 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_ahash.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
@@ -78,12 +78,10 @@ static int zero_message_process(struct ahash_request *req)
 	return 0;
 }
 
-static void rk_ahash_reg_init(struct ahash_request *req)
+static void rk_ahash_reg_init(struct ahash_request *req,
+			      struct rk_crypto_info *dev)
 {
 	struct rk_ahash_rctx *rctx = ahash_request_ctx(req);
-	struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
-	struct rk_ahash_ctx *tctx = crypto_ahash_ctx(tfm);
-	struct rk_crypto_info *dev = tctx->dev;
 	int reg_status;
 
 	reg_status = CRYPTO_READ(dev, RK_CRYPTO_CTRL) |
@@ -281,7 +279,7 @@ static int rk_hash_run(struct crypto_engine *engine, void *breq)
 		goto theend;
 	}
 
-	rk_ahash_reg_init(areq);
+	rk_ahash_reg_init(areq, rkc);
 
 	while (sg) {
 		reinit_completion(&rkc->complete);
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
