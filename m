Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3DBDC77B62
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Mar 2023 15:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H+QAQRPVmbNJEDwl/9Jbvj41/MwI85hPPwYbaIvUr8I=; b=mbCLYzktgi8L+i
	Y8U0hULCbsl+nd7LIFFzI3LZSF2I9JChcjQyCeC9zqPOWLUAORNlGFeGfLfKT+CWjSEHg6UhQ1yqE
	3vadYKdJcJzTLu6jqD8vpGFLC347tClzeSnj5KNtDpYZ+tnx40JaVG8asjZBzAw1gNMmnL+ugHEdo
	pmHDcuN9A5JenKIh0XiDpzPVKekczoA9MoiEIBQEvm1VpBBAYjxYY+hEOZI1T3wDAcOgh10zYXBuE
	umKYRJ8fJd8jhOgXpcqVI6rYpjXmA3ObEVtXySvvB30hJpU/WineTCaUMOy9TWQushLd87S/VJ8ZB
	C3e2kxKjlHJu7PzGGrKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phuQS-004LNt-0n;
	Thu, 30 Mar 2023 15:42:56 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phuOg-004KCq-1c;
	Thu, 30 Mar 2023 15:41:16 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:792c:96d5:14:366a])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 6267D660319F;
	Thu, 30 Mar 2023 16:40:57 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680190857;
	bh=SFkEyJ2jkQipi8zjFY3ky+Bya3/h0EUtC+kLHT4AkTE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=A2EtgEztlrHnrRU0BzaaBdBu07wYIDSUVOLhz5cKnhpNdHj30caOCnjt03N7xdosU
	 geikShiaIq4F2sPMSuSLzmu4IsFnfHQNxkyU8y5WrnBj+1FgKl/buOJ7Jotgea08Zb
	 neaVz4ISLQCXqoPGwmoA3bm2RnTw0aVqf6ilFGbECcajazFIIbuQ/AKtbaw9YSULs0
	 GfKL6B4GhYPb8uiQQkCo9RJqWUac0zG4yXnUwK21zSgqpt6A2ctSQwfNv6dHR8utBT
	 id/imiAlYszGIYTSd/fZeGw9prpEm6gHmaRNa+IJ2NS3CCu7MOpyWJg6MbGdf5sane
	 OIyN9ATe/gpGA==
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
Subject: [PATCH v5 13/13] media: AV1: Make sure that bit depth in correctly initialize
Date: Thu, 30 Mar 2023 17:40:43 +0200
Message-Id: <20230330154043.1250736-14-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230330154043.1250736-1-benjamin.gaignard@collabora.com>
References: <20230330154043.1250736-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_084106_680413_5177ECD0 
X-CRM114-Status: UNSURE (   9.57  )
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

Make sure that bit_depth field of V4L2_CTRL_TYPE_AV1_SEQUENCE
is initialized correctly before using it.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/v4l2-core/v4l2-ctrls-core.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/media/v4l2-core/v4l2-ctrls-core.c b/drivers/media/v4l2-core/v4l2-ctrls-core.c
index 9fd37e94db17..a662fb60f73f 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls-core.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls-core.c
@@ -111,6 +111,7 @@ static void std_init_compound(const struct v4l2_ctrl *ctrl, u32 idx,
 	struct v4l2_ctrl_vp9_frame *p_vp9_frame;
 	struct v4l2_ctrl_fwht_params *p_fwht_params;
 	struct v4l2_ctrl_h264_scaling_matrix *p_h264_scaling_matrix;
+	struct v4l2_ctrl_av1_sequence *p_av1_sequence;
 	void *p = ptr.p + idx * ctrl->elem_size;
 
 	if (ctrl->p_def.p_const)
@@ -157,6 +158,10 @@ static void std_init_compound(const struct v4l2_ctrl *ctrl, u32 idx,
 		p_vp9_frame->flags |= V4L2_VP9_FRAME_FLAG_X_SUBSAMPLING |
 			V4L2_VP9_FRAME_FLAG_Y_SUBSAMPLING;
 		break;
+	case V4L2_CTRL_TYPE_AV1_SEQUENCE:
+		p_av1_sequence = p;
+		p_av1_sequence->bit_depth = 8;
+		break;
 	case V4L2_CTRL_TYPE_FWHT_PARAMS:
 		p_fwht_params = p;
 		p_fwht_params->version = V4L2_FWHT_VERSION;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
