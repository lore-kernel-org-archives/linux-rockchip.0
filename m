Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80701C43334
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jul 2022 10:21:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w2ewNjuPH3tCNpBACI9xMFukG8dznlgGn9auxf/TbSQ=; b=NMnZMIilH6Rj6q
	JBeFHcO/0vy9bRepjfvBprmkGHfP0tGg2cfWZeQccgiH3J4xRnkQ8JCi8RhG+amUdCBP677fEwXqL
	XDvulNMteh+ACd3gAZ2pWy1qE0RBQIRDEIngwNqYTFB0IfP/7cMHrzRy4v5Ynx7nI/6rkfi7O2oWH
	jUb0AaXqbIQFeD4t3sr8v5gFOHpbwbH2urceXPRviZtl67L3Ejc9yEpmZJBZc0u2/hI1MLLE5h8Ks
	gnOq0NUJdvmH9pV3fxLEx5m5RPb5D6DaTAT05Sjbj3tICBtXcrvI0CfGiM6Py64YLwfHiJFFDbhp6
	ng01U9Kg047g0MgLntvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o929R-008Ncf-Sj; Wed, 06 Jul 2022 10:20:58 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o90xZ-007bjU-2s
	for linux-rockchip@lists.infradead.org; Wed, 06 Jul 2022 09:04:39 +0000
Received: by mail-wr1-x430.google.com with SMTP id s1so21047035wra.9
        for <linux-rockchip@lists.infradead.org>; Wed, 06 Jul 2022 02:04:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2nwWkT4441Zvq5igIAOKA8C0HAjPPXDmTRADPlAyhok=;
        b=Pr3IXa8ExRhTFh+SPH7MrhQizXMmrRN4KOZzHqdYpWENJ96Ms04oBik0WfZbJ27egJ
         ldxRn/lKH+72j5pIK0nS2nYnViD4t7mh4Zb1sOqM2u2kO5jOs6YQUThf4H4eI2Km2Ujk
         DwddZ86xRnFapyFfMRqcT6ohi+6e0uc4u1C7mMTTJA/fIR7ogqFH26AfqYtb+NPy09S6
         Lqsl7Gej6g7TLBDiNG7TJFSX2PL0SMt1IdS4uGkcq1ucTSIZUoDqeFV0sk0icX109eD0
         +evOAKZrJ8Fcpr+vITTRyd9o5yoYy0tl+3ssElJnyQ3+12HdNMnyGRJT/M/jsAeeXFrC
         2s1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2nwWkT4441Zvq5igIAOKA8C0HAjPPXDmTRADPlAyhok=;
        b=jrNkcu/YHsMg9g+c9DCMe2rYgZEjs2Kcrlvvla7WjME4uPIc42dSmgAaooVKGqfrOx
         bmRlEpMseKnH+swTfgQT96HD72A1+GlBNgvGzgobVh9dE6qywC2hXeayy+6lvNQ04QDb
         htuh/1tFPquCnMZrB6XkrBLtIoqngGlPObKutvylCovAOjcMfdpNkAbu6WXUdrVezesX
         ipOA7nPpe1xK3xuRRarLWUtH0krfxDUMC3Zzv/ci7c9hqGq+wEV9+gofJqJnTbwHiAUU
         XxtjOgZTFFruqo2Xh/aH1pz/dpOBlM77c+p9+BTiVbNjFR0uxH26+0CI2qLyeCpccvyL
         Z5bg==
X-Gm-Message-State: AJIora+k2/Y0J3c5bRbTc8eO22Wszf2dEyzrIIniVBJBPx3Z+auKYN3q
	rdqODKFBStTNE4iGSGyh2gI2yw==
X-Google-Smtp-Source: AGRyM1uEESfBM2/+cx8O6PDi67ahL3H9B52KIeo6hugjBlO2PZU9E0Dg3m/zc4Jx7ArSkzmwQCEl3w==
X-Received: by 2002:a5d:6d0c:0:b0:21b:ccda:fc67 with SMTP id e12-20020a5d6d0c000000b0021bccdafc67mr37250833wrq.246.1657098274092;
        Wed, 06 Jul 2022 02:04:34 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v11-20020adfe28b000000b0021d6ef34b2asm5230223wri.51.2022.07.06.02.04.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 02:04:33 -0700 (PDT)
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
Subject: [PATCH v8 01/33] crypto: rockchip: use dev_err for error message about interrupt
Date: Wed,  6 Jul 2022 09:03:40 +0000
Message-Id: <20220706090412.806101-2-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220706090412.806101-1-clabbe@baylibre.com>
References: <20220706090412.806101-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_020437_385385_DD262621 
X-CRM114-Status: GOOD (  11.86  )
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

Interrupt is mandatory so the message should be printed as error.

Reviewed-by: John Keeping <john@metanate.com>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index 35d73061d156..45cc5f766788 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -371,8 +371,7 @@ static int rk_crypto_probe(struct platform_device *pdev)
 
 	crypto_info->irq = platform_get_irq(pdev, 0);
 	if (crypto_info->irq < 0) {
-		dev_warn(crypto_info->dev,
-			 "control Interrupt is not available.\n");
+		dev_err(&pdev->dev, "control Interrupt is not available.\n");
 		err = crypto_info->irq;
 		goto err_crypto;
 	}
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
