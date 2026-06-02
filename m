Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23138CD6E64
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jun 2026 10:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sFC3S1wMttbQuf49Gr68bL+/uQ5mo5m3uzv8KHR5ld4=; b=kiSOgV2/YwQd20
	abGxipLSuFkxUx7onAp+A4mJq6lgakJ3j5W5OcbuXGZV8iDDVBFl5K+gr067RezZGoACXcTt44A+J
	v/ely+wH3GGuAxx4sll4oVKTZ4jgntaTTCAwez0WpEMPS0zbDBrrkiONMR2P7R9ymYf/XP70xcPAF
	RiamT9gJrqUsoxX7kLp1oeMWoP5sSxk7uRl4YHQMsmHyQTuKewYf2perNXj8KsteLk/8fiXT0M5zB
	tDO8NDCTkajgLzj0MpQYDQ7ziYAmUM0fO662Qq6vAL6jQlOwi6eWplXLAe9Mksr+y5qa1+vWh9P/u
	eK6yq2EpVh46p6r1VCuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUMB5-0000000CkYK-1ndr;
	Tue, 02 Jun 2026 10:16:55 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUMB2-0000000CkVp-3NEe
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Jun 2026 10:16:54 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-2bf18c30bb2so33406445ad.0
        for <linux-rockchip@lists.infradead.org>; Tue, 02 Jun 2026 03:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780395412; x=1781000212; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rCb8DxBgLNYKl2se7nFRUFkwYJO2PqG9toAr7Dgva9M=;
        b=E/jauxwRs03ZEjUh2Yhb9o72i9VEcF6c5yRPqVU8Cbd9f9gLcqrgEMZHKGaGEKvYpT
         glWhahIYioCSA4UHqi6cu3l/5EUyulT8OFgBKObtIwVGZSYYekbvR/LOfUJR2wcMsKtM
         rG4KLazaqPjZsz7PZTpTlKckgjn5T9XvVes1lzeDUuq1uckRskW48xpiQvi7hLWa0uan
         U6wjqPd8/Q282smdaj/PD40DqVSJgnKTFupMT9iKf4GvEVay+YnnnlNCegZo8unMUk2H
         8D/gbYG5xpso82RtDzvZ1uzfNis/+q+ZZ8i1KMOlxjqIVZDhbno8qLY9fi5Gnj+4IASg
         Wnjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780395412; x=1781000212;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rCb8DxBgLNYKl2se7nFRUFkwYJO2PqG9toAr7Dgva9M=;
        b=ekSwG+cbXhaOkXSCY5cZFNjL0lztFwLrdf5GyIH/YBnubDrVjF80thGhqs2ch6EexM
         +OmbvEhpvjlw//CgMFSWTwYExqdv8PqJ74clFe1ComqDk+jhdKCqtREK+lE47rz/t06P
         Em/GuhIMWeFQvULLKJMyciJp97zjIXBDiBrP8hpq1Ge8AzFNNujeOatlfNdUc/hKk6vg
         2a7zjUIfoRwPv/wE7Kp5BegaHa9xB8ATTsB+1CMdaobv9U0gin9xU/8pD24thduqnHFf
         5hRtm1z0D6Kw3hh1+K4lzc3e5qlZS/xxWjO4rzFJRJOSNkSzLTJLgM7NUk/6mWO6DzLd
         YMoA==
X-Forwarded-Encrypted: i=1; AFNElJ/31PsOJR6IAzBUXoP2mok5IyAwYWAjHa23i4Ph1r3+2AGicYgxzvqs9HNhet7pdqgzdA9/h5OnyHZk6jRaZg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxvQxyLvy0liTxiRddh3ZGY0LP6DMZcgqN6M59o2K+TbSJGqMNF
	zhBZ4UXi8gxR1FMDN6WhMHVPqn8Cr+vacyRLyHebDC9H3CBRx+Mivb8a
X-Gm-Gg: Acq92OHuZbw6Tvm2QGKubqaTnB/Vh9hWmnFO4OdYHV5y2R0g5iKpAFzTMYa9+8aiOHW
	1bmZX6jvbETRU0r5XUpXzIiJsRH/pO3Y1B5hvj5URWC/GLk1jxpmIBWkgaqUjL4B9m+AMOcYQUd
	BnQl5gP0LCIahlWB7N41bcIyb1dvI4Sk0eBcxYfFnBTT4PqwauRv2ZHYUARTUXhGXnTHoLqNh+q
	MEI3oYmgif3DucK4IDvWkz1ZFh6XPER6aGqIs2k4BqWzsY4xw4CZ4rA3bxOv95Iayi+225vde8J
	hKdgneu3bwTN5hjAYLkMq6+xOdXaiuIRYAmaU+Wqm7vPPjCE4O6EyzL0AEGO/ldd89YyjhpH4ah
	Q4HRAXCJ4o6pOzDwo40fxq6iYsT3VCZi3RFzHKwPWsQoxs55QqF8ALtVx7vF8V9eoTvdRN0noiz
	BEOQuCpgsH2jnHXx6OptWDTDVZMreAYiSzG0ycnDUL6mmJux/gGCuNBk9DfpFKJJRn4Kag
X-Received: by 2002:a17:903:46cf:b0:2c0:c625:400d with SMTP id d9443c01a7336-2c0c6254383mr111686365ad.37.1780395411951;
        Tue, 02 Jun 2026 03:16:51 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bf239fd84fsm132766305ad.23.2026.06.02.03.16.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2026 03:16:51 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Heiko Stuebner <heiko@sntech.de>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	devicetree@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH v2 3/5] ASoC: rockchip: rockchip_pdm: Reorder clock enable sequence
Date: Tue,  2 Jun 2026 17:16:06 +0700
Message-ID: <20260602101608.45137-4-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260602101608.45137-1-phucduc.bui@gmail.com>
References: <20260602101608.45137-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_031652_844024_7023442C 
X-CRM114-Status: GOOD (  13.13  )
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

From: bui duc phuc <phucduc.bui@gmail.com>

Enable the 'hclk' bus clock before the 'clk' controller clock during
runtime resume.
The bus clock provides the register access interface, so enable it before
the controller clock. This also makes the resume sequence the reverse of
the suspend sequence, which keeps the clock ordering consistent.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---

NOTE: This patch is compile-tested only. Please help test if you have 
    the relevant Rockchip hardware.
Changes in v2:
  - Clarify in the commit message that the resume sequence becomes the
    reverse of the suspend sequence.

 sound/soc/rockchip/rockchip_pdm.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_pdm.c b/sound/soc/rockchip/rockchip_pdm.c
index c69cdd6f2499..8f78f7bc1806 100644
--- a/sound/soc/rockchip/rockchip_pdm.c
+++ b/sound/soc/rockchip/rockchip_pdm.c
@@ -422,16 +422,16 @@ static int rockchip_pdm_runtime_resume(struct device *dev)
 	struct rk_pdm_dev *pdm = dev_get_drvdata(dev);
 	int ret;
 
-	ret = clk_prepare_enable(pdm->clk);
+	ret = clk_prepare_enable(pdm->hclk);
 	if (ret) {
-		dev_err(pdm->dev, "clock enable failed %d\n", ret);
+		dev_err(pdm->dev, "hclock enable failed %d\n", ret);
 		return ret;
 	}
 
-	ret = clk_prepare_enable(pdm->hclk);
+	ret = clk_prepare_enable(pdm->clk);
 	if (ret) {
-		clk_disable_unprepare(pdm->clk);
-		dev_err(pdm->dev, "hclock enable failed %d\n", ret);
+		clk_disable_unprepare(pdm->hclk);
+		dev_err(pdm->dev, "clock enable failed %d\n", ret);
 		return ret;
 	}
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
