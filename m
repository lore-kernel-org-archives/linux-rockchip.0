Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D30EAC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 20:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z/DdqJ1PpgPaNKNxg06VQGjtl/NDNx6YxjK6X4kUMww=; b=sJ9kRi72HsTxlH
	9yfaHtixYbQDAFvUgibu79cmB5xrRN323c3i0ALIxVyKuhXMDkbPJDMDiAQffv7Y1JiD8DiqXmrQb
	vq8Yts/wuvaJYHlyqXxWffbYnSEB9ulBUiQBb0Tl22JUeBqok0tazvhWY9ZHnaHg0evvxgPhnUz2E
	V3+P0/FCSBMLboFwwtFfxwpQeGcxi89jfc0e1F7jj2i7q/VayesiXZGfWOkpDwbOkx4CJIc1gFrIC
	WHW+a8D3BWawug+tUFI3mnCERvfCCtQRxXERedNYBYkuQ/WGbW6D7v6S6p39z8k95Q2G4T2Ic5u5a
	RC1F8FcssW39IpbBmMhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj5E2-00BBSr-95; Mon, 25 Apr 2022 20:22:26 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj5DD-00BAuI-WE
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 20:21:37 +0000
Received: by mail-wm1-x32c.google.com with SMTP id x3so9935605wmj.5
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 13:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yV669w6ThAcunb2ptGEHL08NqOMgexsX7UsYGNNFxgw=;
 b=dI5RMWQEfNwOiJWNjQByihhh2EF9r/7KiCccoj1Z85lHvuo2cKvBRm0C8hgIwI+UWQ
 ibGR/ObFkwHqTvrcVk9Z9zqn3MYPWvbjdOsZGzmHN30Hv5qKaMIw6pgYNWVi7mYoUQOp
 ggRUfIIO5YkvMWpRFwK3pD/riKDox7f9X00q6tsJnwhES1xCKTqRRr2V5QeznTCzGXKm
 30dLwbBr4gw9Sa5bGallbQTciVH2C4KbAq+OlDBuuVL1HqsH96f6X4HIC5Swce9imECd
 7v+Wx3FtNnjyWU95xp+wDeSeBZwJzpLFP7+LnXTE6/537Xl4nCzbSIjGMJNSB1F2bfDy
 B0Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yV669w6ThAcunb2ptGEHL08NqOMgexsX7UsYGNNFxgw=;
 b=cSRBP0hAqa3Kz/SRHhXUZU+KDMejWYsvHtmtwLqUyL0Zfd4PFKo7YcXg9NyVAnfDGO
 EROBO7mjd8Lf0t6EaVz/sFLb+3G7c9Q/ALiwcNAcnHpw3CF5JcskI+SpZ4Zo8j5L7zuq
 xO9P92mGvOmQTawXRusAfMA0ThjomvREvNsjghuFkhTLqbXF25oXSuc3bfIEnqrC7Xa8
 sqnK90kW3vSgofXvzFgunK+KrsrkviGfK3kKj7s7CmYzsnsORUwFmf8unS12p2GLJnjl
 qNdHvGa0TZPAa11ckRmt9mVJPg+xuZaKw5Ge8v1FrEV8Rxf+KJxA0/pXQI22Oenc1+CB
 2Fpg==
X-Gm-Message-State: AOAM530IvWN7LdosIQtKfUEo1ZMuBKxCpp+abIxa6lUt2WTlOzll9aj8
 Lw/aEXlxhpmRlsmv6hTuJn/XFA==
X-Google-Smtp-Source: ABdhPJzf+IWyaPzP6ab2c63O2WXiPtIH/R7xsVInXnktPeeMpfP6sz3SI8RQ7FqDcmI0Jt60tCRbDQ==
X-Received: by 2002:a7b:c403:0:b0:38e:7c57:9af7 with SMTP id
 k3-20020a7bc403000000b0038e7c579af7mr17528292wmi.144.1650918089738; 
 Mon, 25 Apr 2022 13:21:29 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 p3-20020a5d59a3000000b0020a9132d1fbsm11101003wrr.37.2022.04.25.13.21.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 13:21:29 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v6 02/33] crypto: rockchip: do not use uninitialized variable
Date: Mon, 25 Apr 2022 20:20:48 +0000
Message-Id: <20220425202119.3566743-3-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220425202119.3566743-1-clabbe@baylibre.com>
References: <20220425202119.3566743-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_132136_069066_B475110E 
X-CRM114-Status: GOOD (  11.11  )
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

crypto_info->dev is not yet set, so use pdev->dev instead.

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
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
