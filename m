Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAA9FECAAD3
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 14:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=35cUXlheViRc9W5Nnxy/6X2zW+vKmV2DAxlTz3gj9/Q=; b=MdnidojRIzVmUX
	XhMR0cTy3Qr8W2SeGC+tT2cJ6wMEtrA75l9mkX/6+TMZfSGfd2FfIQOlj6LOrGeauyqL/5zpx9HfZ
	kYx/FinHJNa04m6p47KPExF7yzFv5PzTQVQuNcvptgZHK7jtQXwILFOzjzVpS6AaMB15/GYdKlgVI
	wHu2eCtBlgwg7cO1UbvQKudM4Z6r7X50IXZqhqXPIucvPwGYss/TFxDQQyf23vI8kb5mBH2Eemn9s
	UpEImoBTvtMZnn1rzSGueUV7LPHk0+4v4FNEnPRadbJOk+vuCCASrKWlKCBnCA9JMi8M53TXKl0RE
	FSDwpNtfXXLJwMjKGw5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTkod-00CJqG-Ur; Thu, 01 Sep 2022 14:05:08 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTkmy-00CIuS-So
	for linux-rockchip@bombadil.infradead.org; Thu, 01 Sep 2022 14:03:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=YefmDD2ry3pwsMvqRhlFBCTRYluZUGamucEuHQLyttA=; b=OwZsBj4IdQKtAkts4b9WvqPZBG
	M4E0wHS6P6B4wQPIECaZU4t1vzA+/Z0WAzVmLRm0RATi+NG71wvt+RSUBTylDPdIU58cnv3q+fBPp
	W3TMsfEsqA8uvFW9fyNFc5ya8lt2cnUq/GAmV4vZpssnOoWir6eUELr87c93KjslmgumWgrPrtOxx
	vh/RSTR46aYUX/CfSEiT6nkUNRMd87FglkbMxyBwUNGXNDO0BwzJzGVio/u6Y2QKxVc6BEjYCOwK6
	7dsguDSt/UfdikF65WovCQSEGibQBfnYlf0gQjrAaXnYx21J4ktFYnzCXXlUXIyKkTx0MEW6SCJkT
	sWP6MlUA==;
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTjlJ-008P4t-1v
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 12:57:40 +0000
Received: by mail-wm1-x335.google.com with SMTP id d12-20020a05600c34cc00b003a83d20812fso1400403wmq.1
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Sep 2022 05:57:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=YefmDD2ry3pwsMvqRhlFBCTRYluZUGamucEuHQLyttA=;
        b=2hXx+nQSQVcTeqlzndNPsL0k9VCNN/agna1n1/p8AEgMN0bRpx8wFa6bBq2v9gVOPS
         htlvLOhNfleYCkpfh3I6c+htV3gErQAXcBF8IUm/PUYQ74o5YeHad+xBuOhonlVq16QM
         neE31TDLR/f9QHnAxmMUijneA39w/mUY0XzCJhIE93exea/YqkXo1KEVwbuswqALar5U
         D/0GM9T7sUu/D1O6bWCmFmlPa2E+PMvDjjKFeYiYrAB61PdWf3GmQXwwFKy1Fw9WGig7
         69CecXa4PQj2cE7ZZTmQvXVOPsTZuMNKh1lnOdhwUMfQlOAItlghRg3F0RAkckOq4qjb
         1vXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=YefmDD2ry3pwsMvqRhlFBCTRYluZUGamucEuHQLyttA=;
        b=tQDBhXkCcG+Xx1Zrff8JqqdNeReJ1NTbh2+wF2UH3TD6IJQEL0rYXshhfhgegwhLbr
         y4LigG5mK9odsI+3d548CLXV2CK1rEFO/B4zDBBtWjeZwgVYE56UkvixT2Z1YI//Ko4X
         h92mg5aebefbZJFyj8sk5VYCYABX95zECnNYXL46RGxKyuhVVgZM8YYC30ThM16+v5VE
         NgboOT9Ycw0PQqxEBfEpf+Hd8PFZxjiYaiAx7DfGNz2DFUCJBcnDdVQsd19jwjZA01O3
         91nwc/Hm/BQWO6T/tTAN4095FLf9aPEwtB+7fa+KQTg1ZxOONzH+smCOcejCRkIZxrVG
         MJYg==
X-Gm-Message-State: ACgBeo2/5/nz0qctnT6l8bs27UO0YycO5+Qey6QQ5Tz9TQ/fFKtCHr1X
	6GxFv6Lrb2Rnk6UxTapwFChwGQ==
X-Google-Smtp-Source: AA6agR6xy35cPfSsVkdrBykc9jFpEP7+G228a6e7gPMMC3IANHfruJbizfV1qsviUsdZ11vyGB7EyA==
X-Received: by 2002:a05:600c:4c06:b0:3a5:4eec:eb4b with SMTP id d6-20020a05600c4c0600b003a54eeceb4bmr5383280wmp.151.1662037055409;
        Thu, 01 Sep 2022 05:57:35 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v5-20020a5d59c5000000b002257fd37877sm15556709wry.6.2022.09.01.05.57.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 05:57:34 -0700 (PDT)
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
	Corentin Labbe <clabbe@baylibre.com>,
	John Keeping <john@metanate.com>
Subject: [PATCH v9 18/33] crypto: rockchip: fix style issue
Date: Thu,  1 Sep 2022 12:56:55 +0000
Message-Id: <20220901125710.3733083-19-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901125710.3733083-1-clabbe@baylibre.com>
References: <20220901125710.3733083-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_135737_249508_AB7054E8 
X-CRM114-Status: GOOD (  11.19  )
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
