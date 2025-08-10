Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45378C87FCF
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Aug 2025 22:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pTz2WY+ySiis/nUW1UkhCbgyogYrw/dVaEFvY5CQDBU=; b=A6UF5YKg2uWc6j
	7b5A/b7wDyphMExiYum9ULs1a48Cdy40w5haQrinL3bslTtuwQnQgLwsUapf1hDZ7Vuva1wqSTv3v
	wFQmvWvbgigZLyQqhz+aG0b9Rc+k5D6/vES8cLCIs9+gy4pWWoHdfc0Cur1HT0Ldguu1vnP0TPGGJ
	sPZCCzKzSeiJFk3QCOuRJe9Yih6HKGP8s+YZzUycZNTqVGKELEFnuBmZ/6zHsjA15bcLRcJp6QRsq
	J94dlnfmI7xONR6gNGtuHEPx9nrhzccNIEH7HPYHq5S1rca62SbKBRflpdkQUTb9N77C1XJ8RjPgK
	I0fhFYXdXr6ISar/lf0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEvL-000000068rT-1AaM;
	Sun, 10 Aug 2025 22:53:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEo3-0000000685R-390A
	for linux-rockchip@bombadil.infradead.org;
	Sun, 10 Aug 2025 22:46:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:In-Reply-To:References:Message-Id:MIME-Version:Subject:Date:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=CYtRvLWH1nEitW0lp1POxLyrQ3/VdPLRfNjB0vWutHg=; b=QouSYgAC+FgWpfdezpj/uMxuPs
	xzJ2I8h4CuVXnlBDaOh5JISMVdMO4euxFi1zsIpTJ1x9+nWmo3AaoDow0kT+J/mRKER3aw22pvAHw
	3RJH+INeCP7r7aEY0MoqM3vwrZbujIeFS0T+zhjW6IdZMFyAp+/QkZ1UZ6L7EldFQ0bQs8QHw4WOW
	YDRsv4wwtpstODjqJknfgpa+UUe6JBAZpWQiDb6Nz0e//rSDlLB9Z1GPxCzn4xXfTfzuWvnzDhMXm
	Z0Yai+n/aQtXzcGIb6G9CfJg867Wz0FZeo4CXq8H7jIhBDFPa6aQUfdTuHMUe5t8YH1IyXZ2gQv9q
	gCr2+B5w==;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEo0-0000000FJfe-3jFR
	for linux-rockchip@lists.infradead.org;
	Sun, 10 Aug 2025 22:46:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1754865979;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CYtRvLWH1nEitW0lp1POxLyrQ3/VdPLRfNjB0vWutHg=;
	b=Iy58V6RBGZiiCVIntGmv0oNMbs9BskuJb37wGIhNqB9MYZoT5IkIzVHKq8eq+DFW4WIdnQ
	s+5//FDhOm7JyGtL+t5SvMYoYn4Xini3DtNkPDl/YRFHdxoHY2971/bkoOZBoqskYQiMxI
	mnx/UGBw9hzgSEFBsRB9Vdv6wF8Snsw=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1754865979;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CYtRvLWH1nEitW0lp1POxLyrQ3/VdPLRfNjB0vWutHg=;
	b=Iy58V6RBGZiiCVIntGmv0oNMbs9BskuJb37wGIhNqB9MYZoT5IkIzVHKq8eq+DFW4WIdnQ
	s+5//FDhOm7JyGtL+t5SvMYoYn4Xini3DtNkPDl/YRFHdxoHY2971/bkoOZBoqskYQiMxI
	mnx/UGBw9hzgSEFBsRB9Vdv6wF8Snsw=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-169-_imXAMbeOxq4NYkPGt7CRA-1; Sun, 10 Aug 2025 18:46:18 -0400
X-MC-Unique: _imXAMbeOxq4NYkPGt7CRA-1
X-Mimecast-MFC-AGG-ID: _imXAMbeOxq4NYkPGt7CRA_1754865977
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b061ad3cc0so121793581cf.0
        for <linux-rockchip@lists.infradead.org>; Sun, 10 Aug 2025 15:46:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754865977; x=1755470777;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CYtRvLWH1nEitW0lp1POxLyrQ3/VdPLRfNjB0vWutHg=;
        b=MUNtoaernROcf24tr7h6Pt/ZUTbmmS9lY7lz77KxSjdmVanP3SHJhxXxzNiRbneFAd
         KwVjeEH9d016C6H4GwJv84OtpSknogAEg/eNFJmQRpp+wpueiDqjA+v8zuqwm9tcQcVG
         ysIvemu0Oi2j3dSsfrBKlBuDWcH0OzZQxTK9cqKShm3H0rVbBmCJJb3hqbEPwZoL/AWb
         YbZWQBHS0rHKuPBmwlgZt+KK1VEqVu/rBzaSqYoOiPWx7tX0+p9vyMtuTMBnMBnpD9Yb
         qj5aXL42syDhQIkbtGQGSc1apx4fr2KQxSN1gX0+mkhmZ78OfVfvhVeAqYmUeQmQ4exp
         xhSQ==
X-Forwarded-Encrypted: i=1; AJvYcCV9aP/9j6Y+aam8ZXvT1LCsvUAU9Zok5Bt+9K38SNOMt8K89aWl7shXCqPomqghElWeXmtGCRxx7n1UG9GQCQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzaKfA67REnJ1ssfu+4LG3fDeTX4UsLwz6ku+yLgHaNFfkWaI2m
	/GpmWqvAN1R/MAl2+Gl1IG2yWLNB8+EvcaQvsjMZq0GCH2aeH0WRppFqcBV369LnitquVUAiZ+y
	zn0wECC+H7oRAJql8uuejmMWqWQF8SVYZbfpv8B/yIfN738lETdUMw7cik2nhU1gDw++YYlsQ+A
	==
X-Gm-Gg: ASbGncsw2aWfqGZZMyv5sv/ClXBBe45kxmKxipIOC+KghD/Z/H7gD+MoeoUTf80p6+R
	8g+VA9uGDKntzLk69KEu2uFYAytWmXssxh0gB+Oyv4jlzk+YPKilwd2O84oxVZPAyiuf+fEVDkp
	0B4xHJfZqPziSDrj1/C77+Ak6hiHo5ZV82H5oiso7ayxaLNzyV6rAOmz5o4LFTKLMBURAxlwtRc
	bjEiDOJIKfW731cFUwJ51MzP1aNE1ub3C3Ek/xTl/q42dkca9/e487eNHsrnx0cwRzNrYaLu+N3
	uX9vN3Y9RjnMSnlOcW/iJYoa9CiHVNbv34rybHlaaaIHPDBNZXassXiAvIgm4fIag37pVnlJiwy
	z3clNQQ==
X-Received: by 2002:a05:622a:1a93:b0:4b0:8037:c0fa with SMTP id d75a77b69052e-4b0aed93038mr151727461cf.58.1754865977531;
        Sun, 10 Aug 2025 15:46:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IExCDCgOrUi7VTan6/AGqAAE3FbTWvD0DlZHmaitVHPb5PTrx90u14A2hmRLrvSxJ8XKrUUiA==
X-Received: by 2002:a05:622a:1a93:b0:4b0:8037:c0fa with SMTP id d75a77b69052e-4b0aed93038mr151727231cf.58.1754865977145;
        Sun, 10 Aug 2025 15:46:17 -0700 (PDT)
Received: from [10.144.145.224] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b0ad996459sm42685171cf.46.2025.08.10.15.46.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Aug 2025 15:46:16 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Sun, 10 Aug 2025 18:45:31 -0400
Subject: [PATCH v2 3/9] phy: mediatek: phy-mtk-hdmi-mt8173: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20250810-phy-clk-round-rate-v2-3-9162470bb9f2@redhat.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754865940; l=1767;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=+ttqLK3CCvX22rG8r1u2aky/pyqBIfYJ3wcP4wTqxkI=;
 b=3obEgP8yrDCMdOaBGI+w4Tat/8TZLPDL5bV/fvqowKe5RG+J17OP5TtRquid0xdyZAAnUyd/x
 LCD0oPAU7awC9owBT91elCcJ0kc+tWZOGloj7ttnD+fpn6ULYnrgJiH
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: j4hRkaXRJHErjWq-PpK71Vo7eFlxW2aglVe0K2s4Zcs_1754865977
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250810_234621_178000_86468382 
X-CRM114-Status: GOOD (  11.79  )
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
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
