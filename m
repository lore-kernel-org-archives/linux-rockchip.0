Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3E3AC83F25
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 18:28:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1OccJ/Ec63Mjn4zjLGF36rXA11L5D+Z7mcfk+j0866w=; b=xqb6W9/GDc+2sH
	fmdGJ8rTuvgPyixA6OHYFaUofej9O9UHcZ/v/bjR39HUrLzO3Nw2bN+sVbwGJgWKz6AAnHyvMW57s
	4vRrkcCqifc93fdAqL46S5o8HmbZYZ8UizgpNsTCf3kF9+x9S2/69n/iGbH53WS6unlPEZciX4Ug0
	KIRMVkSlK2A7z2r6axuU0EnwT1+yFqN+EBxuXpfJm5Q4Efcob9SgmcIx4ms7b+YZiUhicvdBUE2K0
	iHDU4tya45ZYIunzEfbQbEBfUM62t+iDpCBeukC88fGHwU+zHaGcLnBNNWn4tOeMxJVQCHeFQuZnt
	1oZeSRdHKKc1hKDq7ZHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZw0M-0000000ChgV-3gS0;
	Thu, 10 Jul 2025 18:28:22 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZtou-0000000CMKV-1RfS
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Jul 2025 16:08:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752163703;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/4ASla69sSqfjU35JM1zsmkkZLK8k4ITigVacA38LgM=;
	b=FbBF8Vr6ZbUJ/P2QDwtTKf1MK3cEUNVExVD0L1+jUwMcQYOUZU4VxGMMuWH6Q9Jg/tSHBo
	owkoqvHFl0GOX5zNN0Wg4Az9j1Tqy9B6mkxJ4iCftCZ0vutOZLmZ7wUfGVUxHbgQvcc+N0
	0OiY70YHT6DJEfik3cxIs8KYjGxdpcQ=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-248-q7BpuceLO3WTP6wDIk4hqQ-1; Thu, 10 Jul 2025 12:08:22 -0400
X-MC-Unique: q7BpuceLO3WTP6wDIk4hqQ-1
X-Mimecast-MFC-AGG-ID: q7BpuceLO3WTP6wDIk4hqQ_1752163702
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d40f335529so394812885a.0
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 09:08:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752163701; x=1752768501;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/4ASla69sSqfjU35JM1zsmkkZLK8k4ITigVacA38LgM=;
        b=nyW5AbO2Lfu0l6TZiRL5gmKsEuFKP4PdwwSBdoTgj7o2cGuhbK71Cgm/BHTecT9l5e
         qllVInRVuBG0uCUyV1/TetjLJZv2j7dwMP906dj/RPg91BbPVgIKTUGnCx7OPYg9dQSK
         HKY0xv78/dMmstV210VB0TwVFYKHwI5gVBQsK+vgFgsyHj9JRZUte7qnFEVbaDQCFDn/
         6vPN9hevNnZXA/lYqESdjikSGbohK3A1vzutVKuJTJttiKg7K3Xe/TG0s7Jy5I+f0yH2
         UXPOUWKXQzArmLcQVayEaFyK5cb+HrC0JxAD1QfEFT6NTLCJnJnbL6TyG6qyeT++xQGa
         2qmQ==
X-Forwarded-Encrypted: i=1; AJvYcCXeu37XJ0sMWu9288flQ+cTOyY8Ji1OzPrRoTxOAG/gV/0gD7IIb7vABlO6KS1ZP8XrUgQaAM4msihQVYBmbw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw/V06CleBOpeKMzpz4CZxeDLiWzgffGnp29f6ja9RABfNFw5a8
	uLUP/yf/GWTsBzgCXefPj4Kyn8HMCVV4w+BwCuaaAd0qK8qzGSPViroy3Hmj456DGHhQRE3nqbE
	CYcbgAEX0wMX5bghcA40Je9o2G/g7bOgYEUDW2IZv05wJieUv8yQimKi7FpIlQSFE326mafQ9M+
	WFkZHeaw==
X-Gm-Gg: ASbGnctQRs/nH7kqedgKn4sSqVluoDIWwhH+C4fQkxs3E7i4ZDBqB60u3brFjzKSQ7e
	VejTCZGkAe8Rebbs3QHR7+q75i05F7N1VK5OBmwaHQDzJl2k2sPD6rLlw0eHlaHCQL8EGZkM3st
	Q/ld0DSuivl8BazFxBJPQBuxt9Of/GjcXNurTZ2k9hS5Y/RytXhwY+smSXRPaD/nhnmWHFXyWLX
	9fptw++OEAyz9+gsTCJoTWAZ342s0b4nXOLUkOAkfzrDBo0MPUnUFBlhrV90oKfcYdycILylIHH
	i5xHDGNYSc5ikTk89+VTijc0tcbDI/diciehXkkJUkY1SfbdKdRoH1KSVfnV
X-Received: by 2002:a05:6214:54c2:b0:704:9584:c370 with SMTP id 6a1803df08f44-70495a595bamr70247666d6.7.1752163701097;
        Thu, 10 Jul 2025 09:08:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHDRrDKWwpckJ37fdbyhC+PMLfUgyhQZCTV67/zNoDsc5Ut1ZyXEkNXO6Agbo3M33HxjAj7/A==
X-Received: by 2002:a05:6214:54c2:b0:704:9584:c370 with SMTP id 6a1803df08f44-70495a595bamr70246876d6.7.1752163700571;
        Thu, 10 Jul 2025 09:08:20 -0700 (PDT)
Received: from [192.168.1.3] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70497d39749sm9670216d6.58.2025.07.10.09.08.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 09:08:19 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 10 Jul 2025 12:07:15 -0400
Subject: [PATCH 5/9] phy: mediatek: phy-mtk-mipi-dsi-mt8173: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20250710-phy-clk-round-rate-v1-5-0ff274055e42@redhat.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752163685; l=1519;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=Sp7TBqvADBjUTdYv865HJDuwxPugQD7l6ebJ7mJAKsk=;
 b=QdRXZy3WXcCDAKY+nITPfzBZtQ8RpvdKNlvOltT6ZNVcwHEAkVhWAcnk2UBWK7KubiIjAaW2b
 RaP8yKzs4UnCzedb/XCmTGOR6M6qboXHNuqR38QkPjLse9NBJ4Rx33V
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: XT7593XW9iRGSFJhRqgD_lTt27CVFGR-PraOCSXb1lc_1752163702
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_090824_455721_EE3848D0 
X-CRM114-Status: GOOD (  12.12  )
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
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
