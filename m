Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F4ACCCA488
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jun 2022 23:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IeEmgdI7tXpFdi4WCmMDUiui8c00ZSHe0YGXBZiYmqQ=; b=tC+OiHRVWXIvH1
	1ovpwRdYoUVdgPLFTFCmHqUCArnmCO9K88ugIu+ZKIVxm687Wly/74YGZLh9c6fYwepzU7iM79Cuq
	6m9MfXXbX98WDgmvAUkcLWzI872v0YvPB020pv8m0ilE2L2MXkM1b4k/NM8W7w5/Bdp3Jlh5x8b0P
	v2pQ/M175gjxk4kGCVf1meLTUt3yPPeE7fFDN+Ba0sLLIortR56UcCOys/LKebYLAdx+MXQvXxz3x
	Asv7A/cX+yNZ7yLcY8HMOQBlUFJ+fGRREtCvr82b4fLTrEnF9+/2H7V1sayo+xItd3jO8Dbcv08l9
	UWaLgIq9/pgHw3cPR/rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73Gv-0020hh-IV; Thu, 30 Jun 2022 23:08:29 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73GR-0020Mz-Pj
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 23:08:11 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id D75D2895;
	Fri,  1 Jul 2022 01:07:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656630478;
	bh=UTX1KlpduCbPiHTFDfiCrohJLjz4TSl7CUWviqNLgzs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=MB+ncRByxwUjuLVQ5mDFrrtkbgjTjBjAXLLlZ5mWeBabbhAz0UayrhAV5fRAXV02+
	 xNN8fWLQLGE3iPSyeU01d82MQc9sZLGl83UQuYhkeAcVCci4aazFUEbAno2FUM/MCS
	 FKeLyz+Nrgg5HZwPT1TsUCv4Zdg1/lCC1/kPVtP8=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v2 32/55] media: rkisp1: isp: Move input configuration to rkisp1_config_isp()
Date: Fri,  1 Jul 2022 02:06:50 +0300
Message-Id: <20220630230713.10580-33-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_160800_009978_EF24FA38 
X-CRM114-Status: GOOD (  12.70  )
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

The ISP_ACQ_PROP register is set twice, once in rkisp1_config_isp() for
most of its fields, and once in rkisp1_config_dvp() (called from
rkisp1_config_path()) to configure the input selection field. Move the
latter to rkisp1_config_isp() to write the register once only, and drop
the now empty rkisp1_config_dvp() function.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
Changes since v1:

- Print the value of unsupported bus width
- Remove unneeded curly braces
---
 .../platform/rockchip/rkisp1/rkisp1-isp.c     | 66 +++++++------------
 1 file changed, 24 insertions(+), 42 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index 9b32ae585de8..85c1995bb5c2 100644
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
@@ -189,6 +189,22 @@ static int rkisp1_config_isp(struct rkisp1_isp *isp,
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
+			dev_err(rkisp1->dev, "Invalid bus width %u\n",
+				sink_fmt->bus_width);
+			return -EINVAL;
+		}
 	}
 
 	if (mbus_type == V4L2_MBUS_PARALLEL) {
@@ -201,7 +217,7 @@ static int rkisp1_config_isp(struct rkisp1_isp *isp,
 
 	rkisp1_write(rkisp1, RKISP1_CIF_ISP_CTRL, isp_ctrl);
 	rkisp1_write(rkisp1, RKISP1_CIF_ISP_ACQ_PROP,
-		     signal | sink_fmt->yuv_seq |
+		     signal | sink_fmt->yuv_seq | input_sel |
 		     RKISP1_CIF_ISP_ACQ_PROP_BAYER_PAT(sink_fmt->bayer_pat) |
 		     RKISP1_CIF_ISP_ACQ_PROP_FIELD_SEL_ALL);
 	rkisp1_write(rkisp1, RKISP1_CIF_ISP_ACQ_NR_FRAMES, 0);
@@ -238,52 +254,19 @@ static int rkisp1_config_isp(struct rkisp1_isp *isp,
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
+	if (mbus_type == V4L2_MBUS_BT656 || mbus_type == V4L2_MBUS_PARALLEL)
 		dpcl |= RKISP1_CIF_VI_DPCL_IF_SEL_PARALLEL;
-	} else if (mbus_type == V4L2_MBUS_CSI2_DPHY) {
+	else if (mbus_type == V4L2_MBUS_CSI2_DPHY)
 		dpcl |= RKISP1_CIF_VI_DPCL_IF_SEL_MIPI;
-	}
 
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
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
