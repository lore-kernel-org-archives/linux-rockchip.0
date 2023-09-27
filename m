Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 829DFE7F14F
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Sep 2023 22:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OAJbtRV1WY9kfJy0F/FV9k8H3jYA8hyIjc8rM4CvueQ=; b=VMHVuXy6hiG27q
	4K9gWrC5/NLb6JB5GIg5/JthJ+6ze4Az+Cmnfbjz7KnD4pixygjBtVaFtGNCjcxyu9QPMmX2m7xK2
	qw4IBuBEWqNgbbClu5DaqcQXZmUzCDmJJ07NUM6afWNrtkKriwx36xsBYGt2zyNK62MF4wu7IimsQ
	FsiMr+fHVuPuZSm94XzOc+Gnr5D42qOKd/P70UqYuW0fVi/2+kIy0WngzaD2qKdZ1advfX63kwhY0
	0duvnP8x66QvQ0mX0jhn6Jx/s3x8txTnyIYptNjcwN/vrbCOp8Zt4aNjk2ReYHeq+jfjLvqgNh/Z6
	Edmgu61ijLrS5f65tafg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qldJV-001rnh-1r;
	Wed, 27 Sep 2023 22:47:25 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qldJQ-001rkw-1o
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Sep 2023 22:47:22 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-50435ad51bbso17762034e87.2
        for <linux-rockchip@lists.infradead.org>; Wed, 27 Sep 2023 15:47:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695854837; x=1696459637; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dq20wAX7KyYyuxOCj/4NvQoVluqusmWSS2hLsMjGcCE=;
        b=NQ7Zmmpzo7gQg2BI6bU59MiydrYcLYOKT3bhlKueQTREaJIGT2Cgnxq2y5y7ivq4iU
         9Ywfqql/mXZzExRmIko8wl4BHduHO8y0dxMdU4/FKFgt86+xMpngCUUS9Zr89uU+GAyL
         s4JrP+v3ZzXb/C83sThmPrR6cwGNKjChuvi0acPO5/XqX02DTEMKMO8OOqNCrZB0X9GD
         SaWm0ljEjXwTyE6MjPL6NQxrQlcbP3R7+3aucXLVpSnT40bhLAf+9duSaNTwO/tyZVCi
         F/uEq/GyDCUb8NX9XJyyqjESJRl0/DpkYQB+kFBSkWxuK8oCIufOKHMCJtt7M+o2ambE
         YCSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695854837; x=1696459637;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dq20wAX7KyYyuxOCj/4NvQoVluqusmWSS2hLsMjGcCE=;
        b=C8CR/m637WKrvzIQd0rVNlT8lH9XjSeHVzBZf8+jAbL/IloVECAZ5gl8n+fQCYcO+o
         SRxzZM8dX8yEQFLbyF+q3AhAAtTSeYDai8+YPeTZApgepIyVcie5n+0qYYjfYj3QFvUo
         0JNsCEEhhR3A19RJG8/mGIid5m0UDm02GjTGb/KR3n/XW6hHNeKTkD5oIm49O0KYAIMK
         yDGz8iTAX6pHlUOG7ljTrBPoVzRc/JvaxW+L34hSNKnPMOxAkhyBXvv6jdvidcCLHZGG
         rh+VtBM9n3I7om2j0S8ej+QVhVXQwxoQ39QzB48vy1gBp/BcLqUuJWhNN/SOOPYlfOwu
         06YQ==
X-Gm-Message-State: AOJu0YwWmjDDPpMYDD7h1kTdngdLqhwlhyRHhs/OKGwOndDvzHnVE2a+
	LlczFiNiStZiEucKumUOF1NeIQ==
X-Google-Smtp-Source: AGHT+IEfC0+hlBUj1Yf/W2nh73lfyeNcEfUcYf/ZYF/GatTdBOlrH90LckfUV5sGFYU2vNlRmcj12Q==
X-Received: by 2002:a05:6512:324e:b0:503:264b:efc9 with SMTP id c14-20020a056512324e00b00503264befc9mr2509397lfr.18.1695854836814;
        Wed, 27 Sep 2023 15:47:16 -0700 (PDT)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id ep14-20020a056512484e00b0050296068a12sm2801746lfb.30.2023.09.27.15.47.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 15:47:16 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 28 Sep 2023 00:47:15 +0200
Subject: [PATCH 2/4] ASoC: rockchip: Drop includes from RK3399
MIME-Version: 1.0
Message-Id: <20230928-descriptors-asoc-rockchip-v1-2-a142a42d4787@linaro.org>
References: <20230928-descriptors-asoc-rockchip-v1-0-a142a42d4787@linaro.org>
In-Reply-To: <20230928-descriptors-asoc-rockchip-v1-0-a142a42d4787@linaro.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: alsa-devel@alsa-project.org, linux-gpio@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230927_154720_598781_B2D8113E 
X-CRM114-Status: UNSURE (   9.89  )
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
