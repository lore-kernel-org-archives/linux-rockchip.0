Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C15DC83F1B
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 18:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dPvnU6nFC+86kVxktzgcOaQXIcqzdiCk/HoX1FAk9sA=; b=ZYq+kOpwq4F9Np
	2z4H1UnvP6wJV3T2rwMPC3hBEQZ69cAzmsgcbVNDDTQPM4PRJdS1PKM+AUlJlb/gycJkGn8sqyPsJ
	Rpb2pv90iYQtjlHN0uBANWlQkmfj2ngVhh5xnpa/ELkVSa/9aFzo5Id7+oa72Nlf/+JK9MH6s8xA+
	gy+H0eXmLGe5EROraNBmmcKH6iPenhul1bYjBaUkaEwBFFdvUpnnaY/8WvaNVPfiiIouQ9lWQr2C0
	qMxQ6NOPCZnZlWIWlzVBA4vj5vfQtVYcJ0bpy7O+uB09NgQI/J3ha1K8yexaVjmpf4Tmr4dhdvYhi
	Gtu+DomFwGU5jbtLibWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZw0O-0000000Chj5-1jPm;
	Thu, 10 Jul 2025 18:28:24 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZtoz-0000000CMNB-0ffr
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Jul 2025 16:08:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752163708;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qNMz/xyi0Wuf6bpUroOTdzgXVTFsqzyhX4e3vihgsBg=;
	b=HQcstAgS4p99c/FfJqfTLXW5Tn3t4YNhe/uY8vYmL7ZH2KsfG7j28uDcj9rIpcYt2+y4gt
	rVa+QFYZk2z+6B1XAsro6eRlkm0Gj4YbQ3chLbSOKgZEKXfWceMMcuQ3KsgIdJAba97QFZ
	I6LF7QaSX6XE0f4o4M6bO52g1PQKDiQ=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-389-M10xGSqpO6i796JRS7GaCw-1; Thu, 10 Jul 2025 12:08:27 -0400
X-MC-Unique: M10xGSqpO6i796JRS7GaCw-1
X-Mimecast-MFC-AGG-ID: M10xGSqpO6i796JRS7GaCw_1752163706
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4a9764b4dc9so20731521cf.2
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 09:08:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752163706; x=1752768506;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qNMz/xyi0Wuf6bpUroOTdzgXVTFsqzyhX4e3vihgsBg=;
        b=bxQ/ERQzEay8k5vMAQFndbyRjASefPZ3nsM3xB7vurFX/wbr8LKj93l51ZQG8RnnTa
         sQ89fIdfE/P8XrzFIaSzmjXEhHHd5vCK8HFcdAY4Lek+6brzMPtLty0HzJ+uBKpemi75
         Hq2krdj+Zv+o/3Vjuoy95supYC10mtgKxfIMAnpg+LsSixrZ+iDhtYHiQUrx6v+DWq6p
         5eopZcgDKM9TYBD8B2DwQXEu57mWR7HDCbbW4jK453xifcJzVG5tamesGK7Tp8LwJyTZ
         cZ9L0RjFQLZA5QaZEz6+5iKAhbGw41DbTyNHS+eJu8XuVBDHXwbSpWyRgaPXY4ylwu23
         PE+g==
X-Forwarded-Encrypted: i=1; AJvYcCXMIo2n7ubwIQe6Hh8qvsi/hd655Cpw810oHywHuOJJv8Rbjn79oLXkeYkbI3j7CiuxDxs21znkihmiNfgwZQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxvgvGTvfJ/EWV/ufR5YJN7EIZSchkcTtOHzuLkIwJBIPhaI3Cn
	pW9eB02egoIcbGzVs/+s0TJPFHB4bKooSeTtKSc6MbQqb9Y499ribev8tRQ6GpAjZDtoLu1tKPR
	loDAbG+QSOwmuAuc/TeaIN99ijaftZbmgkdWT1BbEYPiUT+A8SZFpK3AQ7eccHCA/MDgmgv9pQQ
	==
X-Gm-Gg: ASbGncul1dRK/LUOJAQDIsp/z4ooKjtpJDDBZA5sanV8vS5K6zGck1lM4NGhKylWzFg
	DoHOIKis68P/PyjiCG47fkBchn+1QGQEsFSIILEyyHetdBZhgpSUiOgvDiHvAfhyruL2RCyC7cX
	Nmsqz6XJC6toNIybNTLM0OhQHrD/3MHyVDr6WRt2rn1KVuE4LNAlyBtucXivLSwTCVvL9aHf6Qa
	Bvq3jsjIl6xsa3balXzpCuHIiKC1xxXwoQTH9gSGNFSABF2UsUYxmxoppLXr05zfL2826ZCgH3B
	VJZxdxHE+CAQwIHwsIcIx3eq8Tz4wctIN8esCOnXGdw25aseK9IN85ZtgRzz
X-Received: by 2002:ad4:5bce:0:b0:6fa:fea5:4da0 with SMTP id 6a1803df08f44-70498064944mr50151416d6.10.1752163706262;
        Thu, 10 Jul 2025 09:08:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFYhZa76cHQRjJPw3H7mkaAzOvkiyujQRGMNOmHLyrMH7YSa97wvn3nU7BthDnNKd7pp0944g==
X-Received: by 2002:ad4:5bce:0:b0:6fa:fea5:4da0 with SMTP id 6a1803df08f44-70498064944mr50150786d6.10.1752163705661;
        Thu, 10 Jul 2025 09:08:25 -0700 (PDT)
Received: from [192.168.1.3] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70497d39749sm9670216d6.58.2025.07.10.09.08.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 09:08:24 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 10 Jul 2025 12:07:17 -0400
Subject: [PATCH 7/9] phy: rockchip: phy-rockchip-inno-hdmi: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20250710-phy-clk-round-rate-v1-7-0ff274055e42@redhat.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752163685; l=3209;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=NHf2WrVpFvBK9rcSwwdfI+z+ewWwe162I0ZQpinGzTg=;
 b=iJFp8tAaWU+wHaHcUB7nA5t7RfDvvhf4kk9dD1nEljg5ScIgHcdVuYZrpCfyQ1GumV9HBW7D3
 o5sEUuXM1iaDquqPWph1RO6DawQwo5Fhz2pFk4nTpsSuuAzjb7NEMsz
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: TZnDJa3mJyPT5KqMb0je8pXTOjpv1Pm3Vae-PrpClzg_1752163706
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_090829_280868_EF362FDB 
X-CRM114-Status: GOOD (  12.65  )
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
 drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 30 ++++++++++++++-------------
 1 file changed, 16 insertions(+), 14 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
index 8dcc2bb777b5455d21a10f06c5ad842b2ddbc834..1483907413faa5ce1dc8614db05e6e929410404d 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
@@ -749,22 +749,23 @@ unsigned long inno_hdmi_phy_rk3228_clk_recalc_rate(struct clk_hw *hw,
 	return vco;
 }
 
-static long inno_hdmi_phy_rk3228_clk_round_rate(struct clk_hw *hw,
-						unsigned long rate,
-						unsigned long *parent_rate)
+static int inno_hdmi_phy_rk3228_clk_determine_rate(struct clk_hw *hw,
+						   struct clk_rate_request *req)
 {
 	const struct pre_pll_config *cfg = pre_pll_cfg_table;
 
-	rate = (rate / 1000) * 1000;
+	req->rate = (req->rate / 1000) * 1000;
 
 	for (; cfg->pixclock != 0; cfg++)
-		if (cfg->pixclock == rate && !cfg->fracdiv)
+		if (cfg->pixclock == req->rate && !cfg->fracdiv)
 			break;
 
 	if (cfg->pixclock == 0)
 		return -EINVAL;
 
-	return cfg->pixclock;
+	req->rate = cfg->pixclock;
+
+	return 0;
 }
 
 static int inno_hdmi_phy_rk3228_clk_set_rate(struct clk_hw *hw,
@@ -835,7 +836,7 @@ static const struct clk_ops inno_hdmi_phy_rk3228_clk_ops = {
 	.unprepare = inno_hdmi_phy_rk3228_clk_unprepare,
 	.is_prepared = inno_hdmi_phy_rk3228_clk_is_prepared,
 	.recalc_rate = inno_hdmi_phy_rk3228_clk_recalc_rate,
-	.round_rate = inno_hdmi_phy_rk3228_clk_round_rate,
+	.determine_rate = inno_hdmi_phy_rk3228_clk_determine_rate,
 	.set_rate = inno_hdmi_phy_rk3228_clk_set_rate,
 };
 
@@ -906,22 +907,23 @@ unsigned long inno_hdmi_phy_rk3328_clk_recalc_rate(struct clk_hw *hw,
 	return inno->pixclock;
 }
 
-static long inno_hdmi_phy_rk3328_clk_round_rate(struct clk_hw *hw,
-						unsigned long rate,
-						unsigned long *parent_rate)
+static int inno_hdmi_phy_rk3328_clk_determine_rate(struct clk_hw *hw,
+						   struct clk_rate_request *req)
 {
 	const struct pre_pll_config *cfg = pre_pll_cfg_table;
 
-	rate = (rate / 1000) * 1000;
+	req->rate = (req->rate / 1000) * 1000;
 
 	for (; cfg->pixclock != 0; cfg++)
-		if (cfg->pixclock == rate)
+		if (cfg->pixclock == req->rate)
 			break;
 
 	if (cfg->pixclock == 0)
 		return -EINVAL;
 
-	return cfg->pixclock;
+	req->rate = cfg->pixclock;
+
+	return 0;
 }
 
 static int inno_hdmi_phy_rk3328_clk_set_rate(struct clk_hw *hw,
@@ -989,7 +991,7 @@ static const struct clk_ops inno_hdmi_phy_rk3328_clk_ops = {
 	.unprepare = inno_hdmi_phy_rk3328_clk_unprepare,
 	.is_prepared = inno_hdmi_phy_rk3328_clk_is_prepared,
 	.recalc_rate = inno_hdmi_phy_rk3328_clk_recalc_rate,
-	.round_rate = inno_hdmi_phy_rk3328_clk_round_rate,
+	.determine_rate = inno_hdmi_phy_rk3328_clk_determine_rate,
 	.set_rate = inno_hdmi_phy_rk3328_clk_set_rate,
 };
 

-- 
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
