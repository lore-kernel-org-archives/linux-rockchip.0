Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DCA6D4335E
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Dec 2025 23:17:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qOr8jQl4T2mDdYi9L0J4q5ah2o9VZGNHsm+ih1EpUeI=; b=oZxLLnjuY3vvNU
	cOaCn0MQd91UUklgZGZ59u9B5tNgwZihfGjw65BtIPyiCFv/DrZeof7hEjvtOwhb47rq7Y2Zlj7Ev
	2QnFQIo8ZCe/QvuVFAt896CK4kdAB4NLZC91cdCv7wdB/rxmGH7FgdzaKSwqDkemZQj8PnlX+iK9X
	Pacj5E1KPuqJ4Htfwbs/vSpSB22TrB3pdPHfq2q+Nww9FdyLZ0asbDSUceEDe7412ZUg2qOjwZfoA
	3BwZC6SXuloLz+617GupoUEB2R4xbleiIKyLIoHfKV5XWtojO578PTp9oanYcGXrche7Gn2THG5mP
	MzWAVSQefORTyNyrMrkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpuH-0000000HOdI-197U;
	Thu, 11 Dec 2025 23:17:09 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpuD-0000000HOZA-3f62
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Dec 2025 23:17:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1765495025;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nS5xyU79VC7pO9m99ZFsFBSh8nnXakLQbi3bsJkRuyw=;
	b=J81QapgwbYH44uKbWJ6ROx8uMLQ/Shcg8r4Apek//Q5R8unlgrtzIWOgh3qXVEeVBvYAyT
	1fKHv1EHDA9FjJDMAmORhFxcEeqJC2Ld6yobyjPdxuJQN89CrB7nsHtsiAUmbR5xb1YAMB
	vs00BQHtkMFHBkrBZFTRrB3lPoylZCU=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-345-_6HYTpGvMEedNEg9QHIL2Q-1; Thu, 11 Dec 2025 18:17:04 -0500
X-MC-Unique: _6HYTpGvMEedNEg9QHIL2Q-1
X-Mimecast-MFC-AGG-ID: _6HYTpGvMEedNEg9QHIL2Q_1765495023
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-88044215975so18657016d6.1
        for <linux-rockchip@lists.infradead.org>; Thu, 11 Dec 2025 15:17:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765495023; x=1766099823;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nS5xyU79VC7pO9m99ZFsFBSh8nnXakLQbi3bsJkRuyw=;
        b=qrjCWrAS5ZBiDySYu4yT7gFItruekmuYvvNS5L00wVjVDZcE5XEfVcYOXVrGRQWg4h
         b6afhxDCV2pd1AXc2Ht0t+C0XTswSBwgCF58Op2pdr62bTNp1IUoFZA7hiJc/DAjD2J0
         i2jP1E3oaahLw91LJ+NbbTyD+CCWmBFfybWHoNhAs4zFXC92m0p7y/+OTsYxBVSeU/5P
         yBh4XbuN++d+Wwk14SJlqy1W89gFjAcYfzwFt1I9hbOCg5IRVi2hMd52E6AkcA72m+y9
         2onT8i+mkIS7j7LCXas4JlMnGPXjKUVhiymAWO9IjdcBmMceZqevgbNG7pupaY7Y97Hd
         UdHw==
X-Forwarded-Encrypted: i=1; AJvYcCXWtXSyPY6mVLgVWXp4YgjG6Bo2pte+guTETP2n+osxaM1zKLfOluz5YISKj4iF3yRKoRb4aLoSMnJHsVjixw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy5/CIPnMN2UORAFNPCppz5Kc7L80oeS85CyzoV+ZKlQqEjVSAM
	FP2uFnbVK43Puybd00gqOfwRBGELQTQJKv+n5ePSA4RvwebZPMG+3m8eU9noYFGBPvyPUmOOen3
	lrJZL+RtmtiGm4BC6cx72fWkQeBRCeG00UBzsGXAHs98nOlvOUhJINaK+ZOKup61sDjT21mgyHd
	sH+auz/+2T
X-Gm-Gg: AY/fxX5KWBZN3otsAHtyCDcFc2ZmPQYBCKIPTzd5z6Gj/31TwG/eg2LDINvx8k5UTT2
	83Mjoweykuq4DauJy3Tptl6vADFN1HLMXk+ng+JA9DUqdIzpYKhGZiW3+vIX5ptAcktI0H7B7mk
	SgUBVulOSz/ptsK73k1Uhpx/U/VLr+QE59SqhA8GX7dimIl0pbIM1PnG/HMAYPEA+qyBK6duftk
	z+1Gvp3rGLrvhx5ZU/cxqneuvH7+aN59x5BAPBADW7cr4UrceJwcb+vFzCiJbn5O8VvOZGN4DFJ
	cd1VGiGaL20O/oym0Fze0V/3WWuMx3L+cOUjjsOMRqhsOiizBtQsDsStlWRSUr1cXMzhRJpgb0M
	PYZONrbmxUajFOXhHdpIpiFywHELB/anVAOHgVaGd/0uBBSO7xY6BRQ==
X-Received: by 2002:a05:6214:da3:b0:87c:2bb6:741 with SMTP id 6a1803df08f44-8887e1b44f3mr5869616d6.29.1765495023049;
        Thu, 11 Dec 2025 15:17:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHmZS1L2hV5aQ7zoKqGzhOlVyBusG0wgauo3NmQeNT0uE4Z7Yi8ZXh/Hs5OUyLkYfq61AO84Q==
X-Received: by 2002:a05:6214:da3:b0:87c:2bb6:741 with SMTP id 6a1803df08f44-8887e1b44f3mr5869096d6.29.1765495022716;
        Thu, 11 Dec 2025 15:17:02 -0800 (PST)
Received: from [192.168.101.129] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8bab5d4edbasm317873585a.51.2025.12.11.15.16.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 15:17:02 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Date: Fri, 12 Dec 2025 08:16:21 +0900
Subject: [PATCH v3 3/9] phy: mediatek: phy-mtk-hdmi-mt8173: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20251212-phy-clk-round-rate-v3-3-beae3962f767@redhat.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1767; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=dOjKoMKrjNLxDaFcShGY+TJnvlU5rN6Rp3COkTM41N0=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDKtAy6tW+pYkrBzwUUlxS0J0x7VsluaTZ6+7OiGG/29C
 o0TxA+mdpSyMIhxMciKKbIsyTUqiEhdZXvvjiYLzBxWJpAhDFycAjCR1qmMDNvD7Qu+nZTe//Nz
 zwtxS0fpvY6eBWGv0n+W8BRfjc2fqcTwv2ByUtGe3QVXa0ztl0SYGceaG7w8xMv6I5Zpvld6Td8
 bDgA=
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: M7rLjxCb2PVdio8Q-wkMv3nLmeEHV6Cw0i0IaWVWxb0_1765495023
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_151706_034646_6AC4B5D8 
X-CRM114-Status: GOOD (  12.22  )
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
 drivers/phy/mediatek/phy-mtk-hdmi-mt8173.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-hdmi-mt8173.c b/drivers/phy/mediatek/phy-mtk-hdmi-mt8173.c
index d04758396046363ab9edc584ae10bf31e9c5fb0f..58c6596c8c20bdacf96a97709b8f5709f447e85b 100644
--- a/drivers/phy/mediatek/phy-mtk-hdmi-mt8173.c
+++ b/drivers/phy/mediatek/phy-mtk-hdmi-mt8173.c
@@ -118,18 +118,18 @@ static void mtk_hdmi_pll_unprepare(struct clk_hw *hw)
 	usleep_range(100, 150);
 }
 
-static long mtk_hdmi_pll_round_rate(struct clk_hw *hw, unsigned long rate,
-				    unsigned long *parent_rate)
+static int mtk_hdmi_pll_determine_rate(struct clk_hw *hw,
+				       struct clk_rate_request *req)
 {
 	struct mtk_hdmi_phy *hdmi_phy = to_mtk_hdmi_phy(hw);
 
-	hdmi_phy->pll_rate = rate;
-	if (rate <= 74250000)
-		*parent_rate = rate;
+	hdmi_phy->pll_rate = req->rate;
+	if (req->rate <= 74250000)
+		req->best_parent_rate = req->rate;
 	else
-		*parent_rate = rate / 2;
+		req->best_parent_rate = req->rate / 2;
 
-	return rate;
+	return 0;
 }
 
 static int mtk_hdmi_pll_set_rate(struct clk_hw *hw, unsigned long rate,
@@ -223,7 +223,7 @@ static const struct clk_ops mtk_hdmi_phy_pll_ops = {
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
