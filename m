Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FE90C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Apr 2022 20:19:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JwjbhI7PK8y2nmpy3IzgyX83i60p1pAFl5y9CD6XxyI=; b=ydMoQO1Hxi0Cfa
	ra3sBxgLKUCuYwKJ2xpbQWylYmDqxI2f4h1i1f6DmwQZhbguNBK1F5fMGvuZ7Avn8wGQjJjhrOD8Y
	YSu2dyS4lSBFLXAhNspxmCOCokqxYwkqKkSgs+5GhpX3hf6DFtrioYyML5UdX9OF/EZXFCsAfopbx
	lN07t1UFpg1MRytWIgRYq2tjf9VaLk/WxK9ZpVlwfngLseg2M/FjnJBS2S+H0vGxP5/MgyutjC8zd
	1CaPkcXLf1em72i9ffvUv7C32z3+ggY0N0OUgJ6QY1lvMugylGJgHU71Np7/Xnf8YafKbb5NKZeIa
	sDAl7A0RXwAiIk62Akxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naNjd-0075P7-9p; Fri, 01 Apr 2022 20:19:05 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naNiq-0074rw-KT
 for linux-rockchip@lists.infradead.org; Fri, 01 Apr 2022 20:18:20 +0000
Received: by mail-wm1-x32f.google.com with SMTP id
 l7-20020a05600c1d0700b0038c99618859so4254000wms.2
 for <linux-rockchip@lists.infradead.org>; Fri, 01 Apr 2022 13:18:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=w4B/nkw6c+X0giFcf3xLDnzS4+ocxAJWfds+bZ7Txos=;
 b=KxcxtcbRb2QPgVauezedV7SNYLp5vmgrnnYhE00v0LZbmM6JqQASdazz176kksIVQY
 BxP0dW3xTidets43zID6Q986jQbuLAr4pLOapROvgXbDtduSqxudXk+/9sMDk14WaxAN
 3sWgsBLDqkr3F5a9fha4I7gWSvQgzr/2JSEFmnLw+/sbOWbztPJ08dTZjIo2eE2Ls79B
 tsPtZoP74ZxmBwAT54g9XchOKH1wC4lE0Q+l+SZTgFFXRRF+ryEdl8J3M2byJeg7C5Xr
 GLmmyLryweoDTXnscdokkziggZBgAOkIV+73uachetlN83ZCXh3cjjbb0xvzO97UKSGH
 HnEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w4B/nkw6c+X0giFcf3xLDnzS4+ocxAJWfds+bZ7Txos=;
 b=xr6hytSgQiIPFwN4nWaORrROd+TjxPsIlY/lyrP82VlqDCdXsfqU3LzvQ07I3YEhKM
 WxTrYZeZSUvST3U8n6hml2hIOxMCEK3xLAqPcy9TRdjLtHOmrW5JBm9AmAxj3baM8kBR
 oA8sUifjPYMlsvYFZLumMGziYxXy7O90l77oR8FmS+uFd+z+aCm0mXc3+9Md38vcMaIX
 b3I9n0DUNaeOL+l1b4sJvhGVLj0QMdBc5wW1Jn899MQCEJIsouNc+FC/48/RDa5k/XPO
 ziTdtlrQ2NUzpW8xhjdoP9oNQZbaCOn+8GXle49iSnatVlzY5NEk2fvSX6RTXA384Qfo
 6yrQ==
X-Gm-Message-State: AOAM530nhRt1aG82Jn7bDu2lJxrIZToKLxAHWdHclmgjz2rapKZVheV5
 V+fpWGC1zVoMoNkRHxpMIstexA==
X-Google-Smtp-Source: ABdhPJyaIe8Lc7psoRcrDK2ZUQlV88j42ewUBPlq5iu0doBl94rx+Sy8DDzBtsVAMdfXe0hJ+AFlRQ==
X-Received: by 2002:a1c:7302:0:b0:38c:bb21:faf7 with SMTP id
 d2-20020a1c7302000000b0038cbb21faf7mr10125930wmb.31.1648844293709; 
 Fri, 01 Apr 2022 13:18:13 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 j16-20020a05600c191000b0038ca3500494sm17823838wmq.27.2022.04.01.13.18.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Apr 2022 13:18:13 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v4 04/33] crypto: rockchip: fix privete/private typo
Date: Fri,  1 Apr 2022 20:17:35 +0000
Message-Id: <20220401201804.2867154-5-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220401201804.2867154-1-clabbe@baylibre.com>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_131816_688879_F9CB9964 
X-CRM114-Status: GOOD (  10.34  )
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
