Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95087ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 13:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zvZNIDIhcnabxTjE92iLjr4QMJFv2RIy57SH0KW3teM=; b=mhCAIWPeXVK8Rp
	aZstCHUZNSP0g5/7OPPsRrn4VdoLsAt9KI9+gWzC2HTCeBkngpGIX5UsPPUmm0mEQOiIwpuk8OT54
	yL3y5SWnd/Yj0Ns3hynVbSGe5RJ7Ue2/ycavrgJg8FS5QDKNIFLNXZF2LhfzO/1ECCDVihJ2oS7XR
	q4+z8s/EdYCUoo5c1LCkWdN5dNXPTNYQZ8D0ELxsI15y1kcHBCg5dDelA7Yu5wZl0fLJ574u+eHhU
	OvjGnvb/9Rj4L9Oh/OyytlZUMmOC6Xfm1PmI6odFnSKM93yluK0QlUsEQodRp7Xlucq6k3BM0N6ol
	2v9Sd+QzhVP5x+CPjmZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTkF0-00C2e1-Qx; Thu, 01 Sep 2022 13:28:18 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTk7I-00By8c-SK
	for linux-rockchip@bombadil.infradead.org; Thu, 01 Sep 2022 13:20:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=/HcULCDUWUOb7zL9pkaT5teTJK7hgsOh6ToY9+UZMac=; b=lV79d75mWbDnF1/eL2Pmn0WPBc
	wubi+16Ew6hgeWg9DFJd/wVAH/rYjtsj8dJIAxf6hx4LnMXK42o/OOiZW94jX2kZdUuw1M0nkq11H
	TsyJHeyXKKQ2ZB/y8XJ8lSLdjYYE0ZrGUUGPjAm94Insu98a07P61WDvKkfArSGh246T0yC88n872
	kQC60LYtsb6Lv2kiGv8S9Q+empEPWMvpWQIW6wYCsVb2G6ss75a3kpQyAHOQRiThymL99ZA1Wg34o
	CtbLZlNOQm2T6IgrKegBUvL3tN7UqlZ6Y50ztsCHX9eqJwn0brnI5QVbASF9dsGh4ONga1ppR7y1d
	KOEv83pQ==;
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTjlX-0062e5-1c
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 12:57:53 +0000
Received: by mail-wm1-x32f.google.com with SMTP id m17-20020a7bce11000000b003a5bedec07bso1340557wmc.0
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Sep 2022 05:57:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=/HcULCDUWUOb7zL9pkaT5teTJK7hgsOh6ToY9+UZMac=;
        b=KapuCx5qj8Ak04KhbnwPqKSGbQrPvjiwrvC9FAP6XabsrqP7jSPl3uXoAHiKDm58C2
         n13dpg2d7ShJbWPRVIR9GoVy1XRJjrjsFodq530Ld95GoH5cq1kjGXOdku4IvMdomFEr
         gfdT1o0Tg8AQnli9LHEPrzjF0eKErwvvgzB/trTFqMf34aSaZzre/fK68dMcz4cweD3T
         AQk3rCCbgo2g+aGG1/sHYDSLIsOab0uI+w8/pr0rdjshqKJT2XfkTXhXGCBsKcVRfE+4
         FdRuCTR6W6qXWe3ccAdN7m0dm1P9aDsiy+kEUehT/d8YcBIkRKNz7Hdd6dyjL7OGRGfL
         ua8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=/HcULCDUWUOb7zL9pkaT5teTJK7hgsOh6ToY9+UZMac=;
        b=ml+00f3/zl7V/b3qrb7QCCWHN+pSODoHdLWMDLJiQV5FsAEGvJx5zk71qBHwP8wq5u
         qarbRUgMPGekNylIv/8uOIDw4fTT6Kle9lyvcHgqYPJ961Zg6Jh6a7jQai181ZZdGHVw
         xRxsIIvh1I4OlbEADE3Cwm1+fOOmVF3vB0Q4eGm2b5/kvAKhQP0YOm0KqVFAWPwbXVxq
         Qw2eaPkourFwjnpHymoNVFmw2qjvYMfFZ1XBRWg/WDJdPEBNAToE3LIe+uKiDhHFr+Qg
         hA+T5UsU2Mj+2Tz89+KClQwpKIsvP1fo6Merkp0JkiCLCzC78Ug8m7aMkBSqujHRD+Dd
         C/zA==
X-Gm-Message-State: ACgBeo0/I/SZ2Bz0icWUs3mnrNM+P9upIipL7Lt/G3djU/rgHIXoi+u3
	u4GAFyodGskds1nN0FOQQ2YpPg==
X-Google-Smtp-Source: AA6agR4rGPULOSXMFSjrpbzgg23HBh+1+xyEWaMLjkNI2rkP7/dBEeFCgkzvN073oVZro5isX754Mw==
X-Received: by 2002:a05:600c:3d93:b0:3a6:1ac3:adf8 with SMTP id bi19-20020a05600c3d9300b003a61ac3adf8mr4997806wmb.125.1662037068719;
        Thu, 01 Sep 2022 05:57:48 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v5-20020a5d59c5000000b002257fd37877sm15556709wry.6.2022.09.01.05.57.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 05:57:48 -0700 (PDT)
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
	Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v9 31/33] crypto: rockchip: rk_ahash_reg_init use crypto_info from parameter
Date: Thu,  1 Sep 2022 12:57:08 +0000
Message-Id: <20220901125710.3733083-32-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901125710.3733083-1-clabbe@baylibre.com>
References: <20220901125710.3733083-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_135751_102874_D1B1668A 
X-CRM114-Status: UNSURE (   9.06  )
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
