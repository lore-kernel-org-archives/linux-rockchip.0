Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFAB9D43361
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Dec 2025 23:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CO9hBJUj5rk8+wjgkoGgUPo76Uh9vQ3mV27/iQclCTo=; b=Wq8Xt6jwsIVWNf
	vpx5I3ql8DhyVZtrLSbQ3wqdNrSMRakwPaEKUX5ZSiD20U2d1fl8hOM+bftE40Sr61vF3O9JDISKu
	6Wd+7LaYjzPPt/X5JOlarKBmltZQL4Eo75Wzy9pCBGO4PMTNqqbTHMwOajy3J3hcmy5j0egSCGfyT
	UTqoXWPXxrQHx7exf1N4ZMJvhy07JduOMVwLImMhmpzqBMOY6U1MI+gl42G3GkJlhlh7VfGxg+pFU
	hQGg/CLuFYep4l7ivxvgfy/q1COoH/Uwg7BP7z58iQyOxlYCyXudgYG8i8ptlh1vIrFmf2Vjr4+Pb
	qXD4ZnQR1FAYvZtCKGUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpuW-0000000HOvr-2WAV;
	Thu, 11 Dec 2025 23:17:24 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpuS-0000000HOpO-0rEL
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Dec 2025 23:17:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1765495039;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bHDjO/kgoaGYHTOpTXBh+Ta+qpEREkcfpNn1mOnGExc=;
	b=LfEq/EQFVeplTL2Rro95hqAR76ojpWP9vEpXy/XI18GVljELgDAyiboEryqSEnOSbmssIg
	Me4Dscw5SRLR6UvHKCO4jsUR+jpWIzgn6dRyNfQ5APGw+GOhX+BdrYJwQDuTjRuv+rKfs9
	ydcaS2+j/AOi5unnEz/Tg6RvPvjfNbY=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-497-h7MGq0oMOQmDual-fI921w-1; Thu, 11 Dec 2025 18:17:11 -0500
X-MC-Unique: h7MGq0oMOQmDual-fI921w-1
X-Mimecast-MFC-AGG-ID: h7MGq0oMOQmDual-fI921w_1765495031
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b2f0be2cf0so178000685a.0
        for <linux-rockchip@lists.infradead.org>; Thu, 11 Dec 2025 15:17:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765495031; x=1766099831;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bHDjO/kgoaGYHTOpTXBh+Ta+qpEREkcfpNn1mOnGExc=;
        b=TR+vCZIa6mwAjj77vPsbUsr+GIUPaLrpWXFP9/niKIBL3kZuly91/4VYX5X+bwwItp
         Bu8NZ7tsFLgzhCLOh2BxCizASX/w9ZhG6Euw/Of3yeeYH/HAzwYLjhZak9NF9nH++THW
         IMOxf0ZGuTz9OXan3OlKtvebhVN9aqYTc6qpG3+bKpQI7Hpi6rtAZdsjzXItq6B2BWBT
         EurDRfcOVGE5gc3XsUvRelJ5RjA273oB9gS5BWdLyrH/JUKShhQeidi3+ysTr1Ltu75I
         37f5N42kMGtSXkKluyl8yOah03O3wbkAmCSvvayBQEOXTA0yMQMYvovzq10jcsG+aUBR
         CVrg==
X-Forwarded-Encrypted: i=1; AJvYcCVCmxLfyBRWlFDhQh6iH9+/eSItw6SPGG0cXquit+rAXFdl/DMP4/c1PdUeHFnhKQNeclr2WCKVaXKkbzx6MA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx8y+1KnOe+UW7YWuakuNV17ng1l9RjEjUZEFNNCdfJuuB7Qy+P
	6M4lqx2KdITSqz14xQAfOAufq85vwAKMImOyhsWDqyoDn2wRWsw8auSTivxGv/VrlRTSpz4Mqx1
	9e9qzvap6tvVjhFtinRiGwqea25NEoXDmbLU7bKyB9a7trw/G2ElL2zgl2qonD/JvIN5RgreDwA
	==
X-Gm-Gg: AY/fxX4ntXiFOjWNfjqNjPSSwaIHehdHwEoi2HlglCHsYNZDUcXKxajER+AUVaStYYi
	LD0PDTjo0lyvqDxIcwQIDUPdwznG59JiE83gzK/oOjdwM3Eosfr6TBOs58dzN5UB91nZokdQXWc
	oOBEYUCaL8VBTY0tETgbpnfl/viqVF0LA1heZ7U5TRpXPVvhtdh1lEgaFv1fwlMREBzGUEP/iJe
	5O+nBeHZrEf1X1b8nGkMHSwHsxN2EqUnamunZXNWhQB8rEio0wkK7sCuuyxGd1f68XjiXfJcXde
	mdWFARCqAKXfufAxWXSsPeoAy5tISCglPhF0ULQouKnUQg5LC5eijZ8MpWCAIa9fuQxN9JaZNaV
	YaG53Umh48CXZbFd6kgIyb1Jms6NRS9VvnIrznns57oHr+5tprpOISQ==
X-Received: by 2002:a05:620a:319d:b0:8b2:74e5:b11 with SMTP id af79cd13be357-8bb3a39c0d7mr37228885a.82.1765495030846;
        Thu, 11 Dec 2025 15:17:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGOzc1K0inF9u8pzCleS8AGBiFhiCFwZWvQwaIqfiguX4BE2rhrbkOrS1UeTFCK9BaNhdqc/Q==
X-Received: by 2002:a05:620a:319d:b0:8b2:74e5:b11 with SMTP id af79cd13be357-8bb3a39c0d7mr37223585a.82.1765495030371;
        Thu, 11 Dec 2025 15:17:10 -0800 (PST)
Received: from [192.168.101.129] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8bab5d4edbasm317873585a.51.2025.12.11.15.17.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 15:17:09 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Date: Fri, 12 Dec 2025 08:16:22 +0900
Subject: [PATCH v3 4/9] phy: mediatek: phy-mtk-hdmi-mt8195: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20251212-phy-clk-round-rate-v3-4-beae3962f767@redhat.com>
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
 linux-rockchip@lists.infradead.org, Brian Masney <bmasney@redhat.com>, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1668; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=9Rby/gTtrwRqsiL8QVGL8ZbeE5p6/9ylnJs1vpPUAak=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDKtAy5NFQ+IipFUK78RHpdWFHDi1cVcbxE26yeXHc6Vh
 O+zE1XtKGVhEONikBVTZFmSa1QQkbrK9t4dTRaYOaxMIEMYuDgFYCJ+VQz/K3VcuHa+5pQqd10Y
 WTnjKhPnpr8+1w5c0w2UTf/PFv5UheGfooXXh12n7AWuedZrRn37XS3jEh45cYbfFtUtZt8rQzp
 5AQ==
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: NEwmf5LCNW9M8XYaKkK2DCiwzaiEL_XyFi7hEaC5Pto_1765495031
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_151720_306229_81F5AB2C 
X-CRM114-Status: GOOD (  12.90  )
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

Tested-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
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
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
