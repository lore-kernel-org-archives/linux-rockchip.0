Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 178B4C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 20:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2g26ISIMkOP1gGhohYyd4P481yF3VPCxww+WFnvXAbw=; b=eOWpglu4JTov7S
	cU/8k9HtN9DAjYZb45b0OiCjK8IsGzsZtDSKknctPBY5cth/pqCgjSazpv3r0Iqmh9ukCHb2bl1nq
	iWxmMYBc/J14Q9KcC+orDt/9jDjy5nCAcSb7f+ICUXO9Kybbf6b84hpnqgjF+r0bMWRolJPwSYtaT
	05TKpFdCBfFOeKGx3qsBdNBpEqR+EaVtv9s4eZO62UoJ/uAQhSPdjyq5ZGg3v3mRP91ISFDeWaBlb
	EYs0B6M3HR666P9fhYcjKsYj1CBfMiPSvlvRdCBbEvpNNwMqT3QJKhcF6w99UwTDLR4C2w1ddR9RV
	R/npqymqrx6FFtTToLdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1BSX-007AOC-2Y;
	Thu, 09 Nov 2023 20:17:01 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1BSR-007AK0-28
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Nov 2023 20:16:59 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 64E131C0007;
	Thu,  9 Nov 2023 20:16:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1699561012;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vohYVUqiHx/VJkZ5ChoIsoqSMZl/JxxjgWPaTNjl7Z8=;
	b=K7iX93iQAYkSIAOK6uA/pCnI4bQvim9546Ov6EY6ycp/Ugotz1C9pJiADg+nP+DZ+zL0Z9
	s7JvFag+jbUW2nxf8PiNVoFOqDCTkS1DUxHlVb7t5t3fmEXdVjmppAsqVOg5GtmWLar7yJ
	xXWBknp3TIkNEiTJ2IchXqb2TBZMA0bdWYC4r6NiwcPl4+wh2KotAuBhAtaas//kS6Y5S4
	TxyoKg/RRj/38UgVerobG/RJe7zrCKqCQlHFTRlY7J3WNwEHlrcqLQmCOv5abPnHb0m09D
	V9ndFOSboXhVpZXo+GUB7QukkF96TVlgciWbtUJe5lr7jF/1Tf/0PVWVITXK/A==
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-staging@lists.linux.dev
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Sebastian Fricke <sebastian.fricke@collabora.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: [PATCH 3/4] media: verisilicon: Hook the (TRY_)DECODER_CMD stateless ioctls
Date: Thu,  9 Nov 2023 21:16:39 +0100
Message-ID: <20231109201640.340556-3-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.42.1
In-Reply-To: <20231109201640.340556-1-paul.kocialkowski@bootlin.com>
References: <20231109201640.340556-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-GND-Sasl: paul.kocialkowski@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_121655_914455_92B4483E 
X-CRM114-Status: GOOD (  11.85  )
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

The (TRY_)DECODER_CMD ioctls are used to support flushing when holding capture
buffers is supported. This is the case of this driver but the ioctls were never
hooked to the ioctl ops.

Add them to correctly support flushing.

Fixes: 340ce50f75a6 ("media: hantro: Enable HOLD_CAPTURE_BUF for H.264")
Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 drivers/media/platform/verisilicon/hantro_drv.c  | 2 ++
 drivers/media/platform/verisilicon/hantro_v4l2.c | 3 +++
 2 files changed, 5 insertions(+)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index a9fa05ac56a9..3a2a0f28cbfe 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -905,6 +905,8 @@ static int hantro_add_func(struct hantro_dev *vpu, unsigned int funcid)
 
 	if (funcid == MEDIA_ENT_F_PROC_VIDEO_ENCODER) {
 		vpu->encoder = func;
+		v4l2_disable_ioctl(vfd, VIDIOC_TRY_DECODER_CMD);
+		v4l2_disable_ioctl(vfd, VIDIOC_DECODER_CMD);
 	} else {
 		vpu->decoder = func;
 		v4l2_disable_ioctl(vfd, VIDIOC_TRY_ENCODER_CMD);
diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index b3ae037a50f6..db145519fc5d 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -785,6 +785,9 @@ const struct v4l2_ioctl_ops hantro_ioctl_ops = {
 	.vidioc_g_selection = vidioc_g_selection,
 	.vidioc_s_selection = vidioc_s_selection,
 
+	.vidioc_decoder_cmd = v4l2_m2m_ioctl_stateless_decoder_cmd,
+	.vidioc_try_decoder_cmd = v4l2_m2m_ioctl_stateless_try_decoder_cmd,
+
 	.vidioc_try_encoder_cmd = v4l2_m2m_ioctl_try_encoder_cmd,
 	.vidioc_encoder_cmd = vidioc_encoder_cmd,
 };
-- 
2.42.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
