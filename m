Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C11E9C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 12:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0cXroombCdueLdc//dpnj8nqPfVJTRY2OQtN7114Q+o=; b=WztRWYZgotFDI/
	54y534pYKvVXO/W5i4WvwLVnBlq6P8riqpFqJR3MjM4Q66fC6+rsAZ8yOlckcdGEY1U8jetrvfndO
	W0cvx+rkoHbk1cr6vAEZXl5WisQ7Ldkqt8PYx6WfzsKAB6QRvfs8XdccRfZmRqutEPyx3NwxYzR2D
	hBNW4Ze+1xMkepAOoMGspja1zJe0kUIutCR4oJ0NzYwL2ZteYrJGI8xZ1EPVmii5pZyL9Qv9fjmtI
	luKudng8HjTwKnl1hLusUd109bNnz052KR1Npa2lMWEeO1V6vw3bqQIr/HFgcCpWyzgsprpo8lZYX
	IkRbltgTvMYEflfiuT0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAsxy-001fSk-TM; Mon, 11 Jul 2022 12:56:47 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAsl5-001Y65-HJ
	for linux-rockchip@lists.infradead.org; Mon, 11 Jul 2022 12:43:29 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8BF5C326;
	Mon, 11 Jul 2022 14:43:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657543405;
	bh=01epSYX4cVGebTAAHohqrj/JBTpDXrCiZTO0fNB7AQI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=GrBjsN7QqxBPOKyJrmuc1pM8fHDSu4M4F131mBmLsqI5OKqtW4auw2tr8p/6RtdWH
	 Iowlrqmm6Jr4WpopBmXPRS6HFuJqvnaVSRwAFAIh/vhsoJFP53rtvdvfNEL/3TAhbm
	 MAkwgIOO0bmF0G/nfJ6qohNV5SL9QtryqEHsfJmY=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v3 09/46] media: rkisp1: Save info pointer in rkisp1_device
Date: Mon, 11 Jul 2022 15:42:11 +0300
Message-Id: <20220711124248.2683-10-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
References: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_054327_810112_D2DE9FEF 
X-CRM114-Status: GOOD (  15.22  )
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

From: Paul Elder <paul.elder@ideasonboard.com>

To make it possible to use the rkisp1_info after probe time (for
instance to make code conditional on the ISP version), save it in the
main rkisp1_device structure. To achieve this, also move the info
structure into the common header, and document it.

While at it, drop a NULL check in rkisp1_probe() for the match data as
it can't happen.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
---
Changes since v1:

- Typo fix
---
 .../platform/rockchip/rkisp1/rkisp1-common.h  | 22 +++++++++++++++++++
 .../platform/rockchip/rkisp1/rkisp1-dev.c     | 15 +++----------
 2 files changed, 25 insertions(+), 12 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index 4243ff5e2197..7dca59f7b424 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -91,6 +91,26 @@ enum rkisp1_isp_pad {
 	RKISP1_ISP_PAD_MAX
 };
 
+/*
+ * struct rkisp1_info - Model-specific ISP Information
+ *
+ * @clks: array of ISP clock names
+ * @clk_size: number of entries in the @clks array
+ * @isrs: array of ISP interrupt descriptors
+ * @isr_size: number of entries in the @isrs array
+ * @isp_ver: ISP version
+ *
+ * This structure contains information about the ISP specific to a particular
+ * ISP model, version, or integration in a particular SoC.
+ */
+struct rkisp1_info {
+	const char * const *clks;
+	unsigned int clk_size;
+	const struct rkisp1_isr_data *isrs;
+	unsigned int isr_size;
+	enum rkisp1_cif_isp_version isp_ver;
+};
+
 /*
  * struct rkisp1_sensor_async - A container for the v4l2_async_subdev to add to the notifier
  *				of the v4l2-async API
@@ -386,6 +406,7 @@ struct rkisp1_debug {
  * @pipe:	   media pipeline
  * @stream_lock:   serializes {start/stop}_streaming callbacks between the capture devices.
  * @debug:	   debug params to be exposed on debugfs
+ * @info:	   version-specific ISP information
  */
 struct rkisp1_device {
 	void __iomem *base_addr;
@@ -404,6 +425,7 @@ struct rkisp1_device {
 	struct media_pipeline pipe;
 	struct mutex stream_lock; /* serialize {start/stop}_streaming cb between capture devices */
 	struct rkisp1_debug debug;
+	const struct rkisp1_info *info;
 };
 
 /*
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 258980ef4783..39ae35074062 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -105,14 +105,6 @@ struct rkisp1_isr_data {
 	irqreturn_t (*isr)(int irq, void *ctx);
 };
 
-struct rkisp1_info {
-	const char * const *clks;
-	unsigned int clk_size;
-	const struct rkisp1_isr_data *isrs;
-	unsigned int isr_size;
-	enum rkisp1_cif_isp_version isp_ver;
-};
-
 /* ----------------------------------------------------------------------------
  * Sensor DT bindings
  */
@@ -469,14 +461,13 @@ static int rkisp1_probe(struct platform_device *pdev)
 	int ret, irq;
 	u32 cif_id;
 
-	info = of_device_get_match_data(&pdev->dev);
-	if (!info)
-		return -ENODEV;
-
 	rkisp1 = devm_kzalloc(dev, sizeof(*rkisp1), GFP_KERNEL);
 	if (!rkisp1)
 		return -ENOMEM;
 
+	info = of_device_get_match_data(dev);
+	rkisp1->info = info;
+
 	dev_set_drvdata(dev, rkisp1);
 	rkisp1->dev = dev;
 
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
