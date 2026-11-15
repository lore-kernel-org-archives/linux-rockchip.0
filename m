Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE9A606A32C
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Nov 2026 08:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Agq7CrgT;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Vxw4JB3t
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=SdyFRFJ8lBrhzxrLFApocrN5XojhwjqTl6p1O4IY1Qk=; b=Agq7CrgTaOnMmP+Kb4TWh2zWZ9
	l2S3WP+Eay8Do6Twr9ceTDgJT1GYtRTm1Kh12N7mwQTzdiVqWN/euvQttc2JoFREpghSl3ZtCPniA
	f+2u4ijX9l2Po3Kcp0z75WXSwzaXAQXxR7FKHH4c3tiIt8EZg6SXE6OZeMXhF6bIRmcKh9r6D5MBM
	eV6iKzTxKvXy22f8YkitU/Z7JtYW+YpdqcUtTHJ87DFm33BKOWGfSZHVAp6O1YpdloQsWpKmzA3BV
	IdEuHXq8Op8/FrLd4abHxcLVjflM/sB8LHlJJKHgcmE+bsKG5M5/gcYqnSKWRwQ9l2T+nOmFBVRJ8
	mNqSCi+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSVm9-0000000HFVY-3ZTw;
	Sun, 15 Nov 2026 08:39:49 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSVm8-0000000HFUh-2q1j
	for linux-rockchip@lists.infradead.org;
	Sun, 15 Nov 2026 08:39:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 355D344EEA;
	Sun, 15 Nov 2026 08:39:48 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1794731988;
	b=Cd0lArZ0y7b5JJCFyknF66t/PvOsnOLLBys4ElOhYnVhTypKSHqKblY+rZBcstnDqlDE
	 RTA0mILQLv/QFYgrMRj/Z+lZausZM5GypVrZGDJBHiFL9s87ZClqvIld3rk2FUcP8n487
	 p79gYAGDrPc4DUKJ89rJwrVwbSRHcknenar5+MfpTBNMP+ZzuTZtC08PAogfJ0jkoojuJ
	 98h6tVIQ+JZseY8xA9WdV0vvre1PTa6ztHdqr1CU3ayb1Lz1gnmbBGe9a0v1IPoo1wgKv
	 TT/xdl00378Gl7cNX6py3Ra9P71IYzQQkbkfKheGxA+vRHFyp4TTQSPfgP7QJhqEgqA==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1794731988;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=3HUV0Y0/pDNleOpw0PJEaMjTYo1DjmGUdWEj9hdImzk=;
	b=prbu4jSOghJCv9XGKwKsnvUb1d7GoJjdueLqKnS7oXKJD1g/Gl5nNiXahzxaDTj9mXQ4
	 s9FcIUIA0BvNGH2g8KaxWioYPDtP4B7UAVjtl3A6g0eFumyfwoOnfnwdkubwuJhcXu1jy
	 ysZisBFWA0aG1PAI5bf6W5WfcU/WjPIQdNTG0K8CEYJTk80qvR1tAaI825VZZJcUkhxnV
	 D/rulY/4vh7CIkK8pbyd4qiLGrI6XU29d1ONMGwcOGpJOugn4G63idrh53ViGsrP+tSEw
	 POfE+Kr6BWhGBe7tF5CR77a0lrnevCGte/L3ll0h3/3QztjpyLZdSSw5qqpPHgDOYNg==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 33D681F000C8;
	Sun, 15 Nov 2026 08:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794731988;
	bh=3HUV0Y0/pDNleOpw0PJEaMjTYo1DjmGUdWEj9hdImzk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=Vxw4JB3tAk5rgsAkaIfljbQYPEgCyjR0MtPU7XAxsZvh70mdy6noDDK2qjpEpRwgo
	 BwXekSyYTINWdCl93vpg6fQRBxh/j7InDGycfVPq93ipCF4JnFaLlrVtL5zid32B2U
	 Syx/u/EW7C9EW6cXYUsveH9cdlUM3KNwLrkT7hxnzll+baK0d7duYZHedrXggrmE0m
	 0Mf1e+2xdna2YtawnYpGAVERaHdCMtNNGh0++Y/w4ayNVTDPZqci38QLX8R5GBxQNl
	 W5Lg0j6bymKOm4xpky9+qOl1aJ1+dPxxdtSnMK42ohGPz6qu4GYG5Is0zs3mngoffu
	 h9psDyzZABB0A==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id B086A49FFA;
	Sun, 15 Nov 2026 08:39:46 +0000 (UTC)
From: Arun Iyengar via B4 Relay <devnull+aiyengar1990.gmail.com@kernel.org>
Date: Sun, 15 Nov 2026 08:39:49 +0000
Subject: [PATCH v2 4/4] media: verisilicon: Set the bit depth again when
 its control is rewritten
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261115-hantro-fixes-v2-4-bfecfb07a3e7@gmail.com>
References: <20261115-hantro-fixes-v2-0-bfecfb07a3e7@gmail.com>
In-Reply-To: <20261115-hantro-fixes-v2-0-bfecfb07a3e7@gmail.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>, 
 Hans Verkuil <hverkuil@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
 Arun Iyengar <aiyengar1990@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794731985; l=2693;
 i=aiyengar1990@gmail.com; s=20261110; h=from:subject:message-id;
 bh=HWxB2YEEQC+V3ysP/l33g5scqDBlUMjlgqm8A4O3QvE=;
 b=6IQgd9D/SW76qY9HjFa29Wet/8gTddE+EEmFkx5EZ/ybrFIcq5PbxkpFRoUW8Zk6kq8g819nD
 uC1L5n9cMfQB2Y9RbbhF53rMWsZjScbPNRs7yOHajMko/fVGe+hiz+q
X-Developer-Key: i=aiyengar1990@gmail.com; a=ed25519;
 pk=zXpRgUTrhaFe6jLyPqbBy3ccfkj04w0g2690Wv3mg+0=
X-Endpoint-Received: by B4 Relay for aiyengar1990@gmail.com/20261110 with
 auth_id=1480
X-Original-From: Arun Iyengar <aiyengar1990@gmail.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Reply-To: aiyengar1990@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-14.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_REPLYTO_END_DIGIT,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Arun Iyengar <aiyengar1990@gmail.com>

S_FMT on OUTPUT resets the CAPTURE format to 8 bits, but rewriting an
unchanged 10-bit HEVC SPS, VP9 frame or AV1 sequence control skips
s_ctrl, so the format stays 8-bit. Mark these controls EXECUTE_ON_WRITE;
every write of them then also sends a V4L2_EVENT_CTRL value change.

Fixes: 3c32d94c9c52 ("media: verisilicon: Do not change context bit depth before validating the format")
Cc: stable@vger.kernel.org
Signed-off-by: Arun Iyengar <aiyengar1990@gmail.com>
---
 drivers/media/platform/verisilicon/hantro_drv.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index 26e5d5547466..248fb0e23a29 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -534,6 +534,7 @@ static const struct hantro_ctrl controls[] = {
 		.cfg = {
 			.id = V4L2_CID_STATELESS_HEVC_SPS,
 			.ops = &hantro_hevc_ctrl_ops,
+			.flags = V4L2_CTRL_FLAG_EXECUTE_ON_WRITE,
 		},
 	}, {
 		.codec = HANTRO_HEVC_DECODER,
@@ -555,6 +556,7 @@ static const struct hantro_ctrl controls[] = {
 		.cfg = {
 			.id = V4L2_CID_STATELESS_VP9_FRAME,
 			.ops = &hantro_vp9_ctrl_ops,
+			.flags = V4L2_CTRL_FLAG_EXECUTE_ON_WRITE,
 		},
 	}, {
 		.codec = HANTRO_VP9_DECODER,
@@ -577,6 +579,7 @@ static const struct hantro_ctrl controls[] = {
 		.cfg = {
 			.id = V4L2_CID_STATELESS_AV1_SEQUENCE,
 			.ops = &hantro_av1_ctrl_ops,
+			.flags = V4L2_CTRL_FLAG_EXECUTE_ON_WRITE,
 		},
 	}, {
 		.codec = HANTRO_AV1_DECODER,
@@ -591,6 +594,7 @@ static int hantro_ctrls_setup(struct hantro_dev *vpu,
 			      int allowed_codecs)
 {
 	int i, num_ctrls = ARRAY_SIZE(controls);
+	struct v4l2_ctrl *ctrl;
 
 	v4l2_ctrl_handler_init(&ctx->ctrl_handler, num_ctrls);
 
@@ -598,8 +602,8 @@ static int hantro_ctrls_setup(struct hantro_dev *vpu,
 		if (!(allowed_codecs & controls[i].codec))
 			continue;
 
-		v4l2_ctrl_new_custom(&ctx->ctrl_handler,
-				     &controls[i].cfg, NULL);
+		ctrl = v4l2_ctrl_new_custom(&ctx->ctrl_handler,
+					    &controls[i].cfg, NULL);
 		if (ctx->ctrl_handler.error) {
 			vpu_err("Adding control (%d) failed %d\n",
 				controls[i].cfg.id,
@@ -607,6 +611,10 @@ static int hantro_ctrls_setup(struct hantro_dev *vpu,
 			v4l2_ctrl_handler_free(&ctx->ctrl_handler);
 			return ctx->ctrl_handler.error;
 		}
+
+		/* v4l2_ctrl_new_custom() drops cfg.flags of standard controls. */
+		if (ctrl)
+			ctrl->flags |= controls[i].cfg.flags & V4L2_CTRL_FLAG_EXECUTE_ON_WRITE;
 	}
 	return v4l2_ctrl_handler_setup(&ctx->ctrl_handler);
 }

-- 
2.55.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
