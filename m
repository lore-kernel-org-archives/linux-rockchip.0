Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74F12C43334
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jul 2022 09:54:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=35cUXlheViRc9W5Nnxy/6X2zW+vKmV2DAxlTz3gj9/Q=; b=ui8fSl78N+cajC
	Ueg7mYuWhe7UW8xC5xgAGUsGH8g2lQMoFDRE5tzDcke5OfLteD9VVAiuQaQx0VJf1iyx6EOi3077U
	ZEtva/GYFdmd7g0r8OHoR4+e7i1d2MRvTZwEGiYaaGMXZxYoZcVA3oZ4kOQ7s4XxjpquZD7wYTi0o
	lxeWquSNoYaPl9c9nsrMHiOI7Xv0w7+xsWkaSJSnOVIY6S0ZVJldRXIZlwMjKTmiMqCxlKb3Pa4UK
	rG7IxTUVW36e2p/7TWuwsc73s/OgbEqQeNwMpeiDn57qn/mfA4q4Ek7/BDpPQ+qdgexiXIN1vMNmM
	rup6IM6zVAwX89IxEDmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o91jZ-007zM3-IX; Wed, 06 Jul 2022 09:54:13 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o91Ux-007qIs-H9
	for linux-rockchip@bombadil.infradead.org; Wed, 06 Jul 2022 09:39:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=YefmDD2ry3pwsMvqRhlFBCTRYluZUGamucEuHQLyttA=; b=cvjSXvsMxg0UaTYyDEhG6T4SAE
	mYgg55qBTUKv6oo1WndMhlL7ah2haHlSZBE0LoZ2NKzjh6nEVoAI879Vg04r7fsmDbg0u3BbPSOCb
	vmVF4oa7IjIEuy40pqBOLRVxBfZcZCGik2iM3IT+4ijhZeoaSZQ5lLkmnRLz6u3EwpmMlWZ4PgN2c
	iZ3ZvU2heBEyor7YledevVrUDg2PD5kTwldP+rnGAhV3zHd/qrOmSAJZXuMPX6YA5BKPYVAw5/S2V
	Kxr37w+tTOeOwspEg7qhJzDyj/mVa3E1UXYQGW21zUHBK7QnMOImfRnm502HBVArJmrPzS6ft+hHm
	jpRYubRQ==;
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o90xp-000NKE-0Y
	for linux-rockchip@lists.infradead.org; Wed, 06 Jul 2022 09:05:15 +0000
Received: by mail-wr1-x431.google.com with SMTP id bk26so5988637wrb.11
        for <linux-rockchip@lists.infradead.org>; Wed, 06 Jul 2022 02:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YefmDD2ry3pwsMvqRhlFBCTRYluZUGamucEuHQLyttA=;
        b=L7ciS97RLhOsfeKYlDlu8uDqvlYHu5nruqE3Z1CfDRdMSrwQf6knk8+pVieatsISs9
         Of0f745OYA404hCWfAOC33y8Pbuj//tIzFKT9F2/QfHQUVaxwVZMuc1GzxHfe+YMU8ny
         BQx7w2gmkVRQTqY3MKq88QPjKEt3J4loRHPXZ36XuTbmtcWnrcf2QPeNSlp+WJUPnDSR
         UyUTpl7VQhBGKBKHal/IkqvfX8qeyQeUzJ5lcUXnAc1g2VUHq2A+KSJ6AHAWqGG+3lPV
         iKP1cFPhrjskyhvHotSobOUfRmL7bKKpio+ustI4Pb/bGnI//Z/2vFkrxfdirWuHiWYa
         2vCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YefmDD2ry3pwsMvqRhlFBCTRYluZUGamucEuHQLyttA=;
        b=KwuCzcOlLebb0iGH+5plkQodr2Rf1be9NoZMf0RmsaRwZc52TQ2Hx4SpclfeoAWPWX
         g17rh5J11de+AiFaE6D7OKuMmHNRpi8nOzxRZLMXDTR3YU9Xgr0fXPW/A0YHN05Imc9+
         RW4S6WSNUG9nQYt9S3gx7M4sL1rcjDzPV1P9NgFUhO5fxybDeMmSICO7WxSXixSknNd7
         pdgIkTA7Ru0kClGokWYIaKqQ0iw4kI6cNnX8XKEOgzxCco5rw9p+nIbQNULXgGyFKgMI
         AXlDqEXXL4A/pZ4jFY0fC1S81qIwNRtMcRH9KG1r3NsVWqfGOzmA4WUaNtyVFMNyE4NV
         kc9A==
X-Gm-Message-State: AJIora8VAQF393B7rjiDQoRKPlUSqxOkqsd/CNupgwTwyJme/3xkOqXb
	xrSKgoSpON+4OeiaAWIRzjJl/w==
X-Google-Smtp-Source: AGRyM1tP38P1u6ggCE6YQXSuG57GyJD05zvmba2ae23fJzXhQ4yWNHlDdFkZuypKNNeZIaGw6Pz+fw==
X-Received: by 2002:adf:fb08:0:b0:21b:af81:2ffd with SMTP id c8-20020adffb08000000b0021baf812ffdmr36962812wrr.685.1657098291934;
        Wed, 06 Jul 2022 02:04:51 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v11-20020adfe28b000000b0021d6ef34b2asm5230223wri.51.2022.07.06.02.04.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 02:04:51 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	p.zabel@pengutronix.de,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	john@metanate.com,
	didi.debian@cknow.org,
	Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v8 18/33] crypto: rockchip: fix style issue
Date: Wed,  6 Jul 2022 09:03:57 +0000
Message-Id: <20220706090412.806101-19-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220706090412.806101-1-clabbe@baylibre.com>
References: <20220706090412.806101-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_100453_695846_4EB0B659 
X-CRM114-Status: GOOD (  10.80  )
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
