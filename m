Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE265C19F2B
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Jul 2022 17:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NQNt9rUSMD5LeQ6bZvCRDm9NPMfC/w/nqbIOuCvIq5U=; b=mVlVLmJ+Y1Yiw/
	ccPa80oL+sUdk/4dnJ/i7tnNHo3+EZAwVZtlDZf8xjaLqG34bDWlyYl1D2bcwjTqLz4X11yUVyTJ1
	LbD3jdi3nHR9ZeUHI0CNUhT7r/08X9N6+FGKuwSYt4DPp1+kfV7o17hGqR4eNHHwJzCHdNO1kZsSV
	YiJSxXYNNsEHxz4cffvqMsnXnQTUpqNzZ6+HqgmTHEvywR9fbjAysXZwrAr0mesZelxVlCWG3E8eL
	BgZTlz3mPmswk/ouhMT7iDCMWvHPr8R/1rsp2fWTGs/KAjNAUWMLQa/FkyCvPH89jQtAVQPiZOjnc
	4zIT50TVwXnfrVDdZPLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oID5o-00Efki-Oy; Sun, 31 Jul 2022 17:51:08 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oID2k-00Ee7V-VD
	for linux-rockchip@lists.infradead.org; Sun, 31 Jul 2022 17:48:00 +0000
Received: by mail-pf1-x432.google.com with SMTP id u133so2001388pfc.10
        for <linux-rockchip@lists.infradead.org>; Sun, 31 Jul 2022 10:47:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=DtHl8Tfdbid4Ip0K1rvhxAAb055JKxUwgFqvF7A2pZw=;
        b=FrIgIbjZWlhx84pjqV0am4wg7VbAPLSm1lET64x1Ks3OeeK0C8lfnVT54f/ooeIRqa
         yJM17T5F7aN/AsCTUkDJxoMVu01QbTXKh8Xpyy0RXSfMrzNz6fxX3jsdsJ3rU+ij2sGl
         YLayh1UZHD3cYAR7sSYglNBOnv3lDGnJNSGuUyp0rnVyJLgZFDP1nxpPkvixlS66PzCX
         2mgmYo9MboqSDpTbwb97YWm9vFtyObKqN3wJzcW5AFmC6MiR5/QZQW1Bt9feQclQAJu+
         cCmG/t6dQ2xs47Bwzm3eVY2aw8jOsBm4Q2SJenBbv6OmznaWWr6uS2rcfO65qJKEvSgV
         qqVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=DtHl8Tfdbid4Ip0K1rvhxAAb055JKxUwgFqvF7A2pZw=;
        b=zuUuHpOyFwnoXD4MNQ4xB94k6WRir3txoFu7qh1ieJpXYSBfJJWorT3UF9BREdEeu4
         2WsQwDYXIXJJEhHlvZgSPq5+pVzbWUUFnoPMutzk/1z9pRdKHs/Azzs4S31Ouuoyt7vK
         1VSf4yYOqUi3Z66hGrffY7vzgV0DtNaSB/Ei1uB/EoDRLJHQyloVFBzfPu0wnddxhnOB
         tTX1d5GlWrHte4OnBzvqMowPSMf7c/SdCTqa+yzbJsFteSU9OFyU7wK6W9dSgSuy5/Jo
         Yb811tZmtKnNcgriqtxVaX8BIDchtCpjrC0LrvtkAKj5pg883z2yNcLnjm8gougIanSB
         crvw==
X-Gm-Message-State: AJIora+uWgf7u2bRopy9ux/Sac3+1iWNRe8bEhYE7wVs/pz4LSQTHrDg
	IlEAsMiJtrOTsb1vgc7PeqpXjA==
X-Google-Smtp-Source: AGRyM1ub8ANS59rvz/sZljT7HwORhT1DV48eiTbTUQy4m3j+sQyYYdJz5ubHgjGKzs9ZC8QgHOHHfw==
X-Received: by 2002:a63:8c47:0:b0:40d:2d4:e3a2 with SMTP id q7-20020a638c47000000b0040d02d4e3a2mr10751105pgn.2.1659289677284;
        Sun, 31 Jul 2022 10:47:57 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:c5e8:48d3:6a8c:6418])
        by smtp.gmail.com with ESMTPSA id n5-20020a170903110500b0016d3935eff0sm7812062plh.176.2022.07.31.10.47.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Jul 2022 10:47:57 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jianqun Xu <jay.xu@rock-chips.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v2 05/20] soc: rockchip: io-domain: Add RV1126 IO domains
Date: Sun, 31 Jul 2022 23:17:11 +0530
Message-Id: <20220731174726.72631-6-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220731174726.72631-1-jagan@edgeble.ai>
References: <20220731174726.72631-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220731_104759_029206_604569F3 
X-CRM114-Status: GOOD (  12.00  )
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

From: Jianqun Xu <jay.xu@rock-chips.com>

Add IO domains support for RV1126 SoC.

Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>
Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- none

 drivers/soc/rockchip/io-domain.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/soc/rockchip/io-domain.c b/drivers/soc/rockchip/io-domain.c
index 9df513d1219b..6619256c2d11 100644
--- a/drivers/soc/rockchip/io-domain.c
+++ b/drivers/soc/rockchip/io-domain.c
@@ -491,6 +491,22 @@ static const struct rockchip_iodomain_soc_data soc_data_rv1108_pmu = {
 	},
 };
 
+static const struct rockchip_iodomain_soc_data soc_data_rv1126_pmu = {
+	.grf_offset = 0x140,
+	.supply_names = {
+		NULL,
+		"vccio1",
+		"vccio2",
+		"vccio3",
+		"vccio4",
+		"vccio5",
+		"vccio6",
+		"vccio7",
+		"pmuio0",
+		"pmuio1",
+	},
+};
+
 static const struct of_device_id rockchip_iodomain_match[] = {
 	{
 		.compatible = "rockchip,px30-io-voltage-domain",
@@ -544,6 +560,10 @@ static const struct of_device_id rockchip_iodomain_match[] = {
 		.compatible = "rockchip,rv1108-pmu-io-voltage-domain",
 		.data = &soc_data_rv1108_pmu
 	},
+	{
+		.compatible = "rockchip,rv1126-pmu-io-voltage-domain",
+		.data = &soc_data_rv1126_pmu
+	},
 	{ /* sentinel */ },
 };
 MODULE_DEVICE_TABLE(of, rockchip_iodomain_match);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
