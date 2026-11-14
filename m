Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C666E606A8A2
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Nov 2026 00:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Ve+j2q8x;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Ctee2aTQ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=dTOQIx5Y77BS6pdYbc9/bcv/kfrzBP9lkR6nFk109Xw=; b=Ve+j2q8xoKnquM9CFtqEk58SQn
	zRI4L7zd4QsqURk4bnsE2SVneIwV7hnnx4Ulv7xBVowgjVeNM8Xm2tMCfkM3MKrWWKHV+b9PB0yoj
	sysMDAGOfEAGT4bLmHV7OmDt4KOLht0oaNrXIobK8rSlbMfoDCV8gx0W/+ECRRUThrRef4H6TJbx0
	C9c97d9rc7vLLES+uTVRCAN9J9iFmp1K/wx+prH/fRAOLa7yuNailwSqbJaRy7/5DcpfVL5YFtKm5
	M2cJrSAAnp8h9oV8n/YRctl5Oub5oRb149UKbHW/LYsCzBh7ItZqpx4VKUnb/tETBy736Jj4NaQIX
	y8IYByEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS1PN-0000000EsGU-224v;
	Sat, 14 Nov 2026 00:14:17 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS1PM-0000000EsEd-0Xm0
	for linux-rockchip@lists.infradead.org;
	Sat, 14 Nov 2026 00:14:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BAB6F43C08;
	Sat, 14 Nov 2026 00:14:15 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1794615255;
	b=T+csyDrd6KrnenhMwWg6MIgdXtrctUnpK9xYhUmTjsyWqwb4Gdr8SE64gqG6nSH9LLJE
	 VZhd7K6xUrZ+P+pQMYfG5UVIYwPHlSezGewxi4vgZSyJNIlodHXS5eC6sm/Iw8LW9nB4b
	 MHkr5H3yqHtcQS8EiHohhZuSX1+qauiTOV+LZbtt48I+46dTcI/xRNBbbqeIvhwfaV0B3
	 VArYvdMPI0yXUkj5MNTzD4F+mgvz391ns3Laf07S/iB26BHkF1uFUMI8DS1Zezu+L0AJX
	 YUwroMBlowUvu+yVbYOCLZcVG/5BhZmmd7SbgY8BHLLjsYapg9jtTeLf18ZDbTKvcLg==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1794615255;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=FQ1LfSq7RW9yRUYVXOUx5MG/HJXut2PEx0C5V9vOAm0=;
	b=Jajq6VshPxqD2FWquq4tN+B5cdhGhxgrXoP1bYSOjYWgvFdcnpvSTiXbYdL/ml6QGj4e
	 SSPnR6eFoqR09uEcdu1kGRqPt8fVDc0eQ4o58TazeMu0jwWcmRaxv5PWKBomlnKkLWaPw
	 DHuRL5rkXrPa4ddFzDyG5K/gO1tOkimSN+y4CMlMeJ2w0ksUkn8n/CV1DB++P8ecjyZKO
	 HXMsF5GCVtAOvCP7u2l+lmAtkmha7S8rQCGOUwK3i2fj52su6FAtUcfG6+eL15v++Eldc
	 knkBaANuvTYp1G1ZYFLFHXsrf+9JjLKNSsPDbLSyqCR7+XT8cddcABYhpW/523gBKmg==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 195861F000CA;
	Sat, 14 Nov 2026 00:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794615255;
	bh=FQ1LfSq7RW9yRUYVXOUx5MG/HJXut2PEx0C5V9vOAm0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=Ctee2aTQF98y0nsjDWArljxUS0XqHTeilzxVfbuv1eGK6ckI+T0ToQjq0LHRhK85W
	 BIcfTqAxfdY2gJ6aEZE2ST/S7fbmI3wMA5FRouO4FV46hjvNBcNa+C8aZHkLD8YzuQ
	 aPvy3VzE/9I6WUPdi3U+cveUUBDgIbSQ50ZBGpMpe4kIa98yLU0CgSSJlw9FcjeDdy
	 L0x7d0PS86TX1imcwsm6XdDZG5blsRfl+UqZZNxz9DOtlXk4DMQQ4ybDVuwEXTCzM7
	 7JedrLdtIEVsP4jytqKxX5bbQBd9O1AT3C/3gf9xcHPQOhd4lB8cAfPz7xDMhKalXj
	 31gChYpOKyvaw==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 9F39D49BC7;
	Sat, 14 Nov 2026 00:14:12 +0000 (UTC)
From: Arun Iyengar via B4 Relay <devnull+aiyengar1990.gmail.com@kernel.org>
Date: Sat, 14 Nov 2026 00:14:14 +0000
Subject: [PATCH 3/4] media: verisilicon: Keep the CAPTURE format at the
 stream's bit depth
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261114-hantro-fixes-v1-3-abb78264801e@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794615252; l=1438;
 i=aiyengar1990@gmail.com; s=20261110; h=from:subject:message-id;
 bh=mXsqYy0PJIO8RW/ep6ozTJeepcxK3PGTSINO9ycmhwE=;
 b=tLpy5tv59U2Ro7kaItdF8i3ov9qaV21o4xMBS8B4whtF/nSccwrZClo6yLBRnU7Z8mpsg6ps7
 q0YdIYvsTOXC+AOk/OR0fTbBlil3Pm2m1kffIT2kx0hEsZbTxmuxnj8
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

ENUM_FMT on the CAPTURE queue of a decoder lists only the formats that
match the bit depth of the stream, but S_FMT and TRY_FMT accept any of
them, so userspace can select an 8-bit format for a 10-bit stream and
the decoder writes 10-bit pictures into buffers sized for 8 bits.

Replace a format of the wrong depth with the default one for the depth,
as for an unknown format.

Found by Sashiko in its review of hantro-dec-size-check v1.

Fixes: 8d03c2ab881b ("media: hantro: Support format filtering by depth")
Cc: stable@vger.kernel.org
Signed-off-by: Arun Iyengar <aiyengar1990@gmail.com>
---
 drivers/media/platform/verisilicon/hantro_v4l2.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index 2baab4cf3bbf..362fbc747eea 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -342,6 +342,14 @@ static int hantro_try_fmt(const struct hantro_ctx *ctx,
 		pix_mp->pixelformat = fmt->fourcc;
 	}
 
+	if (!coded && !ctx->is_encoder &&
+	    !hantro_check_depth_match(fmt, ctx->bit_depth)) {
+		fmt = hantro_get_default_fmt(ctx, false, ctx->bit_depth, ctx->need_postproc);
+		if (!fmt)
+			return -EINVAL;
+		pix_mp->pixelformat = fmt->fourcc;
+	}
+
 	if (coded) {
 		pix_mp->num_planes = 1;
 		vpu_fmt = fmt;

-- 
2.55.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
