Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFB2BC433FE
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 19:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sb91TEUej6jZS1ewl/FzZOHXe/Pq1d/CoDGzNVvm+HA=; b=OhC1PRONSFUVCk
	b2M1kFDE62N+EZA0TQD3jAhzWtXofMdlui/i+E7vukSJjl65VIA+kHs6szHlvkSTNxVtEv55O7zAU
	4gGP9FLRbEMnvR7dDiN8P9kdkbb9XP4BSNPWAl9RK7wnXW/LnAGMKLXrKZb0kB06nzRD7l0GPUfU5
	LZIkXF+Txxj6aEFXJh7B2PodiQ8oPyOgOi2yK/GnZwBOABqCe97uY1ePUZ2KwASEftZz2rwEpv6Vr
	QV0IarbAfji9AsC9VAX+lEpQjOTGvPT19HU/nVEf6E4RXrLHjPW7orDSfPrVdJfMGZbyNrOZuM8Et
	1TZk6PdKVSqYvhftmvJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnmQM-00B6eG-Ay; Sun, 08 May 2022 19:18:34 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnm8m-00AyVn-5b
 for linux-rockchip@lists.infradead.org; Sun, 08 May 2022 19:00:25 +0000
Received: by mail-wm1-x336.google.com with SMTP id
 n126-20020a1c2784000000b0038e8af3e788so7168346wmn.1
 for <linux-rockchip@lists.infradead.org>; Sun, 08 May 2022 12:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X5cmGbysdlCxPOGBZlu+t3JbOARc2ikAJ1rgjSkwJRA=;
 b=ObA8HwLV8ZFqefiiD/Epo6RpgRbCDkAylyg8qYBvZLwUozCSgUvhhdGiCyXRqBi5Uu
 DeSGYBkQerugykMKnURD7RU4gp+iQ7Jvdb6eYlGDYJ2wf1/0wWS1SBfpmZq562C/B9mj
 m1HaYb54zTBt0cMfLXoHh08appx0qVtqeOltIgO2TmEcACnM2/KoHkbgF9Ynrh7MeOHk
 f5GS0FBCrHHgQCRH6zfBLExg31qD8er6y3otPMfQH7vEif0Yql5zUKQGftj/q7llkfZk
 BVsqx6CTdnaDpatmTSJ5HoAz/XqgalXJ90+3Jjk+E2jOyUmQd0fPB+doJIXlohdC2qIK
 PYOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X5cmGbysdlCxPOGBZlu+t3JbOARc2ikAJ1rgjSkwJRA=;
 b=ZGdm+YsVPHCArEzob4gSeFCxqhXKxXQHgr/hkUBpygFrt0Fn16N+NAmZ7eikReSAeC
 G6kJEV/DlW2bPj69+bjy4uw37+zq5UI8Wew1OjylHtroJWczc5TxvueGtw5hbZq+Uwng
 DSCqbv5QMSR1V+CJR3IwOX/ZFUmLobP/6k9skZLoLtgfx0//lZ8zyKCjqndfMzTmen6R
 nVSZtpuZdHPAqMPMhmfYgr9PQuMG3FI+WRiRozpIE87Or6FIOhldN4SogooiwEBn4JkJ
 GaX1nsCVV0rJ1ISxg46TbUsKV+uGbVG/xhpipVXeRc4ab42OuRhr9MlVKNbsbastyuXW
 a2Ew==
X-Gm-Message-State: AOAM532HSQExlboiMIGrmzKXGWSCBM05TtEjZjAoILxx5KEgXyP0nc07
 5nwf67IRivjx4OhtkDqMboGTkw==
X-Google-Smtp-Source: ABdhPJxcXLiIrVJvsw8d/HOCCiB1XgWBF8g4tXV1bJcz1ELLIIe8ycq5J5MQTxLjjLDLb3XL3w7dZg==
X-Received: by 2002:a05:600c:1c84:b0:394:5de0:245e with SMTP id
 k4-20020a05600c1c8400b003945de0245emr19863963wms.32.1652036423722; 
 Sun, 08 May 2022 12:00:23 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 n16-20020a05600c3b9000b00394699f803dsm10552348wms.46.2022.05.08.12.00.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 May 2022 12:00:23 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, ardb@kernel.org, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v7 18/33] crypto: rockchip: fix style issue
Date: Sun,  8 May 2022 18:59:42 +0000
Message-Id: <20220508185957.3629088-19-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220508185957.3629088-1-clabbe@baylibre.com>
References: <20220508185957.3629088-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_120024_245186_95224094 
X-CRM114-Status: GOOD (  10.60  )
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
