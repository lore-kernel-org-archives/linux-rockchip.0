Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 750B7C87FDA
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Aug 2025 23:04:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XLaTQZjN0IwlLjhaL6amXY/8gbbDz9anvj2u/GojeFY=; b=zYnbkrdLbqryev
	S5jHejYDk8NMs6C4ho2Y8GlnL0Dx6eGw3wOaZr1KC9G3+pw0hveGhWR06y7y9L4kAtyRjwmwbwimO
	mg2/3ixnJjnATiUbv5q9gj2E+EUylTbt0D49StPDPZ2MkHmzMd9M6YfKAVkFmzfJ0z4GdJ3AUiHN6
	Y0uTawWjP9h6PRuoxKugllFWljfO6jvQF1ZW+K7el264u6PzTp3W+O3+WAewlJyKStCHLT6TbchAl
	Nel9evUtDIAMrfWZZmW9s8e/LZIhW+t0gcgsu8A0rFTC3SZDTLHMW52Cd41pw5i6DxX1sVwV7EdUZ
	ttrSHPg1kRC2UvZX+B8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulF5W-00000006A8I-1w39;
	Sun, 10 Aug 2025 23:04:26 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEoP-000000068Cc-0NCy
	for linux-rockchip@lists.infradead.org;
	Sun, 10 Aug 2025 22:46:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1754866004;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hq8kcIcUVamqXRpaO0muDR92j7XbTu3OW8hMLpghTgI=;
	b=GCNb9DtDQZEZiZxY11qWu8YIJIJVxhzI8urWBMzeoHU3oxDp0c7PR/qIPodhu/KFSPg3hy
	Xo8Rgq5NyKjnfMTfP2yLe8FRK7tN8ySZElun6Zq1jIr9fu5HT9y+2bRSN1eczOZLm/8ZZC
	80uK1UwIyEMJuFX19J8eYiYW+yBjFqY=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-365-4YtTZ_tbMcCL8EyZRUZOsA-1; Sun, 10 Aug 2025 18:46:43 -0400
X-MC-Unique: 4YtTZ_tbMcCL8EyZRUZOsA-1
X-Mimecast-MFC-AGG-ID: 4YtTZ_tbMcCL8EyZRUZOsA_1754866003
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b068c25f04so96231531cf.1
        for <linux-rockchip@lists.infradead.org>; Sun, 10 Aug 2025 15:46:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754866002; x=1755470802;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hq8kcIcUVamqXRpaO0muDR92j7XbTu3OW8hMLpghTgI=;
        b=oMM3qJSbb4lXXKc9XNTDwcvdf2q6oytv+/5vD+54kQUo348icQ6WQsPlLEZcbzTHRb
         5/A9lYTW24SNFxCv1NLWGMcc7t25WbAvILGkxSzr6BSHULrYqc+dubSxqXGUEwdpO6sr
         U7ZrvE+kMiNej39qnYJfKlLKdzISq8bQD7MDwpIxJQAtocE/4rZQ3/pgp/a1qhUguow2
         e3od6+5Z3GC8//JwIb4XHNk8aAps7KC6GGl4BZ7mSxyDdLyu1x1IBS0VPQn1gMgfiXs/
         xMj4lrjDANihI4Si5FuHUjecPTlSVdlPTh3nO5dEuJWeWCtx6vjKNdFWJHnNVZm9ZMCV
         NQyQ==
X-Forwarded-Encrypted: i=1; AJvYcCVxKGJ6RVZVtM+Z9vnrWiLJSakK/XV4iNXyGG6TfnLfwMQv8pMRRhG0imCbJEbIj4hUr8Sdt0opoJGwL3mNTA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyC1UQrzSq96G9GoBBwuyqUuuWlB4hl82wdthCUZpDiMIBf8ql8
	aoc9Gm305dJwzS3ExetJ0sq/B4b0CFdOGDTOutqlCatO9+XHublyAESeVsuMERuKfFDXT3FTKI2
	4UnkuDgiqEKma4U1m3KSskaqrg4fF1v1AcdvngoUbzoEWWTh2UPjs2GGM508DY/p5nTO12d8VIQ
	==
X-Gm-Gg: ASbGncu8NmBOz4mV+1YDaE1iiz4TSbynuNVnCyMyiG+I26VglxKoDi9K6yFW3CuxYdf
	JZZ11RLHcLsiHkn5uZWrIjkFL/leHO61ed/07Q7VVt9kB6DRT0vRhVoVmOyJ/az9qKiJU0vWdhA
	ZAB5aeEAUCqsqAwTyQw48Doye5jv5yPnCmw7Am5yzrM7WNsugoxEfHwcSPT+yYZW9Y2iJXsXJ3L
	cYoEildDKKhGF/AO7Y+IctTwxJP2lfbyaMeCKZwjvlsIP3J+vJGYGqC068QkB+oSRuMYJ4o6EIF
	oDp+aoJ0wSSuW2RksG0XufJ4OWcSYxrH4sAppg4Q2aeD5vE+kB5vzb/aUUbq51zg2nk1yYZAzzg
	W8smKnw==
X-Received: by 2002:a05:622a:1487:b0:4ab:622b:fffb with SMTP id d75a77b69052e-4b0a06eec4emr195091141cf.5.1754866002602;
        Sun, 10 Aug 2025 15:46:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFh5lS/n97PBNJSxOrFycNhagzbIhlgW9qQ3w8XV40W5m4XhN8ds0cjQ0NNa80CSmcd6Go3LA==
X-Received: by 2002:a05:622a:1487:b0:4ab:622b:fffb with SMTP id d75a77b69052e-4b0a06eec4emr195090871cf.5.1754866002209;
        Sun, 10 Aug 2025 15:46:42 -0700 (PDT)
Received: from [10.144.145.224] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b0ad996459sm42685171cf.46.2025.08.10.15.46.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Aug 2025 15:46:41 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Sun, 10 Aug 2025 18:45:34 -0400
Subject: [PATCH v2 6/9] phy: mediatek: phy-mtk-mipi-dsi-mt8183: convert
 from round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20250810-phy-clk-round-rate-v2-6-9162470bb9f2@redhat.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754865940; l=1507;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=tcM4xXKkkn7MFiutyaRVfeJ/7drFohogN+jyo8wqt4g=;
 b=q0MF517SEn6EZmLxnbXxB6XM3YYpy8tWmSgApsuH3irA3Q16tHw+AsuYoggeySatst9jw32Il
 A73zaG5FOWFDy/zGALRujdwgvPQdV6YkqHRZBcR/ePkMLWkrWepZFcj
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: rDcIUIftVBgIQCaYuboBJsoCc1VLJsarCLOS9EsDPAs_1754866003
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250810_154645_207603_29AE207B 
X-CRM114-Status: GOOD (  11.35  )
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
 drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c b/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c
index 553725e1269c9d7ad88f89367dfa1cf367aaf1ce..a54d44ef70ab49937d210f04fdf42300e8e5f2de 100644
--- a/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c
+++ b/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c
@@ -97,16 +97,18 @@ static void mtk_mipi_tx_pll_disable(struct clk_hw *hw)
 	mtk_phy_clear_bits(base + MIPITX_PLL_PWR, AD_DSI_PLL_SDM_PWR_ON);
 }
 
-static long mtk_mipi_tx_pll_round_rate(struct clk_hw *hw, unsigned long rate,
-				       unsigned long *prate)
+static int mtk_mipi_tx_pll_determine_rate(struct clk_hw *hw,
+					  struct clk_rate_request *req)
 {
-	return clamp_val(rate, 125000000, 1600000000);
+	req->rate = clamp_val(req->rate, 125000000, 1600000000);
+
+	return 0;
 }
 
 static const struct clk_ops mtk_mipi_tx_pll_ops = {
 	.enable = mtk_mipi_tx_pll_enable,
 	.disable = mtk_mipi_tx_pll_disable,
-	.round_rate = mtk_mipi_tx_pll_round_rate,
+	.determine_rate = mtk_mipi_tx_pll_determine_rate,
 	.set_rate = mtk_mipi_tx_pll_set_rate,
 	.recalc_rate = mtk_mipi_tx_pll_recalc_rate,
 };

-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
