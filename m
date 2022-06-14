Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC0D9C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oW8Yq5EToGHlRy/m9iq7bLPSaGxvUGzKgaPv+HmELZc=; b=ImSEnGb0zEGxrY
	vMa7bkNd5ZpYrBc3dwvCW7hYtmljIIpEbfAzoeUSwWyewZ/5eHVrghfJqO668wkj7c8kwQ+4Fog5r
	b8kTqfZtDGv2fNHyYElWJNQAFL4l7r77noDDlJZqR5CYuVgFASNm0MIHJ8yLqNeIbwuIZjrd2j+Wt
	iNym4FGgCohPJ7cuqwkLax+u81Eni8hZQicKQ3nfx1elwly4DIIGVUrAeU/w6ojBNFFnJXkGgMeOj
	Tgku+UCKl01vrH54PYV89LxLXAaQ00yCinFLGYhYe9xUWv/yFUEitndVehKhpaCTGVsF8deO+klhh
	5hx+XLUf5SHriheIqvhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Bxc-00AtLX-Ky; Tue, 14 Jun 2022 19:12:20 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1BxZ-00AtHO-MK
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:12:19 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id B2AE2825;
	Tue, 14 Jun 2022 21:12:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655233936;
	bh=ezpdH0sDENe4SC2kcyfXXr7hHWjEHr22xpbzcdQQXP0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=a952uRO9gdq1xudsMOe6fnPxLFcK6th8DGx1bzWtx5TAwErv9tcIzl+1q6lWGG/SC
	 fbLGwf5HQiphz3edG5oRK7/rNCZiX500wo4Svz+S/3UBq/q645xgAUYBLqGlBLY65L
	 84gEDJcuD+C2pd2Nbqm533bqt8of6YdnCsqkT7So=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Paul Elder <paul.elder@ideasonboard.com>,
	dafna@fastmail.com,
	heiko@sntech.de,
	laurent.pinchart@ideasonboard.com,
	jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org,
	djrscally@gmail.com,
	helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 07/55] media: rkisp1: Save info pointer in rkisp1_device
Date: Wed, 15 Jun 2022 04:10:39 +0900
Message-Id: <20220614191127.3420492-8-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_121217_901839_33D4B302 
X-CRM114-Status: GOOD (  14.03  )
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

To make it possible to use the rkisp1_info after probe time (for
instance to make code conditional on the ISP version), save it in the
main rkisp1_device structure. To achieve this, also move the info
structure into the common header, and document it.

While at it, drop a NULL check in rkisp1_probe() for the match data as
it can't happen.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-common.h  | 22 +++++++++++++++++++
 .../platform/rockchip/rkisp1/rkisp1-dev.c     | 15 +++----------
 2 files changed, 25 insertions(+), 12 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index a67fe7b1dfa1..50d31a254b03 100644
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
+ * @isr_size: number of entires in the @isrs array
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
@@ -395,6 +415,7 @@ struct rkisp1_debug {
  * @pipe:	   media pipeline
  * @stream_lock:   serializes {start/stop}_streaming callbacks between the capture devices.
  * @debug:	   debug params to be exposed on debugfs
+ * @info:	   version-specific ISP information
  */
 struct rkisp1_device {
 	void __iomem *base_addr;
@@ -413,6 +434,7 @@ struct rkisp1_device {
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
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
