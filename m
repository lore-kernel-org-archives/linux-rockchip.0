Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46037CCFA1A
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 23:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K3KdwY6Uanwn7rnrOAoSMD1uQD7/K80zzd+YoYhV46o=; b=bQ+z/68SteGbvZ
	ZhvlVu62aVDykgyYdztZ/7wsTi8hcetsY50B7N3F5jjx55iXA/esydu3xuMmGGeTIzoGUM/3aLgaX
	Zq50REk2+vv3K3X7UbsBgQxwKE6f3AbgtIYH2BfMXaQNTtOJrhGcQ+R3C1LkolivMEYFafHuHN9P1
	dQlfUdmzKomRnx/4FzMvArQb+jetDjTtjDiZA3m1zC+rTjOcByK25wGQUGuBLRbX9Gp+Yn0qbxbuw
	l5jGSGLpfURNxIM/jbcRG+zv0TBPR9RM+dg8zoljZYr5MvvlNI387ui+1yX9/A81aHoGHR+SIQvii
	hYJT8iR4dtZ0upx6F3Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH9NV-0000000GN4u-0HZg;
	Thu, 06 Nov 2025 23:26:53 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH9NS-0000000GN19-218f
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Nov 2025 23:26:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1762471609;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=akq4xHfr7o1c6LF1BQGU3I527bH0Z+3rmigIHrwqrio=;
	b=YKtMBEe8v/2UGAuxlyi+l1w7adiDv7c3g5tBzp1vWim2m4BXs1gKTeAtj/50fOr8HChUBO
	QOIW4tl1cZleEtSMl86UldYWNWKyNjmn1lWjNVkO6uDksOYuGdpuGyE9cpwv/S4vfCxLFd
	hPBqwT7Q78562VI2ztvh7slAHWg5wWU=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-461-7DOTzFNrPtm415a_3ggPmA-1; Thu, 06 Nov 2025 18:26:46 -0500
X-MC-Unique: 7DOTzFNrPtm415a_3ggPmA-1
X-Mimecast-MFC-AGG-ID: 7DOTzFNrPtm415a_3ggPmA_1762471606
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8804b9afe30so8289316d6.0
        for <linux-rockchip@lists.infradead.org>; Thu, 06 Nov 2025 15:26:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762471606; x=1763076406;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=akq4xHfr7o1c6LF1BQGU3I527bH0Z+3rmigIHrwqrio=;
        b=QpdFKdRUgAEXgTm3UDryc4qRQ7oDjTuN8st05zCow7DkXQpVIstaaochdyrNdQxysV
         9e2SWjPP1ixMcJy9b9sPGCunxtbkPEhnBUjye+xrZhgoK8wZNW/99/O/Ip6qUQQddB+E
         Fct7guYC6qY8s0dOBSRgjKCd8aYTBf9oA5e2eqneynYdnmAg3E3jG+PDioJonln+vnKA
         cJXeh/NZjRbRi5w/GbcZcIoe9KZqhfJYjUEiYoLalditd3sOw7s1b3Q2LPWiUFsU3UOk
         FZBM4ZgmKbMTZMb7HGFDwYzL92hxiWtzC36lXP2eIDaa3HQXRWI66qJWo65NSV5VuqGY
         2w4A==
X-Forwarded-Encrypted: i=1; AJvYcCWyEkx/4V5mZJm1m5WhPPsc+ok+byTuA/WJA4GLoBiGd6swVCSnX6NXVdGC84gqcMs43KcegppvEC4PeWtmkQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwdA0cU5nrXsCMv2Qmwc+OqJSRPeK8QTJGGdlnVVI08UpYQEGw2
	2tOEWoyLSyub/VDusjchbEC7QP0xjyxUzQ/L6iunDrDQ0JGiFP3aB0xMnldBDiDhfpS9/FzZg/g
	Pl4TxyiqQYHTuLQIMN6zKexA8YhsUU/XtZNqVGJ0VhACWoJlPc9R6d66+MsQLZjkrSeLmMdA72A
	==
X-Gm-Gg: ASbGnctlIW9I6ZhWy/ZHlRrD2P1cdqK/RDWyztk4xgB4cktYbHRBSwMOoPjTgbrc9pD
	wtQaK+1sqeDrWUSpEbZUHuAUUUMLn5LhvAVe+UA1hE4Q5GVBT4kPOmyDLwnZcoLWpyXz9TaSfna
	nF9CH0CfRD5KHQXKPi9cV1RHfSQqlkSeml39gx6fST1UkQNgjTaEe6SWcygLpgaYOJlDO2KLxzX
	iv3/L/15Yc34qKpnu5IzHgvPCa5afYueLQ5/S65woZT4AvCdJOr8RB4IkiqAE2naPAQyttDAGu1
	F3zb8D3x40GjNVJJRQ8L+8V0YOQrCvrVSRbLobj/gbtlOnseqpg6MNS8IjkdsIjoFBofgz5B2uj
	s6DDeGtMsH5IHEt8y7WZ5VgNcArAvPDduXMwxHdYhkw==
X-Received: by 2002:ad4:5ced:0:b0:796:5c30:b079 with SMTP id 6a1803df08f44-8817678d8e7mr19315976d6.43.1762471606037;
        Thu, 06 Nov 2025 15:26:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFHwlRC8CZ2UFXaZBcGupUhAP3gsyq39my6h5pJeWpOeH+fDN/RFDAKGIUl3UBkcMQENq+LCg==
X-Received: by 2002:ad4:5ced:0:b0:796:5c30:b079 with SMTP id 6a1803df08f44-8817678d8e7mr19315736d6.43.1762471605711;
        Thu, 06 Nov 2025 15:26:45 -0800 (PST)
Received: from [10.197.115.224] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88082a3aa91sm27389196d6.56.2025.11.06.15.26.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 15:26:45 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 06 Nov 2025 18:25:49 -0500
Subject: [PATCH v2 RESEND 3/9] phy: mediatek: phy-mtk-hdmi-mt8173: convert
 from round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20251106-phy-clk-route-rate-v2-resend-v1-3-e2058963bfb1@redhat.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1767; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=N8o/S8JYpE+P94OMt6ofvyUqz51LnCLNCgONjtOPtQk=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDJ59RY8/PBwxpQIzmk34ntPmseIsDDNz1O4qinfnm5ye
 e/uLa+0OkpZGMS4GGTFFFmW5BoVRKSusr13R5MFZg4rE8gQBi5OAZgI/3lGhl3u+fZzhdU+/Dze
 fFh16+5wt2rZRwu4T3yXfO8lq/V7uinD//wHB3T5l/r0mnFP1Vf89iOU+XbonQtZOUZNP5rz76e
 cZgAA
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: nwWBaWF3KxVvkQ5Di7JMKe7wHxnphgrmOPbWYCVuf2M_1762471606
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_152650_592797_1D46DACE 
X-CRM114-Status: GOOD (  12.97  )
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
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
