Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA687C04FDF
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Aug 2023 10:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U93SYDMtRoIkdeF5au9mguVXeHosSIIg5CfMwqM2dR0=; b=scdKyZPiyxAxAa
	1+mdd2C9SKXslJQ4UCU5ItCycwwQ+nwMx5wglrEMQta4Ue+HnVPuqKqURh7XL2QYSEdHU/2eoT24a
	u2vzyCJvco8HhpCbT1p/iktOELl+DuO65AcLY8UglMLMTb4BLCBmALFmYsgwbdCkh0N9UdhmAZ4H2
	RjESVufZMkAB5bP3Pf6A4C1RZWhjDwOdKx1WM0/JogdWlKA2WHOn523OH7QEs0Sb2YsaONjO95MFI
	PHkMabjjKidIQKbl09JQ9L2EB9ldxwzUW/ao3nu55YSS2/vB7ZE2tFkGO9xR3khfzW8FovNQAwAz1
	dmXvuUeoC1WAsGi0BGCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qU3D1-007GCO-2g;
	Thu, 10 Aug 2023 10:48:03 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qU3Cw-007G3s-31
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Aug 2023 10:48:01 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-5236a9788a7so987381a12.0
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Aug 2023 03:47:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691664474; x=1692269274;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wdCk7OUtlyVla0geNv76Vk4CNU64Mjej9PSyuuwP9Mg=;
        b=cq1kU20nMj6zkP5dpHC0Hptq8NDMOxwqXMIyqFGDLtXHdhylP/8FUA5sLq0QpIHQIn
         R6aRN019gA0L336WxdmXNVzP9H5PB795+pAKYjntNoFZwliERBALI2KEdPDDN4h7yJ7k
         /wNGeKxG5ZUdAKtmwd8Uql/mAj42Wkd4FeXd2mE1g6+aCRY0H/Xydvfx2LngX62guhQf
         Q3Z92vB+nZf827DmAqmBMJJSv+FPrc1lHcIoILW7T4qVr2jlt1WlRwYv9JKmis44Xg5e
         rzrcwyp8+z1Pk2cZktUcFxabe/SEpMY1Ukio/T9ZiJOfp3w6zfgY3FbqF8SAGFn+Ty6n
         R/1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691664474; x=1692269274;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wdCk7OUtlyVla0geNv76Vk4CNU64Mjej9PSyuuwP9Mg=;
        b=XkzB1PIpvLsv1+4Lc2NuJMLHL4XjCxlbQCwYwN74Zg2u4YX1iRP6Xfqe/Y8tlWUE0I
         Yk/yQy3xtkpeubkWJnWhdRdLnqFkY0aNtZHKnVFhS1cHJ+VWmjvNOk1QT2rL9zixrJlT
         l+Aacu5sqsUPQ89Sn+P1nVCOgDDQY7NvTznzKfDTKjJjQ+w1daj7uSe1lAvM5dR6Q2zs
         lVu601zT4YPUCWVg+WM0534zl7aZuMyJ5ZSLVwkfsWKnKLgO4g9p2Bspp5IUcKag/v6C
         SaEWvmo9jHIHE0S7+w33y0/RQ5sdoi/+TDFRF/53OxQljYAaHK5wzqKFpLO2W+QiCDo4
         2Uvw==
X-Gm-Message-State: AOJu0YwpxsTrT2wmjbXFPDDVxovR/eKroW+1Gh+LAxWob4bSYHVzeNMe
	EoFCQj64WQ1I9mkkCj06moBgGw==
X-Google-Smtp-Source: AGHT+IEnAtHjVByssGhPTqQELF84XSx5/0DHEL7BVsY09r1D07osAN5bMweLFHfpBNKn1GaFZacbBg==
X-Received: by 2002:a50:fb91:0:b0:523:102f:3ce0 with SMTP id e17-20020a50fb91000000b00523102f3ce0mr1833711edq.21.1691664474683;
        Thu, 10 Aug 2023 03:47:54 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id x20-20020aa7cd94000000b0051dfa2e30b2sm653854edv.9.2023.08.10.03.47.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Aug 2023 03:47:54 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Tom Rix <trix@redhat.com>,
	alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org,
	patches@opensource.cirrus.com,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	llvm@lists.linux.dev
Cc: Andi Shyti <andi.shyti@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/4] ASoC: codecs: tlv320aic32x4: fix Wvoid-pointer-to-enum-cast warning
Date: Thu, 10 Aug 2023 12:47:44 +0200
Message-Id: <20230810104749.164827-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230810104749.164827-1-krzysztof.kozlowski@linaro.org>
References: <20230810104749.164827-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230810_034758_972971_8A2A394D 
X-CRM114-Status: GOOD (  10.68  )
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

'type' is an enum, thus cast of pointer on 64-bit compile test with W=1
causes:

  tlv320aic32x4.c:1352:18: error: cast to smaller integer type 'enum aic32x4_type' from 'void *' [-Werror,-Wvoid-pointer-to-enum-cast]

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 sound/soc/codecs/tlv320aic32x4.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/codecs/tlv320aic32x4.c b/sound/soc/codecs/tlv320aic32x4.c
index ffe1828a4b7e..6829834a412f 100644
--- a/sound/soc/codecs/tlv320aic32x4.c
+++ b/sound/soc/codecs/tlv320aic32x4.c
@@ -1349,7 +1349,7 @@ int aic32x4_probe(struct device *dev, struct regmap *regmap)
 		return -ENOMEM;
 
 	aic32x4->dev = dev;
-	aic32x4->type = (enum aic32x4_type)dev_get_drvdata(dev);
+	aic32x4->type = (uintptr_t)dev_get_drvdata(dev);
 
 	dev_set_drvdata(dev, aic32x4);
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
