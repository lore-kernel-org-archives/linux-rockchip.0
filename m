Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8DB0C48BEB
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Feb 2024 09:57:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=54yQbPqgyPtRSenyOWTQrwQwpSkhLgewsdzs/8nCMl4=; b=VFqtlDSCoBjiAi
	zWovcn04+cPDYVNGBhJruBvQdFKxjDdRAzLzKGz6lzz+9RF8rOBbfiD5C/dzMESiUyKWjBiZzgZ5l
	LTzv9uAhk1GOpf7/Lo1i/9DaY9IbW1Ab3g1Vvihvp8ogk62MwrJYFFZ0u/Rs8RtIerHaLyPoYdONN
	PnyGkwQ30klkEZ+ih6yEwuJ/gaETgbum7v/eEJWqFE4RXwK5efXY1Euvy5HdLevvzhPXqmWHnUNEk
	ApN+3rthdwSsov31lR4KXocMPtuaS9xDLCGEzf9V6L7J2/jB1F2dK7KMZLOmh50ZZEguGX2OqJl/8
	WcIO3OvFmx/Qa8/WEamQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rauy3-00000001r7l-10d2;
	Fri, 16 Feb 2024 09:57:15 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rauxA-00000001qbF-12da;
	Fri, 16 Feb 2024 09:56:28 +0000
Received: from pyrite.hamster-moth.ts.net (h175-177-049-156.catv02.itscom.jp [175.177.49.156])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 3FE1C6B3;
	Fri, 16 Feb 2024 10:56:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1708077374;
	bh=Ia/EeMxNOFHxbWUjhUliBdY0W0mfcl3fiQng0g4Ephg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=PQDdJ0g0Xz87VPF/G6ehXBcEsmJ2/7t1FQnkG8jHFalSifaKYFll54ZjpUboHDz87
	 KghpH435VnkuJQ0Yhbmo50rCvHuaBrv++pzwQL7/LlRpnjGAkmNsfeBsv/IPNIxS8L
	 FPTaC2P/7nM5fPRdO6HZt5m7cn8z2RFhRPD5/kEQ=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: kieran.bingham@ideasonboard.com,
	tomi.valkeinen@ideasonboard.com,
	umang.jain@ideasonboard.com,
	aford173@gmail.com,
	Paul Elder <paul.elder@ideasonboard.com>,
	Rob Herring <robh@kernel.org>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v12 12/12] media: rkisp1: Add match data for i.MX8MP ISP
Date: Fri, 16 Feb 2024 18:54:58 +0900
Message-Id: <20240216095458.2919694-13-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240216095458.2919694-1-paul.elder@ideasonboard.com>
References: <20240216095458.2919694-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_015620_691669_2505E627 
X-CRM114-Status: GOOD (  11.48  )
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

Add match data to the rkisp1 driver to match the i.MX8MP ISP.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Tested-by: Adam Ford <aford173@gmail.com>
Reviewed-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
Changes in v12:
- move out adding the version enum
---
 .../platform/rockchip/rkisp1/rkisp1-dev.c     | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 54a62487a4e8..a6b47f0af467 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -533,6 +533,26 @@ static const struct rkisp1_info rk3399_isp_info = {
 		  | RKISP1_FEATURE_DUAL_CROP,
 };
 
+static const char * const imx8mp_isp_clks[] = {
+	"isp",
+	"hclk",
+	"aclk",
+};
+
+static const struct rkisp1_isr_data imx8mp_isp_isrs[] = {
+	{ NULL, rkisp1_isr, BIT(RKISP1_IRQ_ISP) | BIT(RKISP1_IRQ_MI) },
+};
+
+static const struct rkisp1_info imx8mp_isp_info = {
+	.clks = imx8mp_isp_clks,
+	.clk_size = ARRAY_SIZE(imx8mp_isp_clks),
+	.isrs = imx8mp_isp_isrs,
+	.isr_size = ARRAY_SIZE(imx8mp_isp_isrs),
+	.isp_ver = RKISP1_V_IMX8MP,
+	.features = RKISP1_FEATURE_MAIN_STRIDE
+		  | RKISP1_FEATURE_DMA_34BIT,
+};
+
 static const struct of_device_id rkisp1_of_match[] = {
 	{
 		.compatible = "rockchip,px30-cif-isp",
@@ -542,6 +562,10 @@ static const struct of_device_id rkisp1_of_match[] = {
 		.compatible = "rockchip,rk3399-cif-isp",
 		.data = &rk3399_isp_info,
 	},
+	{
+		.compatible = "fsl,imx8mp-isp",
+		.data = &imx8mp_isp_info,
+	},
 	{},
 };
 MODULE_DEVICE_TABLE(of, rkisp1_of_match);
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
