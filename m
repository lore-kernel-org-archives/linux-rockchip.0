Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96725CD6E57
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jun 2026 10:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tj9ZVJj7yZbiDXzZEXycLSj9lfacd6v4S3WAYKQj72U=; b=IidLdlgX9njjq3
	BNNyIh9k1wT/BdjvQfQ7WKkBfodfj36tHsgUol7YIGIZ1smfnjbkIN5WvCHPjM3R1eTsofC2CX/Bg
	xmFVr37TyaREt1MzP06Yf29I5XCJ35UmmlPGVj0BwrDqNPNQ5OfMCnn2/r9smwEjfU0c+R4gsVIwH
	K4xaDq/fKrgHECSJpTZo6NMDDHVytIiVjO2gETt6MsKnndqIoGkp/CFd8DL+vZkroVExFE4vhPY2H
	HKksK/0iE/hPnDTeHVfuMDXNdNsvtH2tdvaEutqMTZT84zuNqhvxIDP7TgPA25SJy8J/ujiggiprN
	LPn70mmWDPcHPDHCigBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUMBJ-0000000CklN-20vP;
	Tue, 02 Jun 2026 10:17:09 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUMBE-0000000CkhJ-34W6
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Jun 2026 10:17:07 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-2bf1cda2b17so31781195ad.1
        for <linux-rockchip@lists.infradead.org>; Tue, 02 Jun 2026 03:17:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780395424; x=1781000224; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lT+JLRZTXmUkizcf52XaQYhGVpogr5HSaG3W4C826mA=;
        b=R6M9rR51nLNP+TPUsa8ofm443+SrhrSSHa7mS+TC7DW6BkJ8XVNJL97Zh9/tFOjC6h
         iBwaPUZUDGXO72OouPlJn0MYQQM7LmIrp2paFGVGXyZ38SUYHXk/qjx0UdTEtojK9UKm
         lqFpbrZFb2T8XTzurYqZw8M6CsaC9pf0O5reUm2bYnG5u7GZy/hfCWw+KmBEYZVGp6ZR
         SxcpTUVntOJwekHqefluApNEcx/XAlM6shlBtcjsXkhh6KXBp/5DlpLznjYBjz9FygOH
         GFAZAjgX1MTr1UHYknFjBrU5ilh80ULMK2GvwEmeq8nWN8/BJLkyL4/AcQzmkbK7wiHk
         WDlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780395424; x=1781000224;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lT+JLRZTXmUkizcf52XaQYhGVpogr5HSaG3W4C826mA=;
        b=MAf5M0TGrctMMMOiGJZbAn/vouw0sLVxzuDnQM0HL+mHolTVGuS27bB3LDArl8gPgN
         GpDdhLabCK8zLMQUGMiKq3/mvrZqGbhb6ywpfTrg41xhwq4bTIByteZUZnzI3J70wumQ
         Q0EZpTcfFpgPWFa8tc0EyWBa0RFJ+g0jI4DL/AF8ANkaL3W4ufx5Hp6Uz7qrsH1qtDDh
         7ixIOtGO6uDRArAOe9WPzFHvrMD8Dm667MANM5Wdq8LZ0nhPfLJPCMg/zDGznhpjfO0V
         PirYzQ9+cvyJGqsfDgKrNQXGAZ08x+xWpbg/MmoiVsTdHft6d3n/ace0NcmqR0qUuZfb
         mRYA==
X-Forwarded-Encrypted: i=1; AFNElJ8XS575MZgyNvGd0RjRk3rpPkLRGiiIkLaGIVJxcI+n2IPrKjsM26ds4dsaFuQYVXhCww3h4LAk4dGdCLGWLQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxZxScTIykQGMy762cKrIqhFyw8JOWrzLA87sz92Mqeb2B5eVhN
	SGjDR2xCrMUqZ9L6ZNudL12v48hTeesOsDOsq7PL3W0/d+5ucBY9gogx
X-Gm-Gg: Acq92OF1KE8uM4WIIGoex8QrdDVUCBYfNC+/OmX4BnvBhF1Sr5Qq8cm7SrjgABL1XRK
	gw51chhftiQbhAzYg7oxePtKydln/nq5CPm/h5g9RJusH27ElmWJk25wXmyjRvqfxGM8NVAoy4r
	7kAyPHNmHQJ3EW/+CyemaTwevS0iOLer3XdjDWzyz0aY74f7hAG8kvdzmushyBJfNueamSR3KPS
	gr9NHRiMVoS7oAzJ45WZfjfbzL1xoaxe7j2PnHZq4Hwqy9lJYqrCq4RpN6neSiFYRZ3Nvhxqhh7
	z02BVEJOdDVRKF8d+1YA0EMo80ZlOojZx5YuWTEJ57Y79H2p939b+dBnxQTASTwgtTXRre9tSst
	jvgMejL9fQpvtazRJ3rqLYgei2Vo0uUOPfx53avf+Yg8H1rPNSHQoU95aKEyZcUdWmvz6hC5BGf
	B2SDoiDOA6liUUn4C3bHGwLYJd0IlKMlzoOh+lm4PCG0L+hJqELf5kZJyu1cZ/Z0SrZN94
X-Received: by 2002:a17:903:3848:b0:2c0:a4c3:d7a with SMTP id d9443c01a7336-2c10ccfb095mr31503255ad.26.1780395423749;
        Tue, 02 Jun 2026 03:17:03 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bf239fd84fsm132766305ad.23.2026.06.02.03.16.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2026 03:17:03 -0700 (PDT)
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
	bui duc phuc <phucduc.bui@gmail.com>,
	Sashiko AI Review <sashiko-bot@kernel.org>
Subject: [PATCH v2 5/5] ASoC: rockchip: rockchip_pdm: Handle runtime PM resume failures in set_fmt
Date: Tue,  2 Jun 2026 17:16:08 +0700
Message-ID: <20260602101608.45137-6-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260602101608.45137-1-phucduc.bui@gmail.com>
References: <20260602101608.45137-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_031704_797130_B33066B7 
X-CRM114-Status: GOOD (  12.62  )
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

rockchip_pdm_set_fmt() calls pm_runtime_get_sync() before accessing
hardware registers, but ignores its return value.
If the runtime resume fails, the function continues to perform register
accesses while the device state is undefined.
Replace pm_runtime_get_sync() with pm_runtime_resume_and_get() and
return early on failure to avoid unpowered register accesses.

Reported-by: Sashiko AI Review <sashiko-bot@kernel.org>
Closes: https://lore.kernel.org/all/20260522110302.349421F000E9@smtp.kernel.org/
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---

NOTE: This patch is compile-tested only. Please help test if you have 
    the relevant Rockchip hardware.

 sound/soc/rockchip/rockchip_pdm.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/sound/soc/rockchip/rockchip_pdm.c b/sound/soc/rockchip/rockchip_pdm.c
index 8f78f7bc1806..115e90d3bbfe 100644
--- a/sound/soc/rockchip/rockchip_pdm.c
+++ b/sound/soc/rockchip/rockchip_pdm.c
@@ -321,6 +321,7 @@ static int rockchip_pdm_set_fmt(struct snd_soc_dai *cpu_dai,
 {
 	struct rk_pdm_dev *pdm = to_info(cpu_dai);
 	unsigned int mask = 0, val = 0;
+	int ret;
 
 	mask = PDM_CKP_MSK;
 	switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
@@ -334,7 +335,10 @@ static int rockchip_pdm_set_fmt(struct snd_soc_dai *cpu_dai,
 		return -EINVAL;
 	}
 
-	pm_runtime_get_sync(cpu_dai->dev);
+	ret = pm_runtime_resume_and_get(cpu_dai->dev);
+	if (ret)
+		return ret;
+
 	regmap_update_bits(pdm->regmap, PDM_CLK_CTRL, mask, val);
 	pm_runtime_put(cpu_dai->dev);
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
