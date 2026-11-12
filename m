Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC30606A88C
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2026 08:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=gqERLtxE;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=EcGH707w
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=VUojK3cpw8MKHF/UN7cp8Nw/osgc3beOfGewH/WvVno=; b=gqERLtxEH6Rcv2KSEAgCbKJ2XI
	3NnLZOdESOGwNmJfT8CMrUMjap4sFUrdtymZtDGyQ4n78/wcCDMZj3ozmDFRQePsnFQ/4aIFLIF3K
	uWKijaA4o8ne367DQg/2WcR0uX1TYJ/9iuKHes1gu0pJfEK9zmfJ3AEVWbMqxvzg4RcGq4vRQMJ2m
	R9+MJmXUN2KX33iPeYBcOWOhgprzoanTnO9WobfWBcTvkjg3P2gVEkwnFdqlfAfBkLEb/OYxT6PgE
	lew1MNsJXPq5KbV6cifuuE0tUB7oJGplYIYThjSp9VC51EvtoBfyGd0OCxuT/qZGDGgyT3hvJSQ2l
	SsxvD/Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQbY-00000009G05-1mRA;
	Thu, 12 Nov 2026 08:56:24 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQaA-00000009FIp-1a4J;
	Thu, 12 Nov 2026 08:54:58 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4D3F663B16;
	Thu, 12 Nov 2026 08:54:57 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1794473697;
	b=QVmh8VWfj2ZhRIRnWWABgaeU9ME7IqleHS1ttlrhEi1q25s4OkhClaEVR7c6VdC03JsN
	 V+2d7twi1wwPxqBaaghP55wPiljBdElxzOPT3SxH+ZRlnwwXpFeO4/8JaoF1kvnR9UnOi
	 /MMmBlfJK1iOJHlXpSxdNytyEDdv7vAteQHf33ZIHlryflqlGEycrsmFKYkyFFL9LeUfr
	 EIrzzeQSoSHWgBx+mVJ8dcl9jXDKiRS9nKuLLWNTw9Nz8ndyOSlwd8PnEYqJ4Il/hvlgk
	 m0vUm/tKlOGASxP3kpeLuPzSc/fj5VxfMpU7wgRbopE/3DhBw7GzdDo1zVhtfZMBJ2g==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1794473697;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=9pL+fygB5ssTmFqgMVv9/XaMYzhrOZx7qK1PSJTEus4=;
	b=u1uv+oNw6ubL70hV0MDLpZvG7bN99Skh73EiaNAEmfMbJLh0MrTZayKuW4a0JjOHRVls
	 /7G8iJumfucY9YlM5FakNg8dRR6BHCAcUdcVg7SbqmMfI9s5VH3TjdgfFw3196bUhtnoZ
	 MJzNbWY5LCOJ/hhgd5HgJOcMPuuRPJ/PrNXd2SXPyyiDvyiE5RsFKkwDxdxGxRnypdcWG
	 apudGWdneIztPC6cSLudyjzIlbWL63o9ymGGAUJA/ZShR+HecnW97t171TPZCgypFTM+s
	 VgphELmiFHdPSTIY8UEc8Mqsjr3CFEfpzvrFcGTiQnGZAMagDk/5pnrXIYFPaV3Ywpw==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 711001F00A08;
	Thu, 12 Nov 2026 08:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794473697;
	bh=9pL+fygB5ssTmFqgMVv9/XaMYzhrOZx7qK1PSJTEus4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=EcGH707wVB/aCWaOelqNtfBdfb07whpmqCe4+BJwF26Ugoy1FuL1kOOmSrNNmRImp
	 ahHRU5Z/vp0FeYil8VEz1+PUhfPELQhV22i+XyFjNYgixNlqjXFeJOylPkXnS2/l1V
	 cJVbFSUl0NRSNtxAiOClZtPvhqu3cvI3mVs69OLWt9OxBcycrlzwKBjiRgl0PQ31e9
	 Av5nQ8OeMYUh9krpBO4YzPZxUBvPviK+RflzIONA8qXPAe1QaAyQke0BaXosxFWhMS
	 CbAOcx9DR3POaNNE+ILsIb1lLceU6L3kAF318pQ/XbwyYtD2nsQKDHV9qgNv31WNBF
	 GtUXjExaabxyA==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id DF33749405;
	Thu, 12 Nov 2026 08:54:55 +0000 (UTC)
From: Arun Iyengar via B4 Relay <devnull+aiyengar1990.gmail.com@kernel.org>
Date: Thu, 12 Nov 2026 08:54:55 +0000
Subject: [PATCH v2 1/6] media: verisilicon: Support holding the CAPTURE
 buffer for MPEG-2
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261112-hantro-codec-fixes-v2-1-f44424df585b@gmail.com>
References: <20261112-hantro-codec-fixes-v2-0-f44424df585b@gmail.com>
In-Reply-To: <20261112-hantro-codec-fixes-v2-0-f44424df585b@gmail.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Sebastian Fricke <sebastian.fricke@collabora.com>, 
 Hans Verkuil <hverkuil@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Boris Brezillon <boris.brezillon@collabora.com>, 
 Jonas Karlman <jonas@kwiboo.se>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Jeffy Chen <jeffy.chen@rock-chips.com>, Tomasz Figa <tfiga@chromium.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Arun Iyengar <aiyengar1990@gmail.com>, stable@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794473695; l=2131;
 i=aiyengar1990@gmail.com; s=20261110; h=from:subject:message-id;
 bh=BG5kaLLN/ROlelCT7uSwGI2mCcFqWk5IizY+1FV3tNk=;
 b=yXPRYR2wiGuZ1YcJfg2Z2ApU6rSML13Ry0jpgE96Hrl1t/aHvg6/w7SCinDYdf93XffeCuZRx
 IX6v3cMc7ZnB3G8wc3g9cgbavJ8Y6rd1z0qMm1iBRQ+wBMVdZU4XJKr
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

An MPEG-2 frame can be coded as two field pictures, each decoded by its
own request. Both fields have to land in the same CAPTURE buffer: the
G1 and VPU2 back-ends already write a bottom field one line into the
destination buffer and use the current buffer as the reference for the
second field of a P picture, so the second field must be decoded into
the buffer that holds the first one.

Userspace asks for that with V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF, which
the driver only allows for H.264. GStreamer's v4l2slmpeg2dec sets it on
the first field of every field-coded frame, so queueing that request
fails ("Driver does not support holding capture buffer") and decoding
stops. On RK3588 none of the field-picture streams of the ISO/IEC
13818-4 main-profile conformance suite (sony-ct1..4, tcela-8/9/10/16/19,
hhi_burst_*) decoded.

Allow holding the CAPTURE buffer for MPEG-2 too. Job completion goes
through v4l2_m2m_buf_done_and_job_finish(), which already keeps a held
CAPTURE buffer queued until the last field has been decoded.

Fixes: 340ce50f75a6 ("media: hantro: Enable HOLD_CAPTURE_BUF for H.264")
Cc: stable@vger.kernel.org
Signed-off-by: Arun Iyengar <aiyengar1990@gmail.com>
---
 drivers/media/platform/verisilicon/hantro_v4l2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index 83af9fa1ce94..822c4b371671 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -513,13 +513,13 @@ hantro_update_requires_hold_capture_buf(struct hantro_ctx *ctx, u32 fourcc)
 
 	switch (fourcc) {
 	case V4L2_PIX_FMT_JPEG:
-	case V4L2_PIX_FMT_MPEG2_SLICE:
 	case V4L2_PIX_FMT_VP8_FRAME:
 	case V4L2_PIX_FMT_HEVC_SLICE:
 	case V4L2_PIX_FMT_VP9_FRAME:
 		vq->subsystem_flags &= ~(VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF);
 		break;
 	case V4L2_PIX_FMT_H264_SLICE:
+	case V4L2_PIX_FMT_MPEG2_SLICE:
 		vq->subsystem_flags |= VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF;
 		break;
 	default:

-- 
2.55.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
