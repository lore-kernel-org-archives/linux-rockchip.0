Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23D12CCA487
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Jul 2022 00:16:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t82P6TWVXVDWSDbMb4ovXlz8Js0IBxh0vKKBQvMPzJU=; b=jzqk1Gg6U7YBtI
	Jw73Okdvtbbd8ZTEcbpNGhVyVrFHUZJ/2CP+RuZ6+XUQbTPAt0OpQTZVfjxmNO3sRhrXKbUBjMUXu
	33kd66i0BB5XWVW83SYiOEOtemRenNdqLXqw7lRPIDpCqZTfxSMtPfG3HELhOhxcLCbWKir+Bwfro
	3wetjgufqQb4sqAtODKII3SD8Rw2vwwxIAovqDpfGsX/J4mxSN1go9jtLgxnF8XRervhtgJ9ANkxA
	epiaz9p2RDVbBU/jz7WXrMO76vEsTEvZiKdi6s4okNVv2d7BRmvZOgi4Ea7/0/ZNcAuVrJhZ7kS1x
	6Dzjq7Dfqp3/mPtjcEkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o74KC-0028IT-Di; Fri, 01 Jul 2022 00:15:56 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73GG-0020C8-9U
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 23:07:53 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 51790D24;
	Fri,  1 Jul 2022 01:07:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656630462;
	bh=EMDt1o79j6K6mXj7Jf42hhUVS08ia+u7YSuivnkG1FQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ba2BARPL2JzpkASEqW/hayOJ2PbTzNYab3Nv0lQSEHIjjxcOcU/7cR/qtYuv8v9dY
	 1lQpQBOpGtBqsEzYHr2FwH9bagvk02ucaTQ31Jb0Bi6oVRZ96Rt3+myBHScTxdfGXx
	 TNmM+0znQ9y3nVzWFrq/LccrqRqMJG8dO5Pb3bzM=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v2 08/55] media: rkisp1: Rename rkisp1_match_data to rkisp1_info
Date: Fri,  1 Jul 2022 02:06:26 +0300
Message-Id: <20220630230713.10580-9-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_160748_577752_2693DD6D 
X-CRM114-Status: GOOD (  13.97  )
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

The rkisp1_match_data structure contains device model-specific
information. It it referenced from OF match data, but that's an
implementation detail. Rename it to rkisp1_info to reflect its main
purpose.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
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
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
