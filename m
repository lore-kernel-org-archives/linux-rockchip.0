Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7005ACCA47A
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fc48JsyH4wNWdR9yKi/UarAQ9GVQm589vj19VE1fKh4=; b=ZnJwdhg7u5sl23
	E31q9JUDjn1gfehTOSr77prS5g4QFzyL0i1ymRKzCMFuwmaVxht3gPKreDFN6vVggaq+cNTMtNQxX
	m4NQOEDV9R97Des54VkQ0Vkh1k2FpdALs8LEuUzYwp5rmLgyFxzj1FlQY1Gif56wEjMD75IO8n6DH
	VwqvYORYH4EeurJEMHBCEIazdY4/LYmL6xI/0Un34IQujDjn+RBByGCsBbUQBgOrjDt439MhTsb+l
	vIBJpRnUTY5VEm/AYa/7KkDuLY31woSxiNSoBsGPFIJLeafxA8hrVrkX+faMQmEg1Oo6uLZqXJDW1
	SGXRgVfnB8CM8pgCP0BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1BxY-00AtGv-Al; Tue, 14 Jun 2022 19:12:16 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1BxV-00AtED-DY
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:12:14 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8F488D96;
	Tue, 14 Jun 2022 21:12:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655233932;
	bh=Yfn1DCE8BQiJyEWvIA9Gs2CWs3elUgygGqaP9Io968k=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BhviWCjMEO7zHi3p1eXtv2Oa+PGFeBDk27NPcdHYe47E7oQTIwYfoqdtCF9OhCWHa
	 UFPMpODoL+s5PaFLmk5XlosOCq6VbI+8KSikveKmHzGVoMaOBhKovyVCa16vQr6UI7
	 OjYYm6pN53K6DvvqPqyk1CfBFG7+YUbG0m2Jbig8=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	dafna@fastmail.com,
	heiko@sntech.de,
	jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org,
	djrscally@gmail.com,
	helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 06/55] media: rkisp1: Rename rkisp1_match_data to rkisp1_info
Date: Wed, 15 Jun 2022 04:10:38 +0900
Message-Id: <20220614191127.3420492-7-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_121213_633273_9079D163 
X-CRM114-Status: GOOD (  13.65  )
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

From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

The rkisp1_match_data structure contains device model-specific
information. It it referenced from OF match data, but that's an
implementation detail. Rename it to rkisp1_info to reflect its main
purpose.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-dev.c     | 34 +++++++++----------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index ba773c0784fb..258980ef4783 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -105,7 +105,7 @@ struct rkisp1_isr_data {
 	irqreturn_t (*isr)(int irq, void *ctx);
 };
 
-struct rkisp1_match_data {
+struct rkisp1_info {
 	const char * const *clks;
 	unsigned int clk_size;
 	const struct rkisp1_isr_data *isrs;
@@ -420,7 +420,7 @@ static const struct rkisp1_isr_data px30_isp_isrs[] = {
 	{ "mipi", rkisp1_mipi_isr },
 };
 
-static const struct rkisp1_match_data px30_isp_match_data = {
+static const struct rkisp1_info px30_isp_info = {
 	.clks = px30_isp_clks,
 	.clk_size = ARRAY_SIZE(px30_isp_clks),
 	.isrs = px30_isp_isrs,
@@ -438,7 +438,7 @@ static const struct rkisp1_isr_data rk3399_isp_isrs[] = {
 	{ NULL, rkisp1_isr },
 };
 
-static const struct rkisp1_match_data rk3399_isp_match_data = {
+static const struct rkisp1_info rk3399_isp_info = {
 	.clks = rk3399_isp_clks,
 	.clk_size = ARRAY_SIZE(rk3399_isp_clks),
 	.isrs = rk3399_isp_isrs,
@@ -449,11 +449,11 @@ static const struct rkisp1_match_data rk3399_isp_match_data = {
 static const struct of_device_id rkisp1_of_match[] = {
 	{
 		.compatible = "rockchip,px30-cif-isp",
-		.data = &px30_isp_match_data,
+		.data = &px30_isp_info,
 	},
 	{
 		.compatible = "rockchip,rk3399-cif-isp",
-		.data = &rk3399_isp_match_data,
+		.data = &rk3399_isp_info,
 	},
 	{},
 };
@@ -461,7 +461,7 @@ MODULE_DEVICE_TABLE(of, rkisp1_of_match);
 
 static int rkisp1_probe(struct platform_device *pdev)
 {
-	const struct rkisp1_match_data *match_data;
+	const struct rkisp1_info *info;
 	struct device *dev = &pdev->dev;
 	struct rkisp1_device *rkisp1;
 	struct v4l2_device *v4l2_dev;
@@ -469,8 +469,8 @@ static int rkisp1_probe(struct platform_device *pdev)
 	int ret, irq;
 	u32 cif_id;
 
-	match_data = of_device_get_match_data(&pdev->dev);
-	if (!match_data)
+	info = of_device_get_match_data(&pdev->dev);
+	if (!info)
 		return -ENODEV;
 
 	rkisp1 = devm_kzalloc(dev, sizeof(*rkisp1), GFP_KERNEL);
@@ -486,14 +486,14 @@ static int rkisp1_probe(struct platform_device *pdev)
 	if (IS_ERR(rkisp1->base_addr))
 		return PTR_ERR(rkisp1->base_addr);
 
-	for (i = 0; i < match_data->isr_size; i++) {
-		irq = match_data->isrs[i].name
-		    ? platform_get_irq_byname(pdev, match_data->isrs[i].name)
+	for (i = 0; i < info->isr_size; i++) {
+		irq = info->isrs[i].name
+		    ? platform_get_irq_byname(pdev, info->isrs[i].name)
 		    : platform_get_irq(pdev, i);
 		if (irq < 0)
 			return irq;
 
-		ret = devm_request_irq(dev, irq, match_data->isrs[i].isr, IRQF_SHARED,
+		ret = devm_request_irq(dev, irq, info->isrs[i].isr, IRQF_SHARED,
 				       dev_driver_string(dev), dev);
 		if (ret) {
 			dev_err(dev, "request irq failed: %d\n", ret);
@@ -501,12 +501,12 @@ static int rkisp1_probe(struct platform_device *pdev)
 		}
 	}
 
-	for (i = 0; i < match_data->clk_size; i++)
-		rkisp1->clks[i].id = match_data->clks[i];
-	ret = devm_clk_bulk_get(dev, match_data->clk_size, rkisp1->clks);
+	for (i = 0; i < info->clk_size; i++)
+		rkisp1->clks[i].id = info->clks[i];
+	ret = devm_clk_bulk_get(dev, info->clk_size, rkisp1->clks);
 	if (ret)
 		return ret;
-	rkisp1->clk_size = match_data->clk_size;
+	rkisp1->clk_size = info->clk_size;
 
 	pm_runtime_enable(&pdev->dev);
 
@@ -519,7 +519,7 @@ static int rkisp1_probe(struct platform_device *pdev)
 
 	pm_runtime_put(&pdev->dev);
 
-	rkisp1->media_dev.hw_revision = match_data->isp_ver;
+	rkisp1->media_dev.hw_revision = info->isp_ver;
 	strscpy(rkisp1->media_dev.model, RKISP1_DRIVER_NAME,
 		sizeof(rkisp1->media_dev.model));
 	rkisp1->media_dev.dev = &pdev->dev;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
