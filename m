Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8A90C55838
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 05:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KxE20PcOvR2UZD0e9u/BPLKqxew9z8cosWp1fYMv7KE=; b=dGRY0aDR2uxSUF
	IvTajerHpeZhMR1CZImoWiYypjLN8b4ni1E/lmeyC5u+rOmo+v/EQH7w4AeZMZQA8Y2v9Q8FrER5h
	tj5pWo4kuuYgec+D6Na6L6femMdIYZP/LaSWBTIsxs0OaWmT1dG6szA0OhqngiisdRr1ibMQPoOQE
	Cwhy3M1FiFA4I2p8SDuZwLbik+xGrT0SPgJgKamF1I1zSux+e5CRx1/XkzI3TXsygjdA+NImjz9ji
	dPiDD1ySPvdL+EFZoHcqpwwEFH+9W6FcwkzvF9IeMdg0XcvSFOc3uWOYd926WAYsZTe/YoWVSET2j
	k/rtR2pp8R8jtjA8cY5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrqZZ-00000004yFr-28wj;
	Thu, 06 Aug 2026 05:23:17 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrqZU-00000004y9I-3WvW
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Aug 2026 05:23:15 +0000
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-84862b0d5f8so1696322b3a.3
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Aug 2026 22:23:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785993792; x=1786598592; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rju6HFe/S+MJe8cf6yB0HBsbdDH7a0Yg40XL1i/Z1yY=;
        b=JgOGaXDaimMEZlmxpJnEKuOTZip4RrKKXfFMF1JtWnL/DCZSJeADoNac16Xx6qcEL5
         q/Ivv+SZHlH+rxcsCX2RtlGyGWuaTI2AeSaDSK3bjibfkdKoiFNLTZpYdbpUYhrtiPlc
         Wg1oj0TtYQRZB1nZ73nhwgd4sAL28D9K6heOM2dgOf5cryzopkVYEiSojtgdr96jgBUR
         xwCDeKEtetmhkhESOgqRnLp9Bwir0Q9oJPcoaEvARUAJ0SBEmEOYd/mk1dizDPO5QWSA
         ZUFFPcy7FsRR2ojndKYeEO3dhz64oJlpSkqZTv41zYlsGxev6GQTiXGjNITAQtQw+qa9
         xELw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785993792; x=1786598592;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=rju6HFe/S+MJe8cf6yB0HBsbdDH7a0Yg40XL1i/Z1yY=;
        b=oD4dFNXwZqKw6kOzfEmjDfvIOHZ/zkOjgYnR90GVjHbELGIPqRho55KCdWVowO9CNv
         5vbPAy2kLRwlBU1HCCCUESdUEJJAF+mJrfbWuXvN1681zKKd8V2KJMZ5rBLwR8Pg9GdR
         UpZoaDWJlJnboC3elNBsg467dwY89sS/C86Hw0nZ7nT+MUQNGOKcUpRptmFG4YJW/fVz
         NGqNkfu+HdwBPYEU8YZwT7Jzfgi9CO3z9PYMHZh+7lT863S6Y1jmkzYptTy7TOc3/q29
         a+vhz5TirVhQSdiawQR0i/wZtHx5icsMnBopueYRVrssC/9R9qiDcFwPF+A8hx99SsC9
         TMHg==
X-Forwarded-Encrypted: i=1; AHgh+Rri4gWmz+MscyhJlmY3RA7ScEjTyAuPcIAuesEhVY4utSG5HSzc3CFxdZkoS73SvWd/Xe4fZ4LCzfOkS05TKQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw+1qjDFWM03kSgMsiuKw/9+d1Gtl3Jwb9pvxv8ufH4Kskdf5tX
	96Xiq9KvJXH8qfouwFwZehJIktYrr4f6+2P3XmddCKvW5BQaoEqv38oC
X-Gm-Gg: AR+sD110mAu0Sv8+h19lWlHKQ12N2nt8tPc/e6EF/CxGh8Gy2OAqhUfbUOvEkLS+jAE
	AwrxP3owBk1t4hawsIAAqiKpC16L5Y+yOsdAY5JObj5yRSxizkX08xWzQVhOV0r85ulyoSPp91p
	BJuXBSROubnUAU2cna1L6urPUld7z3zAo12EBcJseM/aDSBKaW2LbKwB+1rIOEW2HsU9NrnzHUF
	Ai7/V2wY98fr6Fsdd2nFX0njdF0F3hBSR2DVVRbEe2HPPiNOywMEChTUjTn2Gi8czjE4Lw5zdSY
	w1Goh74Ma4YM2DoGHtsa+zwfUMG8FyNuw6LsPZPr2U1NKEiLfBN7VKt0oaBZsPNRYtm7HMH98tY
	nMyBwuYdipz4VfjPa/d++XvPv6a8HWLRmpa4aprJ23qbFHwF5EMRfwy/9pxHdO4nj6F0d+J7KHz
	3yd2tz4Mse1ahtbRNHqZZ8jMK99c99zIRJl+JBv447ZB9F5cBPDMK6W1BX6NflLkKx59MspCMbn
	NXT9oE85TNQ16DLJTtAHR6yU9izE1iYys6UFz6Ge9MqSRsZ4B7/8BTqekH217xj4is9pq7p+ZPh
	LE3B
X-Received: by 2002:a05:6a00:2e1a:b0:848:42a7:1854 with SMTP id d2e1a72fcca58-84f2e0c9c90mr12879556b3a.39.1785993792226;
        Wed, 05 Aug 2026 22:23:12 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84f45bc9cffsm554279b3a.59.2026.08.05.22.23.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Aug 2026 22:23:11 -0700 (PDT)
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
Subject: [PATCH 14/14] ASoC: rockchip: spdif: Return the original error code
Date: Thu,  6 Aug 2026 12:21:36 +0700
Message-ID: <20260806052136.21034-15-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260806052136.21034-1-phucduc.bui@gmail.com>
References: <20260806052136.21034-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_222312_893663_EBDB21C9 
X-CRM114-Status: GOOD (  12.69  )
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

Return the original error code directly and drop the redundant error
message since the called function already reports the failure.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/rockchip/rockchip_spdif.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_spdif.c b/sound/soc/rockchip/rockchip_spdif.c
index 7f15bc7f8f35..2d53efd5dd2e 100644
--- a/sound/soc/rockchip/rockchip_spdif.c
+++ b/sound/soc/rockchip/rockchip_spdif.c
@@ -396,13 +396,13 @@ static int rk_spdif_probe(struct platform_device *pdev)
 
 	ret = devm_snd_dmaengine_pcm_register(&pdev->dev, NULL, 0);
 	if (ret)
-		return dev_err_probe(&pdev->dev, ret, "Could not register PCM\n");
+		return ret;
 
 	ret = devm_snd_soc_register_component(&pdev->dev,
 					      &rk_spdif_component,
 					      &rk_spdif_dai, 1);
 	if (ret)
-		return dev_err_probe(&pdev->dev, ret, "Could not register DAI\n");
+		return ret;
 
 	return 0;
 }
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
