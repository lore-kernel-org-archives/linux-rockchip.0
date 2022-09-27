Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86325C6FA86
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 09:07:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=35cUXlheViRc9W5Nnxy/6X2zW+vKmV2DAxlTz3gj9/Q=; b=YEZ9Nuf2U3DfEE
	m2S+pWkfeT+V02Du9IMfkzY9dWNifAj4tbuzi2XHC/tnWb/ojrZisxKtvpXr7bWrs0GZuhy2BPuVK
	0XBUbAkNU0ZUl3oDLhRrkJCBbsvv6UAewcclBdcQnYGcj0xWGvTcM53/TbzpHDA6NZp7eur5bnNiD
	yUkH2X692tGz+mV1oDxxCXnz2ZqtdVPLl62W0RW+D3aQU4t0ci8PblmdW6Dj0qFpReZ/eEGcZfLoQ
	0WooRTPyECnRV2nl80xlfpeW7ML5lIvzDyjYbL3A9IhvGxFbjpVegNXZTjKRt1bTviDVoUdX2nwyx
	fWOYVCKXjv5UCCFzwfew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od6YE-009Nyb-Gy; Tue, 27 Sep 2022 09:06:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od6V6-009ML8-Nh
	for linux-rockchip@bombadil.infradead.org; Tue, 27 Sep 2022 09:03:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=YefmDD2ry3pwsMvqRhlFBCTRYluZUGamucEuHQLyttA=; b=f//WI4ixLn6oiMhuF3qMLwLQL/
	8XMNyzX8nRSckb+VsR2kQit9UCShVZW0YF7rzOwyVVZdyvIVf1ShLX3F5YPnHq9zR3RABhsAaBIw+
	uExzlP11y7dfLOgmym6guhZSLi/7+j5qGgjARTIMWHtxPYPlotjXEeMoEkt5Bx1gBzkBbvo5vIm1P
	yfRQ4wZk2jWdDZ+21UChRtj22sYgpFqV3hYNneKmApqSx/WRxuCI1OfAUnv3eTJ6kgR6ngAInynel
	ZjFaQokw56E7xJR2Tctl6VMALPQ+vqFb0HXH79jmh/Uadxbaklwx5q2VN6cLbsWgPEQPXC7HBM9E2
	bFu3SbAA==;
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5Ra-00GEnF-Vh
	for linux-rockchip@lists.infradead.org; Tue, 27 Sep 2022 07:55:58 +0000
Received: by mail-wm1-x32e.google.com with SMTP id n35-20020a05600c502300b003b4924c6868so390533wmr.1
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Sep 2022 00:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=YefmDD2ry3pwsMvqRhlFBCTRYluZUGamucEuHQLyttA=;
        b=b6cyFsVdHpavnTM+FghMbIremImdbNLhZmESi/YDiLg9fwtm0QB7WjxwYZaUgSVT22
         adTJB5aBAQo5ybo0VDTQhr7MsEtfmfI2pnxOZgN/OCHlCZ1T919He2kgIWwO0IxebmSr
         XMOJ7FzxqpmgVaGM95K6alSXq+rv2ih8+odCnxRElBu6w/O3E8UbuAlOC9aaQCMBCkpx
         JGo+ViAbGhq9PYLNKl0BSmrGVkHdbHXFAlStXqDzt6tNplT4hvECzVveS0fD0rmmRV83
         dzZox8w9RS+kY5hgSTAer1oJkQBTdTajgqHDVS09yMcPtSJ+34d5Kk8WSLCkIejgGdyu
         Z6aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=YefmDD2ry3pwsMvqRhlFBCTRYluZUGamucEuHQLyttA=;
        b=02gFEknUXrXgo8idj30kqE97JHdp4NJJYJIcNpoCqKfmyGvjK4IedbkBPaCwPAK5d3
         mwPZE5Awv+QPiV/lh3Vi4XF9ExT7N1G/TQMaCQye9ymUGXkJkeAV4uZbs5Swymtnde3e
         wDbhZcvqrjP60sl2CF4gFkBhi3oeDddso81jDQJ1y8Zv/CPf5Z9gu1wgAU1HdkAsw3tI
         vHw0f63c+aLqTt/iKu8DzsCIhPTTn8RibLIC3Tqn14z2U9y5AB+D9MYFoP7JgzWow5oy
         rgklC/rbLnVNe/Zyt7k53UrY6f1q4tlrtJwvGfwwXqeQNvBUNwVYyUSoemSfQVKsNW3i
         t/qA==
X-Gm-Message-State: ACrzQf2Ci+kipaPxH8hQ/RyBugBb4eqUOkYteSoKVdjpCnoQf8hwan03
	Kv0c2bN04g6IAX4oBTCnOnclDRMGM2p+lA==
X-Google-Smtp-Source: AMsMyM4/rNZzgNJTepN67xDHUXBr/ay4ncfQEeuGV0yY19vs4s1TrxLKZO2Q4CYlVMNJk0l0nCKOMg==
X-Received: by 2002:a05:600c:6025:b0:3b4:8c0c:f3c9 with SMTP id az37-20020a05600c602500b003b48c0cf3c9mr1592002wmb.206.1664265353398;
        Tue, 27 Sep 2022 00:55:53 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id x8-20020adfdcc8000000b0022afbd02c69sm1076654wrm.56.2022.09.27.00.55.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 00:55:52 -0700 (PDT)
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
Subject: [PATCH v10 18/33] crypto: rockchip: fix style issue
Date: Tue, 27 Sep 2022 07:54:56 +0000
Message-Id: <20220927075511.3147847-19-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220927075511.3147847-1-clabbe@baylibre.com>
References: <20220927075511.3147847-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_085556_597141_5788A889 
X-CRM114-Status: GOOD (  11.09  )
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

This patch fixes some warning reported by checkpatch

Reviewed-by: John Keeping <john@metanate.com>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto_ahash.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto_ahash.c b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
index 1fbab86c9238..fae779d73c84 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_ahash.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
@@ -336,7 +336,7 @@ static int rk_cra_hash_init(struct crypto_tfm *tfm)
 
 	/* for fallback */
 	tctx->fallback_tfm = crypto_alloc_ahash(alg_name, 0,
-					       CRYPTO_ALG_NEED_FALLBACK);
+						CRYPTO_ALG_NEED_FALLBACK);
 	if (IS_ERR(tctx->fallback_tfm)) {
 		dev_err(tctx->dev->dev, "Could not load fallback driver.\n");
 		return PTR_ERR(tctx->fallback_tfm);
@@ -394,8 +394,8 @@ struct rk_crypto_tmp rk_ahash_sha1 = {
 				  .cra_init = rk_cra_hash_init,
 				  .cra_exit = rk_cra_hash_exit,
 				  .cra_module = THIS_MODULE,
-				  }
-			 }
+			}
+		}
 	}
 };
 
@@ -424,8 +424,8 @@ struct rk_crypto_tmp rk_ahash_sha256 = {
 				  .cra_init = rk_cra_hash_init,
 				  .cra_exit = rk_cra_hash_exit,
 				  .cra_module = THIS_MODULE,
-				  }
-			 }
+			}
+		}
 	}
 };
 
@@ -454,7 +454,7 @@ struct rk_crypto_tmp rk_ahash_md5 = {
 				  .cra_init = rk_cra_hash_init,
 				  .cra_exit = rk_cra_hash_exit,
 				  .cra_module = THIS_MODULE,
-				  }
 			}
+		}
 	}
 };
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
