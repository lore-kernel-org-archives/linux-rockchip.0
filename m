Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70377FA3743
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Nov 2022 11:27:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QtnHtEhjK5XF4+faBN1LQLuxKd1Ug10FXFnC8aSIhHU=; b=3iNA8oD4axIecL
	t9oxhBABbJrXof80oeDLUTIHQ1stEmbrSAZ6fr+lMd0twqBdcWsJlv4sPnDsFBw2LXxpAUtoFFsfO
	zfl7PGinj3oHeJPib9mtUichLsszgZ06wXL/OvRYEEFfgFxuGoyhfo+HyKHJbvBh/5x7GJmSVWB1n
	342KhigPOhjJSj0CrxwqXiVjLa43p3q3nxzTcSf4YJg3u/2fJx8KIX8mGW552ZouAMWBrHwYGX2we
	BDZmyXRBfhEp10OlIHJo7PC8lw4JcTkrG+iEeE4YEY4xYufE30kcr/+aX82Yf9zF0W7yWnpOZBwln
	114oelLXgHCJHT6q6i3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oppQl-004aZ3-SA; Tue, 01 Nov 2022 11:27:43 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oppQZ-004aTM-Rb; Tue, 01 Nov 2022 11:27:33 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A293461588;
	Tue,  1 Nov 2022 11:27:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DEF24C433C1;
	Tue,  1 Nov 2022 11:27:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667302050;
	bh=ACB5NCpzrjJVLKWCx5UcKZl9u+6qQLqmZKiRINI/hCE=;
	h=From:To:Cc:Subject:Date:From;
	b=ay3qp9lT+Oeq4QKw0e4JsX92Y+9fO0fO1vsxjSW1bKWujheGFaU+EJm6uiAdWTm9C
	 zUk4KHP9zrUB7lNL77kBjdRotanUM9OvSIl991MTwCThx7HXq+1NZgrLkha87Kn0eW
	 IUXEcpONa2AWoDgKIgNEENTTv8vPPtIBsjrIX1JAwhi/jXfAc1sfzhx01kkJ6HAnfT
	 3UNkKQuS2NeKVrFjWC0Dl/1nm4MB8rfktdScXfl7cNYtNlyCDBA2Du/HWwdmwnVqgf
	 coId7cfTHIbWK0o8uZVDhwWmSZvWZ/HqID/03FD7tafQtTSi6P1zwJz8HEkhbNUSQY
	 R229r1I+mzoDA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	heiko@sntech.de,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH AUTOSEL 6.0 01/34] media: rkisp1: Fix source pad format configuration
Date: Tue,  1 Nov 2022 07:26:53 -0400
Message-Id: <20221101112726.799368-1-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_042731_972739_FAEC5B0F 
X-CRM114-Status: GOOD (  16.96  )
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

[ Upstream commit cb00f3a4421d5c7d7155bd4bded7fb2ff8eec211 ]

The ISP converts Bayer data to YUV when operating normally, and can also
operate in pass-through mode where the input and output formats must
match. Converting from YUV to Bayer isn't possible. If such an invalid
configuration is attempted, adjust it by copying the sink pad media bus
code to the source pad.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
Reviewed-by: Paul Elder <paul.elder@ideasonboard.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../platform/rockchip/rkisp1/rkisp1-isp.c     | 40 +++++++++++++++----
 1 file changed, 32 insertions(+), 8 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index 383a3ec83ca9..00032b849a07 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -472,23 +472,43 @@ static void rkisp1_isp_set_src_fmt(struct rkisp1_isp *isp,
 				   struct v4l2_mbus_framefmt *format,
 				   unsigned int which)
 {
-	const struct rkisp1_mbus_info *mbus_info;
+	const struct rkisp1_mbus_info *sink_info;
+	const struct rkisp1_mbus_info *src_info;
+	struct v4l2_mbus_framefmt *sink_fmt;
 	struct v4l2_mbus_framefmt *src_fmt;
 	const struct v4l2_rect *src_crop;
 
+	sink_fmt = rkisp1_isp_get_pad_fmt(isp, sd_state,
+					  RKISP1_ISP_PAD_SINK_VIDEO, which);
 	src_fmt = rkisp1_isp_get_pad_fmt(isp, sd_state,
 					 RKISP1_ISP_PAD_SOURCE_VIDEO, which);
 	src_crop = rkisp1_isp_get_pad_crop(isp, sd_state,
 					   RKISP1_ISP_PAD_SOURCE_VIDEO, which);
 
+	/*
+	 * Media bus code. The ISP can operate in pass-through mode (Bayer in,
+	 * Bayer out or YUV in, YUV out) or process Bayer data to YUV, but
+	 * can't convert from YUV to Bayer.
+	 */
+	sink_info = rkisp1_mbus_info_get_by_code(sink_fmt->code);
+
 	src_fmt->code = format->code;
-	mbus_info = rkisp1_mbus_info_get_by_code(src_fmt->code);
-	if (!mbus_info || !(mbus_info->direction & RKISP1_ISP_SD_SRC)) {
+	src_info = rkisp1_mbus_info_get_by_code(src_fmt->code);
+	if (!src_info || !(src_info->direction & RKISP1_ISP_SD_SRC)) {
 		src_fmt->code = RKISP1_DEF_SRC_PAD_FMT;
-		mbus_info = rkisp1_mbus_info_get_by_code(src_fmt->code);
+		src_info = rkisp1_mbus_info_get_by_code(src_fmt->code);
 	}
-	if (which == V4L2_SUBDEV_FORMAT_ACTIVE)
-		isp->src_fmt = mbus_info;
+
+	if (sink_info->pixel_enc == V4L2_PIXEL_ENC_YUV &&
+	    src_info->pixel_enc == V4L2_PIXEL_ENC_BAYER) {
+		src_fmt->code = sink_fmt->code;
+		src_info = sink_info;
+	}
+
+	/*
+	 * The source width and height must be identical to the source crop
+	 * size.
+	 */
 	src_fmt->width  = src_crop->width;
 	src_fmt->height = src_crop->height;
 
@@ -498,14 +518,18 @@ static void rkisp1_isp_set_src_fmt(struct rkisp1_isp *isp,
 	 */
 	if (format->flags & V4L2_MBUS_FRAMEFMT_SET_CSC &&
 	    format->quantization == V4L2_QUANTIZATION_FULL_RANGE &&
-	    mbus_info->pixel_enc == V4L2_PIXEL_ENC_YUV)
+	    src_info->pixel_enc == V4L2_PIXEL_ENC_YUV)
 		src_fmt->quantization = V4L2_QUANTIZATION_FULL_RANGE;
-	else if (mbus_info->pixel_enc == V4L2_PIXEL_ENC_YUV)
+	else if (src_info->pixel_enc == V4L2_PIXEL_ENC_YUV)
 		src_fmt->quantization = V4L2_QUANTIZATION_LIM_RANGE;
 	else
 		src_fmt->quantization = V4L2_QUANTIZATION_FULL_RANGE;
 
 	*format = *src_fmt;
+
+	/* Store the source format info when setting the active format. */
+	if (which == V4L2_SUBDEV_FORMAT_ACTIVE)
+		isp->src_fmt = src_info;
 }
 
 static void rkisp1_isp_set_src_crop(struct rkisp1_isp *isp,
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
