Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D752CC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Nov 2022 08:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=An0flJij4ZTXp7fr9lb8utuwM6LFbgIvXSJjmfiXt8E=; b=P1mOGdTKMzM6BR
	HhZMyrGF7Ww3gaDlsagSHV4sf6rsNLHKNPNNUYBcBWYM/64rlhUFyQkpjLQgVaKkQ6hz2WZ8pd4Gx
	n7GUjXV1BkHbpvV8aCam+S7nVOPUZdJ2EzJIb1/CmvQsAFcTHKkb6r5AJqTQx1rNXj8zpZxDy5wjm
	9dceCESKNLUBPEe5vE6nF5IRlOpalCCVDFOTeLTcyJqpPexVuDYj19OAHYHqYzg1XvJa+t5DFux6L
	Stev2r120VdSmEMF+0P8mxoEmHwcWBlwvBW2oJeZs6/um9iGLM5nYF9lMoEpJEs7nsK2aGpDlGhDX
	YNGKULJLcCaRzpt4W1qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovaXE-00BmvB-N5; Thu, 17 Nov 2022 08:46:12 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovaTy-00BkqQ-8Z; Thu, 17 Nov 2022 08:42:51 +0000
Received: from pyrite.tail37cf.ts.net (h175-177-042-159.catv02.itscom.jp [175.177.42.159])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 92E3A105A;
	Thu, 17 Nov 2022 09:42:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1668674563;
	bh=i2asfCX+IMDeAysoWEUZxtuevcn/m7RupGOVGq+pXtQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=jlv+ep3R1ziV8qxaw1h/r1QAhnBwVi+NfM8FGGSVchGYr9WJmR7yJYtwomropQ5eg
	 +49QNybsChYss3y1Ul4tcElyM/JxogoMJ+EDToDQxxZQm7Pg0J1kHtSETdkFI1Im5L
	 rYnN3Z2cW5g4gtYnAeXyAcyz+5YrVtyz0ULCpRpQ=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Paul Elder <paul.elder@ideasonboard.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/3] media: rkisp1: Implement ENUM_FRAMESIZES
Date: Thu, 17 Nov 2022 17:42:17 +0900
Message-Id: <20221117084217.3892680-4-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221117084217.3892680-1-paul.elder@ideasonboard.com>
References: <20221117084217.3892680-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221117_004250_460743_A509E66C 
X-CRM114-Status: GOOD (  11.71  )
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
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-capture.c | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index 91e685fdbbe9..03c2922bfbed 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -1236,6 +1236,35 @@ static int rkisp1_enum_fmt_vid_cap_mplane(struct file *file, void *priv,
 	return -EINVAL;
 }
 
+static int rkisp1_enum_framesizes(struct file *file, void *fh,
+				  struct v4l2_frmsizeenum *fsize)
+{
+	static const unsigned int max_widths[] = {
+		RKISP1_RSZ_MP_SRC_MAX_WIDTH,
+		RKISP1_RSZ_SP_SRC_MAX_WIDTH,
+	};
+	static const unsigned int max_heights[] = {
+		RKISP1_RSZ_MP_SRC_MAX_HEIGHT,
+		RKISP1_RSZ_SP_SRC_MAX_HEIGHT,
+	};
+	struct rkisp1_capture *cap = video_drvdata(file);
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
@@ -1285,6 +1314,7 @@ static const struct v4l2_ioctl_ops rkisp1_v4l2_ioctl_ops = {
 	.vidioc_s_fmt_vid_cap_mplane = rkisp1_s_fmt_vid_cap_mplane,
 	.vidioc_g_fmt_vid_cap_mplane = rkisp1_g_fmt_vid_cap_mplane,
 	.vidioc_enum_fmt_vid_cap = rkisp1_enum_fmt_vid_cap_mplane,
+	.vidioc_enum_framesizes = rkisp1_enum_framesizes,
 	.vidioc_querycap = rkisp1_querycap,
 	.vidioc_subscribe_event = v4l2_ctrl_subscribe_event,
 	.vidioc_unsubscribe_event = v4l2_event_unsubscribe,
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
