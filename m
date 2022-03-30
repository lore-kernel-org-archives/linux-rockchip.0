Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 159D4C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 06:48:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RsjHPLzBPk3XvELeHPphZ7rxcweWSifeR1ljaQ1ZL70=; b=0KYnGinTYREUVudfuCpxDiw0JS
	hCHUtbuGLiACB1J7DOrN6C+/+BP207O30wO8XWo1YDl1guP1FkkAcdJ2DeH6/IYZK3i/qMbBSpzA8
	/pIXdz3CwYLlMAj92m1RIidAgblu58j8m5akJM0SIExycFmg4T/EpBxpNYqaMyv9oIoLDaB9EBhCw
	8JshyALBeqvAPf8yIyT6TWi6VjDrSGIrRTPDSAPXhCIlm9ob657YL6McUJJRoI/+mdpLL/gkAJVBM
	KKd828Ui44HCK4UjOTrwoGsysWIobYbHUjT5VIqnpadb1/6r9bE2bj39T1YyOHM9cy5Fd8Q1pg/mH
	WgQ/obzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZS84-00ESry-Mh; Wed, 30 Mar 2022 06:48:28 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZS81-00ESqz-DF
 for linux-rockchip@lists.infradead.org; Wed, 30 Mar 2022 06:48:27 +0000
Received: from localhost (unknown [IPv6:2a02:3030:d:7e3f:91e1:4be5:4001:fd80])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: sebastianfricke)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 380F81F4436E;
 Wed, 30 Mar 2022 07:48:22 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1648622903;
 bh=NV0u/ujs6yEEQh0kTYEkObgi+i8FUlA9532q4bfxkjs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RCxKIpchhx7t8R+goxSJEZGr6eq5EwaRlfaJbWNfsFAYukxWuwXZVDPGAIdmOCwy1
 dt86+UwNNdNmgKc4Zh+eCCH7lKn2FgQuYS4piadVmMiGDfSIMpr/KfQvO5FTTcKNKh
 TutLt6dqdEoCqpAocRI3D16VVytdKjjbPOYPI5x+nCgmK6fVr+y462STLcp23lHyFR
 89bNiRUNwNyDa8l9wnx1G4CH/TDPdB1pQM9N3SCueR76ZLLr158ZRQPbgQhyecg+re
 w8f8XXZ5BPXYfZmUOCULy0aXBdJYidiyd/sV/lAJla8+4iGuQIx9Cph79aHi3ELxj8
 IuYF/AHFLjxBw==
Date: Wed, 30 Mar 2022 08:48:19 +0200
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel@collabora.com, Jonas Karlman <jonas@kwiboo.se>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 17/24] media: rkvdec: h264: Validate and use pic width
 and height in mbs
Message-ID: <20220330064819.42q5uouydvl5yqfg@basti-XPS-13-9310>
References: <20220328195936.82552-1-nicolas.dufresne@collabora.com>
 <20220328195936.82552-18-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220328195936.82552-18-nicolas.dufresne@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_234825_731727_F9B73CD3 
X-CRM114-Status: GOOD (  16.03  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hey Nicolas,

On 28.03.2022 15:59, Nicolas Dufresne wrote:
>From: Jonas Karlman <jonas@kwiboo.se>
>
>The width and height in mbs is currently configured based on OUTPUT buffer
>resolution, this works for frame pictures but can cause issues for field
>pictures.

How about:

"""
The width and height measured in macroblocks (mbs) is currently
configured based on the resolution of the OUTPUT buffer, this works for
frame pictures but can cause issues for field pictures..
"""

(I think it improves readability to explain at least once what mbs means
to anyone not aware)

>
>When frame_mbs_only_flag is 0 the height in mbs should be height of
>the field instead of height of frame.
>
>Validate pic_width_in_mbs_minus1 and pic_height_in_map_units_minus1
>against OUTPUT buffer resolution and use these values to configure HW.

s/OUTPUT buffer resolution/the resolution of the OUTPUT buffer/

>
>Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Reviewed-by: Sebastian Fricke <sebastian.fricke@collabora.com>

Greetings,
Sebastian
>---
> drivers/staging/media/rkvdec/rkvdec-h264.c |  4 ++--
> drivers/staging/media/rkvdec/rkvdec.c      | 10 ++++++++++
> 2 files changed, 12 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
>index db1e762baee5..847b8957dad3 100644
>--- a/drivers/staging/media/rkvdec/rkvdec-h264.c
>+++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
>@@ -672,8 +672,8 @@ static void assemble_hw_pps(struct rkvdec_ctx *ctx,
> 		  LOG2_MAX_PIC_ORDER_CNT_LSB_MINUS4);
> 	WRITE_PPS(!!(sps->flags & V4L2_H264_SPS_FLAG_DELTA_PIC_ORDER_ALWAYS_ZERO),
> 		  DELTA_PIC_ORDER_ALWAYS_ZERO_FLAG);
>-	WRITE_PPS(DIV_ROUND_UP(ctx->coded_fmt.fmt.pix_mp.width, 16), PIC_WIDTH_IN_MBS);
>-	WRITE_PPS(DIV_ROUND_UP(ctx->coded_fmt.fmt.pix_mp.height, 16), PIC_HEIGHT_IN_MBS);
>+	WRITE_PPS(sps->pic_width_in_mbs_minus1 + 1, PIC_WIDTH_IN_MBS);
>+	WRITE_PPS(sps->pic_height_in_map_units_minus1 + 1, PIC_HEIGHT_IN_MBS);
> 	WRITE_PPS(!!(sps->flags & V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY),
> 		  FRAME_MBS_ONLY_FLAG);
> 	WRITE_PPS(!!(sps->flags & V4L2_H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD),
>diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
>index 22c0382c579e..67539f4bf382 100644
>--- a/drivers/staging/media/rkvdec/rkvdec.c
>+++ b/drivers/staging/media/rkvdec/rkvdec.c
>@@ -29,8 +29,11 @@
>
> static int rkvdec_try_ctrl(struct v4l2_ctrl *ctrl)
> {
>+	struct rkvdec_ctx *ctx = container_of(ctrl->handler, struct rkvdec_ctx, ctrl_hdl);
>+
> 	if (ctrl->id == V4L2_CID_STATELESS_H264_SPS) {
> 		const struct v4l2_ctrl_h264_sps *sps = ctrl->p_new.p_h264_sps;
>+		unsigned int width, height;
> 		/*
> 		 * TODO: The hardware supports 10-bit and 4:2:2 profiles,
> 		 * but it's currently broken in the driver.
>@@ -45,6 +48,13 @@ static int rkvdec_try_ctrl(struct v4l2_ctrl *ctrl)
> 		if (sps->bit_depth_luma_minus8 != 0)
> 			/* Only 8-bit is supported */
> 			return -EINVAL;
>+
>+		width = (sps->pic_width_in_mbs_minus1 + 1) * 16;
>+		height = (sps->pic_height_in_map_units_minus1 + 1) * 16;
>+
>+		if (width > ctx->coded_fmt.fmt.pix_mp.width ||
>+		    height > ctx->coded_fmt.fmt.pix_mp.height)
>+			return -EINVAL;
> 	}
> 	return 0;
> }
>-- 
>2.34.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
