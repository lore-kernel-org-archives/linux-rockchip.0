Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD443C56208
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 05:22:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Ncf/4dyNWP9Y6KKHmiWd1K0TogfkSNPgEEkSnjFF40=; b=XnUbNOUsbSKYQD
	W2/GlBwZurJbQZ3KsPsvkGHxsOy+HI3tWpgjdbw6FflN4OcCMLVvnxPldCQvho/en0tQFbwelLHaC
	Huh4vQnRDP9WYKIXRgmSpv3kQrzba7OTH13bEGP463L6q7VC0xqKdC6DA8nz8XavLwPJtwroWeKvu
	yLsO3oBrPtLr6JMRzXYM6Q6InXykgAPGiX7sDn7AFC019HPEink6oK8hwF/bRQMyx9+7u+ZM0qZ7S
	pAgWd1Q/gWqo5vlycw1gC3VcQLws2dXPPfyb2ETFeyXgFyNEsgToN/g6v7TIvEq2FcKX6N+A6EQsF
	Fe3FZmTSA8hXbn8oT8hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrqYU-00000004wyJ-2IhC;
	Thu, 06 Aug 2026 05:22:10 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrqYR-00000004ww6-3dmA
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Aug 2026 05:22:08 +0000
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-84a652535dcso1203936b3a.3
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Aug 2026 22:22:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785993727; x=1786598527; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=wS5N1HI6JBb7BYnde9ZKmg1y6INP5OTp62HALVYGh98=;
        b=UUS3nayXgJSnILk0u5B5hn4YR7qGO0t9iijv6Tf2WO3hRDOctXkJD0wlRL3t1FB7Rf
         FEuSBY90qpc5PYMt8JArO36PUEpYXI0Gf2IWrtvEp8gnageNH8psACvwor4qRx7Ce4PV
         Qnq/vyVpUgjrQ8IrCTDVmq4sxm3VeUoL4h0CkNfaVo6dmwmhnkSPZutt4KFLJGhlRFGK
         gMJqTeCaknUanmemggZviUUQaLWpRzUlMSn6GJxowVL+HSqxbI7UxhHOPIyZNZg4xoU4
         bcr1ZaqAt3kbK+2SZm08+XVg+KAgQF1t14mFvEcEZLT4/oERbN6vD/SVuLcYyxliEiNG
         rO1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785993727; x=1786598527;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=wS5N1HI6JBb7BYnde9ZKmg1y6INP5OTp62HALVYGh98=;
        b=ggRLR4idrh5SKQ5M68F4hpunW/z6NaftSELX1awuoZC2/R9rjH/6BpTOfXmQ2TyMEV
         3koHQ0Y+eC3z1ez9o2Xd8iWf+04A7Cvm+uFAO+JZ5DOOcIK9pasYFIltSQ/dOqTgAgpj
         RnDvtUfBrg+jfPmQxdn8aQJkGth8qBfs0DTVvJAPkEim0Yh84OiCNftoitu4XYQE54nJ
         Fef2Jr8ZtXiIXWiiZ4cHscuQfR7hMUwe+nfWooQ1GfaM6A+XVwTBXDgfa6/G4znK4mW0
         KQcSbc+vLzACgdkPV3uzLMlI3apGXoczDcnqR7v+W+6JAY8jgll+VBlioITC6UzVl3PR
         /fjg==
X-Forwarded-Encrypted: i=1; AHgh+Rr2dXFSnEGyw/26YZVcafDQeeNSw61GRKUGk3nB3GvqfBRtdgsllRgIpQv0dePik4YVAwUbUlSzjFrF1Y/APQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxy6dRyrt8/xnaIEokBenKD13yjlyEZcLMY+OhZIrBIbDoKnsd1
	UEhWf9z0wDNn6HTIRYAuxZsL7qnKM8ErUB698ZO2/2B8O3LxVqBVXq22
X-Gm-Gg: AR+sD12vULTbg51A15+RdakNPyQ1QPYdqY1aEFKuD+VEqzYZrquu3AXbFJzntK8gI7J
	EJ+C4ZzQPDcMiUEAkI/4rDpufPfqJf6AxoMVyKmhtRSeoBZGERCgvbgEBXdX7Ncrn7o1KvIRjWB
	z9GiIy2k0eUlfOn+oZBU6g8Jf7cjZmAb6dZbtiGvDFQ7IkVTUa4+8qbg8gIN37sNO6FhblEzvCv
	yCoBdJtyi2Jszxew7d5refWC31aUQy/Q62qUo65vnWt+cphXIhduL6sx+WsQT4bk9abCvZcZjTn
	FYSksXAdAz53Jp4Ell2dMFDjnyIDahqzb9qESFFU9hemIBFNRD8T/YbhrpBpDiGXUX5JN9k2pTN
	wZ/Qvi/yOyDNj+aENOPwciqLrlBpyktVxsIX4g4QZu/71pePGJvtEdqiILfD9tpn6IIMAYt3mg8
	wkD50JKosLEgx6C2J4C7ZW/XKAg5+xwLE1ddHV9T9SsKB7uHEhC3YWQdib782L3FI1xSkEXKLu+
	j5TM/2eG544CKKgwpoB924uhnIGIXjSwELYy9ST1w8nETUey51jrjb6h/AlyXJ8HVw8M61NesM/
	+Gl9
X-Received: by 2002:a05:6a00:4b05:b0:848:56ff:6ced with SMTP id d2e1a72fcca58-84f2e0148a8mr13181609b3a.8.1785993727007;
        Wed, 05 Aug 2026 22:22:07 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84f45bc9cffsm554279b3a.59.2026.08.05.22.22.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Aug 2026 22:22:06 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Mark Brown <broonie@kernel.org>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH 02/14] ASoC: rockchip: rk3288_hdmi_analog: Use dev_err_probe() for error handling
Date: Thu,  6 Aug 2026 12:21:24 +0700
Message-ID: <20260806052136.21034-3-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260806052136.21034-1-phucduc.bui@gmail.com>
References: <20260806052136.21034-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_222207_908407_9000EC03 
X-CRM114-Status: GOOD (  10.85  )
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

Replace dev_err() with dev_err_probe() to prevent log spam when probe
returns -EPROBE_DEFER.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/rockchip/rk3288_hdmi_analog.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/sound/soc/rockchip/rk3288_hdmi_analog.c b/sound/soc/rockchip/rk3288_hdmi_analog.c
index d88d5ccfcdb2..541163ed56fc 100644
--- a/sound/soc/rockchip/rk3288_hdmi_analog.c
+++ b/sound/soc/rockchip/rk3288_hdmi_analog.c
@@ -205,10 +205,9 @@ static int snd_rk_mc_probe(struct platform_device *pdev)
 	}
 
 	ret = snd_soc_get_dai_name(&args, &rk_dailink.codecs[0].dai_name);
-	if (ret) {
-		dev_err(&pdev->dev, "Unable to get codec_dai_name\n");
-		return ret;
-	}
+	if (ret)
+		return dev_err_probe(&pdev->dev, ret,
+				     "Unable to get codec_dai_name\n");
 
 	rk_dailink.cpus->of_node = of_parse_phandle(np, "rockchip,i2s-controller",
 						  0);
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
