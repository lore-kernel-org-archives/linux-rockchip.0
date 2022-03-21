Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1D1CC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Mar 2022 20:23:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HF6hr2wUFAb4r1w+5QhVuUKaog9bHxYGguApBD1Z9fk=; b=qRP2OMee8btKIe
	Hob6rSMCnA4WdR1NvyOGaO5poAJ1UL3KKK6ZJsgu2ohWRwo2Q8dhUl0xiqCYoMubzmdTysX6Uqqok
	RU7PepbDYWH/BkleLg5UmKbVWxduqcx72kxjmAxipHlEDrfX/37HUjeqK2hxoidnOGHRCRx8tLwWP
	izMxCe7tfx84tu4QgwxlgyE++6gQaqZp9OyT4ynN6uACnfgVACt0RWoMtcVLqWMywQtsZJyWHTd4M
	FDil7PD9UfkiGk8vuPzTvz7RBJYyY6sjXYvJTlV0QteiVMMsOUJ89KMGtDT96HDRaNcgguceYvEHI
	wytfmnA3JKQ1bzD2EKxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWOYf-0091jj-LP; Mon, 21 Mar 2022 20:23:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWOK7-008tgd-8S
 for linux-rockchip@bombadil.infradead.org; Mon, 21 Mar 2022 20:08:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=7FqnmDcsvrgYbGP6OPh4RiTzDpGi2N0/p6IXPk696Vg=; b=hgZdDEVunvk4It0baXWSNiT7Ij
 ZaeCYKbNJYCFYclx80zEQD8IfiwbVD+ecIjHuVEYqJJk93fSHQxZ/e+wb+5VlrnMY7xbG5NhxYAlb
 Q3GDog8FJiBunp3VYw//86+bIr6hREKBfK0R/mGdpoJi73GMVdS7pMaKT2L1TTtkgtafHDW+dvwvh
 wA3QY/kE9PiHSdopZWdLGnSI0N3jpq2P1If8E9dU5oDvgQiL++wWAxdVZ+innqDs/yCOP17HSkDbQ
 5g4cmxfr7jRpcVoYyZ83ahqJVtbSb/sGBfarulyrDnDPjz8NOoW1XXJvBGGUlEE8rjNqrAA8olqUa
 TSMoRayg==;
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWOK2-003E6I-KZ
 for linux-rockchip@lists.infradead.org; Mon, 21 Mar 2022 20:08:13 +0000
Received: by mail-wr1-x430.google.com with SMTP id m30so12383206wrb.1
 for <linux-rockchip@lists.infradead.org>; Mon, 21 Mar 2022 13:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7FqnmDcsvrgYbGP6OPh4RiTzDpGi2N0/p6IXPk696Vg=;
 b=cSv2fVbDJkMxVE7wCqRDiDoIM+o2oygSfZJi5Lo8JF+0nPoMSMuYGxZeV1grnEbf3Q
 8+FMdFK/NBM/b72tKOQxCvMWYAXOzbs3ZjEUJ/0PF7fFTAjLE1uwEmqOfceAbSzxy3rE
 NZyqn5dK91pZm47mnumvMLE9ou9PkiBM0gVyOiNfSqapxOHQW7nu1CzewxtMQ6LPTVTo
 4zO4nH7vJe04kqSNep/pTIgMSjc499naZ3dX0mHbD1noHXGaB6lA2tQVBBNLCZM5QN2D
 xOXR0qdJYolDSe4KrNDX94sylsi+Hkf5U2A6KiQC/ErJ2NDlF3kOa3Wpi5HraV7pn5O5
 t60g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7FqnmDcsvrgYbGP6OPh4RiTzDpGi2N0/p6IXPk696Vg=;
 b=JjSQOJ4j1BDCTCWiPEqwDe3oiHWtkSs4GK2bWx22Btn3T9FljiNH1xMY4Ad+e46yN8
 Ah2sbCpYXGimEIX/UhcH8yf0giygEIDaQXkQ+3A4yuXaF6mIUgc0VIg3BTkzY55yd8Eu
 pMRseZ6tJxDq22mOrcpsjb/EFUnb90G/BnhFypYU4+bKrEe3IKmA74HS8jZUNvNqJ3iS
 0eyVfiUIpBJBvqgUGLqWqWtFk0Yj+3SowCt/CXchw4hNblC4d2hIYvt4+eqL0ybp7p1Q
 l9Ksl5HO9f8OJJqEIivNVp03d+EYcVOAu0VIL4oNPIGKRrS250svZnULNZc/yyeQHV+6
 MDkw==
X-Gm-Message-State: AOAM53293f031+ZqnyDivu5soqsNVJDLGyq0cTsyNOrA1hj9dqGNKSpf
 c0G1RpO6YMTGM7/Qm3XhWIPk2w==
X-Google-Smtp-Source: ABdhPJzWq4byShCgqQrYWFCe7oBReuZfefWI5AqTr4VVN54zmHM+SXxb+aSGKY0sN+bcl4fgvkgZsA==
X-Received: by 2002:a5d:6746:0:b0:203:d6c1:9c5b with SMTP id
 l6-20020a5d6746000000b00203d6c19c5bmr19648307wrw.446.1647893289203; 
 Mon, 21 Mar 2022 13:08:09 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 i14-20020a0560001ace00b00203da1fa749sm24426988wry.72.2022.03.21.13.08.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Mar 2022 13:08:08 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v3 25/26] crypto: rockchip: fix style issue
Date: Mon, 21 Mar 2022 20:07:38 +0000
Message-Id: <20220321200739.3572792-26-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220321200739.3572792-1-clabbe@baylibre.com>
References: <20220321200739.3572792-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_200810_903117_D4118B2D 
X-CRM114-Status: GOOD (  10.51  )
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
index 28f4a7124683..1d20f58275f0 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_ahash.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
@@ -345,7 +345,7 @@ static int rk_cra_hash_init(struct crypto_tfm *tfm)
 
 	/* for fallback */
 	tctx->fallback_tfm = crypto_alloc_ahash(alg_name, 0,
-					       CRYPTO_ALG_NEED_FALLBACK);
+						CRYPTO_ALG_NEED_FALLBACK);
 	if (IS_ERR(tctx->fallback_tfm)) {
 		dev_err(tctx->dev->dev, "Could not load fallback driver.\n");
 		return PTR_ERR(tctx->fallback_tfm);
@@ -403,8 +403,8 @@ struct rk_crypto_tmp rk_ahash_sha1 = {
 				  .cra_init = rk_cra_hash_init,
 				  .cra_exit = rk_cra_hash_exit,
 				  .cra_module = THIS_MODULE,
-				  }
-			 }
+			}
+		}
 	}
 };
 
@@ -433,8 +433,8 @@ struct rk_crypto_tmp rk_ahash_sha256 = {
 				  .cra_init = rk_cra_hash_init,
 				  .cra_exit = rk_cra_hash_exit,
 				  .cra_module = THIS_MODULE,
-				  }
-			 }
+			}
+		}
 	}
 };
 
@@ -463,7 +463,7 @@ struct rk_crypto_tmp rk_ahash_md5 = {
 				  .cra_init = rk_cra_hash_init,
 				  .cra_exit = rk_cra_hash_exit,
 				  .cra_module = THIS_MODULE,
-				  }
 			}
+		}
 	}
 };
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
