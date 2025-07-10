Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF7EDC83F17
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 18:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ONj3T5Q+aHdNPKgxhql1twQ5BKy7rngcW683dFKrNbw=; b=qNeyeXtpOxpKsq
	OD/Y3cm1hLAwMKQ83fjru6NauqCFFdaqCXavYov/Me204NEEBDV7ZFtQQ1cA59r4BmiJ9za3mir+F
	rI3GicJBUl1cWAF9iH9QnvQX0PWxERvMt0LgksuuXMUJlykTw8/F2BgD+4iIGdJ9Oyd1JeKOABwsi
	KZsO+Jm4a31/FEJ/L+TFFlQWwbBP4idQVc5QlU28yNOd7Vkr/UOv6BSUPZ79GZWr3A0guwnAxOfPg
	nDShmzIYtKf22YTfLH8W7+xIaiE1lvR2sNI0KsCGDyfN2uQ1wotLNg6buteHRc0LcGbBqd+m9dGRD
	EBlTnD3sHkmh3Ic4J3VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZvy1-0000000ChF1-315N;
	Thu, 10 Jul 2025 18:25:57 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZtom-0000000CMFa-2smb
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Jul 2025 16:08:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752163695;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fJQSlBKA2g43dFqB6TuRxKz7xFAHDfxLS8SwGXWJVrM=;
	b=eHrRaT2M77r8xj16EhtxLls/jm31KizQv/R6TZ+uUSAosi65kgwLFDgpmGj53nwkEycMfB
	w4zxOhqSjOxXft2prjg/axSdclEB6Do9XYadq9JolUNaSTlO810plxU3JJOTSBTHy4O/Vn
	ubzcN7qkCbvMrfOAdUYDFqRXiLHVMQ8=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-631-LpNRgud4PvWlOfgPau927A-1; Thu, 10 Jul 2025 12:08:14 -0400
X-MC-Unique: LpNRgud4PvWlOfgPau927A-1
X-Mimecast-MFC-AGG-ID: LpNRgud4PvWlOfgPau927A_1752163694
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d3f0958112so175623285a.0
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 09:08:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752163694; x=1752768494;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fJQSlBKA2g43dFqB6TuRxKz7xFAHDfxLS8SwGXWJVrM=;
        b=rtKAtHOUxyGsynuBz168Taqeqlhf2rsT1CB9zQTg9wZBvOBCwdHQaC+vN/kWfrCqnG
         jhTjkoZn++KQX+G+/dSQFS7Ng9x3HoFvm0a7maCR0IUX4sQQ0q0ncJfS/wUwnM4dnYoy
         elSuI/7/rVgaEblYZTr8fVCTu+/+XR8Dx5y/BNqZNtAT1xUu6mmVlsPiuMIxolfb3Gbu
         QPYiHFAjhIJi+8zj21NpF1nJCzbjIXvKduFSzVW0B+Nx3UJZtAdmnOkWvKn36aMSX1/j
         w0+/p8Q6vr70lVltT+75+Uw/TLQZ0ENMgQ/LNZTlKEoekSntWiQLE3rf6QlL8c6Ozhfs
         pCNQ==
X-Forwarded-Encrypted: i=1; AJvYcCVA+0y/WRn7RPuBDs0mkFRMUv98Yx+acVyB9z5qD6iksZXjjZ5D/sZmAATbsy/boRMIQF1ukSdOgBa+HAtYiQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwI6urpfPEN8p0yuIVTwTMaQrbUhWsr9Xr9FjKqVSZTbzhHh5+L
	sACvFxyyNtQvpggonhv7zmD94St0RDr/JzOSq6E9/hwU4E9eExv4t9+JyOckOoNKFIZSiDvajNS
	PlWtfrnIto/ylIE+Wvd77Hq82No7Fm33Ce3M9/F2v2jvvC7kCWJ+4w5hEHnCcpJRNWZh+AsiwOw
	==
X-Gm-Gg: ASbGncsgUccx1qh17G3b9ZW7N4cNK0j8RtEm/BuQyhSy12qHRlMQZnPvbxLGmoPrILg
	OikaVynt1GUtYxy8qo04fmSyKpOTwGKqOEMYV5AHFEP5LPMUPyrEEF0d6Pjkb8zrdvJZyRXXhDM
	nVHCCYwi4igl3+PdK45JrZtk/1/L3mTadQ81c66kMdJIDKDWwKVwulJwWARkLpur3LgXrghpbX5
	TnbAd1LSQd82e351HuC9za6QqzsWca2mWw+k1ockcFbtZ7cIOtI4Gm5Pb7p86YpIUYNQ+griHTK
	eGX5hKEzHpI9W9fPHidP71JpZhNEuo7y8V+iLHfgzN/uwBg86CGEf25SaYsQ
X-Received: by 2002:a05:6214:d0f:b0:704:7dbd:2075 with SMTP id 6a1803df08f44-7048b79dbe8mr93046546d6.0.1752163694066;
        Thu, 10 Jul 2025 09:08:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEInLStwo1lDSg7F85FMOE58AhksEafUcDFpNGGZphskAtBc03MrN1OcVT08c+bAzB2AxSVXQ==
X-Received: by 2002:a05:6214:d0f:b0:704:7dbd:2075 with SMTP id 6a1803df08f44-7048b79dbe8mr93045996d6.0.1752163693579;
        Thu, 10 Jul 2025 09:08:13 -0700 (PDT)
Received: from [192.168.1.3] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70497d39749sm9670216d6.58.2025.07.10.09.08.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 09:08:12 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 10 Jul 2025 12:07:12 -0400
Subject: [PATCH 2/9] phy: mediatek: phy-mtk-hdmi-mt2701: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20250710-phy-clk-round-rate-v1-2-0ff274055e42@redhat.com>
References: <20250710-phy-clk-round-rate-v1-0-0ff274055e42@redhat.com>
In-Reply-To: <20250710-phy-clk-round-rate-v1-0-0ff274055e42@redhat.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>, Maxime Ripard <mripard@kernel.org>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Brian Masney <bmasney@redhat.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752163685; l=1429;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=iJAJsOBdjX5yU2h75u6+b08f3YAfQGGv0k5DSS+fdqc=;
 b=gM9Vog/PjfK+PD7kK6yqe+FHMUUn8OmRYlp0k9f9lt5ka6hie/ovQ2orPiYAUbVKPreNvVHLO
 BW8lUYOkRwPB/LUPMWdxoK3stAq+kbRSdWnBg6NGEyKUO9GNQDXxSDY
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: bw0wIbnTE7extAZiJhx7vd6NdOgX2IBe1mzgO92mq6s_1752163694
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_090816_801304_1E4F0131 
X-CRM114-Status: GOOD (  12.33  )
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
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
