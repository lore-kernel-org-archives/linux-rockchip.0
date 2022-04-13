Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D9F4C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 19:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=00hkGAB3fbtKUCkNE3UGll6kG/W3zSfXSTvu3wYxQtU=; b=M7FuE+/Af3+8wi
	/ga2nBWJ5Zb6apgjV+yPSSR0w1jhR+HQizOz6ZPfvqPXl/hxi/jkMDIBpIqh8Tq5lOJzPKDeFcQUb
	Bv27zlwOkwsiOna7zR2YAmA8Y9EsQgSxmRWWocKCeC91+S3z6gbO2zZTeS/9hPzGuE6x+nXJEKTi9
	fjL5pFrvFiWzNIve3H0GMC6b/W2yMqH2U2lrKRJIGM1+ZmNGEcMDJD6PjHtRbywdasJii9486/2gS
	o6HS5s9Bf0RNRqtpTZiSLTlZAoeH3O1SCrpaIZgdwL7U07vJgCqfxkbA+vbFu4h4uiczg25rQYJB8
	zMvPW0Sj0dJyIbTNTR3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neiix-002T9H-0j; Wed, 13 Apr 2022 19:32:19 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neiLQ-002INU-Pu
 for linux-rockchip@lists.infradead.org; Wed, 13 Apr 2022 19:08:02 +0000
Received: by mail-wm1-x335.google.com with SMTP id q8so1464053wmc.0
 for <linux-rockchip@lists.infradead.org>; Wed, 13 Apr 2022 12:07:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JBfzxCMFwSqtUUAKgLYX1NAdCBaYrQJEwA5Wp5fjHpE=;
 b=yh8B4MA5+IIC0lL6pBWdPhs6d9WmcV3UPM/GHpIaYenQKbu/9Fa70KpToA2XQDr+Yg
 U9oU05mcUhaNNdu2BM7aJfgQCMyRA1nr6H0/T6urpImHNeJ7xa3de/rU2e1NkK5zRwA7
 UlbrPz6GNsAr8UytypSrhTBVM+Xht/FOXWY7m+8tawOZoSgerR3YJhf6SXMsgi//4f5d
 5985xj2AZJYpJHMQlkMrgZCxiC7kbDDqzPpDLMEZ+bhEJX/ELnPhmIGMHPGwkuZAn7Lu
 dsz6g7W0wSoS5gbs8tFrmepfmCMgF+s8d+zhTQ0FBuipmJNZ3OPeXkBc75OOimNYZX84
 Elxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JBfzxCMFwSqtUUAKgLYX1NAdCBaYrQJEwA5Wp5fjHpE=;
 b=KgzoAxikn9EC+pF/71xDi8VgJzQPFuDMsbtDZULUpbVUe9eVcKZjyLAqw/6a1jqtsb
 rCI7y2XYvh3whvS6zZ67BOlfXzx0VES3vBV+Txzl3Jvg13+9ucjM9CS+9sfjvIJRdAw9
 OcaK2M4DbThFvnTlZC8XAmI3ZI5E8cbN7rw7e48bXNO9YMgm5FG6NUv2t9RPtN1PVNQb
 MmFuoFOL/e7rpgtyjpZpjm1ib/hiCmCqURdGZ5xhhB2NMdZvjtMllgQ6wLAGwVvgPPCC
 Tb8Fb1O1mCk+BSnczTtc88MLjtsNLudH1PeJWD/pMIwskO1CBRX6hT59sg03TbOSjPn/
 FKpQ==
X-Gm-Message-State: AOAM5324+lo94cfUqnt9S8ZFJhKlzN04TSdm/ohbogV65nPj0z4ptgIn
 lnXhhRoc5ZhXLLHQvkFg4otoNg==
X-Google-Smtp-Source: ABdhPJyQ86GCiYzB29RlHiNKRPQcam5duoianBOXT2nFnR89sXRr77+hqM+vPCyb+YE2l+bErpELsw==
X-Received: by 2002:a05:600c:198f:b0:38c:a9e9:754a with SMTP id
 t15-20020a05600c198f00b0038ca9e9754amr166676wmq.146.1649876876246; 
 Wed, 13 Apr 2022 12:07:56 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 o29-20020a05600c511d00b0038e3532b23csm3551852wms.15.2022.04.13.12.07.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 12:07:55 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v5 32/33] crypto: rockchip: permit to have more than one reset
Date: Wed, 13 Apr 2022 19:07:12 +0000
Message-Id: <20220413190713.1427956-33-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220413190713.1427956-1-clabbe@baylibre.com>
References: <20220413190713.1427956-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_120800_964230_08341988 
X-CRM114-Status: GOOD (  11.58  )
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

The RK3399 has 3 resets, so the driver to handle multiple resets.
This is done by using devm_reset_control_array_get_exclusive().

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index d6d78b8af57c..9ba9b9e433c4 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -276,7 +276,7 @@ static int rk_crypto_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
-	crypto_info->rst = devm_reset_control_get(dev, "crypto-rst");
+	crypto_info->rst = devm_reset_control_array_get_exclusive(dev);
 	if (IS_ERR(crypto_info->rst)) {
 		err = PTR_ERR(crypto_info->rst);
 		goto err_crypto;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
