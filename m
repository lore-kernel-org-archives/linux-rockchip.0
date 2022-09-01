Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 798D5ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 12:57:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YeLk32Ra0a9Qd34jqG1ZYZtQ1RahBj2VPT7T9vQW6ww=; b=CYgVo5AxP+KfyR
	4wlLx1pYe71+sNJExvxH/6lAc/Q6AuRu/OEBxoAqbGVw5av1Ucr5BfFEBEkfwsmGbR+si6LOaguA1
	Cm1Mh0u+/x7GplXoIuVd9ECsWuORZswmLr96TWzfNL5CFpEYz+aBGTGZP9jOcX4Zx1bA34cRpXSKt
	j1oG3jKR9RwvEayIFF9UdRNtsPica9x9Dg6mdjLKc84E9pMEh0IvlrO0/uON1DZO1ekQSMs9Pmnru
	pAAyaI9e5Ri0ys3A1yBKgUis+V52NyOE/FxVTqBbBqlpgexw4YbXG9P1/Sw6X9PEVzZXLAhdveQK2
	Qd74UpzFpYRt7kGGbqBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTjlK-00Bnwz-LX; Thu, 01 Sep 2022 12:57:38 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTjl2-00BnlR-Lj
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 12:57:24 +0000
Received: by mail-wm1-x334.google.com with SMTP id n17-20020a05600c501100b003a84bf9b68bso1392497wmr.3
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Sep 2022 05:57:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=5oq+K0wpCSsh7jUwt6+vmm/hcvr/21v0i001Dyw+Eww=;
        b=DdLEChHulzdasOuIWPUlvh6/dx1pv3JVup4WbLGKn8GZsDUWAeHKhRXg8s3zgqoS4D
         zfCnpWVLLQgQDTgIhJgSaYxq+gtoHzG1yztUdHZk7U1Vb9/PzweyZfmYzy1j7qGMYnp8
         hFCGKvNcS5LLVeuc54F3KGX0w2Fvuf2SVvVrsx43CmfrvZ2Evu8fU0KYNTCojgdBwW2W
         hNxd2bhrWhmMpKUWXkZmaHK8C8bnBhnTyQ2tpAXZMXzIXdGgb/jPCxZvPqxoSXN2wKUA
         UwqbbkRJlL8aUniD+sedCbytuSuM+u96t5FxdGx5lcNS93a0JsxwRVL+Bc8tVYjmaGEJ
         G4Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=5oq+K0wpCSsh7jUwt6+vmm/hcvr/21v0i001Dyw+Eww=;
        b=xS5kzAd30dMnWNB+uptVoXQiwjC0w57CMII7u279RN54eKePZgNuaA7eVVwCOXGxuL
         Jt02I612owwH/OWrZaq5jbJetNWIkqCMTdqE5JEFtDhYzeZxo8UUo00ZKoGR+h1OudCN
         oKcfSdPyfrJuE4nxy2UqS0TurCGaVjtWPhhtsCpii+mHi79VdN/D44M/tDYfMIK5E5Rq
         jUs9S+z5IjF6byLvaWSUd5jfyA7knAuzRJ1zbSrKthLME5MJ9MJ40BGf8L3nUF5v61AA
         Zd35jU9+74kTbgSjBRL6rsIwD6784s0cgvPdnqJFu35BXzbsfufJy27RNDMHNbgDkARa
         TZQQ==
X-Gm-Message-State: ACgBeo3Vcv/qIEOhxe0rtkc/BXHC1EIZ0U/hmKXI3wEKtuiyVw1DMwSD
	+D7MG+MBwcAt2t+YSr97FVqKhg==
X-Google-Smtp-Source: AA6agR7sSVB8GDqHA/SNdpU3efGHrOX2Si3u7vU37Gf21cUjmMfyxBMIMocd/FwxLdJzZOAFR16rnQ==
X-Received: by 2002:a05:600c:1e88:b0:3a6:2ca3:f7f2 with SMTP id be8-20020a05600c1e8800b003a62ca3f7f2mr5333101wmb.7.1662037038960;
        Thu, 01 Sep 2022 05:57:18 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v5-20020a5d59c5000000b002257fd37877sm15556709wry.6.2022.09.01.05.57.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 05:57:18 -0700 (PDT)
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
Subject: [PATCH v9 02/33] crypto: rockchip: do not use uninitialized variable
Date: Thu,  1 Sep 2022 12:56:39 +0000
Message-Id: <20220901125710.3733083-3-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901125710.3733083-1-clabbe@baylibre.com>
References: <20220901125710.3733083-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_055720_732429_0D19343C 
X-CRM114-Status: GOOD (  11.53  )
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
