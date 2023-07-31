Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AE08C41513
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 11:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kXZPF8oHCw6r+brKBgUpuQxeYNRvvbzVskuGassbrzg=; b=etAWRpLVlEgN3A
	eJ52D/NdLPvuu9dAyVGZNLCI6ghdpSjvuzVuq0NtoE+8Yz6mxNN8W3Lk3Gq4XxDVPNyL5rucS/Fq9
	BVZ1MaiOAWSte1HTo9oq5y09LrN6lEgu0orhK10LOEJMreYGTBPdfFeCRpGaxf+A12QphghL17RGJ
	VzkWNRnaFemmjpooz4wyulwK433cAjX5Patuna34f54lOtAZkIyidxeaGZqpV/pJflemYrxysR5yi
	w0/YJi+K39lnKrh1lFlJ++3L5+qAtLA/6Ucr24glfSTijPDoP1GAb4443ZVm61fRYe3UgAjvLMRUq
	+LpWUazwMKhgQgMvGpUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQe5-00FEXn-03;
	Mon, 31 Jul 2023 11:01:01 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQdy-00FEPe-2n
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 11:00:56 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-26854159c05so2475046a91.2
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Jul 2023 04:00:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690801253; x=1691406053;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BDpzgt3yf1dnhEnhafA21d4732XFCABNZPAtKuamjQM=;
        b=gR4DCj7EXtzZprnzrujUBpg/o6L59rnF3hNYEULV55G7XhnCZrfw49mDoyI/KOanyN
         SH7ro8/nPK1ZfvoA5jxxriXNoOa0xILmw+3uwpddG+9ef2iirdSN7ZPdLlxDX+NgMr4h
         QbmZDqOdom6dYdkb8rBCyUJOr2zXMokO92dqiTSrrmHR/OZcwDQyEPN5O+Vkr1CJ7PEX
         ndY4jGguGbbEXNLWBt+OATfh4rxk8OpY0NB1Df86ivsggUPCqnBsqwb6RHh/sDKqRxI2
         QTdB+tA0OiGZf33HHpeikiXFX0hvquzm51CfUhEncngGh7p6RqQVe4IfC0xgqUBu91wl
         Pf+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801253; x=1691406053;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BDpzgt3yf1dnhEnhafA21d4732XFCABNZPAtKuamjQM=;
        b=LqU1HT2UzBE8/l5dCJM4QMaOykHLLjeGHnCWMkpuVtO9MaoXgK63qG5/B7nmLoo1kJ
         8Ue6TTb73gYyAU5/6IV6PrSKgg3Qo0nRzTHixy48u5WBqJ8HvW+KAMH5MAEI7ahkwbiR
         DeeKZR0qOn3qMrPy8Slwp9fHJy2Pvgt3/8dIqN5uocLnuzn1bLkhZxD/olXQGn4f3Lml
         JQ0nc7Ci2pQDkezwkq+FZnjrbRuElqRSx9BGOcpqYTkzIUOe7xMZ5htvKDrWIpEKIvUP
         4QGPN7Ej+oHaPODvvNEqa7K37Z9q6l/B2XfAp3CkmJdDuNjWDVGftRfGHQ4hMOrBNCvb
         jkyw==
X-Gm-Message-State: ABy/qLbT7tOh2XTSFb95OTPv8ZD8ovKFK1HOK2STHSpycolwTkPSC8K6
	uaLgzPlsbT8ePakWRVftTd8stw==
X-Google-Smtp-Source: APBJJlFg0DC2IUqYvRu71L/g9OybK4oJw+Kju3byUa8K22Vb3WOpYfUiLi+3ql8thLtiJM0WvylDUw==
X-Received: by 2002:a17:90b:3b44:b0:262:d661:2963 with SMTP id ot4-20020a17090b3b4400b00262d6612963mr8657626pjb.39.1690801253045;
        Mon, 31 Jul 2023 04:00:53 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id t14-20020a1709028c8e00b001b1a2c14a4asm8281096plo.38.2023.07.31.04.00.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 04:00:52 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Jagan Teki <jagan@edgeble.ai>,
	dri-devel@lists.freedesktop.org,
	Sandy Huang <hjc@rock-chips.com>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH 08/14] drm/rockchip: dsi: Add rv1126 MIPI DSI support
Date: Mon, 31 Jul 2023 16:30:06 +0530
Message-Id: <20230731110012.2913742-9-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731110012.2913742-1-jagan@edgeble.ai>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_040054_911426_CF1FE8F7 
X-CRM114-Status: GOOD (  12.77  )
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

RV1126 MIPI DSI supports V1.2 DPHY with 4 lanes and 1Gbps transfer
rate for lane.

Add support for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Cc: dri-devel@lists.freedesktop.org
Cc: Sandy Huang <hjc@rock-chips.com>
Cc: David Airlie <airlied@gmail.com>
Cc: Daniel Vetter <daniel@ffwll.ch>

 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index 0100162a73b2..8bafb2a2747f 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -198,6 +198,11 @@
 #define RK3568_DSI1_TURNDISABLE		BIT(2)
 #define RK3568_DSI1_FORCERXMODE		BIT(0)
 
+#define RV1126_GRF_DSIPHY_CON		0x10220
+#define RV1126_DSI_FORCETXSTOPMODE	(0xf << 4)
+#define RV1126_DSI_TURNDISABLE		BIT(2)
+#define RV1126_DSI_FORCERXMODE		BIT(0)
+
 #define HIWORD_UPDATE(val, mask)	(val | (mask) << 16)
 
 enum {
@@ -1651,6 +1656,18 @@ static const struct rockchip_dw_dsi_chip_data rk3568_chip_data[] = {
 	{ /* sentinel */ }
 };
 
+static const struct rockchip_dw_dsi_chip_data rv1126_chip_data[] = {
+	{
+		.reg = 0xffb30000,
+		.lanecfg1_grf_reg = RV1126_GRF_DSIPHY_CON,
+		.lanecfg1 = HIWORD_UPDATE(0, RV1126_DSI_TURNDISABLE |
+					     RV1126_DSI_FORCERXMODE |
+					     RV1126_DSI_FORCETXSTOPMODE),
+		.max_data_lanes = 4,
+	},
+	{ /* sentinel */ }
+};
+
 static const struct of_device_id dw_mipi_dsi_rockchip_dt_ids[] = {
 	{
 	 .compatible = "rockchip,px30-mipi-dsi",
@@ -1664,6 +1681,9 @@ static const struct of_device_id dw_mipi_dsi_rockchip_dt_ids[] = {
 	}, {
 	 .compatible = "rockchip,rk3568-mipi-dsi",
 	 .data = &rk3568_chip_data,
+	}, {
+	 .compatible = "rockchip,rv1126-mipi-dsi",
+	 .data = &rv1126_chip_data,
 	},
 	{ /* sentinel */ }
 };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
