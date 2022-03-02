Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5660BC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 21:16:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H0d3ndqrG0njCFqqc/iOrnM2c/0iVTRJg8tx/H0HZqc=; b=cBquoN2HZRjjGt
	Z43sdg16CZaiZhP/2eJHHPw7RhkT5Zz8foQiH+NDE3yZpUsgpi8U6hVvV0fIlZOxUuMiFeroPrPqU
	z7ObgHm59cEZ2zwzfiPgnWJhlU2qdzpfAUzpcRt8cd99/LIBHo56dM8W1qUoglLrUdgHGqWgT6tlb
	l6xdJT2H8y16qozIqAXkZYF+DFSEZzrgSW3eddkw+qGhvVSqpTM16RPCZgjapm+BCFcAZmI+TDd4b
	aMnC1ObaXwNT6g3QX+vdF9L0PmbLcdwHLnn6JmVryepD98RXhEql3K2JUHlGR1ipftm5U00vrBItA
	k8BLDwmKIVzEhOkdDvPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPWKo-004EYF-81; Wed, 02 Mar 2022 21:16:34 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPWFq-004Bef-6I
 for linux-rockchip@lists.infradead.org; Wed, 02 Mar 2022 21:11:28 +0000
Received: by mail-wm1-x332.google.com with SMTP id c192so1958560wma.4
 for <linux-rockchip@lists.infradead.org>; Wed, 02 Mar 2022 13:11:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5/nH1g76OJr2xP0kEzxoO9d69o0mEYaKTMfwjCEna4k=;
 b=s/I0Z2y4z8YB6ZgpjPwn9fMiOpI90kwAS3l0VUO3xvtkNUJzA9qE3bhuyGk/bXfQyX
 CaLoMUsM5bZeyiAJNnSt1vQiKqvQNMOlvbItUvclxl441XuqepRsZyfpgjMSmtGF0A7P
 3ULeQDYSW5jYhYhSUYI7a4jRSa8K6qHGn6hfgQdyAe+kHzeGqB+o1h8CvJPeuNtMyXlF
 1iDb3yANtGm4wZMsOQf3ULA5P0y4XIkn8TZ3l/zpcuTro47K9g+PBA1L47uSICN0lUJR
 bl/w5MqNWNLcDwJ54KJC2eF3jCXaEWg0ziruH6Z6kIgIjPNUyHy+ESBVMKQPJLHOhaOL
 9B4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5/nH1g76OJr2xP0kEzxoO9d69o0mEYaKTMfwjCEna4k=;
 b=8M2eR7gjOuwDOz29/iSRjlDifaGZb9h7mzEbnySns+j/v/KLGE9vrB3e6+z5qqAzBS
 N7Bygt+6En8BukVRBO33ZED/+Qz0C6kl3OXPczHfkqYIDJZowxpY9X0kfWPp5bqasOm8
 Q0frnglIU+RkzCX/xDd1T20sXEZO2UeEXTzVIVT+LSefzQjFJuL2Fr6SJLisPp1prV6k
 vrtT9Oy/9DyognmhnB3lk0uuHw0+RCpnzlPDc6HxC9mX9nxEj47NNaA+38gMYe5zlyFu
 tlPUMpz6v/cBeQDhj13sgz8ryNCqloT4eaKzwq2XvoIwU+L1BlO8L3oRJyBCmN+4ln7A
 T7WA==
X-Gm-Message-State: AOAM5308OfRC8bGPrI5y1vSQEjJRcBhOzpnK+KLsGZjJQSsbjw3C1Z0b
 qvh95AlCYIjSCwc/vZS49QVwiA==
X-Google-Smtp-Source: ABdhPJwPZwmrufp36YqMiXKGpIU+QwG7owyQ8MQP9+2rxoDOdGiEo9TNglb3MQRuVp+z7hOzJXjONQ==
X-Received: by 2002:a05:600c:1990:b0:381:1806:1d9 with SMTP id
 t16-20020a05600c199000b00381180601d9mr1365346wmq.93.1646255484689; 
 Wed, 02 Mar 2022 13:11:24 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 z5-20020a05600c0a0500b0037fa93193a8sm145776wmp.44.2022.03.02.13.11.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Mar 2022 13:11:24 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, john@metanate.com,
 Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v2 02/18] crypto: rockchip: do not use uninit variable
Date: Wed,  2 Mar 2022 21:10:57 +0000
Message-Id: <20220302211113.4003816-3-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220302211113.4003816-1-clabbe@baylibre.com>
References: <20220302211113.4003816-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_131126_290805_57DC1702 
X-CRM114-Status: GOOD (  11.64  )
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

crypto_info->dev is not yet set, so use pdev-dev instead.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index 45cc5f766788..21d3f1458584 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -381,7 +381,7 @@ static int rk_crypto_probe(struct platform_device *pdev)
 			       "rk-crypto", pdev);
 
 	if (err) {
-		dev_err(crypto_info->dev, "irq request failed.\n");
+		dev_err(&pdev->dev, "irq request failed.\n");
 		goto err_crypto;
 	}
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
