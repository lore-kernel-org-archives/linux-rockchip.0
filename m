Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F41DCA0EC1
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Aug 2025 22:48:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=716BHOTde5NM1A4MhExsvV/0tjFigrpycFvm2QAOMA0=; b=dlYyptcGG2FnYl
	SVEnxjQ3CvcNoYzR9nZTnyf9dtsFIO+1OgnrfvSGlpMvPvArRZb0yKgZmpb/4jjLxLxWPlYAuCHw2
	6f6oksiiNRRunnCEoFCScKPXcBYbiRxScp8DgWif1fhT8yDiJpwNd2wk5DB9IlT2cXQ89nSAJ3lHk
	DKnHFSwdCQode6sPEFm30kNFB2CyQ1uHufGG1nqCtJdABcMPu3r6Aqx4WK78Za52xdnB3esZ+W2PV
	ZGWxrM6ZUcty95sH+DUngGCPsA29DkpAhGTPCEJphmhLBE3u0GBjd1G3rktdX+m1xsbW04Otqr4UE
	X4EBFsu4zyBRjY7i2zUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEqF-000000068Vg-37aa;
	Sun, 10 Aug 2025 22:48:39 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEnn-0000000680U-27Ir
	for linux-rockchip@lists.infradead.org;
	Sun, 10 Aug 2025 22:46:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1754865966;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vnGrlNLU39XteVbV9vgE2Sk+xvdwKQpHrkhTkr/Vktc=;
	b=Y1kDwtsvcDiVMNVqiu229on+UV22P1kg9jmmipzV6p9oUyOSXKYUuOtjIMm2XAI+nisU5p
	Dz3sBQ8t3P2xMOLFIou3ggNv3gQXtvdVJqoSeEBbCzDFNmR/fDc1MFFbh66rQ6dTIm1RwH
	SJkDdYwGNdcNdEzqanF3d3zX7gx+7es=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-380-t1qRC0NrMg-snNpdxFp9NQ-1; Sun, 10 Aug 2025 18:46:02 -0400
X-MC-Unique: t1qRC0NrMg-snNpdxFp9NQ-1
X-Mimecast-MFC-AGG-ID: t1qRC0NrMg-snNpdxFp9NQ_1754865962
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4af210c5cf3so161261561cf.1
        for <linux-rockchip@lists.infradead.org>; Sun, 10 Aug 2025 15:46:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754865962; x=1755470762;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vnGrlNLU39XteVbV9vgE2Sk+xvdwKQpHrkhTkr/Vktc=;
        b=DKXfNTjqRKdp0fRlMn8e3NBHQrdUexE0OQeCx2Ygx3AsFz0Is5cdMOpgne/Safoh1o
         g9gN450splUFoelzX5knd3gHQn8njDJs2gwOU8dZeFlhttzr0pok1+2huomXOdPZj0+b
         T2hPqL9Txt2S4c5bRIDfvYfAHnonvX8VOI67xOYgWWDK+7GPU61egZ38luiQSLN7kBO1
         fsCHiiCInNsGqaoJBp8embuKNF7fUCmxU9lgaFzm3OC5y2rqSKBWhQPnWe/fMs8Y3N8/
         /+Bxjlcuob7WG3GhM5FgHLj0oS/gbdzYUtw5R5Ql64P0iZ+2qlWAZF2+4Ml3thYXldvq
         Aqww==
X-Forwarded-Encrypted: i=1; AJvYcCV9Wg5+5xVBQj5rl9eLKmDZM0LrqJomAPK/HE9UPbWro5PoiNVyBs/3hk+RcvNE5/KeAwR3K9eGv8hVbM4hVw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxtAYZcbkeVmFBv2wkPYOKA7szy8mEif8FnkSo86UQ5LFQ558dW
	4FkTi2Vmy9Qmk9YXHD67yx+iMK8yR+z8aEqvFcLmYo9dFSajTPQAn/J29d5pNv7xVdfowhabKpi
	GUpaGz48+QWumX6yX8ABdfMStgvIMRE07vBMOFo0wSO0Bdc56J6JAKZFZGfBfcMb9gRoRFe/zvQ
	==
X-Gm-Gg: ASbGnctDGCtApC96TBjQUW0cNPCryBEMi4enn4yNbeVknfwPfU3Ygjubw6C3uJRX5eN
	YeGqoG5+tEfLvEUgQr1sZWeEH67MadPGm29GC0SkpQ1HCbPy34YdIqvAlEuibjogp5TvVt1XihQ
	3u/gdoh2touPJmiIv0f1QoYqcSPsouLHlbym68bSJ1ruZ/bM2DWAIoYsgtYIuWISsA4Z9Y9Rj81
	ywu8LUBjd0CPgtVbUgf4b2Hwd4PIXF/+aB2QCdeMrcTD7OG4OV6CkStYV4YCUdRQJw2hysvvfXf
	xWWMaf20JuY8nWmhCdSDn6Ki1di7CZVjHmWX110WEvyOz6tVe/ynjam+Wa4pDDslg15WtSB2BXs
	u5g7owA==
X-Received: by 2002:a05:622a:1910:b0:4b0:77ae:17bb with SMTP id d75a77b69052e-4b0aed3134dmr164413251cf.14.1754865962220;
        Sun, 10 Aug 2025 15:46:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHUie+6kdU1EHKp7zY7Gli2dqcxw3eGLN8zRdb828DF1xFrgrp8MAMR0KX4wPSSD6n4ZYgkPA==
X-Received: by 2002:a05:622a:1910:b0:4b0:77ae:17bb with SMTP id d75a77b69052e-4b0aed3134dmr164412901cf.14.1754865961731;
        Sun, 10 Aug 2025 15:46:01 -0700 (PDT)
Received: from [10.144.145.224] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b0ad996459sm42685171cf.46.2025.08.10.15.45.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Aug 2025 15:46:00 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Sun, 10 Aug 2025 18:45:29 -0400
Subject: [PATCH v2 1/9] phy: freescale: phy-fsl-samsung-hdmi: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20250810-phy-clk-round-rate-v2-1-9162470bb9f2@redhat.com>
References: <20250810-phy-clk-round-rate-v2-0-9162470bb9f2@redhat.com>
In-Reply-To: <20250810-phy-clk-round-rate-v2-0-9162470bb9f2@redhat.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Brian Masney <bmasney@redhat.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754865940; l=1978;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=a0rSL2H1S/HUaruR4lcZ7Ks+0rkYUs1GnZzD7mNCe3M=;
 b=/U1k55v3iKOX6MHHG4y2eGAMFrca8JkeVtSpJcoc1Z54FeYml6kJU2G+QOt1KduqEhi06mYeN
 FwMvRbQ0c3QASmeUiY3XU6Pm6Wwj0gFLroBs3uKkqqGAWHVZhKteVKw
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: JQ-XVCv-8mS0Hs07m25mWbTPb5YEN19yM7aI1MhIqU8_1754865962
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250810_154607_609458_62FFAD6B 
X-CRM114-Status: GOOD (  12.47  )
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

The round_rate() clk ops is deprecated, so migrate this driver from
round_rate() to determine_rate() using the Coccinelle semantic patch
on the cover letter of this series.

Signed-off-by: Brian Masney <bmasney@redhat.com>
---
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index 191c282246d96e3f6c5a8d17abe078892882bf44..d010fec15671d33cc363af79e9f1c3f26ecb3464 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -570,17 +570,20 @@ const struct phy_config *fsl_samsung_hdmi_phy_find_settings(struct fsl_samsung_h
 	return fract_div_phy;
 }
 
-static long fsl_samsung_hdmi_phy_clk_round_rate(struct clk_hw *hw,
-						unsigned long rate, unsigned long *parent_rate)
+static int fsl_samsung_hdmi_phy_clk_determine_rate(struct clk_hw *hw,
+						   struct clk_rate_request *req)
 {
 	struct fsl_samsung_hdmi_phy *phy = to_fsl_samsung_hdmi_phy(hw);
-	const struct phy_config *target_settings = fsl_samsung_hdmi_phy_find_settings(phy, rate);
+	const struct phy_config *target_settings = fsl_samsung_hdmi_phy_find_settings(phy,
+										      req->rate);
 
 	if (target_settings == NULL)
 		return -EINVAL;
 
 	dev_dbg(phy->dev, "round_rate, closest rate = %u\n", target_settings->pixclk);
-	return target_settings->pixclk;
+	req->rate = target_settings->pixclk;
+
+	return 0;
 }
 
 static int fsl_samsung_hdmi_phy_clk_set_rate(struct clk_hw *hw,
@@ -599,7 +602,7 @@ static int fsl_samsung_hdmi_phy_clk_set_rate(struct clk_hw *hw,
 
 static const struct clk_ops phy_clk_ops = {
 	.recalc_rate = phy_clk_recalc_rate,
-	.round_rate = fsl_samsung_hdmi_phy_clk_round_rate,
+	.determine_rate = fsl_samsung_hdmi_phy_clk_determine_rate,
 	.set_rate = fsl_samsung_hdmi_phy_clk_set_rate,
 };
 

-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
