Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4CFBC43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:14:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VALE6538Q0MpsmhqS4x0x/5OGDJYXujCxGLB1u7hBBQ=; b=jtPsq8S8wpA8vw
	Tu1SaHRwaNKMhSdOOcxCU/JxZ+1KQBduIkJGgPR/QYMikNW2oAzQPHkMrtrDAPejI7E4ng4ySrYKR
	dWvIXZaslDK6WEoK9fPMTmX6l9KQ1a1n5soQw0GVdEHgbl715Lk8IURF6GLqCYkvJn4A7bnhaE+st
	5epz8auUcu2izooVqH1B01bNNCS/AG1mjHNp/aVsYJoYesrTMcWhWG3u5iO4XtBhVwm/QfK5z6TOB
	jA1oBi0O8tQOUliwBZNwEFAM3L4Lyz/A3Q4jT2o970r3kgOjUrLp1f6a2hNDwnAxJsN3+rfM6DuaS
	5HSt+0PXka/Bi5jhR/pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1BzG-00AueT-3Y; Tue, 14 Jun 2022 19:14:02 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1BzC-00Aua2-IT
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:14:00 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id AC898D96;
	Tue, 14 Jun 2022 21:13:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655234037;
	bh=35+hA7UDvD2qw6jCdPcIbuPN8UA7aIOG3BVxM+CvBR8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=XIGPIpoPrOZX7ILPWr9PyEU34w3DL9PeFEHSWsxqn63Bgq/ZUyMjZGE8T0dLIo6oK
	 bHNz5A2eiUodiox8nmIFJYqMORsTTJbQ/EllJPTrqEvIVyyxdzLH4JBP8YS4EG21pM
	 N5pL2XkAV5glO/FxzBX44DEyTUV0hd4pGoDfXMFo=
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
Subject: [PATCH 32/55] media: rkisp1: isp: Merge ISP_ACQ_PROP configuration in single variable
Date: Wed, 15 Jun 2022 04:11:04 +0900
Message-Id: <20220614191127.3420492-33-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_121358_787080_1BDAE57B 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
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

The rkisp1_config_isp() function stores the value of the input selection
and polarity configuration in two different local variables, OR'ed
together when writing the register. Merge them into a single acq_prop
variable.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../media/platform/rockchip/rkisp1/rkisp1-isp.c  | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index f5b8a2e31936..4496af991c82 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -141,7 +141,7 @@ static int rkisp1_config_isp(struct rkisp1_isp *isp,
 			     enum v4l2_mbus_type mbus_type, u32 mbus_flags)
 {
 	struct rkisp1_device *rkisp1 = isp->rkisp1;
-	u32 isp_ctrl = 0, irq_mask = 0, acq_mult = 0, signal = 0, input_sel = 0;
+	u32 isp_ctrl = 0, irq_mask = 0, acq_mult = 0, acq_prop = 0;
 	const struct rkisp1_mbus_info *src_fmt, *sink_fmt;
 	struct v4l2_mbus_framefmt *sink_frm;
 	struct v4l2_rect *sink_crop;
@@ -188,17 +188,17 @@ static int rkisp1_config_isp(struct rkisp1_isp *isp,
 	/* Set up input acquisition properties */
 	if (mbus_type == V4L2_MBUS_BT656 || mbus_type == V4L2_MBUS_PARALLEL) {
 		if (mbus_flags & V4L2_MBUS_PCLK_SAMPLE_RISING)
-			signal = RKISP1_CIF_ISP_ACQ_PROP_POS_EDGE;
+			acq_prop |= RKISP1_CIF_ISP_ACQ_PROP_POS_EDGE;
 
 		switch (sink_fmt->bus_width) {
 		case 8:
-			input_sel = RKISP1_CIF_ISP_ACQ_PROP_IN_SEL_8B_ZERO;
+			acq_prop |= RKISP1_CIF_ISP_ACQ_PROP_IN_SEL_8B_ZERO;
 			break;
 		case 10:
-			input_sel = RKISP1_CIF_ISP_ACQ_PROP_IN_SEL_10B_ZERO;
+			acq_prop |= RKISP1_CIF_ISP_ACQ_PROP_IN_SEL_10B_ZERO;
 			break;
 		case 12:
-			input_sel = RKISP1_CIF_ISP_ACQ_PROP_IN_SEL_12B;
+			acq_prop |= RKISP1_CIF_ISP_ACQ_PROP_IN_SEL_12B;
 			break;
 		default:
 			dev_err(rkisp1->dev, "Invalid bus width\n");
@@ -208,15 +208,15 @@ static int rkisp1_config_isp(struct rkisp1_isp *isp,
 
 	if (mbus_type == V4L2_MBUS_PARALLEL) {
 		if (mbus_flags & V4L2_MBUS_VSYNC_ACTIVE_LOW)
-			signal |= RKISP1_CIF_ISP_ACQ_PROP_VSYNC_LOW;
+			acq_prop |= RKISP1_CIF_ISP_ACQ_PROP_VSYNC_LOW;
 
 		if (mbus_flags & V4L2_MBUS_HSYNC_ACTIVE_LOW)
-			signal |= RKISP1_CIF_ISP_ACQ_PROP_HSYNC_LOW;
+			acq_prop |= RKISP1_CIF_ISP_ACQ_PROP_HSYNC_LOW;
 	}
 
 	rkisp1_write(rkisp1, RKISP1_CIF_ISP_CTRL, isp_ctrl);
 	rkisp1_write(rkisp1, RKISP1_CIF_ISP_ACQ_PROP,
-		     signal | sink_fmt->yuv_seq | input_sel |
+		     acq_prop | sink_fmt->yuv_seq |
 		     RKISP1_CIF_ISP_ACQ_PROP_BAYER_PAT(sink_fmt->bayer_pat) |
 		     RKISP1_CIF_ISP_ACQ_PROP_FIELD_SEL_ALL);
 	rkisp1_write(rkisp1, RKISP1_CIF_ISP_ACQ_NR_FRAMES, 0);
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
