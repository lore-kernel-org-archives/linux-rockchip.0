Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F733C4707B
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jan 2024 11:49:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DY3kz85cdTDyTXX2yIZO6cZrW2l1xnxqJR5XFAtl8m4=; b=sKG4GdCBNtVcE8
	7BKSjgThYQUB3NdGKnvQITkkHLX/wXYoGSTvprcykdYeLzhnGdb9MkYbBvgHU8TOyziZPJCiseeqS
	d4W8tn3ro0nHsvaE+hdOii8FRUtvJZHzaMChjEF+0+0DhoC384dADyrTLdgDi6UxCGDEwTtCowvkp
	SkGOOsOl11+l/BS3enU306HUL4aS5il+/iFc7hwJHGBB3Ww5GH+yfSGbKaVSXn9RAxk5Dr1ca0wyV
	4clcrbhF2jrvGbMUTuARvGNwk45NpR4OBU7H2etrd0anmup729WE+nLo120vQXc1hBplF3VJHbC7J
	fhkzxQzkLFZkq6RJoj3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtZG-00HTaX-0X;
	Thu, 11 Jan 2024 11:49:50 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtYr-00HT4f-2q;
	Thu, 11 Jan 2024 11:49:28 +0000
Received: from pyrite.hamster-moth.ts.net (h175-177-049-156.catv02.itscom.jp [175.177.49.156])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id BD1BC3DEE;
	Thu, 11 Jan 2024 12:48:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1704973699;
	bh=5ZPbRJ9kHgFWIlMZiMuKCf+qLu+qB2DLgZCl7DZfSqY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Z1cqkIHfMLZYmRW/lTIEwCbpG7nQRqV3mlk83UpZBKZWAFfSMNH25ceZMjASgAzav
	 4QdVRS3Ly526fbnazL8dOru7G597ZvpsGB33mSis344ma29O/xh/xTzUTsHHOHmdiK
	 MCzujBuiEceHM+tDAmDnPYFU6okD/bvmhtu0DMWY=
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
Subject: [PATCH v6 06/11] media: rkisp1: Add match data for i.MX8MP ISP
Date: Thu, 11 Jan 2024 20:48:26 +0900
Message-Id: <20240111114831.656736-7-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240111114831.656736-1-paul.elder@ideasonboard.com>
References: <20240111114831.656736-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_034926_130079_EC364313 
X-CRM114-Status: GOOD (  12.43  )
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
 .../platform/rockchip/rkisp1/rkisp1-dev.c     | 23 +++++++++++++++++++
 include/uapi/linux/rkisp1-config.h            |  2 ++
 2 files changed, 25 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 2e40c376cab5..e4aac0234178 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -532,6 +532,25 @@ static const struct rkisp1_info rk3399_isp_info = {
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
+	.isp_ver = IMX8MP_V10,
+	.features = RKISP1_FEATURE_MAIN_STRIDE,
+};
+
 static const struct of_device_id rkisp1_of_match[] = {
 	{
 		.compatible = "rockchip,px30-cif-isp",
@@ -541,6 +560,10 @@ static const struct of_device_id rkisp1_of_match[] = {
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
diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
index 730673ecc63d..f602442c2018 100644
--- a/include/uapi/linux/rkisp1-config.h
+++ b/include/uapi/linux/rkisp1-config.h
@@ -179,12 +179,14 @@
  * @RKISP1_V11: declared in the original vendor code, but not used
  * @RKISP1_V12: used at least in rk3326 and px30
  * @RKISP1_V13: used at least in rk1808
+ * @IMX8MP_V10: used in at least imx8mp
  */
 enum rkisp1_cif_isp_version {
 	RKISP1_V10 = 10,
 	RKISP1_V11,
 	RKISP1_V12,
 	RKISP1_V13,
+	IMX8MP_V10,
 };
 
 enum rkisp1_cif_isp_histogram_mode {
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
