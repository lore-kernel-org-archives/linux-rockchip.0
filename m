Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F0C5CCA48A
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jun 2022 23:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iNPSC+UsP7KkG3QnlD59SzisICnmak1Ieu1WiPw8G5Q=; b=YAnFUKSmtObCLT
	VmfEvjCtFtKCyWKU11GLQIMCoslfb/msq4eljVvOH5lk/2OpxJdPGTSU5lj2lysHydbRGMmmDAyoe
	FuQZ7R7iuev0d76CKQO5Ca/dfJxrzvXJKyzXmnJTQKYrmocg6DyaxAow2WVMczJ+s47mhiLbhLmFv
	CKgoy2R1OePotfH7ddN4fvlcBT0q/9gA3Usbp2p5Sb5kLZ2yZlQGrCEfTaioEUl6cBnuE6ImiCK3L
	A7AI40GNc1Psb3bvwcXqUqQd6lnYIcPpZoFR/QBEvQfAGyGzoKAe/OQyqP7Dn0PQIvnqgR6MlmM6a
	YSzHIxoa9iUEGCKZ3LNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73Gv-0020i4-Tv; Thu, 30 Jun 2022 23:08:29 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73GS-0020NJ-A9
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 23:08:12 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8175529E4;
	Fri,  1 Jul 2022 01:07:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656630478;
	bh=CCn1pvCGzS4JVn27RddMmYCDfKrTsyFjqp4DZNL7wLI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Wj1ptsw4tT9+HKmlESa+tTuCuQXova0Z1DxfjjzlVIPoUtjd5hw6SZPh1OhgMmcjj
	 atPJesl/WztXSZVarsaSunatmZY5six8R7lo0m4v79VXmbJuiiGXbHMNGGAs3Ns7zE
	 FNck8Na3e/m3cJkym3FjyQzYsQt3zV0YwJFtvUJo=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v2 33/55] media: rkisp1: isp: Merge ISP_ACQ_PROP configuration in single variable
Date: Fri,  1 Jul 2022 02:06:51 +0300
Message-Id: <20220630230713.10580-34-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_160800_582734_165D48CF 
X-CRM114-Status: UNSURE (   9.97  )
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

The rkisp1_config_isp() function stores the value of the input selection
and polarity configuration in two different local variables, OR'ed
together when writing the register. Merge them into a single acq_prop
variable.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
---
 .../media/platform/rockchip/rkisp1/rkisp1-isp.c  | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index 85c1995bb5c2..938541ce52ce 100644
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
 			dev_err(rkisp1->dev, "Invalid bus width %u\n",
@@ -209,15 +209,15 @@ static int rkisp1_config_isp(struct rkisp1_isp *isp,
 
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
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
