Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C0AFC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CkzjC0JCJeKVcngRtoaosJC7p1xaFHw50FZUg6eygYg=; b=OiShzM0ByVBa36
	BDfFBS0uVttQyLo1VeWXIUxRiOFOH0Ikskpp82Rd8KVObWFYhJrRpryc+7jZyPFq3+YMEIvGj/pG+
	pvll+VBjAi1lYJYvatf9PGhzSKp79sdraLRDaBtH2tHeEgTsI9/T9s8TlwYPbZ9xJJZb72mGB5yn5
	nNuIZ+0WdJJ7ZDf83lK7MqpFDNSXN48S91rsGL0767vMK5T4qBE+pUaz5sc9fyor7fP6FvMd/1wpv
	fCgVMvLz+1nqqp84XKPCYNwQaymcLRUIUe3L6YB6PgLoHg6Dfjzhy/bpGwuKuICwPYKGQiBlxk8gT
	qsV83puaRqJvw1Nn0Gnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1BzB-00AuaH-QM; Tue, 14 Jun 2022 19:13:57 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Bz8-00AuVT-96
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:13:55 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id C021E825;
	Tue, 14 Jun 2022 21:13:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655234032;
	bh=/zY9FmG+cX5zgDSYHx1u5t6KmYKY5RDU86JnqNycTj4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Ew0j3SExQ8b9xcbmzIFgawsVruJ8NLnJAMaodnCjV6ntHK4zPo+ZpXrtOI8PU/Dip
	 gqDfGra8RI8pZoZmU/Z07ue7X8ecVZ6uLnWXg9RmSFNGYEw21XPxcFPV9lO96LYyTn
	 1YR+jFvei25IB+A6s6hG7OZsKl8bm9eI/vI2kbGM=
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
Subject: [PATCH 31/55] media: rkisp1: isp: Move input configuration to rkisp1_config_isp()
Date: Wed, 15 Jun 2022 04:11:03 +0900
Message-Id: <20220614191127.3420492-32-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_121354_518270_B6B95618 
X-CRM114-Status: GOOD (  12.17  )
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

The ISP_ACQ_PROP register is set twice, once in rkisp1_config_isp() for
most of its fields, and once in rkisp1_config_dvp() (called from
rkisp1_config_path()) to configure the input selection field. Move the
latter to rkisp1_config_isp() to write the register once only, and drop
the now empty rkisp1_config_dvp() function.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-isp.c     | 62 +++++++------------
 1 file changed, 22 insertions(+), 40 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index e27137b5c33e..f5b8a2e31936 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -141,7 +141,7 @@ static int rkisp1_config_isp(struct rkisp1_isp *isp,
 			     enum v4l2_mbus_type mbus_type, u32 mbus_flags)
 {
 	struct rkisp1_device *rkisp1 = isp->rkisp1;
-	u32 isp_ctrl = 0, irq_mask = 0, acq_mult = 0, signal = 0;
+	u32 isp_ctrl = 0, irq_mask = 0, acq_mult = 0, signal = 0, input_sel = 0;
 	const struct rkisp1_mbus_info *src_fmt, *sink_fmt;
 	struct v4l2_mbus_framefmt *sink_frm;
 	struct v4l2_rect *sink_crop;
@@ -189,6 +189,21 @@ static int rkisp1_config_isp(struct rkisp1_isp *isp,
 	if (mbus_type == V4L2_MBUS_BT656 || mbus_type == V4L2_MBUS_PARALLEL) {
 		if (mbus_flags & V4L2_MBUS_PCLK_SAMPLE_RISING)
 			signal = RKISP1_CIF_ISP_ACQ_PROP_POS_EDGE;
+
+		switch (sink_fmt->bus_width) {
+		case 8:
+			input_sel = RKISP1_CIF_ISP_ACQ_PROP_IN_SEL_8B_ZERO;
+			break;
+		case 10:
+			input_sel = RKISP1_CIF_ISP_ACQ_PROP_IN_SEL_10B_ZERO;
+			break;
+		case 12:
+			input_sel = RKISP1_CIF_ISP_ACQ_PROP_IN_SEL_12B;
+			break;
+		default:
+			dev_err(rkisp1->dev, "Invalid bus width\n");
+			return -EINVAL;
+		}
 	}
 
 	if (mbus_type == V4L2_MBUS_PARALLEL) {
@@ -201,7 +216,7 @@ static int rkisp1_config_isp(struct rkisp1_isp *isp,
 
 	rkisp1_write(rkisp1, RKISP1_CIF_ISP_CTRL, isp_ctrl);
 	rkisp1_write(rkisp1, RKISP1_CIF_ISP_ACQ_PROP,
-		     signal | sink_fmt->yuv_seq |
+		     signal | sink_fmt->yuv_seq | input_sel |
 		     RKISP1_CIF_ISP_ACQ_PROP_BAYER_PAT(sink_fmt->bayer_pat) |
 		     RKISP1_CIF_ISP_ACQ_PROP_FIELD_SEL_ALL);
 	rkisp1_write(rkisp1, RKISP1_CIF_ISP_ACQ_NR_FRAMES, 0);
@@ -238,52 +253,20 @@ static int rkisp1_config_isp(struct rkisp1_isp *isp,
 	return 0;
 }
 
-static int rkisp1_config_dvp(struct rkisp1_isp *isp)
-{
-	struct rkisp1_device *rkisp1 = isp->rkisp1;
-	const struct rkisp1_mbus_info *sink_fmt = isp->sink_fmt;
-	u32 val, input_sel;
-
-	switch (sink_fmt->bus_width) {
-	case 8:
-		input_sel = RKISP1_CIF_ISP_ACQ_PROP_IN_SEL_8B_ZERO;
-		break;
-	case 10:
-		input_sel = RKISP1_CIF_ISP_ACQ_PROP_IN_SEL_10B_ZERO;
-		break;
-	case 12:
-		input_sel = RKISP1_CIF_ISP_ACQ_PROP_IN_SEL_12B;
-		break;
-	default:
-		dev_err(rkisp1->dev, "Invalid bus width\n");
-		return -EINVAL;
-	}
-
-	val = rkisp1_read(rkisp1, RKISP1_CIF_ISP_ACQ_PROP);
-	rkisp1_write(rkisp1, RKISP1_CIF_ISP_ACQ_PROP, val | input_sel);
-
-	return 0;
-}
-
 /* Configure MUX */
-static int rkisp1_config_path(struct rkisp1_isp *isp,
-			      enum v4l2_mbus_type mbus_type)
+static void rkisp1_config_path(struct rkisp1_isp *isp,
+			       enum v4l2_mbus_type mbus_type)
 {
 	struct rkisp1_device *rkisp1 = isp->rkisp1;
 	u32 dpcl = rkisp1_read(rkisp1, RKISP1_CIF_VI_DPCL);
-	int ret = 0;
 
-	if (mbus_type == V4L2_MBUS_BT656 ||
-	    mbus_type == V4L2_MBUS_PARALLEL) {
-		ret = rkisp1_config_dvp(isp);
+	if (mbus_type == V4L2_MBUS_BT656 || mbus_type == V4L2_MBUS_PARALLEL) {
 		dpcl |= RKISP1_CIF_VI_DPCL_IF_SEL_PARALLEL;
 	} else if (mbus_type == V4L2_MBUS_CSI2_DPHY) {
 		dpcl |= RKISP1_CIF_VI_DPCL_IF_SEL_MIPI;
 	}
 
 	rkisp1_write(rkisp1, RKISP1_CIF_VI_DPCL, dpcl);
-
-	return ret;
 }
 
 /* Hardware configure Entry */
@@ -295,9 +278,8 @@ static int rkisp1_config_cif(struct rkisp1_isp *isp,
 	ret = rkisp1_config_isp(isp, mbus_type, mbus_flags);
 	if (ret)
 		return ret;
-	ret = rkisp1_config_path(isp, mbus_type);
-	if (ret)
-		return ret;
+
+	rkisp1_config_path(isp, mbus_type);
 	rkisp1_config_ism(isp);
 
 	return 0;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
