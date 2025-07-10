Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2E33C83F1B
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 18:28:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f/+T2EiFxNF654efrwr4tgOmVUis+MtNTUAffloGrtw=; b=KbaXFbx4SOWTYN
	u3Q5cQ6Zy7x59tWgfKhKKSFZsQWT4CYLltPNt0MWqhmEfDAALIHSGJN8HMGk4ahFmUA5voqAKonxX
	Ag+oXNd5ynqzk0SD9/Krbe+ABAtRm0Q67nhZF0eXvpVuzvsx4EDzZhEhF4Igv+TB+Ggdlo+Clb4Ui
	+jCfuctqIDmgIXzBt1gf1YUEpLE9XsLmx7KqiOElp4tRG/EvlHY4cKfOFaoGZopX120T73qcWyq0H
	5icsfRPuJVn/Uo5DrYuRct3RXrJOdfAJU3JpEVXFqZx6GDkpcqC+i8x0Gh3mBei0qoASGuahqgIco
	wt87Jcc1+TKH1mjl7z8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZw0V-0000000ChpW-4AZ8;
	Thu, 10 Jul 2025 18:28:33 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZtp1-0000000CMOh-1Jzr
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Jul 2025 16:08:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752163710;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=X6cvCt1VBmJTFRCGYPDZTJ8fBnxpBorEBWf40KWv3BU=;
	b=bthxsAQCXNWwbwvXzaEbn9ouhiJJhyo7t1A+USOxc+7yJV7tWm61ED40srOG4DMAeUdoI4
	tW2jSePqcdxFF47B32ImotU0TsWvC1Uoe1rLqCZC/UCdIkqn+tjNT+NPlBlZrOua9G6BWg
	un4Ul0gJWE7j59ft5jSsmxSaL1GtevY=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-215-An6Fc0u7O4ChnSBHkN0jwQ-1; Thu, 10 Jul 2025 12:08:29 -0400
X-MC-Unique: An6Fc0u7O4ChnSBHkN0jwQ-1
X-Mimecast-MFC-AGG-ID: An6Fc0u7O4ChnSBHkN0jwQ_1752163709
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fb01bb5d9aso15764496d6.3
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 09:08:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752163709; x=1752768509;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X6cvCt1VBmJTFRCGYPDZTJ8fBnxpBorEBWf40KWv3BU=;
        b=WGQBa0ubrGD4bVT2kiH7barG2qRXI1l/kak2YIjNNZ/hvYTMM1bE1mbyfHhuIge2o7
         9znAPJnTPa7/EL9WC2Wp84Ltm6n798gJ6NpzHLPYJRYL4TdAdvyHH+V8vfSFiLcF8+iW
         IQ7punzvUUqnpDSFFo0na+PhicM4l3y4q1izkpzZ7URLiZx/oG9Afyq6VvVLNAF9hl3i
         /fuoMi9dyKf8e9/783KE/HndKpaJqnCiqIsXuF91jbI+nuZIiRGMqziWV+PnSzaz78Si
         x1NILwe4CIfMY8YYGxoG/8V7CSxavHOwRhvfQL+aIEY67xy3wgHaSRigpNODmMxNw8Da
         WSCQ==
X-Forwarded-Encrypted: i=1; AJvYcCVSLeBTfQ26Xj7lj+zabOActlHwl1ItNCvq9Gh11Ue7XQ5uOZxXJF+IUX1MFPfjSkPJigIl8KTw6WjtPL2GUQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxsCavFynn6eLY7sT4m1DQ0Zr/37LpO+T0nZU3yZmz+PpRjawt+
	ypQ1/jzRJ2QnF2a0GqS02aoRj6b41XNCku+gDEHrEDHW8Lc6jtwbewyodjDuEAg1+KQ7D6kJcSY
	guOh2Xfx/3pq60qor3j9hrFT0adKRlG2PwqziF8DaFNYB367UCZuZyf+oPIPZpOzwafiVLpKZfw
	==
X-Gm-Gg: ASbGncs6GP5WFwM5noSAYogjGp9oHEzmwgbUXaXGmub9mru1+NukOVCEMPMU56Zkxq1
	TKxu8byvlZNH1/AEDxVWRVnj9xsk/dMWMwVbXl1js8M4QloqcHmDZDhJIDLOvo7wO0602pnsXLX
	udKpPA9NyxZdSVFg4q8/b+4dfct8qHqja+Tt1Ca2YKw5F8nsM7dlQyqHYYvHtb7cnRxKyahNdau
	q/pIpNnrmL/WRnbKdCqtOZsy02b1D02kNEnfJXNZ1qZ756VPdUBsuT9AV5KQjf1K7s/8r3xRIqN
	18VXuMBUWpkPlBFwUp5IC/g6ioQsEnMmkMIVIIyR4RioUn64OoJN2bdnLTXe
X-Received: by 2002:a05:6214:3107:b0:6fd:61b6:3360 with SMTP id 6a1803df08f44-7048b8bd8b7mr113600426d6.5.1752163708693;
        Thu, 10 Jul 2025 09:08:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG7IKnx0oGY6DzZmPHsoNfOxbxEl/6NrEujAZIrZneNt1HGeFa55m0X6zYpF5NdeeHumqI+Dw==
X-Received: by 2002:a05:6214:3107:b0:6fd:61b6:3360 with SMTP id 6a1803df08f44-7048b8bd8b7mr113599866d6.5.1752163708155;
        Thu, 10 Jul 2025 09:08:28 -0700 (PDT)
Received: from [192.168.1.3] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70497d39749sm9670216d6.58.2025.07.10.09.08.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 09:08:27 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 10 Jul 2025 12:07:18 -0400
Subject: [PATCH 8/9] phy: rockchip: phy-rockchip-samsung-hdptx: convert
 from round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20250710-phy-clk-round-rate-v1-8-0ff274055e42@redhat.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752163685; l=2561;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=tFpHMfoqDqhzNTaVv7v0N0qvUtE+54itjjhNS/n95Lc=;
 b=e7X3yn2YeXeKXrOkS5F+e0IypwltHuyXsyzMnUIUuprHWBg0Yjbm20ihxHiKGf27VyMww7dN8
 zNFlSuHfbztAbMvbZ4Tm4rj9g4qefWj2ql3S7qfHwrgGweB+1fYDH7N
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: IivuIZq0g0xKCo4vSL-dsJFIUUqMlUxjgqAgbiRI8Eg_1752163709
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_090831_465446_BC4170FE 
X-CRM114-Status: GOOD (  14.29  )
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
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 21 +++++++++++++--------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index 79db57ee90d1487b51f4ddadde870a275dd7b17b..f027d2caa4c2ebfc0fdec08bcebf3f415ff1a064 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -1869,8 +1869,8 @@ static unsigned long rk_hdptx_phy_clk_recalc_rate(struct clk_hw *hw,
 	return hdptx->hw_rate;
 }
 
-static long rk_hdptx_phy_clk_round_rate(struct clk_hw *hw, unsigned long rate,
-					unsigned long *parent_rate)
+static int rk_hdptx_phy_clk_determine_rate(struct clk_hw *hw,
+					   struct clk_rate_request *req)
 {
 	struct rk_hdptx_phy *hdptx = to_rk_hdptx_phy(hw);
 
@@ -1879,14 +1879,17 @@ static long rk_hdptx_phy_clk_round_rate(struct clk_hw *hw, unsigned long rate,
 	 * To be dropped as soon as the RK DW HDMI QP bridge driver
 	 * switches to make use of phy_configure().
 	 */
-	if (!hdptx->restrict_rate_change && rate != hdptx->hdmi_cfg.tmds_char_rate) {
+	if (!hdptx->restrict_rate_change && req->rate != hdptx->hdmi_cfg.tmds_char_rate) {
 		struct phy_configure_opts_hdmi hdmi = {
-			.tmds_char_rate = rate,
+			.tmds_char_rate = req->rate,
 		};
 		int ret = rk_hdptx_phy_verify_hdmi_config(hdptx, &hdmi);
 
-		if (ret)
-			return ret;
+		if (ret) {
+			req->rate = ret;
+
+			return 0;
+		}
 
 		hdptx->hdmi_cfg = hdmi;
 	}
@@ -1896,7 +1899,9 @@ static long rk_hdptx_phy_clk_round_rate(struct clk_hw *hw, unsigned long rate,
 	 * hence ensure rk_hdptx_phy_clk_set_rate() won't be invoked with
 	 * a different rate argument.
 	 */
-	return hdptx->hdmi_cfg.tmds_char_rate;
+	req->rate = hdptx->hdmi_cfg.tmds_char_rate;
+
+	return 0;
 }
 
 static int rk_hdptx_phy_clk_set_rate(struct clk_hw *hw, unsigned long rate,
@@ -1925,7 +1930,7 @@ static const struct clk_ops hdptx_phy_clk_ops = {
 	.prepare = rk_hdptx_phy_clk_prepare,
 	.unprepare = rk_hdptx_phy_clk_unprepare,
 	.recalc_rate = rk_hdptx_phy_clk_recalc_rate,
-	.round_rate = rk_hdptx_phy_clk_round_rate,
+	.determine_rate = rk_hdptx_phy_clk_determine_rate,
 	.set_rate = rk_hdptx_phy_clk_set_rate,
 };
 

-- 
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
