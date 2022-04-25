Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FF80C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 20:41:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sb91TEUej6jZS1ewl/FzZOHXe/Pq1d/CoDGzNVvm+HA=; b=wzcjwHOzx72DwZ
	lBo4iKWNfsQamoz4eEgodd2oHWmV26hp+gn9FEDOmRkl3wTHF/2xAOneQ6qdYfJ+w09UjeIh5//9p
	DqXu/dM12eg/zGRoqqudWofopBGNgKyCYvD3CH+Fd5OyyTzuxcZ9WSiUENJWudtzDuk3gr+26SWzK
	pLjUQ2cvxxboOGLvlk9RGj/H9kt8bOKu8IPJcjw97KTdosbJie2+12nfWNz8yYRMm7FCXbX+cPGTM
	WUDJUFXinIWFCsor3R87uMc6fOBYdfvQMQ4VnzWS9/Gtse0M1YMbz/BYV5Xkr/qKjeg4RUpH8VuGA
	zTDpv3qY/czavTqNQwJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj5W5-00BJmU-76; Mon, 25 Apr 2022 20:41:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj5Dc-00BBGl-Pq
 for linux-rockchip@bombadil.infradead.org; Mon, 25 Apr 2022 20:22:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=X5cmGbysdlCxPOGBZlu+t3JbOARc2ikAJ1rgjSkwJRA=; b=UbN+fevN5NezigwVyPUhNnKMkN
 atkWvBs+AgP7FXV2vLm+AGt4ymnm7HC8/l1PGrHzGRkeTtbYh2KLOaUlJaaGkd9ewDHvpabtmRGp1
 87WB2yeK8PzLahmtHh5jGNzMimBNjHW/AfgtEDpvtLbe7ODiwWErdUYcYA60rentPftZoMMKuXGIL
 PwS61DHBzQaYDeWKrAP8XMAW6d2lfEvIRn/MI8IEcqNvzsIAJtlOnzqdV7E2rkRzxokGwqtUMmCkK
 m0FGlhzbjefyHEvQq1g4HygYAOjyV0kZjEvmfff/k33XcrdgKqegHxo9uZFZzj9ArVo3nOCEa8Cbc
 mu82ipkw==;
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj5DW-008cy7-RP
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 20:21:57 +0000
Received: by mail-wr1-x431.google.com with SMTP id v12so15672550wrv.10
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 13:21:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X5cmGbysdlCxPOGBZlu+t3JbOARc2ikAJ1rgjSkwJRA=;
 b=gkkLdFaSFOADuQpex7MgMLo3q4WHaUhNXEw9O3ZM6oZIBtP0PG69DqNLxD8Jq6s08D
 Hu48yf7Gi3pH5BWFcQyuoQZ902YYQ6mZWKaKZmjIxbCZyZ1m7tga+Jn8FIv9sMtWi/bh
 4FJIBHiGvi6IQXbEees57YriwC5I/0x44U2WGcgRdKXz0BEKxFg9wTsFzgKpYEPbSioT
 Pc9PPxebTrrDxqz3S5W4S6AWq8r/vZRhthOlJu0v+YnP+Im6OVBXvPSrJ2Qg5SnsDDgY
 7N2R3M+GhcEP0DqRgyvXpmMnkVXLPP3vLFje+GBGExtzvHQhdrv9DhRUJ/2/QntaeV3h
 M2WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X5cmGbysdlCxPOGBZlu+t3JbOARc2ikAJ1rgjSkwJRA=;
 b=6ik+dvGubsnqL0upEHvIZeidwKn7rdlDvl4HbvZlx2oJtjRgVIYpYWIVfjkii51H6U
 ILZMMdNcvy1yZgTOqnI94hfohDpKUg32blW53OF/g9pFb7h/06Vw09InBA7uEowl5Xu+
 g9AEDTf/fkl1OIpnqIwXe3x2yqvBOgBiI4NI/NuChTDJCCKGX6iZMZ0fjUGnvxa1vgS0
 QDlGGVysrdCWlYPn4iEg9xvdox4EbAD25WI6NAlucVLoONf3dqTXYurEiXtmEG6gMzYp
 /BexWX5pVTynPxNdg9282ixnQ6jrLYy+IF4Xc+gyb6N9NrqUfNHi5eiAs272k7T9z4za
 /Ybw==
X-Gm-Message-State: AOAM530c22YxBXf5cYI7bcTm+NLzsT5To4hjMF3b8twHXJl0RaK0oSep
 kujoK3AEUgfWHEfm1VnC50pE4w==
X-Google-Smtp-Source: ABdhPJx0ehWDWEpwXPfa0LsCViUZIZpEn0Nh5dIMf8V9qNJCHLboNq+t7FnAM3CEdE2QivxRKgTvGw==
X-Received: by 2002:a5d:42c8:0:b0:20a:d91f:87b5 with SMTP id
 t8-20020a5d42c8000000b0020ad91f87b5mr6850064wrr.301.1650918104899; 
 Mon, 25 Apr 2022 13:21:44 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 p3-20020a5d59a3000000b0020a9132d1fbsm11101003wrr.37.2022.04.25.13.21.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 13:21:44 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v6 18/33] crypto: rockchip: fix style issue
Date: Mon, 25 Apr 2022 20:21:04 +0000
Message-Id: <20220425202119.3566743-19-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220425202119.3566743-1-clabbe@baylibre.com>
References: <20220425202119.3566743-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_212155_667480_D9FE103B 
X-CRM114-Status: GOOD (  10.86  )
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
