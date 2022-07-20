Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEF27C43334
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jul 2022 17:23:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jwUtv7yDco8KGdjpk2iF+1Djnnph+PkdZ5VaZi2kdNs=; b=lVrh+h3qSDHSok
	S0ZOtj1HqLn0uwrVMTSpN0NLv1nhhCZifh+GqvrcyP741gLcEqee5WTfaxG3GO6Ak2mBVmq29mzaP
	64LY8OIPdE2D+HD1Ln1uGdQA8W5jlQbLtUxAFPl6BiWaiYTejg++hInSbYGACOgSLu/MJhoZN2+Tf
	ldyVz/P5Tek05nH8pHIuQOBjr0H3xwPUtIHpN6VFMnjj2HZC9QDNwVdxmF15T+d/YgHYqYvZZeE29
	Bm6iLgAVdaEt5rOh5QgxWmGpQGKnqrmT2XUCRzHHTBjbfau7Na56U+G5+mqBLKHlsP0k6ULhFdZmA
	H++VnLWFjQuoBDo6dtjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEDPh-008a3k-Df; Wed, 20 Jul 2022 17:23:09 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEDPW-008Zrn-E3; Wed, 20 Jul 2022 17:22:59 +0000
Received: from pyrite.rasen.tech (softbank036240121080.bbtec.net [36.240.121.80])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id B38AC6DB;
	Wed, 20 Jul 2022 19:22:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1658337766;
	bh=cdhTFwAUWu0BfU4pY0Qx+ICqevNTT6nB/e0kgl797cc=;
	h=From:To:Cc:Subject:Date:From;
	b=TEXeCjaR2aW8XsTlPI5AgJxKkEneJwOgJEzZGHwHRc13Rp1YG3xJGwiCDtL/IMsrb
	 lz88eHiL+fzSblDMj2gTWiuY1hEcNNYd1kVqXw8bqz/y64+DmIMkXevKdRkxN8kZ0C
	 yLmHbsIYYLkfynThQ/rnXeZGAEXNdBLxLsXvnMWo=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Paul Elder <paul.elder@ideasonboard.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	laurent.pinchart@ideasonboard.com
Subject: [PATCH] media: rkisp1: Implement ENUM_FRAMESIZES
Date: Thu, 21 Jul 2022 02:22:31 +0900
Message-Id: <20220720172231.4019063-1-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220720_102258_656605_143FB750 
X-CRM114-Status: UNSURE (   9.71  )
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

Implement VIDIOC_ENUM_FRAMESIZES for the rkisp1 capture devices.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-capture.c | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index c494afbc21b4..74106a01ded7 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -1245,6 +1245,31 @@ static int rkisp1_enum_fmt_vid_cap_mplane(struct file *file, void *priv,
 	return -EINVAL;
 }
 
+static int rkisp1_enum_framesizes(struct file *file, void *fh,
+				  struct v4l2_frmsizeenum *fsize)
+{
+	struct rkisp1_capture *cap = video_drvdata(file);
+	const unsigned int max_widths[] = { RKISP1_RSZ_MP_SRC_MAX_WIDTH,
+					    RKISP1_RSZ_SP_SRC_MAX_WIDTH };
+	const unsigned int max_heights[] = { RKISP1_RSZ_MP_SRC_MAX_HEIGHT,
+					     RKISP1_RSZ_SP_SRC_MAX_HEIGHT};
+
+	if (fsize->index != 0)
+		return -EINVAL;
+
+	fsize->type = V4L2_FRMSIZE_TYPE_STEPWISE;
+
+	fsize->stepwise.min_width = RKISP1_RSZ_SRC_MIN_WIDTH;
+	fsize->stepwise.max_width = max_widths[cap->id];
+	fsize->stepwise.step_width = 2;
+
+	fsize->stepwise.min_height = RKISP1_RSZ_SRC_MIN_HEIGHT;
+	fsize->stepwise.max_height = max_heights[cap->id];
+	fsize->stepwise.step_height = 2;
+
+	return 0;
+}
+
 static int rkisp1_s_fmt_vid_cap_mplane(struct file *file,
 				       void *priv, struct v4l2_format *f)
 {
@@ -1294,6 +1319,7 @@ static const struct v4l2_ioctl_ops rkisp1_v4l2_ioctl_ops = {
 	.vidioc_s_fmt_vid_cap_mplane = rkisp1_s_fmt_vid_cap_mplane,
 	.vidioc_g_fmt_vid_cap_mplane = rkisp1_g_fmt_vid_cap_mplane,
 	.vidioc_enum_fmt_vid_cap = rkisp1_enum_fmt_vid_cap_mplane,
+	.vidioc_enum_framesizes = rkisp1_enum_framesizes,
 	.vidioc_querycap = rkisp1_querycap,
 	.vidioc_subscribe_event = v4l2_ctrl_subscribe_event,
 	.vidioc_unsubscribe_event = v4l2_event_unsubscribe,
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
