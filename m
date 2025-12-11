Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35F64D43361
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Dec 2025 23:17:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xkR+yJF+V439JzSCLnZDt2jWmSg/fR+430d0JInalkE=; b=a1Jr92Vh0rQT4L
	tSKuxPR0sG+sUKXttUNAyCY+/uDBT71lygDh/PDM+5SOb6bNGVrzzfwZVqHrdkDO+Ikg03/hotdgQ
	cXZbhV8EqYHorR6b5cGpunOOwO1nHNIHDuH5u/ki9idL9Sk7ALVWoJ+MCangRD0nsvvIkoYdRk1Fz
	SjaxJo2+RxF5i/OyMQvxT/44OyToTuEWQTAme5q9YvcqkBA6s1JCKlpkAgIl5IqJuW5oR6O/BuSy9
	uxdxIq4fh2bKV0dmvBzQq5V9k0BqwZSoi4F6AAdff9c9KSdhr9O/LFe15Xg9iAMK2HiGO44Shai1q
	tFE6LiqealYmj8mp5VEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpui-0000000HPDH-3BZe;
	Thu, 11 Dec 2025 23:17:36 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpuf-0000000HP7l-3tA9
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Dec 2025 23:17:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1765495053;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Sgu2onmClVBrEtqR34A/IFhyYtiocvS0uvbDkWrkkaM=;
	b=AW3yD3yg0Ge5x/RKsL2hSUc3p8mCW2wkr1wRXbtBlzxbHBy2Rcmu8pd/hd2yDw21XD6fdt
	521XjkBRVd495w/TBAotswP4wDzdxS2x+yU+fiKsXuQNTzTeCls3H3WLJjoz5RkGBAKM9W
	c3Ri49jH5SDQIbu5Eyi+1O6pykQDMB0=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-247-CtXmBlhVMFGFt-Kfwj0pBg-1; Thu, 11 Dec 2025 18:17:31 -0500
X-MC-Unique: CtXmBlhVMFGFt-Kfwj0pBg-1
X-Mimecast-MFC-AGG-ID: CtXmBlhVMFGFt-Kfwj0pBg_1765495051
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee4a0ad6a6so11963491cf.0
        for <linux-rockchip@lists.infradead.org>; Thu, 11 Dec 2025 15:17:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765495051; x=1766099851;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Sgu2onmClVBrEtqR34A/IFhyYtiocvS0uvbDkWrkkaM=;
        b=LCjsZIziAiCzhbklBXidWiwwuRxeDcZ2xThhylJqr4MU8srz2bl+84ARY+yEfbQsM0
         QroQkQxf68sdfKE5d8Pg7QGh1zsG5hlJFOHypxAbXutRW9qpydARl5Z+kdIkAgA36odC
         jh1AFUsnrr373fRlpX9umo8Kr9obDC8dZLUR39NMVQUYZ9wrboDdXRfmBMuDhW5ghnzz
         YEZs87BZ/mlmPEv4H1PuwAALOjRel/g00+ROFEGSDlwRX32mzOGsBjYf/ZYKbRXcGFwc
         MRCtJ6sJR6mBGI2bvb+AJvX4kMkPlRJhGm3mwTxiGNFzBMF51WRO1iAU0sRGwu7pVPeW
         uQrQ==
X-Forwarded-Encrypted: i=1; AJvYcCV8Vq/nrGOH+MA9KNJUQXdXaJ5Z0phMJDnzq6MN9nhtHEFOosLBfUUzn9KUog9jIUaTKWXcGc1NRiYtnpyZsA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzSRuTuT+Hq6FTa9Rgqk/2I+XY8Z5OUGko8n5lvGIpHK9jpDmOS
	qcMZwPmLxx4hn9LF31JNFmRNoWDFKGhAxpvvTqlpPe+TJeg6NiF2sp6Q3fTM5yrMYKtFZpsSjZ5
	5rVfzrw2ynuD3fZVr6+nCWZWV//j9i5lukfpaE8ytHVhsswVOnRS7k4pBgTcRSWeBcvPfDPZCsA
	==
X-Gm-Gg: AY/fxX6gRm6l1DT9qnWvcBCggvIfZGwkummiUTKZBH6K+sHYgB5qCIvUG9dHAvMxDo5
	seaMOARoKsJmv1+6W9N6oEzvFzeP6nrDOPcd+1UmQwzeZ0jB8DoLqDhFRQoC9kGlhhDb2tN8dsS
	kyjkWuDQ0fPG+bwLbS/zW1h4Ti7aDTxiNKBql7nEQl7fv8IVYBmydRhLdgAsoAfziVWsAylGTKf
	sCbJp8mOLstP2hozIz+Pc3GcMM58L7mQgfuMBPgocoQ+E9B9IBuIJvgcpQw/YiC8ib2vDI6MSBp
	HF7iIw4CvNMXsbY0O7+PQEq7iZ2EqJYaYsM88Uim+fmnUc5ZyYXAhtOgjSAEdF6r/3QjB2qZ0B9
	ZwPSkHVKIgX54PNtQsCl5DS1p6V09ZoMDI1CXvHICig7qy4anJpXF9A==
X-Received: by 2002:ac8:6f1a:0:b0:4ed:b0f9:767f with SMTP id d75a77b69052e-4f1d06121ccmr776141cf.70.1765495050789;
        Thu, 11 Dec 2025 15:17:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGJ2mASGrb1uGzvUHEFvIvmoh74d2qrejs22ELk7Vj6VjgPY8UzKXQvMrAzIodArePD3T0o0g==
X-Received: by 2002:ac8:6f1a:0:b0:4ed:b0f9:767f with SMTP id d75a77b69052e-4f1d06121ccmr775831cf.70.1765495050403;
        Thu, 11 Dec 2025 15:17:30 -0800 (PST)
Received: from [192.168.101.129] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8bab5d4edbasm317873585a.51.2025.12.11.15.17.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 15:17:29 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Date: Fri, 12 Dec 2025 08:16:25 +0900
Subject: [PATCH v3 7/9] phy: rockchip: phy-rockchip-inno-hdmi: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20251212-phy-clk-round-rate-v3-7-beae3962f767@redhat.com>
References: <20251212-phy-clk-round-rate-v3-0-beae3962f767@redhat.com>
In-Reply-To: <20251212-phy-clk-round-rate-v3-0-beae3962f767@redhat.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Stephen Boyd <sboyd@kernel.org>, 
 Maxime Ripard <mripard@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Brian Masney <bmasney@redhat.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3256; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=An56TAX1cqo7N9lFvO25vdxikpcfbBNUoQ6JxN8UiKo=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDKtAy5922P1Zs7hiGnB+9TFs04zdHhsnafw74/pp2aRZ
 xsa/1Ud6ihlYRDjYpAVU2RZkmtUEJG6yvbeHU0WmDmsTCBDGLg4BWAiL8IZ/tcuZ/74xmunwK8+
 K0b12kU3f76araLG+bUwwmBtXFmp8SOGn4xTJlnuvLvryMOzu/sCg/+572ItvCozoev822K9vIh
 jf3kB
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 8cK81SfPUfednWgW-ntPfjVr1M4SHURslnlPOk9cgvg_1765495051
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_151734_059073_D8E6BA6F 
X-CRM114-Status: GOOD (  12.71  )
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

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Brian Masney <bmasney@redhat.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 30 ++++++++++++++-------------
 1 file changed, 16 insertions(+), 14 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
index 8dcc2bb777b5455d21a10f06c5ad842b2ddbc834..1483907413faa5ce1dc8614db05e6e929410404d 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
@@ -749,22 +749,23 @@ unsigned long inno_hdmi_phy_rk3228_clk_recalc_rate(struct clk_hw *hw,
 	return vco;
 }
 
-static long inno_hdmi_phy_rk3228_clk_round_rate(struct clk_hw *hw,
-						unsigned long rate,
-						unsigned long *parent_rate)
+static int inno_hdmi_phy_rk3228_clk_determine_rate(struct clk_hw *hw,
+						   struct clk_rate_request *req)
 {
 	const struct pre_pll_config *cfg = pre_pll_cfg_table;
 
-	rate = (rate / 1000) * 1000;
+	req->rate = (req->rate / 1000) * 1000;
 
 	for (; cfg->pixclock != 0; cfg++)
-		if (cfg->pixclock == rate && !cfg->fracdiv)
+		if (cfg->pixclock == req->rate && !cfg->fracdiv)
 			break;
 
 	if (cfg->pixclock == 0)
 		return -EINVAL;
 
-	return cfg->pixclock;
+	req->rate = cfg->pixclock;
+
+	return 0;
 }
 
 static int inno_hdmi_phy_rk3228_clk_set_rate(struct clk_hw *hw,
@@ -835,7 +836,7 @@ static const struct clk_ops inno_hdmi_phy_rk3228_clk_ops = {
 	.unprepare = inno_hdmi_phy_rk3228_clk_unprepare,
 	.is_prepared = inno_hdmi_phy_rk3228_clk_is_prepared,
 	.recalc_rate = inno_hdmi_phy_rk3228_clk_recalc_rate,
-	.round_rate = inno_hdmi_phy_rk3228_clk_round_rate,
+	.determine_rate = inno_hdmi_phy_rk3228_clk_determine_rate,
 	.set_rate = inno_hdmi_phy_rk3228_clk_set_rate,
 };
 
@@ -906,22 +907,23 @@ unsigned long inno_hdmi_phy_rk3328_clk_recalc_rate(struct clk_hw *hw,
 	return inno->pixclock;
 }
 
-static long inno_hdmi_phy_rk3328_clk_round_rate(struct clk_hw *hw,
-						unsigned long rate,
-						unsigned long *parent_rate)
+static int inno_hdmi_phy_rk3328_clk_determine_rate(struct clk_hw *hw,
+						   struct clk_rate_request *req)
 {
 	const struct pre_pll_config *cfg = pre_pll_cfg_table;
 
-	rate = (rate / 1000) * 1000;
+	req->rate = (req->rate / 1000) * 1000;
 
 	for (; cfg->pixclock != 0; cfg++)
-		if (cfg->pixclock == rate)
+		if (cfg->pixclock == req->rate)
 			break;
 
 	if (cfg->pixclock == 0)
 		return -EINVAL;
 
-	return cfg->pixclock;
+	req->rate = cfg->pixclock;
+
+	return 0;
 }
 
 static int inno_hdmi_phy_rk3328_clk_set_rate(struct clk_hw *hw,
@@ -989,7 +991,7 @@ static const struct clk_ops inno_hdmi_phy_rk3328_clk_ops = {
 	.unprepare = inno_hdmi_phy_rk3328_clk_unprepare,
 	.is_prepared = inno_hdmi_phy_rk3328_clk_is_prepared,
 	.recalc_rate = inno_hdmi_phy_rk3328_clk_recalc_rate,
-	.round_rate = inno_hdmi_phy_rk3328_clk_round_rate,
+	.determine_rate = inno_hdmi_phy_rk3328_clk_determine_rate,
 	.set_rate = inno_hdmi_phy_rk3328_clk_set_rate,
 };
 

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
