Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0890CE743CC
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Sep 2023 22:13:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/i+avrFzHnUz50Df21ykEDYtlJ/mC0rn5T1U9vVhIhY=; b=qou9iqoNyjC6sH
	lwssXWOLu88eBJPvd2xmnyglzbu5HRo7qbjr6CpQaUAwF0OkjKGkQWm0NOZD1quRqCFVIFDnP9273
	cx+6LNMicESlDzJ7+rHCoN54rjhpfNNtyF/Vh05X81oG7kmtsT6AqHturzbmmGNbbSeHLf80Nd2kj
	sVSokdzKHxMO6dlpMoOPKnTANXmeF12BvOmQbE1KfhcWEoLR3otbVMOQruLXDyjG0BrCPeScfxeY/
	5vmoNmWjcTEGqxhjzW6g1eDlEnI8CpqT5nCbkCTMO9PUhSaJbm+JYrVmTCSaZDiDoZblsjXlHV5HC
	mM/TEf8+RSueu7t7POYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlzFr-006l7H-0l;
	Thu, 28 Sep 2023 22:13:07 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlzFn-006l4J-34
	for linux-rockchip@lists.infradead.org;
	Thu, 28 Sep 2023 22:13:05 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-50336768615so22627424e87.0
        for <linux-rockchip@lists.infradead.org>; Thu, 28 Sep 2023 15:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695939179; x=1696543979; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CY0vsjcVCBgE58w9UR6SBm++3xKyQBSwPNYicIzid6s=;
        b=HhKRZWf1/mcFxbDz7dDmjmk/OtEy9UqPuFPAmdiw8WFpGVe8rNRaq0LRUnf25zzPh3
         QjHeVKeGPTGCqEGIPPnnSbCEQzgFENp26oBYjaebUDCsb70jnNRlOm442jGlVm1aejQj
         G0YLW1eK0itnkxzef6kLlNFX5kZwBWwT4lO8ThE32pBmBlf+rY71BC8lU0djpO999US/
         B4QVqluni1LZs5MSrGhsbSppEBXi3Amy5mCVlBnLiY/gnD0UOyjnknKzzrPBerPYOL6l
         YPZDNAPsvRUIeobUG7kSzJKbfgaoWLd2PLkUsitJxN8nPV5SSY98yRx1KHXF9aO6qdnj
         b84g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695939179; x=1696543979;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CY0vsjcVCBgE58w9UR6SBm++3xKyQBSwPNYicIzid6s=;
        b=ob7H0dCCoMXOmkLaHStP0AUB5dvseJD5YNQugeKLmk3L9PlD49NCeSozYIT7dQ8yko
         xfQ87j5yoB68I6R3RwOtxeTg2yyfUodkyVS+ODWCTOgBBAufa/M+WVXa8wlBzmE0ai4d
         4Sh5ZfEJFz8TjSw5/TaUGgMmwvjwIMhqyBhAW6NxfWCXysZTcrmY1OnPCKxbbh5o5X+N
         qHTgUyxg/3LxZUo+qIQjIlJ+3r5IRNap84cP0S6/yPD2IHE741uMdGWyHxWmhusHqrOa
         VxkN/Iz4Ojq13ConHuybjxbGrRJA/CLFSzop1OqIH2kAk6lZA/D04qoMqxsjxQiguVlC
         3FuQ==
X-Gm-Message-State: AOJu0YyWPFygAODBstUgQkKFxIH19g4w5KV0VY7EX6fJhn1S++PBRdb+
	kxbVYGx0FNfoQ3qMcCTCfGa+dg==
X-Google-Smtp-Source: AGHT+IH+8EEAM93O9nlO+qtWwhEoVV89Rw7mcTI5Ss+i9HtYU7SmmUhL1U+18gaNy0wOYFIltW+FjA==
X-Received: by 2002:a05:6512:2825:b0:503:257a:7f5d with SMTP id cf37-20020a056512282500b00503257a7f5dmr2553724lfb.31.1695939179359;
        Thu, 28 Sep 2023 15:12:59 -0700 (PDT)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id r27-20020ac25a5b000000b005030cef433esm3271964lfn.94.2023.09.28.15.12.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 15:12:58 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 29 Sep 2023 00:12:56 +0200
Subject: [PATCH v2 3/4] ASoC: rockchip: Drop includes from Rockchip
 MAX98090
MIME-Version: 1.0
Message-Id: <20230929-descriptors-asoc-rockchip-v2-3-2d2c0e043aab@linaro.org>
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
X-CRM114-CacheID: sfid-20230928_151303_986980_B850F72C 
X-CRM114-Status: GOOD (  10.21  )
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

The Rockchip MAX98090 ASoC driver includes two legacy GPIO
headers but doesn't use symbols from any of them. Delete
the includes.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 sound/soc/rockchip/rockchip_max98090.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_max98090.c b/sound/soc/rockchip/rockchip_max98090.c
index 150ac524a590..8e48eb8aa7ad 100644
--- a/sound/soc/rockchip/rockchip_max98090.c
+++ b/sound/soc/rockchip/rockchip_max98090.c
@@ -9,8 +9,6 @@
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/slab.h>
-#include <linux/gpio.h>
-#include <linux/of_gpio.h>
 #include <sound/core.h>
 #include <sound/jack.h>
 #include <sound/pcm.h>

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
