Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 434F4C55ABF
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 05:22:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CVklihy4vIZszYRy2Bn1s/gmYr/ThO0nukyk5LXWbYY=; b=Y+HP928GeyBWhs
	8bMfixFBttpLMwXed9dMFqN4Xrl76fAqAJfnwz4/24GpkVVW/y0UQ8j3mlcvk01ed/BjyyF+Kk0ic
	tgVfNHQnbPa4XSaFAyWat6sQ4Fd2L6DTxinWyMpucDRqSRd9Vcfe/VxpHF/1vM4WEFFOASyz7Kh09
	BCSspGwHswBq2v9nb9zU1VD2hXC0iqdPCm/EVZbEK6zJqLXEAYnC/IV4tBmIDyK1AgpBR4j7pXxlD
	HnRkEhNPXy1/vQq+v9aA+t6fpIWjYEQjUX4oAO0W1a1mcZbdNxHICyaBpiY8hkaEyJDqXZb+f1ioT
	vl6Qxo4EtTUs1cnTX3Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrqYs-00000004xKT-2jmn;
	Thu, 06 Aug 2026 05:22:34 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrqYq-00000004xHF-0910
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Aug 2026 05:22:33 +0000
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-84a2dcede83so2540050b3a.3
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Aug 2026 22:22:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785993751; x=1786598551; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=SYDtAASES468elSTBLIDdmGvVbZC7pKU/2qFW6TvMTI=;
        b=YZt6gQ10T+eD9QR0gntXDnzLNPK4BX2pnIlJ890bqTe0WVxg2gHX2JYQ6SqvoqArnb
         MW9b7V2QV6WoXfjJAF7SUwe9PwTAXwggRK1Yrt1whQ4VD+O0bkHcBV7/RBAOy5zx5JNT
         0JtPSx/sJrlrBoR40JjmsYLeu7JiOP7Ny3G7LCmAxYaNv6lFXuVK7LtY2T2z8DVvTSYD
         4heJJWQP35FgLCKhfvS0GSdkwXN24BQBAmJs6slNC7s2mvwNV8xOwqCzkzKFiHRUdD1u
         xHxVopUS2OZJg+AoChrY5w2PaZ987XrO9upPqJD4rkyeIa/2gbNsLL/oG+0wdTnD3W2S
         oE8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785993751; x=1786598551;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=SYDtAASES468elSTBLIDdmGvVbZC7pKU/2qFW6TvMTI=;
        b=SBWfIo/M8mcCTwj3R/fUCZnDjtowZ4ZrL69mE5SQkpT3Zct+8CUdzSlf2AaE8E+MT0
         63rsF4mZ0QnWIkDVVpM9JrBGvWxhBazJ04dKQwToEUEbXwlYge+e9eKMn6i9Wlip8Y5x
         ZYPYst9JwiHMKVhcGZKNmkc4b/V6qypf7rmu9/Gl2nw7IKkjnW6+HCumUFMo8op9RxjP
         lDZIWpN3pzYpsBTqDaq5iAxyW6JzPrRPxVIRMJn9hSVsCxdpj9LQ+1Q4fm3EBnH7FFnP
         wXPoQYMhNKCUJjTiiH+7lQcgpgmVBT6d9zmKE2Jm+nr8wzCJGjQTNZHKkKjx5KGGuYIJ
         1rhQ==
X-Forwarded-Encrypted: i=1; AHgh+Rom2s09N9xkf9twDiY7BpOsbJhf5elbfkYj7s/EmbP3Ub0UbylhGiBEld5IbAfkVzYmQ93ASqNWiB3GNAvNfg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz9Uidu3/3l1HrpNN+mO4z1x9MNXS7tQMM6YjjH0sENNCJXw1Np
	Yjk06DbOj7mhgeXPki90HsuXq2gFnMhAQ+LaYg6UTgKeG89n5zl+y/q7
X-Gm-Gg: AR+sD136OlcO4Yf1WTNsO3qqRyNmA4u/eT018+IXm2+WeGNXqVggrLdPzgGN+kD4dNX
	Og8ud3Nr5tbgybG/JiE0Co7mFZAT4XyiS9w+byFsQE03w62NKmxtJRFQDeXdCPmbZqqYvFvIayC
	CG17sG0w/S0tdLmLZ9f70ZRibgxYUwfQj17kga7CdygolVfcGwwv9tWiV9c/Zwoof0W864rTlDL
	wFeVY7A3qg0DvYEeuL6syq8bCWT7J6fVX/jlzAu3wNjDW0376LSC7E2Pw3kMLcxaO9QKNX06oNU
	7Suo0npyaE36FCteeWr+wkVWBbsTBf/cholPx1Hq3uQ2pHBgUSeTAvhfr/nVZHLt+GePtmLOYXU
	pAQVKvt9XHoGtkpuC09MEjWqy/DHVt6/SamqHHoR6X7UlC6K4e81fHl2SDbVxlTPzngsSMCXzBe
	Q4HTaxAKF3noCusGz+Af8LTrSCxkFnR0KYGecYm21ThVOlMpn3wFaurCyoa91g0M4UEtkhhDamr
	wn092iXiE+5Wc9wKcGjtqytTGmSNqJJWMiKx9HmjezvRIZpU56MJN9/Y077selio+ig3Y56EgBD
	7Ua5
X-Received: by 2002:a05:6a00:4650:b0:848:2c2e:c7a3 with SMTP id d2e1a72fcca58-84f2dfd6b8emr12646865b3a.16.1785993751213;
        Wed, 05 Aug 2026 22:22:31 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84f45bc9cffsm554279b3a.59.2026.08.05.22.22.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Aug 2026 22:22:30 -0700 (PDT)
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
Subject: [PATCH 05/14] ASoC: rockchip: rockchip_i2s: Propagate -EPROBE_DEFER from devm_pinctrl_get()
Date: Thu,  6 Aug 2026 12:21:27 +0700
Message-ID: <20260806052136.21034-6-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260806052136.21034-1-phucduc.bui@gmail.com>
References: <20260806052136.21034-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_222232_073090_237239EE 
X-CRM114-Status: GOOD (  12.41  )
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

Return -EPROBE_DEFER from devm_pinctrl_get() instead of ignoring it and
continuing probe. This allows the driver to be reprobed once the
pinctrl provider becomes available.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/rockchip/rockchip_i2s.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index 354430f916f9..261f36d4c2fd 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -790,7 +790,11 @@ static int rockchip_i2s_probe(struct platform_device *pdev)
 
 	i2s->bclk_ratio = 64;
 	i2s->pinctrl = devm_pinctrl_get(&pdev->dev);
-	if (!IS_ERR(i2s->pinctrl)) {
+	if (IS_ERR(i2s->pinctrl)) {
+		if (PTR_ERR(i2s->pinctrl) == -EPROBE_DEFER)
+			return -EPROBE_DEFER;
+		dev_dbg(&pdev->dev, "failed to find i2s pinctrl\n");
+	} else {
 		i2s->bclk_on = pinctrl_lookup_state(i2s->pinctrl, "bclk_on");
 		if (!IS_ERR_OR_NULL(i2s->bclk_on)) {
 			i2s->bclk_off = pinctrl_lookup_state(i2s->pinctrl, "bclk_off");
@@ -799,8 +803,6 @@ static int rockchip_i2s_probe(struct platform_device *pdev)
 				return -EINVAL;
 			}
 		}
-	} else {
-		dev_dbg(&pdev->dev, "failed to find i2s pinctrl\n");
 	}
 
 	i2s_pinctrl_select_bclk_off(i2s);
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
