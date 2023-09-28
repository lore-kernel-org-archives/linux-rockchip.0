Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2430E743CA
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Sep 2023 22:13:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IFXV9Gz4aiaiCo/PqrSVJioXbKntyhYKEw8m01TBLec=; b=wITgPKaA78uJ0e
	HUpLw1YOc+w8VI0dA5Dj28fsIRuW1oBpCwhgIXtwa2ll8k4nwUSU40yJqm0CmiwoeD9ExzbCjTG+I
	iWo1Qe1YM5s/uxP7mHjm8udQhzAaUPF4wP80eYqzzd57UfdWmQuKqvDnv3sXBUoE9HRKXVqAN/CIS
	IflmfcoKrIFxo8HQIVUoGRqGOhsx8DkvvIoaKPXPd8ss3K45O1+kGuWloy+sUqxgX2SL4kEHLtbsU
	09lJ0pxrU6MpSyOR59SCGEXShz0u9GYdX4Gp23osJXvrcndTsncvHmYGjcq8gWSUPQdO6CrY8HbF6
	QddhARIRvPxJUPnlw1OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlzFr-006l7V-1w;
	Thu, 28 Sep 2023 22:13:07 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlzFo-006l4S-0W
	for linux-rockchip@lists.infradead.org;
	Thu, 28 Sep 2023 22:13:05 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-503397ee920so21115072e87.1
        for <linux-rockchip@lists.infradead.org>; Thu, 28 Sep 2023 15:13:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695939180; x=1696543980; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hm24NpX94JBemDRTScZMK9z0G78Go8UKUQZ7xueoWyk=;
        b=UAUNhijMTwbgBpSA8TkLn4K0jMn+9S4cF1kBeMqgmY08/RrelwuwhZUoP+ZCYFMic0
         pJu90MddJ0kxyuL0GYJxuKY0vCgpLX3we6QMZnuN9+C1XlBSin6Qv4/w80NnE4+DN0w3
         7/9z7rBFHM/J47m5UB0wnpXEFRKB7CUOL5dIZ3rTt9IluxvyZdkmiWU4cCfo9EDaGTpX
         H3aFOZcgn0yUZZuzHrLv430IHYE1DaoE8HrP2pTK49usd0URJTcWsJ/oMwbNESgEESmY
         x1j4SaSbwZVEbUuce7gM3IPGSmsDmzWRZKk0TtFeJGktHo3N8RYFnp0mhSZ7vOySpPpY
         5Qtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695939180; x=1696543980;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hm24NpX94JBemDRTScZMK9z0G78Go8UKUQZ7xueoWyk=;
        b=TMeov1fwvE4zVaqVVZDPUX/dVmN+QdlydOjuC9tWQR7qau62cDl634bWk5BEBi6vym
         Y96A64SzqjFP2sfIGKWFsUzqlaLikaMK7sWifD6xWDAj5BHmncRsVCFz3RN8yCEJfJK4
         ESF2p7B/5SffBmtvCPDmR+dY03wimS+SSb0MKhDLXMWq9XfunWluYXiCJhOlHiSKLiyW
         EEvsQCsq2M2FVqEjdn9/HfBUaKpBo2rteU2CG1I67f3OAjGUgEOPbJuHWW/QmX31HwVs
         OAvm0GIHv8nky0cwpIv34a93ua8FjJGhOqAtxS0Kr/ZNSQkNrcESUyziU7EocagNH7/E
         zGlQ==
X-Gm-Message-State: AOJu0YzKiIpgk2Gd2aTx476iMDmirlHg6e7MOeuNDQglU57tk50osivr
	LusIkvRTrkjGmSiY6JXDzTzQow==
X-Google-Smtp-Source: AGHT+IEcd7LSxKs1vQhEEohxk1j+l3rrDJD0tdrKzXWF996M/+vrMgyyTbA56OWL+2IlDzI4mvQOvA==
X-Received: by 2002:a05:6512:3b23:b0:500:acf1:b42f with SMTP id f35-20020a0565123b2300b00500acf1b42fmr2510533lfv.53.1695939180185;
        Thu, 28 Sep 2023 15:13:00 -0700 (PDT)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id r27-20020ac25a5b000000b005030cef433esm3271964lfn.94.2023.09.28.15.12.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 15:12:59 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 29 Sep 2023 00:12:57 +0200
Subject: [PATCH v2 4/4] ASoC: rockchip: Drop includes from Rockchip RT5645
MIME-Version: 1.0
Message-Id: <20230929-descriptors-asoc-rockchip-v2-4-2d2c0e043aab@linaro.org>
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
X-CRM114-CacheID: sfid-20230928_151304_198307_6259A190 
X-CRM114-Status: UNSURE (   9.83  )
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
