Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0AC4D4335F
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Dec 2025 23:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J4s8GinwGPd9y0l7O8OAB57az6gbyuOVJ2Q291gAXIQ=; b=LvWk2wmeHotCcI
	K0QGy9og9ciYf2nX/7qCNC57Z2qiSA1mlVqxzfgALqp5rlO6NMD8w2j2nmIb92lTqhFMpt9LhZHyk
	2QmsivvyCHCc9frLEAgTtiaMcA72z9QFKH+DRXtqdob4h/FBs2cnDF68XIcvwY3MPEq0gBL2aJ+w5
	j9gLlmT0TZhMVfW0t0KAO9Uo+TZ8VwDuuj+efisGANq1IVKB++WB1M+ipDLthyc1aUuR9od6JqY8Y
	8P8UgXpaUY044wtQ1avddYX5Pux2kWryEpGWTrQwynbFTIQ/URvzB8d559PqN5WkSdBsQGi7xL66S
	NtzKZ13586aOWiizlDHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpuB-0000000HOX0-3bCP;
	Thu, 11 Dec 2025 23:17:03 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpu6-0000000HOSx-1wKc
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Dec 2025 23:17:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1765495017;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CWALxHwSjMipreZEX2Qfe1SphmPwPCWuPZgQtUxY9NY=;
	b=hx3VIWw1g/dpeYylkTZtdcxpBB0T9t2KJkyKB3m7w4UFYFIno0bS9r+LoicOIpA1FVnPtT
	XsLPCEX5WmxnijRdh1LHTLdnODoXnGKRFz1TMmUQSS+movyuQRiU6TZ1uqF/cC/P/idIvz
	bWjojXkEhYgKGEl+mRAfGvo+N/6paPI=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-611--BYKsHeROwG2siWMCHra-w-1; Thu, 11 Dec 2025 18:16:56 -0500
X-MC-Unique: -BYKsHeROwG2siWMCHra-w-1
X-Mimecast-MFC-AGG-ID: -BYKsHeROwG2siWMCHra-w_1765495016
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b9ff555d2dso162731785a.0
        for <linux-rockchip@lists.infradead.org>; Thu, 11 Dec 2025 15:16:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765495016; x=1766099816;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CWALxHwSjMipreZEX2Qfe1SphmPwPCWuPZgQtUxY9NY=;
        b=ofTOGNquYFTDmlHnwgAjbjlXaAhXqqEB7JEjb6+h+KihlLZcYDdFQMsum9p8cgeuTS
         LMnTEGgURiaNMlm7QIYNhthXXIyhawvQf3R/GLRMsweW9mqrrU3TwRGIc5Yyx9vsFaLq
         sPMm5cg0+7y0HR+oqqSsoyhwe3yuSbvGBDqfBMBvErUDNdCrIrQmZHmWKbOeZgeJZev3
         Faqbg0stskFnTrX+52aZG0k2sgmaetwynhxSfN5vh5r3Uft7NhpXg0YKCC2mXEDeU4IN
         AJ3XM/YVOFwP8w3IRNTaiJLr2OPpOECCmiJnkLjhb3dVsSWDM5t1xRIrzcthU8t5OFPm
         pAjQ==
X-Forwarded-Encrypted: i=1; AJvYcCXwtvx2b4TcbXigppUTUNoeKTASVxdCJstpjMpYIWzpkkGULVAxnWuc0FsIXX8oGx67nGV/GnTvjpXeH2HzQQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy23oD4VGc2gCJi7la5kEJWunFgUzm/PU1/11IIDJsfgMGznAaG
	A3IW9RkXfP3IdcEOj45B6RF05Czh0kvFI/IYPZfCIoKg2r2StkQEgEINC1RnrC02FHpkDIbC9o0
	xKnKx4dcxiyiG88KHuZvK8J/YdaDNH4AT/QdEFeVElPbdXcA6F3Wtn6Dyyg2bI86hP9SF6UgooQ
	==
X-Gm-Gg: AY/fxX5guGjwF2RbRNxFAkmpnd386R3ebyCyNvG1Vsr9zAb41ceZSGgXQv50ECqA6MY
	u7vqjStZeIvwGYtL0b6Yu89VLLtUn/JheeiCWBlxZYeFPQE2+A7sYLLMgBNgtXRvq60lDI0pBM8
	URl8L9FmHzaFJ//GwfGs0LBNbtdhobGlvBEsFIy2zwMqM3q7uXr5EAMsbAGahAnbl++to1utiP2
	jnEHNnIQoCxZhQtnUx0qtpynzvBp5AeuC3q0x8q0ncYr7vr5Hs78WeJ2su7WwuEGXOWl+g0bCIp
	ndXDaLpDC23RLc+GFvjoeeOEReS34zY2O8VJelkPbdAzR7NRDSfOOt2/fqp7gIjjnJweJQc/AR7
	Jh8ThKU8ttnasBsmJVHeEeCBJmSIsBmGI/TrhV3z2tVG8VFvQwuTrKQ==
X-Received: by 2002:a05:620a:29d2:b0:8b1:8858:6ead with SMTP id af79cd13be357-8bb399d90bamr39281585a.11.1765495015849;
        Thu, 11 Dec 2025 15:16:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH2s8wwcOmxwXaF7bKZgVpwocL48364JqbwVZMFBYNgdRIsZcitJ0mH0HHmDGJg8J0urTG96Q==
X-Received: by 2002:a05:620a:29d2:b0:8b1:8858:6ead with SMTP id af79cd13be357-8bb399d90bamr39277685a.11.1765495015467;
        Thu, 11 Dec 2025 15:16:55 -0800 (PST)
Received: from [192.168.101.129] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8bab5d4edbasm317873585a.51.2025.12.11.15.16.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 15:16:54 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Date: Fri, 12 Dec 2025 08:16:20 +0900
Subject: [PATCH v3 2/9] phy: mediatek: phy-mtk-hdmi-mt2701: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20251212-phy-clk-round-rate-v3-2-beae3962f767@redhat.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1429; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=b7GdsrXKjZPd7UPmB5Kvn1MxBtjV4+5gYAk+zH2wXY4=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDKtAy4eruXZckDLUdGk4NCf1DMH3S23NTlWqza05L27d
 j9Mk3l3RykLgxgXg6yYIsuSXKOCiNRVtvfuaLLAzGFlAhnCwMUpABN5vo3hv/s5eRZ5xg+sCw0l
 u954X731i2Wfsyj7rWvTHExexWhducDwP2M694nJjgtaZ3hrX35Y2b7FPuB4oXXsynttk8VNEja
 v4wYA
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: AQBWM8gu89h_6jMcPHAV1vHUydSuJ7VztFG1gmumhgw_1765495016
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_151658_573274_5E5EEDCE 
X-CRM114-Status: GOOD (  12.19  )
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
 drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c b/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c
index e51b2d13eab473dddace48c75c2a8d73c8c65635..b0b6497e7eedcb6867541b573d22156ded29a4d5 100644
--- a/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c
+++ b/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c
@@ -90,10 +90,10 @@ static void mtk_hdmi_pll_unprepare(struct clk_hw *hw)
 	usleep_range(80, 100);
 }
 
-static long mtk_hdmi_pll_round_rate(struct clk_hw *hw, unsigned long rate,
-				    unsigned long *parent_rate)
+static int mtk_hdmi_pll_determine_rate(struct clk_hw *hw,
+				       struct clk_rate_request *req)
 {
-	return rate;
+	return 0;
 }
 
 static int mtk_hdmi_pll_set_rate(struct clk_hw *hw, unsigned long rate,
@@ -170,7 +170,7 @@ static const struct clk_ops mtk_hdmi_phy_pll_ops = {
 	.prepare = mtk_hdmi_pll_prepare,
 	.unprepare = mtk_hdmi_pll_unprepare,
 	.set_rate = mtk_hdmi_pll_set_rate,
-	.round_rate = mtk_hdmi_pll_round_rate,
+	.determine_rate = mtk_hdmi_pll_determine_rate,
 	.recalc_rate = mtk_hdmi_pll_recalc_rate,
 };
 

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
