Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90750C83F21
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 18:28:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wOJbdSsRxkPbgFHhB1/Z7wasEYEygaG2BDbUbY4QE9E=; b=qDVoCNJHRGAXfG
	pg4xZw74dRcjIWXitIPvfU4OXI30T8rmkFdWHR1mNzrWzq2pN016b8mK0Z7AhX+dUqF6bbOUVhb2T
	lKEyXo07bEUQE9gJsMToT4TnzNFAIqSkzK1v6pdBSAx1FsEcZf6AI0qZYQOMcnek0EkYbPebOIdSn
	U8e2X3RH86K79q3votFrHQ36WFIW3IGP+pzpAcXjDA6NrZsjodrMpmDA7Q55SVPsQ7SIqv5dR2xvW
	/hiYLJiwUpshNtzMLoiBflsbkSxB2r9HxHjK4F1w/GznXF3gHiQXAACWv+zGx/jvHBkgL2mH6Qh0P
	jCwkNxSRHFuvxAw7D2VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZw0L-0000000Chex-2cP6;
	Thu, 10 Jul 2025 18:28:21 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZtop-0000000CMHS-3HaE
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Jul 2025 16:08:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752163699;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Em92yw37YUfd/ntHD3Imspo2RSo4KaG6Dl0swLQCNKk=;
	b=HEIAfX84M5YAi4Ns0L12CNhZ4z2PgGjTuV1MlSkH4j7iURC4Ybmawh7LvelflgpLJYjal3
	Iik8gthP5xguJ24LvNMOuI9u5NIGksa70we3OZZinPWRl8tJYL19YDq/uoJR935hJ3c3Nb
	AG5WVLVFmoXiexhyjaIH6J8UKcaTk0E=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-637-Mpa8AltjPvC32GyGd8Ru7w-1; Thu, 10 Jul 2025 12:08:17 -0400
X-MC-Unique: Mpa8AltjPvC32GyGd8Ru7w-1
X-Mimecast-MFC-AGG-ID: Mpa8AltjPvC32GyGd8Ru7w_1752163696
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6fe182a48acso42940536d6.1
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 09:08:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752163696; x=1752768496;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Em92yw37YUfd/ntHD3Imspo2RSo4KaG6Dl0swLQCNKk=;
        b=C8YFCjuMyXW+jP+RSsqcNBY9NnnbMCIAVKt6ZrJVeQkXdcIjEHY3RlP+q2Wppa3wcR
         remEVlYNhiZCNsUAHcUaHB/VyQ6WeoIr61UXQa7K1wb7tZUho6SUbbrSMKtdS3217Kb1
         uKuSTZoopCRgdNM2SJYWRfCqm5BG+/PoGUJL96To1Oham4E9wH2OVI732xOduEZMB6e+
         xbHA+SaobD/IlX7cUx+9cM2Y/Z9e8A3IhI8JREpg/SvbQniVqN690AOvSVWS3thj5CaE
         PwwGK9WxioctAItyppNDotDu294mDELr4K5J8ROQUR1xZyVGT9/GKBfWf82GB/zPj6Na
         MSow==
X-Forwarded-Encrypted: i=1; AJvYcCW+UnjlXO20FEkSguZej87Vpuk2AvRE9MZJIsK2n4dMGyEVCSo6SSExR0AIjxeNUPvkTng3oQJAKohRekG2ig==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywxq6E6YYOn256POGN3CyZO3D2BDlryZ+kn+9gwVRldBnbntBmd
	tXc+tzeHm0H/rpw72rHx6EYqnDucQ+6qNVTO8UHQtyZsvNUhSj0M5kHEfFIe3r+ofj4wIOYSB/Z
	hWLZBWU2m8fNrfq0tmQ/xfFSQdOy5oSwK756QEZXUgxVmhIsRnP2PhzsmpGaFzV/xAX/o2s8Jdg
	==
X-Gm-Gg: ASbGncuxnEow5nNihYJsBhygZPZf5Puxr9iG5ssyEXYphdc6Ib3SzkVSy8Yt4/WAUUJ
	jo9/AN4zphOyL8OMZrqYa3mQ2lPI4FLPzAffv4UeF4S8JX968w3INFvylW44fus22aD95idFTPd
	CayVgPBk+dk0kaD3o8i26th4Ua473hNlAt5x2lX8+7lrGfhrk/g3FGhO4cWAUaP/Q6UqvcO78jN
	Yr9fOHW3IqU0C5JCcASdwGOyUIZ3vYq1uxjsJpMDXkX2YRMDM2CQCs/zvGwYuDgSh3bFpKQghBQ
	8ropksSQTxgcNL0Ks0PcUg6q/nnboj9YHAZRkkJgPKGmEmohRIp1bROmjF21
X-Received: by 2002:a05:6214:21c4:b0:6fb:6913:868d with SMTP id 6a1803df08f44-70495b03340mr56700686d6.22.1752163696335;
        Thu, 10 Jul 2025 09:08:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGLcSXwBvzMgHcxvaGx+jxenoScUgyuQu1/XLMH/JsUnJsRg9oDtwMu2U2WZdTeBYZEBbFhcQ==
X-Received: by 2002:a05:6214:21c4:b0:6fb:6913:868d with SMTP id 6a1803df08f44-70495b03340mr56699946d6.22.1752163695850;
        Thu, 10 Jul 2025 09:08:15 -0700 (PDT)
Received: from [192.168.1.3] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70497d39749sm9670216d6.58.2025.07.10.09.08.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 09:08:15 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 10 Jul 2025 12:07:13 -0400
Subject: [PATCH 3/9] phy: mediatek: phy-mtk-hdmi-mt8173: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20250710-phy-clk-round-rate-v1-3-0ff274055e42@redhat.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752163685; l=1767;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=4qM0ky7zv1CT6MbG0sETVffzH28Znb5sgT9aMpTi5PM=;
 b=OlOFj1qtOHlC4RTSWWBUoK0UK6p8kJw7bEiAXyh697CDgkPWtlCgHYWxO4MvlcT4VtmGy896s
 MhkQvLZz992BJ4ENElsvaaczY9Qr1s/zBYA7f5mWOE8/m/uo3t62K5q
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: DAG503qiQi2oMaQM34nK1yItrLvc7INyiqW05IoXw9Q_1752163696
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_090819_895668_6FF53EBD 
X-CRM114-Status: GOOD (  12.35  )
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
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
