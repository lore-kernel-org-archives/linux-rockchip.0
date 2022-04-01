Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 059ABC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Apr 2022 20:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qe78svs2oKzlpNckCBe2XkB00dBZkjAp1oCpSWCAPS4=; b=TbCVSUka+8ysuf
	u9TJBtC5UnZHd8HmMTBeliR2FMw2OMLracSHEyBcPO0Azkf6vWbDMmu6fqzBGPW1NjEda+Y/qXlZ1
	zA8s81TEiGRh04KHIneC8wO4KA7gF7pTfxTpb7BDYeVvD30SpZhoeBXImbL9sE5Ul/ljb+JLnZkSD
	FvVGSY1WjTdj9mGmJ6YXtfGfT40yjCOU2mwY4MiAYIjeF/PxGgCsTbXN7y70+pUZ0ROHpznQznzMW
	VU9Lz4uAB7rDRWKeHgzBT/rGDPi9JcoVsR1L+KowRB42tGmEZ5qkzAlXUDhrxdlDlYW/+yu+fAWfK
	932/6E2Um+aTSnrVAy7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naNuY-007BKg-Ae; Fri, 01 Apr 2022 20:30:22 +0000
Received: from mail-wr1-f52.google.com ([209.85.221.52])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naNj6-00751M-3t
 for linux-rockchip@lists.infradead.org; Fri, 01 Apr 2022 20:18:34 +0000
Received: by mail-wr1-f52.google.com with SMTP id c7so5896165wrd.0
 for <linux-rockchip@lists.infradead.org>; Fri, 01 Apr 2022 13:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BnZbfMUuha/e58ph4xGFzpx00napP16b2Yi5TPH+Uw8=;
 b=VMGnz5BDyrX57u4altzeS1D55Q0z052+2xAefvFJ5845l+slHi0Mb1fKlR/Z6tlkzF
 7N13JbhT2Q9bQn2CiFSaY+gmr2fJcTq6LykO1V8XfUjFOehoPfUv5TbioGuVaUHDYehC
 umN1WpaCnYQTL2WxFlENEr/UaKtT5hLkwYDQCj87u+VwA8r1gUPCw5pJwv7BBnxXkKWT
 rCijcjU95hswYTA+m0QAoXApm+iif+2SPPEGGishNHy+q6TqbxuS3AWqWARAbYfIWNnT
 xPAsVQc93xVdc66gEHv8VsOjfW+QcM3XabcL/EP2J6Oez1p4wRsEJvmerAG8Xpi1M6qj
 VOlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BnZbfMUuha/e58ph4xGFzpx00napP16b2Yi5TPH+Uw8=;
 b=y6NPtyQwksSDSSvsHUTjvNXkENDrHCDhOKgKDnHXMsIowiMSWM7gxtKwrQ+JjlGYfh
 I6fR6ePpVUu2EjesO30Vg+nGD+OJewl9t7Vbm0++2PGkFqlPuahaJ22wPxYVx9hW2Q+E
 WFBVqCZtu4Iop1bogLWyEQx7mON8BGIokQW/vB7CzjzLMdRJbXoA+V3dVr0Fiu0ofbZg
 tuv/UDzrjn0cfaMCKQJAo0ttRh2hHUfTRJQ2sN8WBv3lJ/mhkRHO8KRPw+K11+YWx0wU
 O/KLL9vODyqFTrhX4rUemhHFyp4iHH0XV7cs1XDnmhrQXKW8pxKEJu/9gW5h+kbfi+BY
 ogCA==
X-Gm-Message-State: AOAM533RAhv1XkN44oImEhHmyiYhUMG8QjCBcJ37YHMzVnGLy3MUVMVC
 TSyOz39Zcfa01SYdlzegsSpFXw==
X-Google-Smtp-Source: ABdhPJw6b9aG6u7w0tHzEgkzE7bsoJzQjX153GTY7bCfaimXSYF6Eo0EK2Y5ddabJS5OWw8kO+v8XQ==
X-Received: by 2002:adf:d20f:0:b0:205:e6d4:7dba with SMTP id
 j15-20020adfd20f000000b00205e6d47dbamr7601835wrh.169.1648844304134; 
 Fri, 01 Apr 2022 13:18:24 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 j16-20020a05600c191000b0038ca3500494sm17823838wmq.27.2022.04.01.13.18.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Apr 2022 13:18:23 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v4 18/33] crypto: rockchip: fix style issue
Date: Fri,  1 Apr 2022 20:17:49 +0000
Message-Id: <20220401201804.2867154-19-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220401201804.2867154-1-clabbe@baylibre.com>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_131832_327794_8217D691 
X-CRM114-Status: GOOD (  10.75  )
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
index 21c9a0327ddf..58acea29bed6 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_ahash.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
@@ -337,7 +337,7 @@ static int rk_cra_hash_init(struct crypto_tfm *tfm)
 
 	/* for fallback */
 	tctx->fallback_tfm = crypto_alloc_ahash(alg_name, 0,
-					       CRYPTO_ALG_NEED_FALLBACK);
+						CRYPTO_ALG_NEED_FALLBACK);
 	if (IS_ERR(tctx->fallback_tfm)) {
 		dev_err(tctx->dev->dev, "Could not load fallback driver.\n");
 		return PTR_ERR(tctx->fallback_tfm);
@@ -395,8 +395,8 @@ struct rk_crypto_tmp rk_ahash_sha1 = {
 				  .cra_init = rk_cra_hash_init,
 				  .cra_exit = rk_cra_hash_exit,
 				  .cra_module = THIS_MODULE,
-				  }
-			 }
+			}
+		}
 	}
 };
 
@@ -425,8 +425,8 @@ struct rk_crypto_tmp rk_ahash_sha256 = {
 				  .cra_init = rk_cra_hash_init,
 				  .cra_exit = rk_cra_hash_exit,
 				  .cra_module = THIS_MODULE,
-				  }
-			 }
+			}
+		}
 	}
 };
 
@@ -455,7 +455,7 @@ struct rk_crypto_tmp rk_ahash_md5 = {
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
