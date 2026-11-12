Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 630AD606A321
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2026 08:56:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=IfBCHbxA;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=h1UGoGXe
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=b1AeAJ+qovDIek2rD5aus/4DsPJwGrAHXM2HoFdoN5E=; b=IfBCHbxAHsgcpTc9F9io/vwT7h
	GxIRAxQB8DJ3SHCPdDCtK6MsxPxnPLAJcB7b/MoPTI4ohPrsLWniJR0AmWK5IgUZCIKg3TI7VFT/g
	axdVhiFJ3XyXATdS6aBH6kcEajXV9KoxRH4zySzsVdaL2hnWXNjAcd+wCy2nlcXyXZNY9nVBSwOKQ
	RYWMQpd5xZgS7BGuxDRFf+TnhzgvWfgi2sjQHE0TvLFmKvpL2Ip0k1xXo2RsUdRHYJItruJeAmYnW
	74Tu66xdAvIQ2O6m1oCoqeoL4cRvRQ7dXKnxIgrppSub1V5ITY9LwmF49jtfA47qcjcO8WUxdj66d
	sZCp41mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQbO-00000009Fpv-24e8;
	Thu, 12 Nov 2026 08:56:17 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQaA-00000009FJ4-3Feo;
	Thu, 12 Nov 2026 08:55:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7686C477F3;
	Thu, 12 Nov 2026 08:54:58 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1794473698;
	b=LQeAin1/7thsxk1Ev1qJWEL2CB5ThZHD4tlcwPc2lvRFDC48+LRwvtdHtShZwsE/TUBJ
	 Ftj2JXhTUAihE0Ti+6DJCPTYhZ9Cu8UFZz7QmgxnwRHkLW0AI0+ubg8QklE68neN0XT45
	 YBeg6lZuh9+i1Pm+RgalcqgcyHS9gwGUp1JXNX66zy4f3LKrBIYyYOEuB3F4BCdx6Ir0h
	 Xbw8sO+zmcd3FojNo/HP4etDWGnaVdyrKUp8JCn6bMhWOVjXWdHYYjyE075GVknXF9agr
	 ijgCou58sK+9Df/xo89QZUdGccZZS/N2VJgvjkfbn1B6xfaAV3QMzbVSnHGmDaTBUHg==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1794473698;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=zC3IcWjEkVLz+74o8+GFj8TEy0mWfUnym+XE0DhCAQM=;
	b=1Lx+aMzq5pIIpbacIu/i99r2KnhNfSKg9P8iAvtbc9z3yl3p4m4jNEy8ssG6WIzpZFqn
	 xR9P/f10uTRxXgBQ6MFQshdM04HqKS8Fh/m+BAKJyLUfuChQozkaf7Y68/IRNWrz15UdF
	 VgeF3WT4i0zRwB12fuMEv9WJu256aJyZSJUNWtwubj/XFXaDXBO6DV+GCRsmQHrgfsw8B
	 /8VmR4wIDOVD2sfP7Tm0H88SiURbfRRXmRLQS3uZgRFl0DBR2o7Nxz3L+SiQZ+oV7IG8g
	 FBfrbmJET96fdRjrwDYk4seg4eblIB5+2EIZQXFtl/QIWeKjX93O7CCCyk9OyX+znog==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 8E5891F00A07;
	Thu, 12 Nov 2026 08:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794473698;
	bh=zC3IcWjEkVLz+74o8+GFj8TEy0mWfUnym+XE0DhCAQM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=h1UGoGXeYKwXcQ8nwhjPrtcCzA2bKFjArk89K/OgnthmMoBg6LWQ1Wo0QWBYNw/lu
	 guegmB540AGrFEI0hYq8pFGqfyjIGXjF0+qbqmkx+1SrpF6nGlGtfNqpDWTgcmD7M4
	 fhY1GBScVO1nyKPdWozfp21z1pbwQd2dYNXvfrwxaXCwuq4xpldbLn67kuM5HTQJmx
	 N2kUmWLLDexr4WetBSK0/f0VCFeqsojotuB913yRNPAlxn1wAGFrR2WFaSZ3a/eqBd
	 2rgeJXEpqapP8xWF6RYrADfINrpK6avxj2rw82c8u1BU9wSW0fziGXMqZbFxph4FCv
	 4vPDYwroPoN4Q==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 3B36749417;
	Thu, 12 Nov 2026 08:54:56 +0000 (UTC)
From: Arun Iyengar via B4 Relay <devnull+aiyengar1990.gmail.com@kernel.org>
Date: Thu, 12 Nov 2026 08:54:59 +0000
Subject: [PATCH v2 5/6] media: verisilicon: Reject AV1 frames without tiles
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261112-hantro-codec-fixes-v2-5-f44424df585b@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794473695; l=1803;
 i=aiyengar1990@gmail.com; s=20261110; h=from:subject:message-id;
 bh=w0RsTz4T3CdOdGdBS9xKk8Iq1upmKZ/s7yYs4Iwwoq4=;
 b=1jIzt0YpSLyNUN1i3u8sdgp/pwRCteGQqy10eDWnlsJ1plRYZEtzBS5wV1vYcztYvLdYwST2j
 YQ95e/YnnimD6li5/hGlc7vLZxUI7uJdnpN1//BScgKO9mR+lG0n3qq
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

The AV1 control validation only checks the upper bounds of tile_cols
and tile_rows, and rockchip_vpu981_av1_dec_prepare_run() only checks the
number of tiles against the tile group entries and the tile buffer, so
a frame with tile_cols or tile_rows set to 0 is accepted. With no tile
columns, rockchip_vpu981_av1_dec_tiles_reallocate() computes a size of
0 for each of the five tile column buffers, which the buffers it has
always satisfy, so it allocates nothing. On the first frame of a context
the decoder is then started without tile column buffers (DMA address 0),
and after a failed allocation with the addresses of the freed ones.

Every AV1 frame has at least one tile, reject frames without any.

Fixes: 65e9f52ffdc8 ("media: verisilicon: Fix auxiliary buffer allocation size")
Cc: stable@vger.kernel.org
Signed-off-by: Arun Iyengar <aiyengar1990@gmail.com>
---
 drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c b/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
index e817c91224d3..8154b405ca63 100644
--- a/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
+++ b/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
@@ -526,6 +526,13 @@ static int rockchip_vpu981_av1_dec_prepare_run(struct hantro_ctx *ctx)
 	if (num_tiles > tge->elems || num_tiles > AV1_MAX_TILES)
 		return -EINVAL;
 
+	/*
+	 * Every AV1 frame has at least one tile. Without tile columns, the
+	 * tile column buffers would be sized to zero and not allocated.
+	 */
+	if (!num_tiles)
+		return -EINVAL;
+
 	ctrls->film_grain =
 	    hantro_get_ctrl(ctx, V4L2_CID_STATELESS_AV1_FILM_GRAIN);
 

-- 
2.55.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
