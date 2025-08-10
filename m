Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C29D6C87FDA
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Aug 2025 22:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mvRVblBLjva3tgxjqz3eX1VurJ9XhpakLeVF1ZZ592U=; b=lVSjmlHTdhkJy1
	myMFFpxcxps/kDggNZ0IWE9O37Z39kuyyAEJ6EdS36HYEPtYHfAHoOPihfzPi7ZpqJaeJrHXnFzWO
	hfP+Ay582/pYwXwdCvLRv2HXSgi5c2s+LOW1e27LfqCdvuLHFzc83LYGk2QE+cTx/rcFqeL6bPhOa
	Z6wjYm8ds0rxmc0ghdpMf9JXxvfgBq8U80inLEPxvJMuoYbDSt3o4KymnROZPqVKaYOvxWBbVXChd
	ggL4V7gHCbXKxwHel62Z27QhvrNa7BEJhel9bzd8L74VX6u199E5kl+81Kc/t4sOsV5Nd2QmbdnkE
	N2vegqa9lIaMJkG3EteQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEvJ-000000068q5-3rpX;
	Sun, 10 Aug 2025 22:53:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEnx-0000000683H-0Khh
	for linux-rockchip@bombadil.infradead.org;
	Sun, 10 Aug 2025 22:46:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:In-Reply-To:References:Message-Id:MIME-Version:Subject:Date:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=uno9AFMoEyhj2DAPDWvWv4t+hFccS8StsfhUFSrHj9I=; b=LK4yaIQLCKGrL2fPDNswnUXBSN
	SdXmg+zxZZZexzQ81x22XHSzqWMbQjseQna3kmG3S8p8cQ73AC+rRi+9UMrb2ug6//TKcDYSwWU5E
	aq53Zo95f9QJi4qMktcTBNvZIdud1yizS1tjheH4/xgHJe9VJKy+/lOSdMTiXVTxnqHrnkJY0AeRD
	MjmPulKYHvG9leSLNJhvlCHBgqS2ymBOsEaDjNTCX48GxGY1OlpaWm0zDcdKTccLIvOaKwPUE59o7
	JDWBHagOioEALs4V1/djL5WtcocxK0TMsRI54BxzdkiKXnImyN/2mvKJCASWnLyQtEF6vs4jfjJAf
	8IauKePA==;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEnu-0000000FJeG-1CjK
	for linux-rockchip@lists.infradead.org;
	Sun, 10 Aug 2025 22:46:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1754865972;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uno9AFMoEyhj2DAPDWvWv4t+hFccS8StsfhUFSrHj9I=;
	b=XNykATZWeVveCbDk4A9BSm+fddp/WGTlveiyEDOSKRIF0Sww9WBERNKRBV10+Se5wvCI+E
	ikbAqcgo+G7Xtk5x1Q+9yP0sl+YXwqAwwZbWvQMkTmWpB7ED3ll2deCyL1vIfvGokXLvQP
	n+D/YfgoL8edMpkjFVMwrKWyFsLEOVQ=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1754865972;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uno9AFMoEyhj2DAPDWvWv4t+hFccS8StsfhUFSrHj9I=;
	b=XNykATZWeVveCbDk4A9BSm+fddp/WGTlveiyEDOSKRIF0Sww9WBERNKRBV10+Se5wvCI+E
	ikbAqcgo+G7Xtk5x1Q+9yP0sl+YXwqAwwZbWvQMkTmWpB7ED3ll2deCyL1vIfvGokXLvQP
	n+D/YfgoL8edMpkjFVMwrKWyFsLEOVQ=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-437-kXreIsM0OFC2XiKQt89Miw-1; Sun, 10 Aug 2025 18:46:11 -0400
X-MC-Unique: kXreIsM0OFC2XiKQt89Miw-1
X-Mimecast-MFC-AGG-ID: kXreIsM0OFC2XiKQt89Miw_1754865970
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4af117ffc70so100691801cf.1
        for <linux-rockchip@lists.infradead.org>; Sun, 10 Aug 2025 15:46:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754865970; x=1755470770;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uno9AFMoEyhj2DAPDWvWv4t+hFccS8StsfhUFSrHj9I=;
        b=Jax/FwQTUAnBp1X/qRWEmZPAprRJE/cK5VgBmQ5JQsegAi8csEKQ8U7lrMDYQ/7H4/
         i2Yekz/Z2R6Y1GIWGR6PJMABq7W6K9/BQbULUwC77NkMz2X3kNczPd3WCml/4Lpb6bnP
         8Gec+pF68YmbIy7yhUt5fWbGMEnBmf1KWE95Xdn3/BjG9M9aAWCWQR9zVbJVkSqeu/ES
         IqNAHKzVRViUaWHIED0EzTHUStsUfFckjLxXknPh7TXj3Xsd/Cbs2TuFot3qxAqpFRQ+
         F9BhGJaW5weOEwgoe4/Na7iqeRSlH3MuIeXQQyphlLu3TyUOIlHjITrakhT7U2fkhOqC
         e+jQ==
X-Forwarded-Encrypted: i=1; AJvYcCXInRFZzjb5shu2881MmnO5r8UvlVg/vjWIAUgQ2VJTthORrAG/kCdVUvBBfnBoNOB+wkNGIcJsaljODw7YgA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxF2v3hVmMAAU4QuDgLCjdZ/Qx4ta0+wgneCtkVg2o72f1w9+Ou
	vCVfRbvnVhyBKRbCi7Nzfkj6/0npmNAJXyCaOx+C861XiGEYjrW0Inpo6r4S0qlqPpA/QKAxEHz
	2zgzUz3WfWgCdrmUfIHBNvOM/D/x6AuazNxSQ3dPcVudCQPuL67+ZrZtSODmyceD7ZpKqg8/i3g
	==
X-Gm-Gg: ASbGncvWAroJlOQrMBDX28QYB2xs9MwC4BertFhE9f50Hu2ff48oQG5ANXqHFJw5KW2
	qgCJT1yTALJEZ1bZNFqzUwAgaIufR847MkandOIGymp+azdT4sCgd+qCMI1edhUCcerMzdPTKXH
	dT/h+kocbDeVnSpvTzahBA13R1YMjR87ueGT0ENogOGbIiQE+eHeZgO50NMnDjiPJVj3IwEO/bi
	7GVfdAb337OZ8ATZKTE15+IRVmV79nwKylfVTY7ONI9EDsoxJMiQ2xGGFv5bz6/tS7t2NadsQc3
	WaSonSIUrzJpVjJ634Q8VnJwM60tIxxNKYjPFsrEINOfXdqvW6/9+puOtOH6yNpKNiPPV4Mu2xr
	Psjvzqg==
X-Received: by 2002:a05:622a:1304:b0:4b0:dedc:1176 with SMTP id d75a77b69052e-4b0dedc131cmr16273841cf.49.1754865970549;
        Sun, 10 Aug 2025 15:46:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGjMTodXpCZJI+V6X66BJdKc/nrAgZZBHfrq0FWIY+BTXEFv3Zqfof1whkxmm2vRWEJM7gJDQ==
X-Received: by 2002:a05:622a:1304:b0:4b0:dedc:1176 with SMTP id d75a77b69052e-4b0dedc131cmr16273521cf.49.1754865970110;
        Sun, 10 Aug 2025 15:46:10 -0700 (PDT)
Received: from [10.144.145.224] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b0ad996459sm42685171cf.46.2025.08.10.15.46.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Aug 2025 15:46:08 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Sun, 10 Aug 2025 18:45:30 -0400
Subject: [PATCH v2 2/9] phy: mediatek: phy-mtk-hdmi-mt2701: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20250810-phy-clk-round-rate-v2-2-9162470bb9f2@redhat.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754865940; l=1429;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=K/vzlwQbHrPXAsE0zMa+ZWELLEN88HFuPFzZqi1CGSY=;
 b=qwO8ilR67ycB5abLTz8lkcaaMraMyT4Kb+y602Glvxo2Z7+fRcKOb5tXSI4yVR6HcJvX+lHrH
 QHpiy2uGNJpBVV9WhaW5knt2IT2dHcrLcTidOIeNTq7nKUw5m+AZu3i
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: MQrUz8xaUZCt7v8rUKXbHTuj4tj_lm67AuKjay5Ln2I_1754865970
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250810_234614_506214_B328E45A 
X-CRM114-Status: GOOD (  11.77  )
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
 drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c b/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c
index e51b2d13eab473dddace48c75c2a8d73c8c65635..b0b6497e7eedcb6867541b573d22156ded29a4d5 100644
--- a/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c
+++ b/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c
@@ -90,10 +90,10 @@ static void mtk_hdmi_pll_unprepare(struct clk_hw *hw)
 	usleep_range(80, 100);
 }
 
-static long mtk_hdmi_pll_round_rate(struct clk_hw *hw, unsigned long rate,
-				    unsigned long *parent_rate)
+static int mtk_hdmi_pll_determine_rate(struct clk_hw *hw,
+				       struct clk_rate_request *req)
 {
-	return rate;
+	return 0;
 }
 
 static int mtk_hdmi_pll_set_rate(struct clk_hw *hw, unsigned long rate,
@@ -170,7 +170,7 @@ static const struct clk_ops mtk_hdmi_phy_pll_ops = {
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
