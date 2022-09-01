Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7043EC0502C
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 12:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w2ewNjuPH3tCNpBACI9xMFukG8dznlgGn9auxf/TbSQ=; b=0CWDTW0fIgr56f
	yoWiBfbIk0VSKS/vpUV0tHDzNy/rwVlf50YiPpQy/d+BnjXrpcE0aWKhxDwh8aw0m6MVaAKtnWHp/
	Wi76RHl5TDCfrp4rKowfI9rVJ16b3O6yY9m6FdnMI45Ixqw0nd/8j+w9nnbCE1zixP5LW8ZC3fbbP
	Aj5JyMhnyPVD/xq8aM7p5Kjk65tphUshY79QY+5s2tt8CgjjSvKK3FO+ood0pHN70v/vq3Vb+wBgP
	6i9PJTlh2Sh+uHDJC9X2+P81V0KPrkfkeZT+Atrkni4+TzlYsxWm+rUsQ1gYAj7DSK1z4OFqRURj6
	FcoINc9gMRFwoR47jPug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTjlg-00Bo85-8N; Thu, 01 Sep 2022 12:58:00 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTjl3-00BnlL-HX
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 12:57:26 +0000
Received: by mail-wr1-x435.google.com with SMTP id v16so19520282wrm.8
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Sep 2022 05:57:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=2nwWkT4441Zvq5igIAOKA8C0HAjPPXDmTRADPlAyhok=;
        b=basRl/C6QptrvQbTpk+LkAHZh/MQJacL+ZAGvkDnh7vGFvFVx3cZ7eoHvSXNXOEMVW
         A4/IH1a11cZI4vc/n4x/VucSGHK99YV85DWyCtXisj+J/mQ6xmVjDBUuHl/Kco27tSwI
         nqblv1KDC35mISIbMzGoWcfd96GO8QAzNAwZg0QExhm6WokwnnSBXXpqXkhFPx1ekAfG
         fcqmxQdL3+pJETQVLfLTg76nse9tFnjPYwwdXKyxU0pZne2j5YF/m22/3GUTt/+uLpBl
         MyenoYaM3m+G+t6Nkho53sd12AD2vB8eOCRsV0hceISDDgdaEDPogkiYeqSNAODuzdbo
         aalA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=2nwWkT4441Zvq5igIAOKA8C0HAjPPXDmTRADPlAyhok=;
        b=QHUqo44QOjprif8ilEJWMWTPWoVAFhDHEqhTeJN3bELOvRvXwVgfk3IXnkoSZ7fR14
         zzXVUJyLMZObHRCZluSEpm3vfwqAFKFCT6vEQ8NJTOlbbzrECYScMIkDmzF9A/t+12Ad
         a7kfJX3ehRW2qwvmvsnk9betv0Gnc5+9kc2g4vu5dWEPypoFUBO81+50XLrhdzunYaQ3
         LFVr6n9327dvyi7Y9XXz06cvT4V7L0eFFm4g8nD7O799p/SGkx99chiklwCthh7maJbf
         R1AeiMmXuzsYo9IcDqAsEKWB3/md6wEVYed9IxbVfXNXZvIPgt0oMF/CyLGY98gDXh+y
         zgiQ==
X-Gm-Message-State: ACgBeo1F90EMdDSw3j41Zeboha6t9pC3fLr50jMEY7Gcw37nU3Iopnnc
	+24ocmOUEQ9YwOej6SJiBSsL0A==
X-Google-Smtp-Source: AA6agR4IYKknEQA+lBEG/42xj8hTQq56MSul1p6lQ4/KRXttWn5L3gn9Kon82s1xc34ZKvNatRXxcQ==
X-Received: by 2002:a5d:6b09:0:b0:225:37cf:fb8b with SMTP id v9-20020a5d6b09000000b0022537cffb8bmr14603530wrw.179.1662037037975;
        Thu, 01 Sep 2022 05:57:17 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v5-20020a5d59c5000000b002257fd37877sm15556709wry.6.2022.09.01.05.57.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 05:57:17 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	ardb@kernel.org,
	davem@davemloft.net,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	Corentin Labbe <clabbe@baylibre.com>,
	John Keeping <john@metanate.com>
Subject: [PATCH v9 01/33] crypto: rockchip: use dev_err for error message about interrupt
Date: Thu,  1 Sep 2022 12:56:38 +0000
Message-Id: <20220901125710.3733083-2-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901125710.3733083-1-clabbe@baylibre.com>
References: <20220901125710.3733083-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_055721_591340_E19568A5 
X-CRM114-Status: GOOD (  12.26  )
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
