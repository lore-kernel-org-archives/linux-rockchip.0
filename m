Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8ABB2C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Mar 2023 15:41:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YrjoYBTI6TEXxm9KvTxrnQaZrZsmI+D6vxOV/H70JhM=; b=0Gav2uOH9VHNLN
	huQEpt3KQYkfZmbz1d6MS0b67OqqJvKLMYGltsxCKs/RDjGK5pCas71YlRMGU6kGwgUUIoKrjQ+QP
	K27J1E71/yG7SWBT5CTLdYaAEHqDl9FR8ABSXNNYt4QRUimy/iDSZgT/85yvOAVUhUD24EHLli7/t
	OG/Y0FJ8BEDqNIkJF+xzKAcljPRgGUZurtRTMTenxf0dpcAOV1NUw7NyR0kex2a3+b8mcWOk8hHjK
	QUiw2ZF/O9MHt7U5XMwE59ODW6eQ5Wv/BIMkWj2BW/qO4J9OqPqvAsvCJWbDjfeJ9iBDeuxCrE01q
	VMxlBBpe5OSyzhSduaFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phuPC-004KW6-2y;
	Thu, 30 Mar 2023 15:41:38 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phuOZ-004K7I-0h;
	Thu, 30 Mar 2023 15:41:05 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:792c:96d5:14:366a])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 2139C6603190;
	Thu, 30 Mar 2023 16:40:54 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680190854;
	bh=6nRqlJ/LoiKwEa8vlEFz7kYQntrOF5FKZSppTv/1oeE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QER67wT8gNmPove7J801AuQOaSxgQRBn7+qg2XDQ2+Glx3QFCNtBOUkvut9kOoqqB
	 f3UfuWuQhASWifzDJo13vWIPiuH5iM8XEi34iOu8AXkSItFPj9+XKSdyMpe2ximUnX
	 HeqK6lqFUiGXtGZW/HEUg2yAg22onlnZNAE1ts8Rgmsq1jHVIHW6zrNHKhuwEy8E5Y
	 xbIl+abfGgFsoW6FOiV4KqsreLdCcelq86lYY0KFERQV+6y+D4PRKNvlrsfxX5G6KG
	 67sCndE8xoQJjiro/e37Ja6Omyw5vnbqxDH9SSDUgEhK6IiUpIVwAOY2hplGVFU7Tm
	 9ndZ+7J/O+4XQ==
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
Subject: [PATCH v5 06/13] media: verisilicon: Check AV1 bitstreams bit depth
Date: Thu, 30 Mar 2023 17:40:36 +0200
Message-Id: <20230330154043.1250736-7-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230330154043.1250736-1-benjamin.gaignard@collabora.com>
References: <20230330154043.1250736-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_084059_389891_6580EED8 
X-CRM114-Status: GOOD (  14.71  )
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
---
 .../media/platform/verisilicon/hantro_drv.c   | 36 +++++++++++++++++++
 .../media/platform/verisilicon/hantro_v4l2.c  |  4 +++
 2 files changed, 40 insertions(+)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index 74641c972f1e..71bd68e63859 100644
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
index 7ed2dfd4aefa..e2a8838f75f0 100644
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
