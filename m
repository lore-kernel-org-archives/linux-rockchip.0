Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D290E743C8
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Sep 2023 22:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OAJbtRV1WY9kfJy0F/FV9k8H3jYA8hyIjc8rM4CvueQ=; b=UcoAq8AqjDocP9
	Y7WuDtc0dJGakmNH+kY0JS3ERsY19E1wU0baflbXN+Akkyyksx/AZq5vpnkVVMtUyjNpcGwpMS/49
	Eru7tVEcRZgFARO2PVDfIPvTxQNRcY9wB1wxbd/+pRfOipOT0/z+Al+3c9hR3URs0MEDmSK+bda7A
	lE0U2czwtTFbunubeNhEGxyfUp8ecRxyw9Q3r5TRn51QtCyVdIhqarikM5UQJVu30KidYjnXlxFQg
	WN924YnuvoI6ZAdVwGppWRrjQskdBte5coqBg22EEp0VCnGczrB7TFLlshhLMiDeCzgJ8gT5f70BQ
	fC/J8Yi9pXL1IdlGzQKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlzFp-006l6D-1A;
	Thu, 28 Sep 2023 22:13:05 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlzFm-006l43-3A
	for linux-rockchip@lists.infradead.org;
	Thu, 28 Sep 2023 22:13:04 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-504a7f9204eso3243616e87.3
        for <linux-rockchip@lists.infradead.org>; Thu, 28 Sep 2023 15:12:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695939178; x=1696543978; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dq20wAX7KyYyuxOCj/4NvQoVluqusmWSS2hLsMjGcCE=;
        b=ntQSfUwb+70xTMuDyGfu3sQ5jmiAEWBJrchpAk8qoEysy4eVoPN1OLNlPU2qsaAPRG
         V2cPwvMN5hteB5vLBZ7kUVHA0vMXWVV5Fj+YhzWR4b4lhHtUsBkZEz12cPBxIQi71t27
         YezgzmDr0MOFPFthv8OjmcnwGTVB/1kyNsqWQLMN/68SGrX0wfNq/do8xpnU5mWRoAMW
         eLbT1701RuOuKouGjy69kEGGKUiGamgg55Gd/z+3H6f4dxrEas/Aaw+eeOv9GYHVzuQ0
         W2D545meD4SDqiU2zhRmEZHkObna/A8JjzUQfFlqjpUFEGGt214W4GSCunc5QdDgArWC
         nPrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695939178; x=1696543978;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dq20wAX7KyYyuxOCj/4NvQoVluqusmWSS2hLsMjGcCE=;
        b=JNmUv2goX1nZ7uXGaHJWsxzLpQA6gOrvKI3vhYeFSw9NHJSg6DSgbWv+C65S6gPXbU
         QUujvDVXh+8h8wjee1lRTw8GWI4vY8fWnQXOSHNDJ4Ou/Nk4X8KsozmH2TvbdLT6MXFE
         Rpiw40urvEI8bQfuBsyH7xyEkUQWftkrQwJaniaqexqwtwn1l5LzFAJwbxP5nuOeh/r/
         fJAvXTMBgop8Z8UaGxHG0sRfXKcBKE1utZqfSYslH1IFbHQ28IpCxJh3c10Q9OSzQhmN
         p0Ngt8llTfR1fzQNZRoPwKTMNn9XltBJdgSI6k8z7tDkB95Bt6JcteGzvbZEY5z17Bgg
         +HlA==
X-Gm-Message-State: AOJu0YxGobtROv1E4mwc6xyrxQ3REiyvrREi1zgP3AJZy7jozpx12pCR
	aF4th8HeLUoCLtDcuBJShBVZtA==
X-Google-Smtp-Source: AGHT+IH/mmM0nd0grFY56HkYk7pYC0txYkyCfW1BZfmsMKcj26i8WAbOvsdeSjB0ZgiMBG2REuwJsA==
X-Received: by 2002:a05:6512:4011:b0:500:9d6c:913e with SMTP id br17-20020a056512401100b005009d6c913emr2625253lfb.52.1695939178506;
        Thu, 28 Sep 2023 15:12:58 -0700 (PDT)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id r27-20020ac25a5b000000b005030cef433esm3271964lfn.94.2023.09.28.15.12.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 15:12:58 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 29 Sep 2023 00:12:55 +0200
Subject: [PATCH v2 2/4] ASoC: rockchip: Drop includes from RK3399
MIME-Version: 1.0
Message-Id: <20230929-descriptors-asoc-rockchip-v2-2-2d2c0e043aab@linaro.org>
References: <20230929-descriptors-asoc-rockchip-v2-0-2d2c0e043aab@linaro.org>
In-Reply-To: <20230929-descriptors-asoc-rockchip-v2-0-2d2c0e043aab@linaro.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: alsa-devel@alsa-project.org, linux-gpio@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_151303_020208_042917D8 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
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

The RK3399 ASoC driver includes two legacy GPIO headers but
doesn't use symbols from any of them. Delete the includes.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 sound/soc/rockchip/rk3399_gru_sound.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/sound/soc/rockchip/rk3399_gru_sound.c b/sound/soc/rockchip/rk3399_gru_sound.c
index 0f704d22d21b..a178fcd94d88 100644
--- a/sound/soc/rockchip/rk3399_gru_sound.c
+++ b/sound/soc/rockchip/rk3399_gru_sound.c
@@ -8,8 +8,6 @@
 #include <linux/module.h>
 #include <linux/platform_device.h>
 #include <linux/slab.h>
-#include <linux/gpio.h>
-#include <linux/of_gpio.h>
 #include <linux/delay.h>
 #include <linux/spi/spi.h>
 #include <linux/i2c.h>

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
