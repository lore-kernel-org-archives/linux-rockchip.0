Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F9B3E80ABD
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Sep 2023 22:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IFXV9Gz4aiaiCo/PqrSVJioXbKntyhYKEw8m01TBLec=; b=ZaptSauZyDSG2p
	b1rgjpBYBUQEcoBIaLaw/NVvwZQVIqxlKezy8WpL+8qx7tXV5OPD+mULAhtU0Cfz+uNASXO+8+Cve
	M52ooJ+EzBWinxCweZKVeYAfCyy3Sw8fFT0E6JpHlPS9R7/5I7EEUmnWC0wjCYMsSAegwqcFXuEVM
	JC3YfG01Wx3WCwtpKR7ER4gjBdHrPT716LDBDKuKLj6byHMF4+WNYNa8W23IJQqz5WvJhIyIKonAv
	6dhVlrVEYIv4skTVCdYQIqtRNHJ1zk3XDKOQYYtEE6C7TIMwAv3zNXQjG/XW7y6DFUVSQmctfSCok
	3CtOIR61piqm50dbDT8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qldJX-001ro9-1M;
	Wed, 27 Sep 2023 22:47:27 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qldJT-001rlH-0r
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Sep 2023 22:47:24 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-5041cc983f9so19809706e87.3
        for <linux-rockchip@lists.infradead.org>; Wed, 27 Sep 2023 15:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695854838; x=1696459638; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hm24NpX94JBemDRTScZMK9z0G78Go8UKUQZ7xueoWyk=;
        b=KeuAeyO7XcY0HFlB6FKaWcglwiaxC59A2R/c9a6QnSrYrD4vTYjtfIz3fIDLD/Y6vB
         V6Up3IbKOyJ3mRip59lPXVZMbZBtEHGzNhphN/mnRRNKnUCAFS4iAQwgAKHSnGTChoNY
         RYmQOlDoZcHTMtqO4MYPK63lgctKhnHD5Ohnx0qTO0fA7qqlGdaN54Vd34Sta+lKjWny
         VpqB1HLGflkgtXQJOhPAhWFEPMKxCV4mzB36dLtlWVpP5L19eBJ8ai0+mr6pzg5YQl6I
         4pnNo9RzvTKBkIjloDq4WKLvvyZrbyml7ECzATPxuLTPpHiuRqsevwEnN0kYC3i3FW8L
         JYvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695854838; x=1696459638;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hm24NpX94JBemDRTScZMK9z0G78Go8UKUQZ7xueoWyk=;
        b=DKzrYLLHY+2EKzDWYS8GZyByPi50mpT/Vo5vCqtrLEDcAvyHH1np1pvOhQa3z4G16h
         QLFaP3F3TN+hxz12F8aiaul4d/CLaEKcL4SPm2MKgQ3VS6ExGuBsmsMpD/iaBjEJbA8a
         FkuuGDd6JbHp+fAEGc7m5kWMvn5sOMF20OTzO/1+T5fJ0VC+qqTK6V4w6rrwxjDqab5s
         mFMKZjdq7AuktkgGBN+GKNmPqGbF9gVxhVlQyznmibXBJZCYbArASNKjbqPlqp8kDVel
         LH/UE9d8eD1KxNj3Oas4XQfEp/42PvlMDVIeYXQRWRYFpuu+NaiA2BKHAI7Q5usEdwC9
         2O3w==
X-Gm-Message-State: AOJu0Ywe3ZOSWhYoaL+UnR2UlJ8G7IAlm72SMzJ0OfhxgKIoYbwzr1dv
	hLfWs20SmFPtimF/0Qg5rzOEdg==
X-Google-Smtp-Source: AGHT+IHIPAOySo0YwjWaGIBqSx3zAKxnJQ1KilKVhhF1C+VnLfsmaRRx1osw7z8l9ymMS10PvpQvMg==
X-Received: by 2002:a05:6512:3b06:b0:503:364d:b93d with SMTP id f6-20020a0565123b0600b00503364db93dmr3348450lfv.20.1695854838581;
        Wed, 27 Sep 2023 15:47:18 -0700 (PDT)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id ep14-20020a056512484e00b0050296068a12sm2801746lfb.30.2023.09.27.15.47.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 15:47:18 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 28 Sep 2023 00:47:17 +0200
Subject: [PATCH 4/4] ASoC: rockchip: Drop includes from Rockchip RT5645
MIME-Version: 1.0
Message-Id: <20230928-descriptors-asoc-rockchip-v1-4-a142a42d4787@linaro.org>
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
X-CRM114-CacheID: sfid-20230927_154723_331498_400CD456 
X-CRM114-Status: UNSURE (   9.84  )
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

The Rockchip RT5645 ASoC driver includes two legacy GPIO
headers but doesn't use symbols from any of them. Delete
the includes.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 sound/soc/rockchip/rockchip_rt5645.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_rt5645.c b/sound/soc/rockchip/rockchip_rt5645.c
index ef9fdf0386cb..7d4d3a0ac5fd 100644
--- a/sound/soc/rockchip/rockchip_rt5645.c
+++ b/sound/soc/rockchip/rockchip_rt5645.c
@@ -8,8 +8,6 @@
 #include <linux/module.h>
 #include <linux/platform_device.h>
 #include <linux/slab.h>
-#include <linux/gpio.h>
-#include <linux/of_gpio.h>
 #include <linux/delay.h>
 #include <sound/core.h>
 #include <sound/jack.h>

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
