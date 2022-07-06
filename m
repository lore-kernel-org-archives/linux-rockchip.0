Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 742A4C43334
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jul 2022 10:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YeLk32Ra0a9Qd34jqG1ZYZtQ1RahBj2VPT7T9vQW6ww=; b=xJo/tdgmqEp8aE
	ubiAz1L1C4yD2kdPWUExbdKtTbK4XqqxUhbSgffZ1prCuw+n8N23FPHSiApZFueI6ah8whdPdGb0j
	uvMltTkBjXN7zcHV3rxeY0STeenNM1g0ZMatky8Z3SH9AnkmWIEFL/JQIOsJGU6gbDwJAZNGDGcBl
	fj4LF2PpmcFFVilFEDBKpMB3yKqTki4dj7eiHZtjYC1M57qLAA1YoEPKpNtuJ/PW+yNPPyw3VBafU
	k2BWcyk1gYot1zJl9/Q6ABOe5rHcgBDqBxk8fB44K+v6S0QbTBBnqwP5W6s78Vc5zUxTRFIuB8rr9
	v4RmBMYVdDJIHSXlgPvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o92Ac-008OqD-8z; Wed, 06 Jul 2022 10:22:10 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o90xa-007bkG-7t
	for linux-rockchip@lists.infradead.org; Wed, 06 Jul 2022 09:04:42 +0000
Received: by mail-wr1-x429.google.com with SMTP id v16so9613976wrd.13
        for <linux-rockchip@lists.infradead.org>; Wed, 06 Jul 2022 02:04:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5oq+K0wpCSsh7jUwt6+vmm/hcvr/21v0i001Dyw+Eww=;
        b=k8LlTAqfCG2MWgGVosUzsf/3RmyqtW/i+DpBCpSfQ22u42x1tejqkBDQ6ffKHO3bJ1
         3wzV83iQGKTtCe9UxhxmSsAKVTMOKE/2muz17umcnBAnr29UDj98wi6EEIN4pa22LhXS
         Y6Zk4BNnre57MmSW1zFna8x0+vRrRI8hazfxFw7GgUcPN5igcUqRZLBRkDDKZR9A9yCk
         i9enxCyKUOU70JpxnLdzPyPdZbGrk5UzkcekofjqylR2mSK9Ix/7AU9S0BrQPWx3jKz2
         kmIFnnzwY8/rQzM6Au1RaEn5KUfLhq89YgifALgPUsvVlMDthcCOKseLJzR+8V1yiLW1
         j2LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5oq+K0wpCSsh7jUwt6+vmm/hcvr/21v0i001Dyw+Eww=;
        b=h7gLymZukRhaVd9xufD6E50pQYrv3KpJRd4Sp6bUxcmLpI9JfjEyG6/TvXpAdN+un3
         GHMJDOCbzvZVv7LF9YsPhVEEjikIDrumXpvvo84JHb+q+6OXPuc6i5vQqdkBhjfszRG5
         BQ2d8Uz/KnO1WArHz7SObpY/BDeFMbyE/1ZFUQ0ZbJRzvhbr623NSSwGsVo4x1b8NWmz
         6n0XDYrsfm9CNaUInnKh0oDiDjvH8MJ18ECKaYpPPqdeQXs+7zR+piobGVhgCkQAVWy0
         qOqmCtxHDjsE36xq8TOOAJkwvu1lqupyuCfF9bJdk+nVIK9Ol69YwftYc5BLFrYhaNzr
         8uyg==
X-Gm-Message-State: AJIora8jWJU33OdBbGxaP+9lySuasvvEviC1ORJKMUbr5HI3vbOWxD8t
	yhQ3eJuV/3grfzd4k2TU13T2nQ==
X-Google-Smtp-Source: AGRyM1vW2O1Tjam4DfMdiLa04E+GjcW9Az1x+XRRK+o2g1q0r9++MfwNim2xWPdJ0BepE8gNKN85hQ==
X-Received: by 2002:a05:6000:1243:b0:21d:6123:7a80 with SMTP id j3-20020a056000124300b0021d61237a80mr20480718wrx.354.1657098275124;
        Wed, 06 Jul 2022 02:04:35 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v11-20020adfe28b000000b0021d6ef34b2asm5230223wri.51.2022.07.06.02.04.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 02:04:34 -0700 (PDT)
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
Subject: [PATCH v8 02/33] crypto: rockchip: do not use uninitialized variable
Date: Wed,  6 Jul 2022 09:03:41 +0000
Message-Id: <20220706090412.806101-3-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220706090412.806101-1-clabbe@baylibre.com>
References: <20220706090412.806101-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_020438_347314_8D2B1347 
X-CRM114-Status: GOOD (  11.14  )
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

crypto_info->dev is not yet set, so use pdev->dev instead.

Reviewed-by: John Keeping <john@metanate.com>
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
