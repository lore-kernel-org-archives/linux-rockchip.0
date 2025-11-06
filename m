Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D9AECCFA19
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 23:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5gXrc4rJYWltm5QZXwK/u11/uRXzFrj3C7DSiWFuejM=; b=Q3ngiX2pXtIX/6
	tPEKcTwQ6z0ickQtK/1GTuI/c0LZdCznLCJxXoVR2fqChJc89zKXAOW+lClh3qwalZW0/xTYgPE/x
	8eQIexy5jeaVoRNk+7rBANcK9Q5JoryMFIZKDlLo83YeiQEtyyywqU2/n9T/MAjm+aHfLyYKa0bxy
	GibR6tedInYCjs5k4/hn+WTmfgxC7DElFqC9bbrdQli/quWvm7MIG4FFhfLNDo6tK22GlsKVLrdRC
	ghD3lxpdCCcl51KV9h2kjnBYoi+ukCUpWWhngHakcSJNEaY6FDdzV2nAMVzslWI7yCxdqR3VO1DkV
	erI6ZQNr2JFwESKPZ4Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH9Na-0000000GNBM-0QHV;
	Thu, 06 Nov 2025 23:26:58 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH9NV-0000000GN5O-3zDv
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Nov 2025 23:26:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1762471613;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=r9SkuM/Zk54theYuUVPDuK/7cbD+hyZrLpLiRrTyy7g=;
	b=Iee1nDl3YvDzn3k1NbkeaV8bei06jIM0sQLQBT08pxcMW7jeXuGWd9hKzdm1J424TNdpCc
	zWBrUm6PKshOvTV3Vz9Uj1ORNyDsdtxiri5iZBFP/q2gcafwavOrQ+YuC1L+YL4LE+aqCI
	Pbftxkd1OLmigUbtJcBkwkSFBxP6/Ws=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-685-o_GTOOsvMCyClGWWE33pbw-1; Thu, 06 Nov 2025 18:26:51 -0500
X-MC-Unique: o_GTOOsvMCyClGWWE33pbw-1
X-Mimecast-MFC-AGG-ID: o_GTOOsvMCyClGWWE33pbw_1762471611
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-87fb496e4d1so9029786d6.3
        for <linux-rockchip@lists.infradead.org>; Thu, 06 Nov 2025 15:26:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762471611; x=1763076411;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=r9SkuM/Zk54theYuUVPDuK/7cbD+hyZrLpLiRrTyy7g=;
        b=mKHTeAuhJAZ8ycx2lCWRJ/g4ExWBlv1ctpl95DCRH9zfmay1odtnCrjQOfAhxCpFGY
         AyFwvsxxpqRv37Sdsv9Zh97ObL8q6JJLxI0yX5L0xfKniXpTvCcIoMYAua9a9DPYgFcm
         xToFoIlLv5RHJVYbncVC26kcWc2H9DGIpVDsx95yLmhPu/v0ktXCbpXkoxf1Eb7BRwhK
         H5vKkgrrjreVJ1nUEeh8ZITNJPQuNXa6oWIwx794kbsNa7u+8DMxTqnz8X8pBmoMmc2U
         feT9nx2hYH4M/2sGm8SxeILELUkM23naren4coQGshOuS/d++rQFl1eyL4C060w6Xtd1
         t9dw==
X-Forwarded-Encrypted: i=1; AJvYcCWFoxuANIXK0Lebitn93B2NwqROo+51JUt8hj+wPlmoRXtI0ZOq4l/Wmxl3bF+2mDHOEmxGcBALiwhA47F4pg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzawDKMqV4Ql34At0UYPo5kIzsWnGOmCis26flFt+A4JxiLsIS7
	s7CuDM7q/Riqh3/eL9EVJ6GEXA6I5WERD+QuxeqxBts51nyk6fjFer6VRtoznPa2cGfjBGppzjL
	j+/74qVuAILlGNq7O8fA8vpuBeh4dE44hSby0ApbXTgsvBktBG1RTE0PuhxWfjfJAQzbNVtZpUg
	==
X-Gm-Gg: ASbGncuVpxYJ+s3ieZZ7X6FYFnTmHT5cDaoSiCMBKIDqlMzM9x/7Ib+diKhyIFFSG+k
	C82f9ydmqLnAm1uAZDw9CLxfSxtyVXDiKMOWJX2o+mw73d39zqC+/d28Evjri4erhQAHA3LuaJI
	SobkBG2eqG2iJIiZ53B31C6sQWWyyD5Rbj2RRl6NwlpPOOFr570P9GZtZL1uz15uXLVBM7an62a
	eui3ydP5U6jxhuZ4NqxrC7xNU9rUBU+Tc4GG9BRXDCm8QzfutL1/lXhbKIWmUiN5FLmcYip9WwR
	KqyTMd3PnGFQlNux4tMPg+i8ESbqpcjpLaNuH3Q1SSJYatLuozDboDD+0b8JCwxd9E09LSGo2EM
	YTqfh40F8EiMUgfNFhWy4pmzn0MVjB7mq/vzE66h70A==
X-Received: by 2002:ad4:5ced:0:b0:796:5c30:b079 with SMTP id 6a1803df08f44-8817678d8e7mr19319296d6.43.1762471611240;
        Thu, 06 Nov 2025 15:26:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHSlSEV9dAuqFzCy0/F84dwpJ0FkW0yEvyVdQS2BVlZV8mmVJOC9OLuQQBUQWU2sDVef6rnHw==
X-Received: by 2002:ad4:5ced:0:b0:796:5c30:b079 with SMTP id 6a1803df08f44-8817678d8e7mr19318886d6.43.1762471610821;
        Thu, 06 Nov 2025 15:26:50 -0800 (PST)
Received: from [10.197.115.224] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88082a3aa91sm27389196d6.56.2025.11.06.15.26.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 15:26:50 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 06 Nov 2025 18:25:50 -0500
Subject: [PATCH v2 RESEND 4/9] phy: mediatek: phy-mtk-hdmi-mt8195: convert
 from round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20251106-phy-clk-route-rate-v2-resend-v1-4-e2058963bfb1@redhat.com>
References: <20251106-phy-clk-route-rate-v2-resend-v1-0-e2058963bfb1@redhat.com>
In-Reply-To: <20251106-phy-clk-route-rate-v2-resend-v1-0-e2058963bfb1@redhat.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>, Stephen Boyd <sboyd@kernel.org>, 
 Maxime Ripard <mripard@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Brian Masney <bmasney@redhat.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1601; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=9vVtfY2SWJyaK316COu6cQ1f5v68xmVdCSUMuW44eRI=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDJ59RYoBp++/m+KnEwCw2Xzg4JMM1sv5LqlTfM8z3Ft1
 oPpKx5c7ihlYRDjYpAVU2RZkmtUEJG6yvbeHU0WmDmsTCBDGLg4BWAiTXqMDOsmKjWITF6W1vcw
 Rsfl37GwV6cmCusab9l/nnfG61Oh2ksY/pdXORfMfrL0V9JrDfar8z4f2SCwtyM0bMnTN+tL1n5
 89IIZAA==
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: tPHleJsCR57mWi7OtjJwsBj6wn6mmud2qfKcL4QDgx0_1762471611
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_152654_065154_9AAF3B87 
X-CRM114-Status: GOOD (  13.74  )
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
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
