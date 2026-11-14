Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B837D606A33D
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Nov 2026 00:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=riVnE9C6;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=YYLWIbeq
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=s1197a/i5qWMlHtnj6HvHhg0L1JGnPFHiZc2Lwh/kw8=; b=riVnE9C6mXd/9jI/SIf2IozOtp
	b15IDX+wCdcZFC9lK+AzSLRWJM0jY/pvv0wWC9BdJDt0+AqASvIfA6oXzzWkPORYExX2XcQmz9bjS
	UE+Ohd7UZcwr04vOmeDyAjFXR+hpzNn/6/YL+6t2qcsxwDiLRPXVB6Ty2fZxWae9+L0UnSPKZTE2D
	cKyAkXzAoFCU0TdgK2F6BeDTYf1Gw/VZQQCmEK4UWCeFUKTItEF/xgm8ebP8dfl3nnd89k9tzAQXv
	nC5wIkrxBYCHUawpOeMfIvDtQRnnde1yMK4Nf60cxrTxboujdZGf4jKMu+0Xob8XEnJ/BRZD7jM7O
	XtPWEz5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS1PN-0000000EsGb-2N21;
	Sat, 14 Nov 2026 00:14:17 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS1PM-0000000EsEb-10dU
	for linux-rockchip@lists.infradead.org;
	Sat, 14 Nov 2026 00:14:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id ACBF1618A1;
	Sat, 14 Nov 2026 00:14:15 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1794615255;
	b=tt2I4sedBlDmPOaYboWGVTTmGXhNhtQpPpQdS1RY1ecx6qpQ0VMHgp61x34dMZBT+qZo
	 wbst7DBpkgs9Rf1ZVrUmBs4LI/ZWNQMx16ZxdgeoMITGP/8gBOjZefBobLjoECJ0I+oGx
	 XKqzRLMqFpqwbfAyv/wO5OT6mwaW4kh3BlNEqURY+y6eUIKPfx4c/TD9OcG49aTSip5J/
	 UMGV6HBZTC2aDNJaMQDhX0HvEfr3F3u/yjN6jt3hi7UVd99gNRm+jawEL++ZVPr4tp0yQ
	 Tsv9hIr5EpC/0arw/VsE6CbtIvn+MhRvO49j5TBnKp6xU5o79J34b0Z3aXXJxjL+9gw==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1794615255;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=wxKzoWd8znOVxZHovUv0aCQVRbaHaH7T+GMsvURWN8k=;
	b=WBqgRM0VXWXwy6qnXvb/aR3Pe2ZXvl5Bnqx32+jy/mR4w94T66KP9DUjOX3/BNJoPuCH
	 yExPCo+SXP9iJ0r5oD9HD8+ry6IeGBjgfExZwUaFh+00fLkuhZaAtkzDtUSrThiQbEUJN
	 Amfdbxh1kEo1e3jXQKWyaVNQsXtr8AEFwIZ6ZqpD8mLIR6cfau7KjfNopm/c8BzpB3y6Y
	 oB6uk5X2KUeJJePgtNTI39zGBeTRoM5RCgmIT+2mflgidxKO2yWrxQoIr1ifT5BL3DZqW
	 lwuyfcZ2lgy8Cl6vudLWhEBVVxGX34/FDU6N6oa1tohpK+TrbIH0q0QrTaLc2bFEL7Q==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 3549F1F000CB;
	Sat, 14 Nov 2026 00:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794615255;
	bh=wxKzoWd8znOVxZHovUv0aCQVRbaHaH7T+GMsvURWN8k=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=YYLWIbeqU1nWZGysrGIE3XxHVeN/5OVYIrxaCSdNNc5i6AfLokpfPsGrbLIGagdkx
	 8hQfscLfmkKJvomJVN1LjASYjk2E0MZLBGMfLwADiYSKNHMxjw4CBFbDRXdkcWM/5S
	 kgKeWWMIXSuktXE+W+FRECK2Sf/rHG6rACT8U0B34kVIik3ln6Dt+5M/5as2tqdD4g
	 oFORt1Ku8ypU89E5kCykQ/d8GA1oMkQ3ul0XannN3Yt6nd7o+QNXv0v2VbGPAWu38f
	 SH9YEGnM3fe60Gunrq6bs62UkGIttNxeL91Gh2pZpoVuOUC6Ib7nhB6kR4xrRYEC1w
	 oNRLAj2rnOtvg==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id B496849BCB;
	Sat, 14 Nov 2026 00:14:12 +0000 (UTC)
From: Arun Iyengar via B4 Relay <devnull+aiyengar1990.gmail.com@kernel.org>
Date: Sat, 14 Nov 2026 00:14:15 +0000
Subject: [PATCH 4/4] media: verisilicon: Set the bit depth again when its
 control is rewritten
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261114-hantro-fixes-v1-4-abb78264801e@gmail.com>
References: <20261114-hantro-fixes-v1-0-abb78264801e@gmail.com>
In-Reply-To: <20261114-hantro-fixes-v1-0-abb78264801e@gmail.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>, 
 Hans Verkuil <hverkuil@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Arun Iyengar <aiyengar1990@gmail.com>, 
 stable@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794615252; l=3003;
 i=aiyengar1990@gmail.com; s=20261110; h=from:subject:message-id;
 bh=g1FKZCeiFkbp6h/EOPblVSfvHIN9lybSdPAZ2FY8L+U=;
 b=XtEqFv07p6afEIhLvhgVrMIRR/y2skjNRqfE0Ws4C+M2qg8OS812JKjgaRNebETxXcT5KQDj3
 HfHLsUAESK+DH2MKcgwHY6jkvcthvi9BFAilADw8gmFmIhat9Y4tKkp
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

S_FMT on the OUTPUT queue resets the CAPTURE format to 8 bits, but the
HEVC SPS, VP9 frame and AV1 sequence controls keep their 10-bit value.
Writing the same value again doesn't call s_ctrl, so the CAPTURE format
stays at 8 bits while the decoder writes 10-bit pictures. The same holds
for the AV1 film grain flag.

Mark these controls EXECUTE_ON_WRITE. Every write of them then sends a
V4L2_EVENT_CTRL value change, and VIDIOC_QUERY_EXT_CTRL shows the flag.

Found by Sashiko in its review of hantro-dec-size-check v1.

Fixes: 3c32d94c9c52 ("media: verisilicon: Do not change context bit depth before validating the format")
Cc: stable@vger.kernel.org
Signed-off-by: Arun Iyengar <aiyengar1990@gmail.com>
---
 drivers/media/platform/verisilicon/hantro_drv.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index 26e5d5547466..dffba6c43a0f 100644
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
@@ -607,6 +611,12 @@ static int hantro_ctrls_setup(struct hantro_dev *vpu,
 			v4l2_ctrl_handler_free(&ctx->ctrl_handler);
 			return ctx->ctrl_handler.error;
 		}
+
+		/*
+		 * Standard controls get their flags from the core. S_FMT on
+		 * OUTPUT resets the bit depth: set it again on every write.
+		 */
+		ctrl->flags |= controls[i].cfg.flags & V4L2_CTRL_FLAG_EXECUTE_ON_WRITE;
 	}
 	return v4l2_ctrl_handler_setup(&ctx->ctrl_handler);
 }

-- 
2.55.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
