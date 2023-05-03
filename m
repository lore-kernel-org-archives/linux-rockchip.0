Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 908B5C77B75
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 May 2023 08:35:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H6OAo3XOWxCUseT6sf6hzodcvJrS8ns3uY6q2YdeTpo=; b=FKelPnHd3T4fKU
	1cKlW/xapscHKwWDJAU9fQIOoGIImKwsrxjsMrCq6g4DBlCH7uEIAXXL84ltfaixbLCol2YpL2Wjo
	OgDUu6hWpwocWW6oSjI/q1HbPSODaTwQOuM5fv5Iv/0Vx/67KxDcH0KTTNnc0icTP5UT0EsgcAncU
	0qvqelaJ+MxE89bbKQ3mcmuav963XSu4qaLuyhVOaskVK2EdZfo+5XYBocE+PoT6Jvoc+CFQqf+XR
	GaNEMPl0a3duLwxo9vYEPfFmbw+XeQWYYOrUfcHddMiUAd0OE20oBgd5w9zGQbp3euPZaclZVREZ4
	W5gEfEd3wuWqEkWZ84Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pu7xR-003rgx-0g;
	Wed, 03 May 2023 08:35:29 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pu7wq-003r7n-2R;
	Wed, 03 May 2023 08:34:54 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:8234:977e:ebbe:d70b])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 064C066056D6;
	Wed,  3 May 2023 09:34:49 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1683102889;
	bh=S8uSvpRfQyFULmsyzaSvviAfEQ9HpZ+C/7nq1x552mY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Rbe++TfWxWWvubJN2NsZ8ZenW2X8ixPnpYMNGLgSamctsFkthEU2topHo173XrVkD
	 0IUR7XawLBSb3W/QOe4hS0PGZ04jqDs1CJqOyfWrk64AOPvVD99/2XW/NiHODaHaTH
	 CGn7LmDn4LopwjyVN/7sC0GW0+El+4Iwjn/r/EGHgUk9QrFWPBZTjZb7Jfzun3ayEw
	 YLWKd/6uc2p3136HjXFeQWWa0TXd1Ua+XUqeE/bW15FAYh1YYM9hCb7a8pN2Gr9Xq9
	 m6tdd/muPBP9dsTfKuuywIeaH1P46f2DHSS/ONNVMMh6KnzzqF197HLKQRMmkzn7k9
	 8F+NmC3q50Qhg==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v7 07/13] media: verisilicon: Check AV1 bitstreams bit depth
Date: Wed,  3 May 2023 10:34:32 +0200
Message-Id: <20230503083438.85139-8-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230503083438.85139-1-benjamin.gaignard@collabora.com>
References: <20230503083438.85139-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230503_013452_968465_BC7DB97F 
X-CRM114-Status: GOOD (  15.13  )
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

The driver supports 8 and 10 bits bitstreams, make sure to discard
other cases.
It could happens that userland test if V4L2_CID_STATELESS_AV1_SEQUENCE
exists without setting bit_depth field in this case use
HANTRO_DEFAULT_BIT_DEPTH value.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
 .../media/platform/verisilicon/hantro_drv.c   | 36 +++++++++++++++++++
 .../media/platform/verisilicon/hantro_v4l2.c  |  4 +++
 2 files changed, 40 insertions(+)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index 8f6021e3953c..be1f06c21910 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -275,7 +275,13 @@ static int hantro_try_ctrl(struct v4l2_ctrl *ctrl)
 		/* We only support profile 0 */
 		if (dec_params->profile != 0)
 			return -EINVAL;
+	} else if (ctrl->id == V4L2_CID_STATELESS_AV1_SEQUENCE) {
+		const struct v4l2_ctrl_av1_sequence *sequence = ctrl->p_new.p_av1_sequence;
+
+		if (sequence->bit_depth != 8 && sequence->bit_depth != 10)
+			return -EINVAL;
 	}
+
 	return 0;
 }
 
@@ -346,6 +352,30 @@ static int hantro_hevc_s_ctrl(struct v4l2_ctrl *ctrl)
 	return 0;
 }
 
+static int hantro_av1_s_ctrl(struct v4l2_ctrl *ctrl)
+{
+	struct hantro_ctx *ctx;
+
+	ctx = container_of(ctrl->handler,
+			   struct hantro_ctx, ctrl_handler);
+
+	switch (ctrl->id) {
+	case V4L2_CID_STATELESS_AV1_SEQUENCE:
+	{
+		int bit_depth = ctrl->p_new.p_av1_sequence->bit_depth;
+
+		if (ctx->bit_depth == bit_depth)
+			return 0;
+
+		return hantro_reset_raw_fmt(ctx, bit_depth);
+	}
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 static const struct v4l2_ctrl_ops hantro_ctrl_ops = {
 	.try_ctrl = hantro_try_ctrl,
 };
@@ -363,6 +393,11 @@ static const struct v4l2_ctrl_ops hantro_hevc_ctrl_ops = {
 	.s_ctrl = hantro_hevc_s_ctrl,
 };
 
+static const struct v4l2_ctrl_ops hantro_av1_ctrl_ops = {
+	.try_ctrl = hantro_try_ctrl,
+	.s_ctrl = hantro_av1_s_ctrl,
+};
+
 #define HANTRO_JPEG_ACTIVE_MARKERS	(V4L2_JPEG_ACTIVE_MARKER_APP0 | \
 					 V4L2_JPEG_ACTIVE_MARKER_COM | \
 					 V4L2_JPEG_ACTIVE_MARKER_DQT | \
@@ -540,6 +575,7 @@ static const struct hantro_ctrl controls[] = {
 		.codec = HANTRO_AV1_DECODER,
 		.cfg = {
 			.id = V4L2_CID_STATELESS_AV1_SEQUENCE,
+			.ops = &hantro_av1_ctrl_ops,
 		},
 	}, {
 		.codec = HANTRO_AV1_DECODER,
diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index d4c5035ab3e3..1ab5f9ce725b 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -86,6 +86,10 @@ hantro_check_depth_match(const struct hantro_fmt *fmt, int bit_depth)
 	if (!fmt->match_depth && !fmt->postprocessed)
 		return true;
 
+	/* 0 means default depth, which is 8 */
+	if (!bit_depth)
+		bit_depth = HANTRO_DEFAULT_BIT_DEPTH;
+
 	fmt_depth = hantro_get_format_depth(fmt->fourcc);
 
 	/*
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
