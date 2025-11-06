Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF57BCCFA05
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 23:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PHw9fIFBiXHCNHGSPMgKV+F7HYJZ3Mx9kT1gCdnmxX4=; b=nczBIVhQR7Ed5n
	unBcp5afNzCBtq7jfa/Z5XQqr1ELffTeE5ZmTYboEMXNlWNi00WhgKV/deNYwJ4Gj3LTS4XpS7lrB
	JTJ+Q1gOJkrkziS8c6vg5r2dlSy0Z4Fag9Tap6UiArB1FtO35gARS/Sn8DZCBxyHRajIblbRLBdON
	Q5fmnTmrgv63C+tx73aJwUyEvN7Q9zyH6PRI6HucihnDhBxt3JWGlzb+d8k8mcW0qp8lsHD5ihm2g
	hitNjCRNjhGmUBoYGDFpe0YJBvKQP52zIv1w5TcOzGjVpdo2GTx5bCOcnI3fHFGezv88z9F/8XXVl
	CNoJr8BnS1RUCj1CJbKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH9Nk-0000000GNRu-0OZx;
	Thu, 06 Nov 2025 23:27:08 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH9Ng-0000000GNKs-2kjH
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Nov 2025 23:27:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1762471623;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WZVea0Mun92OWS2efd7OZNCrg3R5Kgv6X7v7bFvHs04=;
	b=REnJBDNdHw2yfQVMfGil+YuJgsKIBh0ecHvcr4wXUREiJUrT8EpVT5Vbgpah7fkwSOYX23
	tlcJXRRgUs6vZb3yCOp9Ud0VP8Z/qI2G+/oGajRTq1T1FOxXQfYS+ZkYSXaroPzJ2eEOG/
	YQmPKKssqIlTfCLFYRL0kgbkO6gS1rs=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-613-FY2YQy8KMByXSY4vFYWisQ-1; Thu, 06 Nov 2025 18:27:01 -0500
X-MC-Unique: FY2YQy8KMByXSY4vFYWisQ-1
X-Mimecast-MFC-AGG-ID: FY2YQy8KMByXSY4vFYWisQ_1762471621
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-880441e0f93so5340206d6.1
        for <linux-rockchip@lists.infradead.org>; Thu, 06 Nov 2025 15:27:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762471621; x=1763076421;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WZVea0Mun92OWS2efd7OZNCrg3R5Kgv6X7v7bFvHs04=;
        b=CmRiG3LLe1MdUPVQ2QyWZlbHr/BXKxRxUtGcQlcSRiQA/VUEn4UUscw8hbzBJPcnfZ
         m+v2W01kLd9N7Lq4X4gt1XRLFJ6gPcGxwxDe5m+DifdWD6rM8I1mmOCliklyALNtoqo8
         mwwDb73MOTtjWv34pTU9Q7dyLUDym3D5zoOCzozkB/kQMau7hFP0OagXH5kgZgW3Oyfi
         Ex5tUqP74kFyQ50/4489QfGCAgU79jqNWFekGGk/xfnD0owae9uk8GRMVAYIJcitbvoF
         a8bKq1CCK76KMT6xMVIM+FIncjNlEDhlxXid7708DEVMIO6ExWo+oxMZRXFKj6BAa7oG
         sBUQ==
X-Forwarded-Encrypted: i=1; AJvYcCVyL0DTWGgNxYK1zie0ctImpNhrYYXEkXbteTvmuFYhb83D5/tQSJOrg8qIXHa2oRhacHag5jYYVcjWeJmsXQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw5lPcQc4NZACdxQgG/KNntYOrlHYODnTvYW9CSt0KJBQN5SNTD
	rk5rw50oLV11sVdW7nyIULRKlhZb/yUOM/YWRPLmiMoBw9HgcrQQwsVnlLqwxVjY5d2r8GDfAFW
	riLnVo4s8rq3f5Y7IqttoFUFNnTagcM2WIffbOeWalbiEbVOhWcpmNE14evl3JS9ToLkPz56SZQ
	==
X-Gm-Gg: ASbGncsGoLq1zMhFoaqfNteV1V1d6Vf2VvqBTHpSfLYxNPqiv5TJT5X+wCX/HPBo2LQ
	PYbTqFn/vkXpkMU+Q9zEc69hyUK61lfoaHXPOwZXQk4MlsEWIzCZqHE1+o/sbADHbMiRG1uiQfI
	rqvmNtUeoPzZ4YUN6PZZps4P54K85q+tnyshIh0rKt0UWHsTnRKM/539pHLYW6bZpWt+f6ju3cW
	KZSFA2LN/OfDk4CBQ9/kWPLyMCMWQw3/Qegm5PzqIaBdf0J1ucz7QJGtr9n8wUd34CqNa+6oaSO
	DMZ9d7Gxedfd37DjuyFGM0Ay+WvOnbhdlgFIHaSgTklKT2sjMW8mxDvmi7EcGg1sP+RkBNx+s+Z
	teBbggd/Xo57FRAhp5loNFFWA10KDtXBNqHIzNkteQQ==
X-Received: by 2002:a05:6214:4110:b0:880:53a7:a445 with SMTP id 6a1803df08f44-88151e4bc49mr17960486d6.2.1762471620720;
        Thu, 06 Nov 2025 15:27:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHtHpA4COaBy2TQDBCCELqXAf0sfk+lQ3jKjHR4cm3lLWRVAj13ngGgT8ax+bpg/JoDlCOeww==
X-Received: by 2002:a05:6214:4110:b0:880:53a7:a445 with SMTP id 6a1803df08f44-88151e4bc49mr17960216d6.2.1762471620343;
        Thu, 06 Nov 2025 15:27:00 -0800 (PST)
Received: from [10.197.115.224] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88082a3aa91sm27389196d6.56.2025.11.06.15.26.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 15:26:59 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 06 Nov 2025 18:25:52 -0500
Subject: [PATCH v2 RESEND 6/9] phy: mediatek: phy-mtk-mipi-dsi-mt8183:
 convert from round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20251106-phy-clk-route-rate-v2-resend-v1-6-e2058963bfb1@redhat.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1507; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=pGum4msvOB3xDDFVObf0RbWafZEF5jMmYiXTVfgLr2I=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDJ59RaqnVC7xubvIvpuN3fZv7sHddmfyK78rtPpal0bY
 a34zmpPRykLgxgXg6yYIsuSXKOCiNRVtvfuaLLAzGFlAhnCwMUpABM55MfwTzdcOk1ownJ5dj3F
 lEqP2+cWf1utHLvJU8rLrrGyvaomjeGfmciaJ0/c/+l5/550WeiIRfKndL0k6eYkX0bZkg35Iam
 MAA==
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: mdL0Wi_XNkrHc2qyvzt_W_klr0--vBXxVdlgLpxeXyc_1762471621
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_152704_803858_A0603114 
X-CRM114-Status: GOOD (  12.50  )
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
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
