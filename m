Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97360C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 20:15:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JwjbhI7PK8y2nmpy3IzgyX83i60p1pAFl5y9CD6XxyI=; b=mohGBBQ7sJtCDh
	KgDxceXaizRj7Z6T3GjJbL/3dxh3WYUfgyEOHRLJtnLeoe/PHuhHFE72sjbl69wzmTsOcf7cKTNXj
	wzAm8xf8JfXQFBpgpBY0tFNK64MZaR4/wIhrNyqx9wqCj/IBYMT+T2Xh8oHmAS3gGmtiXviSxPJII
	MkWN5Mcv9NQDev1PbSwnxZEXMTfMGwhX4kaeDskYUw+L+scgkR/IV9FxvkpV+XezCT9OVuxHj+bgn
	AVJCO3DOPk70yhOJx2QV7OyuP7eVtAfvRfSbqC3TUetzu/z6WxZbCABmzweBFDffR9GdyOd5AB38F
	bOg7pzVjxvIxKg8jKong==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnnJC-00BJ2S-1V; Sun, 08 May 2022 20:15:14 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnm8Y-00AyXl-Vc
 for linux-rockchip@lists.infradead.org; Sun, 08 May 2022 19:00:14 +0000
Received: by mail-wr1-x42a.google.com with SMTP id t6so16715399wra.4
 for <linux-rockchip@lists.infradead.org>; Sun, 08 May 2022 12:00:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=w4B/nkw6c+X0giFcf3xLDnzS4+ocxAJWfds+bZ7Txos=;
 b=xBSYfhNPKFBsV+MtL63+YdwE8hQ6fJsFoeJ/NI05jA46yo1oCGQ3z8PdsPl+JYA3gP
 U1/Kv+Ub5+GRq5e84yegbawuogXnvwtrbdiD/m7J2zgnsoDYwOjQMPbJBh8bcZ+DdIJW
 RpxAszcV1sc8sfVrTD26+ZhNdCn8cr92KtUpRYC4nLWsmzg+9vy57PK0TilpO46jZHEF
 ZBkPE2SDXEONC1SsQ2Q6TUqDHuaHDlKJyZdPnlSFr6XoT7YgvEm3uTSZqXNGUSZVs8VI
 R/gIXVgu1gihaAlZkovWuJN2a2Mcsz2EOEpKt5fsj6buzvzyL1gjugmUK+U7/i1TX3bF
 6Ibg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w4B/nkw6c+X0giFcf3xLDnzS4+ocxAJWfds+bZ7Txos=;
 b=4+ug+ZCsFpkQoyX1h0UULEwuBK9bFKG8kzx+Iuu8BO2sCwRy/B/fnmFkW/5uhRjg5P
 y16E9Oo5E2niPEpHP5TWYVg3xL1PWhvFhKpDvfIRgzHPC80EJ+VnNw1C86Eh+FRuQNeM
 5vawBKrC/yTDJ9TvQ65Wh9lvaTBL6nD/11r1WO2E2tC7grrxGqZ8k/CMWzGA5Gd/L0lh
 Feg4IchB78aA4GfzFNZULlGi1ZJDgNtwKZ9quyBgZMqA+xJHom6hY6fP9SqN8cSOK001
 PgkAFrE873N9Y0AXpZPd+zAnF2eaXel2PUG5q1H3B/mnGrBEoGwsTLEcLgsCC2o46AYL
 rm6g==
X-Gm-Message-State: AOAM532u582rl66yKjN3W4sq+Ui9tZ+WtvQ9YEd0B7a4Cjg7y6MnqGho
 uDiUhLQlIszsesFAhQvaMivG6g==
X-Google-Smtp-Source: ABdhPJz+zcX6PpbigBW8fFjw5HibjVnV6t/DKE9y2/UY9F/UqoPIK67DLqN+Mp6QsZ4+JlfLut+ZDA==
X-Received: by 2002:a05:6000:1681:b0:20c:5aa2:ae14 with SMTP id
 y1-20020a056000168100b0020c5aa2ae14mr10796973wrd.443.1652036409039; 
 Sun, 08 May 2022 12:00:09 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 n16-20020a05600c3b9000b00394699f803dsm10552348wms.46.2022.05.08.12.00.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 May 2022 12:00:08 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, ardb@kernel.org, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v7 04/33] crypto: rockchip: fix privete/private typo
Date: Sun,  8 May 2022 18:59:28 +0000
Message-Id: <20220508185957.3629088-5-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220508185957.3629088-1-clabbe@baylibre.com>
References: <20220508185957.3629088-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_120011_059194_DE48C0ED 
X-CRM114-Status: GOOD (  10.19  )
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
