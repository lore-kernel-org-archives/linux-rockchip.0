Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D793D43360
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Dec 2025 23:17:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DgyZrnZAMgZrK7Uae5QCjXKIJVeftmoHsXQEjXGXtCs=; b=zEIwUXZO8jUbfd
	awU2P6bdRCKrMKqm2w9SVTNlHkVZbPTnIhf1tsrZla8Oi9YcWwktph/906CUaMbu3Cs17lrnnQ+tK
	32YUXoLjMcQp3wNcTlFD8qvBRXR25x0uGBzOnHx2TVe0OeW1xxd4SaBUeR6tVcPuEDGqGr6Bwfrjv
	41BiymmaHA7vNoxc0yp30c2i8emcZ3JCEVhEHI74pXEH2oxTygHKpsObj8/Kd193KWLq62sf6tbos
	5BgUwAAuYXrVRFEWzEZgnI9lLR2Q/KKMMg1YrBQqejpe1LvqaahZ2yZSqlQXZ7V/Z/VAx7ta0prx8
	ytc8+oxJgqTtUdijkocQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpuU-0000000HOt5-1rGv;
	Thu, 11 Dec 2025 23:17:22 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpuR-0000000HOom-2ijg
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Dec 2025 23:17:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1765495038;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rPuKV99ifsoh5aqHZAAkYRvR+Rf4lIg7BWEssu/CiJ8=;
	b=UE7T4vvd4jnngGbwNuAxSpw2up4+Rbh0NRtdnvSDt2wbzWenEKwwJo0LXlf2V/529q4zq/
	Iv+89Qu41dBXEbj5aIw1+P0mPURJ6wOj0owV9xvFiKAoLII2n4ySYa+rRA/NmYYLKM971R
	JCBtWhlXbOx3ekYv5YkS+RzRW0Bb34o=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-275-SDuimR3fPYym8wGvaQPwUA-1; Thu, 11 Dec 2025 18:17:17 -0500
X-MC-Unique: SDuimR3fPYym8wGvaQPwUA-1
X-Mimecast-MFC-AGG-ID: SDuimR3fPYym8wGvaQPwUA_1765495037
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b17194d321so90381785a.0
        for <linux-rockchip@lists.infradead.org>; Thu, 11 Dec 2025 15:17:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765495037; x=1766099837;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rPuKV99ifsoh5aqHZAAkYRvR+Rf4lIg7BWEssu/CiJ8=;
        b=LCcUvE18kvcr04l+tlWh1Vskt9qHJECtSSZZ7/P0NNMV2tyHyDhoHXyLXHsglr4NKo
         BYrWM/JGMXzvktsnQQC4rymrgGUdSPCUkclrQhpAOQGJMsF8lEa6E/aQ29At9p/AFy4t
         0IGSreTUCJ2lS58Azzxm8jqOARpQzF7NsDGLVyiS5U6H5StptUDX7R6Lqn38acCHwEAs
         VkT7Fl9HmSphGP37osS0buJFo2hCzqNICBQ4eCg4l63YmGdBAJyt6vylIIFrqrButaen
         Levr46S6kXhiBEBURk/yPVJBfXgwc4G93TRA+e6lugtE1GzWDK0vqz1VDPAvcoLxDaXy
         //tA==
X-Forwarded-Encrypted: i=1; AJvYcCVEsDDBOuOcExe/cBjqJ0hXf24y99SPFQLHui0qq8w9bofGDDcPdylpPVX7VAl70u8SaUbJMkwJeZgtbZwxQg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxeQCPi8H9Udpn/Riuwm4UN6HNmADjPzYDn4bsoYhP4hgdBZder
	gz78KINoA+wmv7dWMCwKG4zRiXacWWVFdsIbwD5ZNgEMTO7Vp7UqQ0NxqyV+oyUKbGVid5aFcvH
	IG7uKG9kySZGCtUVr4x6NXM10KBFu4JUUZH/YUVOZ/nK7xmm1ik9eb9cGcasoe/f70bSmV3sbnA
	==
X-Gm-Gg: AY/fxX5mnXKcT4fOq7pPYzUE3MgjoWAniS2sQnSDRY5n3eeUsI6Oze7wRbLTudGWXEZ
	P+xKuthVqWUqF/P8VRt/f5b5FcZMJFYVXElA5S989YVTxbBqqOt7EU/OMQ3zuXNRT3ILRL1tnWV
	a/G2xdUVs7KSjyFRiX1sBLGrJXQrQGPqRybkWgLgv96DMvFAzN/JfUVQSyKfE3ayFL9Q2OsT8bg
	cCYnpPOyZbZ/VHoev/3YzQFgFXF1eveicds/7N4YgxmrEXT8fUvvE7uP2odC1PCLJALwfovt7X8
	fafmcuKMaNIsNGia7PV5AS08GiQpQPA34OxcPdsQnsnN2650RP9jw9nXg3TNvy8dKexcXCu+yFV
	9RQoUUX2Wfr4Ii8zfjoW7Vu102+dGa2VU4QmPo6N2NOt3VizT8XRz9Q==
X-Received: by 2002:a05:620a:711b:b0:8b2:6ac5:bce1 with SMTP id af79cd13be357-8bb3a248c9cmr37437685a.52.1765495037263;
        Thu, 11 Dec 2025 15:17:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGb7AhIjE8zPjDhJfU8aDdJaYDnutBjCMxlmV9mYKDpi24B9muU+pgkYMBUg4HwaDmRYFGfZQ==
X-Received: by 2002:a05:620a:711b:b0:8b2:6ac5:bce1 with SMTP id af79cd13be357-8bb3a248c9cmr37431985a.52.1765495036753;
        Thu, 11 Dec 2025 15:17:16 -0800 (PST)
Received: from [192.168.101.129] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8bab5d4edbasm317873585a.51.2025.12.11.15.17.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 15:17:16 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Date: Fri, 12 Dec 2025 08:16:23 +0900
Subject: [PATCH v3 5/9] phy: mediatek: phy-mtk-mipi-dsi-mt8173: convert
 from round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20251212-phy-clk-round-rate-v3-5-beae3962f767@redhat.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1519; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=vrNhEauHRQ5KoNoMMi9AesnXBPWl/Gp5yOh2A0W6gms=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDKtAy4JBrssMboevWX54tAvj//eOnz+u+ekf63rRB59E
 46P+ym1raOUhUGMi0FWTJFlSa5RQUTqKtt7dzRZYOawMoEMYeDiFICJ7JRhZHhdsj5E7aTq9jcO
 T97sYPf+/rX4c86W8toYzZ7TW7mNTd4zMqwJ9ZdIXKvRpntlr1TQhxi7aRs/WWw1fXTt7j6W+l6
 mubwA
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 83l0j4iosHqeJtOLzey6cI6P4LgIzMLJHY8WFw7rCFQ_1765495037
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_151719_764720_6F61B342 
X-CRM114-Status: GOOD (  11.88  )
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
 drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8173.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8173.c b/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8173.c
index 673cb0f08959e0e4f2b1ade2ebaf796e8b76f8bc..438ff3605d90121b7bfe02b3ddca8194437ed9ba 100644
--- a/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8173.c
+++ b/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8173.c
@@ -237,16 +237,18 @@ static void mtk_mipi_tx_pll_unprepare(struct clk_hw *hw)
 	mtk_phy_clear_bits(base + MIPITX_DSI_PLL_CON0, RG_DSI_MPPLL_DIV_MSK);
 }
 
-static long mtk_mipi_tx_pll_round_rate(struct clk_hw *hw, unsigned long rate,
-				       unsigned long *prate)
+static int mtk_mipi_tx_pll_determine_rate(struct clk_hw *hw,
+					  struct clk_rate_request *req)
 {
-	return clamp_val(rate, 50000000, 1250000000);
+	req->rate = clamp_val(req->rate, 50000000, 1250000000);
+
+	return 0;
 }
 
 static const struct clk_ops mtk_mipi_tx_pll_ops = {
 	.prepare = mtk_mipi_tx_pll_prepare,
 	.unprepare = mtk_mipi_tx_pll_unprepare,
-	.round_rate = mtk_mipi_tx_pll_round_rate,
+	.determine_rate = mtk_mipi_tx_pll_determine_rate,
 	.set_rate = mtk_mipi_tx_pll_set_rate,
 	.recalc_rate = mtk_mipi_tx_pll_recalc_rate,
 };

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
