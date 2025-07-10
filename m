Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6766AC83F22
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 18:28:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YPwoDTQ24VCf0W/CPxgU3xRCOw3qHe/iyPLuD+ug+Qo=; b=bRd+eV/Dh6Cd1F
	gB65ldTRM/oYaYDOtNpdaSH+mMWOMGVh9pwZJ6ff/FJWYohAENGV9e4wHk8bq2Kvg/G33rNNJpHeW
	TobQ5sqAlMBaCiFBt/6NzXIumM6ErWYtxvi16bNL3BWMz2bPtQtXUxwd/anL8DBnFa+M9vV0jao0s
	EFb6BWLBrlcR8j8bsyfmiEHUVksNzmn/QKFSWwxww7Td+6Oi70uvCsmBIqEwiyOugUcpdwgpWVvJu
	QIsRZEH3wky2m2qhLL05/M3LvIX69Qx+e3q5M2qwUWIjWO8vFXVnAsj/dFd4a4oxljCvyrXz9wfvo
	5hmBUltSFaioA8yLZsdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZw0M-0000000ChfG-07rv;
	Thu, 10 Jul 2025 18:28:22 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZtor-0000000CMIc-29UW
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Jul 2025 16:08:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752163700;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4I0PFIaMBaCPYEhsVGTxsNMaZSF2zv8K67vNW2wzfuw=;
	b=au7AW1rkUNG7VYbBZzDv+/zHuPheSmsvojPwptr2bBl7uclV4AQDIIZz1yPD3BlYlhHaae
	d8Jwi5fxW89u1mmji7JiCxK/8fTN7/P3HUkptJg/bp1Nk0y2O0tC4Qq7HygycatkBxAo75
	cim/DZ1Z7agyUQvbAb3qcqKzgRFf/2s=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-622-pbStCDMNMTeF-JGSpLwIng-1; Thu, 10 Jul 2025 12:08:19 -0400
X-MC-Unique: pbStCDMNMTeF-JGSpLwIng-1
X-Mimecast-MFC-AGG-ID: pbStCDMNMTeF-JGSpLwIng_1752163699
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-700c2d3f3d6so13261976d6.2
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 09:08:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752163699; x=1752768499;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4I0PFIaMBaCPYEhsVGTxsNMaZSF2zv8K67vNW2wzfuw=;
        b=hY7eeQyPvSs4ky4htJzJ1ddWebIad9odHhpRiSLj3zJnQvrTtKOWZmKwxTdRh3zL6O
         bBtB7PQn5n1ef5sTvQ+uHar9tlWRsde22xNMbN3U5NPwGcXQrUo3VmuV7r4UERsIcFsd
         6lWfUH9yB/4dRpYVdXP13FEAASEBAHicmBC7ZiUUYI9AY+1XYls89KFnjNmZisrKl0Qg
         b4Fg/6Id+WL+iz55ImK1uL8B1/QDJ911R1TPMbTQV1w7klSBowheA26atvc/IAq1QFgo
         X4XQGtokRwFUG32KWRzivvkdBOqRtanZyTxJhOK/fYKTdXMXsgSH2D08ZGzzpxjV0/l8
         3nvg==
X-Forwarded-Encrypted: i=1; AJvYcCVU38PZN506GcaZxHdraXHdX6Qi8qikcuFCWAVFZoMZvaT8SCP1xV/vaQJS5OFckz2Qx4UKuHQHYSLUEy2YPw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwLZigIxAAbaJ2io65bVJ8mA3iX+/Pp6PHPdZ0Lb2fi+9v3dUsO
	oCgrg/AUUMJ0HnoGk/bnyZZ7JlRyyzFJEB4R4gNLw1jL2zc9E6Bf5whqeqXZc1FKtCXOyEyZUii
	ona/f+VKDt3nJLJzkC79yTHGccwJ7HPxXpIMa+AnFV4ZBPFnDiEghwzput8YTLkphXGv6cVNrBQ
	==
X-Gm-Gg: ASbGncumjNRkvlh3Z5xD6QSEyOmRshtCPiiV08FX5iDSH/0M81J2vCQMQey7gme4s4q
	Z72O4g5OoQmJcksHWepuUIaDdmwNs3PriXvXPq2lYCGUeyoHTIEDBqZrjBP52iArOaduckPYV0X
	uYa4bOTS3+9h+rmQpDVxWZWTRzxKgUtDnaWRMyttktcS2eZD+YeNLT79k3c9is1CiK3VdfyA+sw
	HlMxelWk4aSc/DbkLYHYn6Iv0mdWkrnFJZ8YgVNNT8pWfEdca0A/fXnMO5Lqr4xojNBmNIZHebF
	3GZLQRJr/IZ4JpZxbcu8huZ3EtPUPZOhWiA+srI69dc65IbGutHgHeYuw5oM
X-Received: by 2002:a05:6214:4a84:b0:704:8aaa:319b with SMTP id 6a1803df08f44-70497fab6f5mr54886686d6.7.1752163698885;
        Thu, 10 Jul 2025 09:08:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGPjEiUWwXCCHctPequGjvxsmcP2oTYR8PP+05MEZihcEYQLxAz0y6yXBwiYJgaIGBkfIQAEQ==
X-Received: by 2002:a05:6214:4a84:b0:704:8aaa:319b with SMTP id 6a1803df08f44-70497fab6f5mr54885916d6.7.1752163698330;
        Thu, 10 Jul 2025 09:08:18 -0700 (PDT)
Received: from [192.168.1.3] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70497d39749sm9670216d6.58.2025.07.10.09.08.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 09:08:17 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 10 Jul 2025 12:07:14 -0400
Subject: [PATCH 4/9] phy: mediatek: phy-mtk-hdmi-mt8195: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20250710-phy-clk-round-rate-v1-4-0ff274055e42@redhat.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752163685; l=1601;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=DwS1eyPB/neaQufQvNJoTsoU5XhXKJIB7F14A2pZwIo=;
 b=4cPcXNvbK3LJUngty9/hS4Cci5iNskdrVCzBboRgMF/vVZq4JO3qCRcMs3ZcshnLpFzqFvn2A
 ZJ4lm2QjCh4CBdhbHz6OimHjO2IugpTJTJVBSFGBISv7EeMJ0RGydsb
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: gny0jN7vkn0OnDlbuSCB5LzTBb79RZeP1Zk6NczJv_I_1752163699
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_090821_625233_0D3CD463 
X-CRM114-Status: GOOD (  13.12  )
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
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
