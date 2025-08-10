Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03053C87FDA
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Aug 2025 23:12:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RTBIO9Rvhf4dzM1dEA9bh4Wmfl016jo20Bo07FtEDUs=; b=Uq6DaA0momDDzb
	q+Ytqav26DnH9B4CBA5FiT0eg2FBihrmw7g50Vv1BQwr9JhOe6hlP0xBIftxRmbHgIMfkvruWfXi7
	u+pgvVMoR7nnSxYp4QROdj1neOAfjXcfnN0rmu8/9WvgFNkWupe/datFc1qgxcFHVKkqVxk+pbIOy
	HcYtFQpN9FvaJvNBNZewMz7A26ppCxrP+ro1nl9eUfFOwm8m/s91naASHKZk3HUU18oWmwFS5vAY3
	fq6mxD6dshSZFNZu1mLQ/Xds+l3QhPJsD08ENkBInmCVlfrAa02uiKU1dD/J1IsXbojo253enLtSK
	ycO6FHinZJtwHIHd4lYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulFDG-00000006Ak3-1QN0;
	Sun, 10 Aug 2025 23:12:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEp1-000000068Ma-0K0Q
	for linux-rockchip@bombadil.infradead.org;
	Sun, 10 Aug 2025 22:47:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:In-Reply-To:References:Message-Id:MIME-Version:Subject:Date:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=9LIwrTzSIdW4XyPecxETwMmYAEX2pSsme7PIKfMfdJI=; b=KT7nJl+sL23vUrHUceYboPDtcI
	CV9Yy8OExjaw1UwwsmmizHfmadG+T7ZrREcfg5V44Bwe39+5Crwdb7tubQVpg9ys9vEvf/3yrC5ez
	rAdBA5pz8+YMqxkFQ29F1XZeREGYXkbPtGnVd4scFyJI5ZXxc42WtNrBxl/2y4pwV/6Wx/TkCOOgc
	z10nw0BVwJ4U9L/E29wc4nO3tM1O14HK2FjtXV5xh/9s2/Ie6HssELdp1F7WEvSpZ+z9qcgHpQIxb
	kgMIOifpUicb7ZLtADLqvs3HEjuBd//t3RX4SXtEWdzwyUFZi1679pm+/4GiZhrBgIIH+Qudx66oA
	fxjf1Vgg==;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEoy-0000000FJmp-0MFP
	for linux-rockchip@lists.infradead.org;
	Sun, 10 Aug 2025 22:47:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1754866039;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9LIwrTzSIdW4XyPecxETwMmYAEX2pSsme7PIKfMfdJI=;
	b=iGrh0RlxiSXdAITnExU++9MSNN51jixN8PgLlI3jGCsOWc2xbSbz/JQG4kt0EP0cb4CcOi
	Hh961vt0W7X5dToFBPsK/9XmeOmxrajYHBOiG8eqKaYWMJnm3ussUzDaUIYeGLiX3M1F9L
	ZZ8IHD5NM0i4Zdqlf4i9QGL1VsNaz7M=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1754866039;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9LIwrTzSIdW4XyPecxETwMmYAEX2pSsme7PIKfMfdJI=;
	b=iGrh0RlxiSXdAITnExU++9MSNN51jixN8PgLlI3jGCsOWc2xbSbz/JQG4kt0EP0cb4CcOi
	Hh961vt0W7X5dToFBPsK/9XmeOmxrajYHBOiG8eqKaYWMJnm3ussUzDaUIYeGLiX3M1F9L
	ZZ8IHD5NM0i4Zdqlf4i9QGL1VsNaz7M=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-159-ioYIpvmvMCKtZMJx-2QLww-1; Sun, 10 Aug 2025 18:47:15 -0400
X-MC-Unique: ioYIpvmvMCKtZMJx-2QLww-1
X-Mimecast-MFC-AGG-ID: ioYIpvmvMCKtZMJx-2QLww_1754866035
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4af14c04e5fso149118551cf.0
        for <linux-rockchip@lists.infradead.org>; Sun, 10 Aug 2025 15:47:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754866035; x=1755470835;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9LIwrTzSIdW4XyPecxETwMmYAEX2pSsme7PIKfMfdJI=;
        b=C4R0YblXZhDz1nHCNOKpjkjWn0p1WUAWxzKFn9nC2cYmNphYpJ+7SIJMEIo0aq8pkF
         RcGxfaekjvRoXf5sqasMpizs5lY5Z/h4rfGaXgtA3HwcVgQ3idnCxpzvj+7LDx3VTkVc
         gxUu03lquCi4AGnfOinIoD8FnRga8pGAcXr9UAabKVnOaPMuYfHJRNrpb8AaDraPBaqh
         kWFZ1I54R1X2QH6ZMkziBJh5gPr+RcVnIY4l6nAhFf39l5d6oQpMgFBsTysBmDpXurGB
         k5avFY5DqGuHf7al9m+L9CgB44ElZ0eEQDYbnykq5ACe51k0GkoBJtaWHB+QVNB1iMyH
         UISw==
X-Forwarded-Encrypted: i=1; AJvYcCV2MJZt+v2Ams9+Wc5qMsjp5ckrRiafwWUpCM74v3TVMTxMoRUaTwcfHluV2TAmqslCQEjFHiQbBmAKyQ+PAg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyG5SnWps1As/HlJBgxHNX0QggQniY7SzgsgPCeBH0ifWgDYypK
	lYgBED8UF3bpCPMzrbKJbpvdRc9sGx6xHcNQOQ1huSVEGdjfoeBJoB0zBqnxqc0jXrhGfSCfdap
	J2le09SzbCAjqpjU9CUThML8GqmfsyL01B8hVn68SRRB3lfRq1zrEhZzprHQodeNk+marAL0rGw
	==
X-Gm-Gg: ASbGncvfFAPA/iLETgWx6nTz4i0GodIZpX92T3cqh60mU0QrtdSvFvsBzws5Zf6NwmD
	QkcetAkqBrHVFGpkWgu1ctiXcDoWSUqOZIAbyHmiwxz0rBGMXAFTVdrc1jyx4c45QsnOzdsYQ9a
	ZxQJBQmVfJKczxXLq0oDlMRiXipBpHyT+4M6QL0czj8tfXO9u0IQ2HDvVoITYIwq1f/sR57yOjP
	+gdezmm9uX83FXMOZd/k8R9TDx/Swhu4dlu44ALpt4DYUsLCMwfGGfo5ScVQPOb0TpTltiBSOwW
	DENb62T/bt6L9BjZ9dfTF+XL9NgGdeazai3NzC9CkN3Wqg8GikH6cTpNWlQ5CdBVv2jBTiALzy9
	xtSTSaA==
X-Received: by 2002:a05:622a:400c:b0:4ae:cc29:829e with SMTP id d75a77b69052e-4b0aed983f4mr137421431cf.59.1754866035174;
        Sun, 10 Aug 2025 15:47:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEI4R4FgcBh6uwgYNS05a9B+ckO+bJARHrSqSCTHnGOa6vmcxR/BVXe8/wOen8M9+MhpG9xPw==
X-Received: by 2002:a05:622a:400c:b0:4ae:cc29:829e with SMTP id d75a77b69052e-4b0aed983f4mr137421231cf.59.1754866034829;
        Sun, 10 Aug 2025 15:47:14 -0700 (PDT)
Received: from [10.144.145.224] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b0ad996459sm42685171cf.46.2025.08.10.15.47.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Aug 2025 15:47:14 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Sun, 10 Aug 2025 18:45:37 -0400
Subject: [PATCH v2 9/9] phy: ti: phy-j721e-wiz: convert from round_rate()
 to determine_rate()
MIME-Version: 1.0
Message-Id: <20250810-phy-clk-round-rate-v2-9-9162470bb9f2@redhat.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754865941; l=1629;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=PfVBnMEhY+1VXjQch+u5PcV+HyG2IR2115kG2w+VUSA=;
 b=sL0ngpJvf7ih79HfcU+J6TF8fc534hLr/WKGFEbE4MP2Jf9cX1ovwrN2LEAg3nNaEFb5Q2o2o
 4np7Je1hPi0C73RtTCBtGYON4LSvFYcTDMVZedGa2hpQZpsBbEsg5Fg
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: IddHkMVTbF-NQNjmJBSh8tF53jXYXgvbsMgQd3GT_W4_1754866035
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250810_234720_408770_38CF8BBD 
X-CRM114-Status: GOOD (  11.18  )
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
index ab2a4f2c0a5bf3aa4b77045f4da8b0ddcc079f7a..12dafb2bd49bc33c13dd49246bc26df082e3dd40 100644
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
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
