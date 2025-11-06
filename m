Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C08A1CCFA1C
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 23:27:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DOCknEcriyNfwiWv8MUdoGhFWRkqz1XGHYIYT3MjoYM=; b=qa9MCU+nctCxh3
	VjGkFuxVX8SLMwC0pP4NFfEs2j7jH4jYR2IC3rkJeMBNC7MTkOuV0lMMlLUUTbjaqC1m1fvPpIIrW
	89tNqkd6BqSzOZOZKQGcAZYApftcuK8UiYj6SFwjUYK16TnQmCl5KA0XhJFsJLaq+MPq2RRTJWxuy
	afWKQmtB4QUVC0pdsqfur/Lhi8CMckfFOTR+hq9jrqitDDfIZqnO8rE/NERjI1Y4RrTE8xDi5YG6Z
	MN7gR/Ml83uz+481NRrp4Zd4r84T6pPjtcvqzMmgjDTl5fseoKsAhHV2VV9878/PPAhqx/F/EPfsW
	NaII+L97xUvsJy6ibQxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH9Nx-0000000GNo7-38cA;
	Thu, 06 Nov 2025 23:27:21 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH9Nv-0000000GNiV-1Tte
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Nov 2025 23:27:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1762471638;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9L/sBg5p+zCSkuU8Rgk43t0p2SpxKRb70QYldBV7fzA=;
	b=M0/4RRD73TOjOC/srL/Zti/d6viNCFQvtfaa9Xoq7aGJau98zKpF8t6uqpZMsdzPrL4fGF
	HsGKd0baB9Gi2GuPLRf3mLgnNEUHQYnmhEUUgAwjGsOFY81lI8RvEnxKBKpDwO0kXh6gUX
	5/PKn77fFbON30fUt9NrWZQaUhZGec8=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-10-EpcHQmlZM4SZgSjUcmIOqA-1; Thu, 06 Nov 2025 18:27:17 -0500
X-MC-Unique: EpcHQmlZM4SZgSjUcmIOqA-1
X-Mimecast-MFC-AGG-ID: EpcHQmlZM4SZgSjUcmIOqA_1762471637
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8804b991a54so6426086d6.2
        for <linux-rockchip@lists.infradead.org>; Thu, 06 Nov 2025 15:27:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762471637; x=1763076437;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9L/sBg5p+zCSkuU8Rgk43t0p2SpxKRb70QYldBV7fzA=;
        b=XHn9dIQixAL7v2Atu75m+YT276HSMUu811LtrNCWUFZzmXybgPr0Zf7KnnYIV//n/4
         Z+vypSrvRS09ttawLR6pSeQ9rMKDpFpbomr5E6wCyk7ygO9M8dc+vBqkeqszJOtBcaVK
         eqjuR81za6ETHzr7xd4f/xoP+U/GkpUbV5Ftiw5IV3ASVmIuEMTyaalu1f24/vZKTa+B
         t95j6ptRmuCyX54in1z5P++FTYrkQNUh36Ewzq6CHq5J2xQ1lt7IPQny0qMER5wOEFtf
         VzxyDSIFyXotyz3Z9JnhDRV+SZSRfxSfu8jUeD/beyQkWF2Mwx7Tm/LKOEN82axXptxG
         Wjmg==
X-Forwarded-Encrypted: i=1; AJvYcCWp7RKQ6EyhIilGuYAxkjwgq0kPKUzakYtpvNy8oR83FKI07r6nGZpua/rA7KThXaEzUYWvpLWOHNTCj9M6Gw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyZHuvHrG5F7+RAythjB8E3nIPAegmadfbktmaRp6pg2xDaEHd1
	51faX3Agg0TysxgWf+6WkknSZoaR1QTQHmsp0oRHHynOjNiMrrCS6fLkSI6cbX4g/Uy8UgnoTlH
	9buV5GRwcRI6xtog5Fr6nRxmH7CaJTdqRztJIkZp2dYP0z7+pZp5mKO7NdMGHbKtRGowq8BHlkQ
	==
X-Gm-Gg: ASbGncsN9j+I5/B5Wq6qDz7I/31e875peWXCObGQL6Ghu7mEzrv9Mm/C3EKiSQokIjy
	aXu7A/b6CU4WXPkYVlqWp3Fo3GzHEj/C+r3vJNMJ5Hv8/vZSPleHcl9Q9wPZmzzC186nN7UMZSm
	Ip87cx/JfeIW4d5aQXnjPI8fnZ/0UzzQPehdRVegYGXEGaMFH2KpklRqWSBRq2R8r1XjXNgI0X/
	qDuhcB+yYf9s1vc8cdHoeNl7c1Q0Q58hdfOERuC61IINlcRMtJTJcwuJZiEQU5faw7+iyowaX5e
	XEsirQ28HYaIqikdZZ9fDyxYvhGZKvs3BHkb55HaeKDRT8mGlv6Xuwf+GoWaYHLcj+uTsxuSA2i
	Sp1+4PGszSREaM9LFVfiM/Zxvbv5AbDpz2HSW3Tk0yw==
X-Received: by 2002:a05:6214:810f:b0:882:2b58:af05 with SMTP id 6a1803df08f44-8822b58af3fmr5877076d6.48.1762471637084;
        Thu, 06 Nov 2025 15:27:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG1XCrROxUSSUDeHa7EYXOjY7BlUSEU+1KN5k26BLJ97420LzOY9XBUmBbdolqjriVUn6gaKw==
X-Received: by 2002:a05:6214:810f:b0:882:2b58:af05 with SMTP id 6a1803df08f44-8822b58af3fmr5876876d6.48.1762471636685;
        Thu, 06 Nov 2025 15:27:16 -0800 (PST)
Received: from [10.197.115.224] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88082a3aa91sm27389196d6.56.2025.11.06.15.27.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 15:27:15 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 06 Nov 2025 18:25:55 -0500
Subject: [PATCH v2 RESEND 9/9] phy: ti: phy-j721e-wiz: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20251106-phy-clk-route-rate-v2-resend-v1-9-e2058963bfb1@redhat.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1629; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=9iXptdlJzmQYbdsB4jJh8DRjbxMfRMBdZBM5EQuFpPo=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDJ59RbO/3Cz6ImvwxqVjjs9Zh9cXkt4xi/3tFVrrZvCq
 FzoYa7RUcrCIMbFICumyLIk16ggInWV7b07miwwc1iZQIYwcHEKwETctzMyrN97Xj/FqOTyx8Oe
 BVe/fe0KOWr9ZnGj8AlvNc/C2uUJqxn+p125kiPwTLJszq/Ph01tT7ZsTxc15DEN4BHV5fj7Yrc
 TLwA=
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: zYVOGbaeYTm0OzoR5OSBNQ6vHeHgnV32_dN1mTrkqOA_1762471637
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_152719_568098_22951085 
X-CRM114-Status: GOOD (  12.36  )
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
 drivers/phy/ti/phy-j721e-wiz.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index a8b440c6c46bb0c754845655f9c2c0ba6b435b8d..cbc98d4dec74560e6403fb899ebe2bb916440f45 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -934,12 +934,15 @@ static unsigned long wiz_clk_div_recalc_rate(struct clk_hw *hw,
 	return divider_recalc_rate(hw, parent_rate, val, div->table, 0x0, 2);
 }
 
-static long wiz_clk_div_round_rate(struct clk_hw *hw, unsigned long rate,
-				   unsigned long *prate)
+static int wiz_clk_div_determine_rate(struct clk_hw *hw,
+				      struct clk_rate_request *req)
 {
 	struct wiz_clk_divider *div = to_wiz_clk_div(hw);
 
-	return divider_round_rate(hw, rate, prate, div->table, 2, 0x0);
+	req->rate = divider_round_rate(hw, req->rate, &req->best_parent_rate,
+				       div->table, 2, 0x0);
+
+	return 0;
 }
 
 static int wiz_clk_div_set_rate(struct clk_hw *hw, unsigned long rate,
@@ -958,7 +961,7 @@ static int wiz_clk_div_set_rate(struct clk_hw *hw, unsigned long rate,
 
 static const struct clk_ops wiz_clk_div_ops = {
 	.recalc_rate = wiz_clk_div_recalc_rate,
-	.round_rate = wiz_clk_div_round_rate,
+	.determine_rate = wiz_clk_div_determine_rate,
 	.set_rate = wiz_clk_div_set_rate,
 };
 

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
