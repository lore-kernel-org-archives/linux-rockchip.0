Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 650DEC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 19:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sb91TEUej6jZS1ewl/FzZOHXe/Pq1d/CoDGzNVvm+HA=; b=LXVrRHksdC9C0f
	vYwkVnMamvTi4xcd7apr8pNsbj7KASWyPH+EzlE8iK6+rkEYiF0Rtpt/v/XRB9OXG+kwcg4p3Qjuj
	mN375NmxUanXHXYM5UcNM/Pl4e6C4wJdQM5LA8AYT6QCNe/BHpZgjvYuYCbFrBPPWMEp3LXEt+XeJ
	U7/yeMS9aZfi/TP0c2OJxaipI4cpkfFFYGnrRbcrkgL0R6zr7CrAlQ7SyFVJCvwEUVitNFhTtG0lx
	p73hgt2UUO08zHdyS6v743WiUDl775m6cOEOZDAZnyUlhYUQ4iPzUkgNlFHeF6O9rosv3gKJwGZhv
	vckbkCI4Lv5mPgNZsLWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neiV8-002NGL-CK; Wed, 13 Apr 2022 19:18:02 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neiL8-002IA0-2I
 for linux-rockchip@lists.infradead.org; Wed, 13 Apr 2022 19:07:46 +0000
Received: by mail-wr1-x433.google.com with SMTP id k22so4007811wrd.2
 for <linux-rockchip@lists.infradead.org>; Wed, 13 Apr 2022 12:07:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X5cmGbysdlCxPOGBZlu+t3JbOARc2ikAJ1rgjSkwJRA=;
 b=ufKL9VIndyqZ4MhiQDjEtVC6iDUF2J9QMg+q0nhVUdbMPsPRDTZ9GTWPD+QMm0v4Wo
 5isFsNTYadv/ZJUGPNU/ayUAAGLtBP5DLT8KwMGV0y4+flKUiBtiTxaXxBWnFB4q8izK
 VYrkYg+i3xfpyEh3oX3aJTeBpWABTEbUUQj7ePRtAUWC6uMtz13Wk8KaHCffBJL/KgKA
 /6psmZxukCuXVmZ0fz63YzXJRo5TFWnzbqQmLNrjOApp7pWCwCOXbZOPzjrfvz3AlDOl
 AG39NtyNohJzXnSw1EwAT9AzEB/XMMCkZ1hpiqDvz82o0tKGLjc1/5VWATSLTx10mUrB
 csCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X5cmGbysdlCxPOGBZlu+t3JbOARc2ikAJ1rgjSkwJRA=;
 b=iKFHwYam5UKkzIeoOOsDS5eR7fcySG6MgNiWFXOhtwV3DOzK3uVMeOoIpro0R2fcqX
 74uB3V24sgG0vwGLJD8htiAY56T0VTD8cuY89taEfjsATNeSqtTuYJAYrOpaU3W+0c5A
 rgoCTA/8E/tT7YX6p85xTXLoGkaEytcWWZV8FI+jU82mncSqSmUeVDuKcgrqqBNRxnJt
 /yhp1M9TD52hTT2ycb6T1+mnmhGcDwPzG1iXf8iBFhd10Sd7LhsNZEqsj9g3ya5uMwQs
 DhI9KecO6ztdZdUrEGEWI00cj3SJjA3sbRLcvwyOtbJJqDtYVyd19IIpT1PFezicl4cF
 fCkw==
X-Gm-Message-State: AOAM532WQ3v6Dt7sHMFqEPnmui+1g+XagSa+qgaW57WPuKDbSNIWHpyD
 /ROCT6AuPj1MROkQ2DOyFEsP6w==
X-Google-Smtp-Source: ABdhPJx0IUtALN8qdR/PJGJ6+/VnPl6tnMq+JJvkrux0LnmYGAhqbWxi2VESjVWPpRJGThBIEAXwXg==
X-Received: by 2002:adf:816b:0:b0:203:7fae:a245 with SMTP id
 98-20020adf816b000000b002037faea245mr219615wrm.619.1649876860815; 
 Wed, 13 Apr 2022 12:07:40 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 o29-20020a05600c511d00b0038e3532b23csm3551852wms.15.2022.04.13.12.07.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 12:07:40 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v5 18/33] crypto: rockchip: fix style issue
Date: Wed, 13 Apr 2022 19:06:58 +0000
Message-Id: <20220413190713.1427956-19-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220413190713.1427956-1-clabbe@baylibre.com>
References: <20220413190713.1427956-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_120742_176196_842FCB67 
X-CRM114-Status: GOOD (  10.44  )
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

This patch fixes some warning reported by checkpatch

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
