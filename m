Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7747C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 19:08:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JwjbhI7PK8y2nmpy3IzgyX83i60p1pAFl5y9CD6XxyI=; b=xhoToXtldIhgpz
	14bH1Ke0W7e5xEi5p6lbE3tw8rf2IxJmYn9Z0KjIpMeSxVfz5zwy06QapeIieBNFPPjsj9WQFwP2s
	RvOYGPnjyojmHV45t5t/f4NFUicajJySE652u5jcCdSj6KOR8z74HkLAYZZ6IH2FSJ/wRycWZvhQs
	3O48Kz7pDIITtmSXNiIULun1GB6J0z7XyYGln2hZuNI7g+nEleoFi3q5OCacraIOLMEeWhp39qmBi
	LVSaVy+Ho+BolTMJa4dmZbOLGRAP0Pyhn+ZBbAk9SBZl7dWdKWDrVIkViOVCtyQX5wosMibWCWfya
	HM1Emw+djAGtvf7kbMhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neiLn-002IfG-K7; Wed, 13 Apr 2022 19:08:23 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neiKs-002I0C-QS
 for linux-rockchip@lists.infradead.org; Wed, 13 Apr 2022 19:07:30 +0000
Received: by mail-wm1-x32d.google.com with SMTP id
 123-20020a1c1981000000b0038b3616a71aso1760564wmz.4
 for <linux-rockchip@lists.infradead.org>; Wed, 13 Apr 2022 12:07:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=w4B/nkw6c+X0giFcf3xLDnzS4+ocxAJWfds+bZ7Txos=;
 b=jiOAFhLbEKc14FWm3yMjT0bbvtxTYPXvNGpo+AFvfuJMT54/wy7BFm8+ddRTVgIJkS
 bP21FD4FlJSXKgBkPKqs91MHbXwtEVI/j9/xgJTecf2hKmBhnO1Z9oW7T8fV/VZNFtPo
 KkQV2bwW0T8bM2pAmsbWUuLOa0z4L9uQy04o8otA1LzQzQ1cahmcy9WiQurPoWUMEoQA
 y9O/SldCp/jxVeMjtB6zjQs9fmWyDjnoVfHCXOBCDNlEK5kgpD17IoAI0i4Wyr5en5cu
 +tK5nMzd1NdMmQj1yKvF54iy37rUdBE6lFjm1DuZtweRiGGN/a8s+4PdW4zHfhY9jAgM
 axIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w4B/nkw6c+X0giFcf3xLDnzS4+ocxAJWfds+bZ7Txos=;
 b=sF4GT8bLjVuuiK1+5jH7QgrB7eTrXZtsup3w3AqWTydm2R3eL5TpmOMMzOwIfc2O9N
 fKA0qhPXI2oHxyPdHgA75gYy7qwqsXDlgjQOLmnWo7ILYWHhmp62wZ+EhGJXAGfgcJNr
 oaqXBlojaX6EYpCafJKvvqwE7LsbdK5K1jkEJZQwggYFEXJIavTWSEmYoMcBykQ5NhNA
 lfQDfT7LZzKgomb1i3ywprlsBqLr1KGp6dhYg2BQmF54/cFlAlTvBB7YEbX3TiZkEoyi
 obo9Yhe1r7Lz8NurN6SMBzP7WoeoxzmTCEWCnW+FShhXBOZK0vUbZhRgPmK+CImnarmm
 aTZQ==
X-Gm-Message-State: AOAM530KrXT7cj0MC5yE5BjM9n6lUK7w32igtElz8dsWMjXhkOseI2Z/
 WUWdyfSD0Ve3R58OU+LP63u4oQ==
X-Google-Smtp-Source: ABdhPJytnnB0BQUt30BsR2iqSqrcF6jboGMeaUhvOLB3fVaJplpL6qaHJ7dSaTQ8mUaTMLCR7e8oPg==
X-Received: by 2002:a05:600c:6d3:b0:38e:c692:d50a with SMTP id
 b19-20020a05600c06d300b0038ec692d50amr180063wmn.30.1649876845729; 
 Wed, 13 Apr 2022 12:07:25 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 o29-20020a05600c511d00b0038e3532b23csm3551852wms.15.2022.04.13.12.07.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 12:07:25 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v5 04/33] crypto: rockchip: fix privete/private typo
Date: Wed, 13 Apr 2022 19:06:44 +0000
Message-Id: <20220413190713.1427956-5-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220413190713.1427956-1-clabbe@baylibre.com>
References: <20220413190713.1427956-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_120726_901164_774AF097 
X-CRM114-Status: GOOD (  10.03  )
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

This fix a simple typo on private word.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/rockchip/rk3288_crypto.h
index 2fa7131e4060..656d6795d400 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.h
+++ b/drivers/crypto/rockchip/rk3288_crypto.h
@@ -235,7 +235,7 @@ struct rk_ahash_ctx {
 	struct crypto_ahash		*fallback_tfm;
 };
 
-/* the privete variable of hash for fallback */
+/* the private variable of hash for fallback */
 struct rk_ahash_rctx {
 	struct ahash_request		fallback_req;
 	u32				mode;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
