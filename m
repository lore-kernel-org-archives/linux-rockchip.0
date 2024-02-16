Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C068C48260
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Feb 2024 09:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iy6jn+dfUjps6PPn72jc+ZmUeiX1kiOBlV+1C2s/w5s=; b=oNaBueRFg1A3Ti
	VdhKjO64IXri7MU3MLHnEbw6jeCMVeiojnwAX0buSMC4kVim28rrlF4JEp9iOA/hq/8dvX9Iw4fNH
	KKFP/hnX3ULxi80sedT6fpaeF1QIJjckal07Olhe0wBxeubQnN7loEiwfTs+cTxd27nJCZR7rIZaL
	tKLNuAy2Z7x0RhHl8WUxwT0aF2yXfyhsXDDn0Tw8iVOKEZlnPkvoy86hnMv4o0KSuMXO1k7Zgas+y
	rXGpn4zHU0OONAqOS9YBCaT10i7Ue/6m8cxcGTEiIvUHHaWvRmivLl+YuIq2DQGMPugEX4UPnlRzf
	YcliBoQzfF8RySCfiT8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rauxa-00000001qqe-423v;
	Fri, 16 Feb 2024 09:56:46 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rauwz-00000001qUq-2cpD;
	Fri, 16 Feb 2024 09:56:15 +0000
Received: from pyrite.hamster-moth.ts.net (h175-177-049-156.catv02.itscom.jp [175.177.49.156])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id E115513AC;
	Fri, 16 Feb 2024 10:55:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1708077364;
	bh=d66Y6jd0net+P9o8dHW4ATe683evbx/HzGSWqrs3izc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oMj5iiiI6QfxgHjSF1ZDJFPCzlkYudGSB8RqP3LRTSM5/Y0gJdSaWY41J9KKFLsJ7
	 RiMO3dJ7kjJ8s33GnkGZxdd2teUjBONCnTmmhU1CW+ZN3CjMPjnQWH/XFQetHaMhN+
	 SWet91o+4D43Sqf/97/H78hj6qPGBvV4HMZqzQ2s=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: kieran.bingham@ideasonboard.com,
	tomi.valkeinen@ideasonboard.com,
	umang.jain@ideasonboard.com,
	aford173@gmail.com,
	Paul Elder <paul.elder@ideasonboard.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v12 10/12] media: rkisp1: Add UYVY as an output format
Date: Fri, 16 Feb 2024 18:54:56 +0900
Message-Id: <20240216095458.2919694-11-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240216095458.2919694-1-paul.elder@ideasonboard.com>
References: <20240216095458.2919694-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_015610_158778_584ECE98 
X-CRM114-Status: GOOD (  13.90  )
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

Add support for UYVY as an output format. The uv_swap bit in the
MI_XTD_FORMAT_CTRL register that is used for the NV formats does not
work for packed YUV formats. Thus, UYVY support is implemented via
byte-swapping. This method clearly does not work for implementing
support for YVYU and VYUY.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Tested-by: Adam Ford <aford173@gmail.com>

---
Changes in v12:
- replace MI_OUTPUT_FORMAT feature flag with MAIN_STRIDE
---
 .../platform/rockchip/rkisp1/rkisp1-capture.c | 41 +++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index 99375e08b503..64b1d1104e20 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -97,6 +97,12 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_mp_fmts[] = {
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
+	}, {
+		.fourcc = V4L2_PIX_FMT_UYVY,
+		.uv_swap = 0,
+		.yc_swap = 1,
+		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
+		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YUV422P,
 		.uv_swap = 0,
@@ -231,6 +237,13 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
+	}, {
+		.fourcc = V4L2_PIX_FMT_UYVY,
+		.uv_swap = 0,
+		.yc_swap = 1,
+		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
+		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
+		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YUV422P,
 		.uv_swap = 0,
@@ -464,6 +477,20 @@ static void rkisp1_mp_config(struct rkisp1_capture *cap)
 		rkisp1_write(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL, reg);
 	}
 
+	/*
+	 * U/V swapping with the MI_XTD_FORMAT_CTRL register only works for
+	 * NV12/NV21 and NV16/NV61, so instead use byte swap to support UYVY.
+	 * YVYU and VYUY cannot be supported with this method.
+	 */
+	if (rkisp1_has_feature(rkisp1, MAIN_STRIDE)) {
+		reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_OUTPUT_ALIGN_FORMAT);
+		if (cap->pix.cfg->yc_swap)
+			reg |= RKISP1_CIF_OUTPUT_ALIGN_FORMAT_MP_BYTE_SWAP_BYTES;
+		else
+			reg &= ~RKISP1_CIF_OUTPUT_ALIGN_FORMAT_MP_BYTE_SWAP_BYTES;
+		rkisp1_write(rkisp1, RKISP1_CIF_MI_OUTPUT_ALIGN_FORMAT, reg);
+	}
+
 	rkisp1_mi_config_ctrl(cap);
 
 	reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_CTRL);
@@ -507,6 +534,20 @@ static void rkisp1_sp_config(struct rkisp1_capture *cap)
 		rkisp1_write(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL, reg);
 	}
 
+	/*
+	 * U/V swapping with the MI_XTD_FORMAT_CTRL register only works for
+	 * NV12/NV21 and NV16/NV61, so instead use byte swap to support UYVY.
+	 * YVYU and VYUY cannot be supported with this method.
+	 */
+	if (rkisp1_has_feature(rkisp1, MAIN_STRIDE)) {
+		reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_OUTPUT_ALIGN_FORMAT);
+		if (cap->pix.cfg->yc_swap)
+			reg |= RKISP1_CIF_OUTPUT_ALIGN_FORMAT_SP_BYTE_SWAP_BYTES;
+		else
+			reg &= ~RKISP1_CIF_OUTPUT_ALIGN_FORMAT_SP_BYTE_SWAP_BYTES;
+		rkisp1_write(rkisp1, RKISP1_CIF_MI_OUTPUT_ALIGN_FORMAT, reg);
+	}
+
 	rkisp1_mi_config_ctrl(cap);
 
 	mi_ctrl = rkisp1_read(rkisp1, RKISP1_CIF_MI_CTRL);
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
