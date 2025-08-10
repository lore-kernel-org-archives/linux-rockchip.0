Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38804C87FDA
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Aug 2025 22:59:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cNRYEnRCH7WbdKpocLqElCKRTvgreH5bZyxTA9RB4ek=; b=E4ZpiBBJaCjki1
	mzYObqs26Iex/T0LIhUK6xU2YzR3k6W/2tewKFNYrNlF1KXlAMLBlvlrREumoVbj65X9N0XWqnSyC
	y4+mMNwYfbj9UeZvR89HfAo0leS9cxWC9d4o68f2/6QbFH+xEBbAhW8c4HJzSQ253MV+pDSLKJE5D
	slDWNw7i0xTSv2EP7sSDoEKkzb90fmfYVaL4d4l1u/wRQO+O68tGun1AqS3adHNlB5rtN/ahLTD2K
	2aLIyiVMChU0Pzg9UHaCELQwFVCNOkvcuuLwOadH0Ke/qQy/s+GQeqfEV8aokZzeTljyC1cbaoLAN
	5WCsz89q8j+eCvJ9O0GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulF0Q-000000069T6-2GY2;
	Sun, 10 Aug 2025 22:59:10 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEo9-0000000686y-3PPr
	for linux-rockchip@lists.infradead.org;
	Sun, 10 Aug 2025 22:46:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1754865989;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9Xg8hqI9hY3cckPk/9kc3e4L3WNhIKfJgnhJhXBVxrY=;
	b=bDPC/T33l81EAhJz3oaMurylTMHtOXsVX59K1xsOXHt2nnZ7gi+tBASJZUQ+vuySUQol1q
	tnmEDvZHffh1womkqZJeyOtYsqganUPL2TJJYDRD04em8P1MeuTlQaoEJLXjUDEXVsR6z1
	UsPKrKBJoLQ5fK3Lgt7Gzo0ZxxdUYDI=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-593-icHsFRrnMtOwDipla7UulQ-1; Sun, 10 Aug 2025 18:46:25 -0400
X-MC-Unique: icHsFRrnMtOwDipla7UulQ-1
X-Mimecast-MFC-AGG-ID: icHsFRrnMtOwDipla7UulQ_1754865985
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b061ad3cc0so121794431cf.0
        for <linux-rockchip@lists.infradead.org>; Sun, 10 Aug 2025 15:46:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754865985; x=1755470785;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9Xg8hqI9hY3cckPk/9kc3e4L3WNhIKfJgnhJhXBVxrY=;
        b=WtY89jUnFiN0IfuspnrM17SqHzAHM32hbHrXRAuA0puOmUNCwidkmZXmA2prLHjE+T
         YWnHKdaS9kH02IgX8Vr42cSn6sjLbJ8LOi76K7BvGBVuJgBD+apzcm355EzYVS2CLnrW
         E/rolDw4JjUjSx7WIFgozLvEpu5T5LscZYb0nCjJeyliQu61eMJzbUxEXJjfogTZJRzp
         jxCg5QcxrFmMEmys44rbe98PeLickUhRWx/8S/+OEQ1zXWzNSJkou3k3tYO/Nzg+W4up
         3JvTFfWhynCkSlYixxz+UEivxV+T10rQp1RgIlpBDh1vDN6mv4tcILe94kCN1pgPSchF
         5BtA==
X-Forwarded-Encrypted: i=1; AJvYcCUW80649uyCyS6V0ihhpYLUBLHE1ozLmgsxVY6yn6GRvupB5peMYV5Yse3vQ7/nYrTDRvm96ChLIavzcetNCA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyIuCbEH4Og5F4jl2VPViRtQTDunXNBY6cdqgmmIGZN+COJP6E+
	xdK3NwG0K/eDWtVxON4SueZTl/x+RVXbnXQaptt+4EFRHrJ0y5JO6CHQVL71ROeFEMSNfBpitfr
	LdoqjO82F2fwn8VUojXmRrI+STTBDSeb1IOiLtNLg2svQuylvXm/46C5xOEqypdvE/vqCR3gSwQ
	==
X-Gm-Gg: ASbGncsJB55VaTbtANqrOoEKP6dYP7pZvCI9OZpVgcnu+S+baIGTAhpkp5BPP2kUtek
	O9DwQBph/PDmuCXrpREAX4Y8ubrQ51OzhhanS4u4fjmuTYJzLTa4bU7iyxN8ZtgH5J/fJlNoXiU
	FPD8gtgQgDvXRfQC3YdX0s1anL29Y0LkTB/DFeB+0mOkqjkkL2h5hzgaawNtBMg21OH322cbJHx
	cG+C84VQUqIpeeX2opvZkxVzUPvok5BLKysvqIR9TJQbIcbY797z/B4h2jjZKO5LPvi4NopQaIJ
	R5noA6zO3pU48skgX8sSxw/9qMfsc1XwNeHGMWOpQ4F9ujzPUwaesg+qejiqC/2YUmihJJ4yr5x
	YUUQtHA==
X-Received: by 2002:ac8:570f:0:b0:4b0:85de:483b with SMTP id d75a77b69052e-4b0aed794b6mr191405161cf.50.1754865985415;
        Sun, 10 Aug 2025 15:46:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFlcV+VlJl2BMsCB1be7RUmGpPT7LkQkTuorr8gQ4HxbmtzB9yCp//naKxGcJVwwxqJ9LpWMw==
X-Received: by 2002:ac8:570f:0:b0:4b0:85de:483b with SMTP id d75a77b69052e-4b0aed794b6mr191404891cf.50.1754865985003;
        Sun, 10 Aug 2025 15:46:25 -0700 (PDT)
Received: from [10.144.145.224] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b0ad996459sm42685171cf.46.2025.08.10.15.46.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Aug 2025 15:46:23 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Sun, 10 Aug 2025 18:45:32 -0400
Subject: [PATCH v2 4/9] phy: mediatek: phy-mtk-hdmi-mt8195: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20250810-phy-clk-round-rate-v2-4-9162470bb9f2@redhat.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754865940; l=1601;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=zpxjkKUS3Ja5Hl82pWOZy7M8iozPUZUnjje7JplMAuQ=;
 b=TfkcMxwokTO3SFrhfFtRnY/2TB3MjvqVvGnOziGO+YGy6Hi3nXcV6PqOeuN7niocq8BeQPo/w
 8VIsZH9GTQrClIuzbrC8guMQvM6lpDsYvdZ4R19kOLm1cKrdM3gU0VK
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: engwyYCovj-II1O5rEmfiknz9E6ub7pO9sOh7fkrTC4_1754865985
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250810_154629_917625_CA44066A 
X-CRM114-Status: GOOD (  12.61  )
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
 drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
index b38f3ae26b3f3d8c9e73b43d86510acf6cedb471..1426a2db984d53b91125b18f7725738c44f19555 100644
--- a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
+++ b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
@@ -418,13 +418,13 @@ static int mtk_hdmi_pll_set_rate(struct clk_hw *hw, unsigned long rate,
 	return mtk_hdmi_pll_calc(hdmi_phy, hw, rate, parent_rate);
 }
 
-static long mtk_hdmi_pll_round_rate(struct clk_hw *hw, unsigned long rate,
-				    unsigned long *parent_rate)
+static int mtk_hdmi_pll_determine_rate(struct clk_hw *hw,
+				       struct clk_rate_request *req)
 {
 	struct mtk_hdmi_phy *hdmi_phy = to_mtk_hdmi_phy(hw);
 
-	hdmi_phy->pll_rate = rate;
-	return rate;
+	hdmi_phy->pll_rate = req->rate;
+	return 0;
 }
 
 static unsigned long mtk_hdmi_pll_recalc_rate(struct clk_hw *hw,
@@ -439,7 +439,7 @@ static const struct clk_ops mtk_hdmi_pll_ops = {
 	.prepare = mtk_hdmi_pll_prepare,
 	.unprepare = mtk_hdmi_pll_unprepare,
 	.set_rate = mtk_hdmi_pll_set_rate,
-	.round_rate = mtk_hdmi_pll_round_rate,
+	.determine_rate = mtk_hdmi_pll_determine_rate,
 	.recalc_rate = mtk_hdmi_pll_recalc_rate,
 };
 

-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
