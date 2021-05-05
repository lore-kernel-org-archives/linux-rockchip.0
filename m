Return-Path: <SRS0=Kxb6=KA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51337C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 12:25:18 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F158E613BC
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 12:25:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F158E613BC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mszb5mBSCs08Bj9td/0bW37Tzb8SxM3i3bXv7BYyFYw=; b=MrXebziH5m1WB8Q5IADro4m7RJ
	GLq7cmMuuwV3SLJ2ePU9aSAqROjD48QNYmg+zA2TCD7CMVU5Wng3az4IMhP6GT2JkLoCWljTyP2An
	WiNQLQIGqGP/9A1R2OL+YxOMm8KY66dvo0AI8MijrSmB8c2wh0BWCjTYrH2ItvnFKWDrIbQNpBsMK
	ldDZRUbUeqXdtCfayd2NCuUQSahvO3XoeeXZD9iNLg0IARm9d1hW8So3CztPSk+C4eiT/oL9iMpMD
	TFxKg7Oa/p8LoIPCI2tE4Z91vNEJuRDE7NUkBxfO7hhYBvK/hHki+DMGtTVRSUtNwWLUoaafBQeVE
	7XU9V6Hw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leGaU-001BJo-KR; Wed, 05 May 2021 12:25:13 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leGZV-001B55-EU; Wed, 05 May 2021 12:24:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=XB8w0x746nuVa5cRMFzfUM6hn9Fg9EwljrdPuav5PuA=; b=LD3/ZZON2Jl346Ru0KC6wCFKRm
 ubw8Jit6hYaZ9cMjFctnsSpv32IJ/CIyE/aDEDLWhwZQkaCE2KhmzxwHRte4U3+yyryL9hELqx/rx
 Lwfhjz9ET2FNSzV4tlQLSpw/viBaNA3rWQ7xrWqbP8UVxj0+VlwqdZ4vSzqEpFu3OvEeR2CuZV7oV
 2gEXNL9+GPyiww+s98xq8ltWls3IWUahWcQvccUcqZIsjUt/3oCdLaJjK0W0RrSDa+4BvYkZHXWzg
 y/fEOfn/EX8RJmgMF706fEjzhQVznbScezNApPy8P7M0bPkNA0rnkDkpItXnkBbp1pxusTczc0GFW
 LeShb86A==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leGZS-004jpt-OF; Wed, 05 May 2021 12:24:08 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 0B0F01F42E72
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>, kernel@collabora.com
Subject: [PATCHv2 3/3] media: cedrus: Fix .buf_prepare
Date: Wed,  5 May 2021 14:23:47 +0200
Message-Id: <20210505122347.7576-4-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210505122347.7576-1-andrzej.p@collabora.com>
References: <58791717-b7a9-d057-a998-a4440fcbe783@collabora.com>
 <20210505122347.7576-1-andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_052406_952840_BEE6F0BB 
X-CRM114-Status: GOOD (  12.17  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The driver should only set the payload on .buf_prepare if the
buffer is CAPTURE type. If an OUTPUT buffer has a zero bytesused
set by userspace then v4l2-core will set it to buffer length.

If we overwrite bytesused for OUTPUT buffers, too, then
vb2_get_plane_payload() will return incorrect value which might be then
written to hw registers by the driver in cedrus_h264.c or cedrus_vp8.c.

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/staging/media/sunxi/cedrus/cedrus_video.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index b62eb8e84057..bf731caf2ed5 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -457,7 +457,13 @@ static int cedrus_buf_prepare(struct vb2_buffer *vb)
 	if (vb2_plane_size(vb, 0) < pix_fmt->sizeimage)
 		return -EINVAL;
 
-	vb2_set_plane_payload(vb, 0, pix_fmt->sizeimage);
+	/*
+	 * Buffer's bytesused must be written by driver for CAPTURE buffers.
+	 * (for OUTPUT buffers, if userspace passes 0 bytesused, v4l2-core sets
+	 * it to buffer length).
+	 */
+	if (V4L2_TYPE_IS_CAPTURE(vq->type))
+		vb2_set_plane_payload(vb, 0, pix_fmt->sizeimage);
 
 	return 0;
 }
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
