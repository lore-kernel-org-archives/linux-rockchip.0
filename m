Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A894606A884
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Nov 2026 08:39:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=umSw0ig/;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=HHzj+VRS
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=TrMifH65NZqz8SmPXtL+Q3gODdIQ/E2Kcunm5N2U35Q=; b=umSw0ig/3wHpS5q7JedZORw82P
	qf3qCY/ENE/3j9q5faFBM3PjHVFHTOlYUZurMjAMZj7NsN3xloVCYMMlAFAcmRcIKxhd3KCiiohbP
	w/h+P787byU15/X4g7itk3HoXCj6KgFi2K8MqX+sQbTw00BEeO5mpQn8ynSIdMKD+TDPouWaYUnA3
	mfJyirko/i5uJ/PlU2fZW7iF+8N5iWxkD7wOiJWzD2vCgXmdK18EBakJWs0INf40wlhT2hC51+gdO
	cXort7QjtmxfyPquCPv1AROKUhoOt42VCdiGmJHQbg7DBoZXf5KPO5q/5eUslaFc37Vm+v1jvXh2X
	nEyqJz8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSVmD-0000000HFXM-0BjX;
	Sun, 15 Nov 2026 08:39:53 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSVm9-0000000HFUm-01lP
	for linux-rockchip@lists.infradead.org;
	Sun, 15 Nov 2026 08:39:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 3A578612AE;
	Sun, 15 Nov 2026 08:39:48 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1794731987;
	b=JwNILg5pIm1ji77e1xUUaDHxOI1J+pEa42aKM7A2DYSVZ1G2+ltN9vJ5bbu8bbnYJk54
	 PChoPisUOz6zzXA7L9jRmSkKTrZe/pO8FAuHsJNbWcMjArG7utGsGLE193tdUM9Qhjg5f
	 iihAZYuf+7eA9FJpXAhzWGwq1edauQuh0COr3QqEme/VIrOUnoanSg1TCr+Br4TSxRRUv
	 COSGyOpoLENumj21Q6PvJmCaUxYod6hgi5OatpwxGOUQL1YPzWsyCeomrySkNapbNtwzr
	 NZX6bQXZ4yJFUP972/pfnX/GNj01qgl6SHtD6APPf4r3YtOC4VSdgDn7LmJ92aNApEQ==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1794731987;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=8I6WPL1BhC6uEnI5D/7lzAS6mtAB//YTXmIP/p+4oZQ=;
	b=Q1VtFNpzRLN5I7qHnpJiy7XFlCuR899+OMyk7YZk5jA2kUrYPdvIX8Mk+PuQrYwv0gE9
	 hA8hDrpvJ5aTar1sijcNver/Io8lg0ST6dJAO8jLULYyDPch/Ek2jk8NbyJ9IrF0um4da
	 Klbb+3kVsXyf7fU+w64sH3ScmJGztobuGOuWk2F3xz+S32ZHquYvZ0Ba/rtgSyo2iDUQS
	 lw0axrLbRoLN2a4/AUhEz28eUolgrdpm6a8Op/16gCSDsUjzAou8zW1CLNAU5TOAy6eFu
	 Vxxn54mzMMhn+5CdJrGr2kX49ebzfFI9XLzgfsknSZd+zpV59I85uokIxEgoVk0WfqQ==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 011731F000C5;
	Sun, 15 Nov 2026 08:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794731987;
	bh=8I6WPL1BhC6uEnI5D/7lzAS6mtAB//YTXmIP/p+4oZQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=HHzj+VRSHu8gLobmqqoVuE8AC9c7nA8X8+mD8LrcfqW4ZGRarB4DucohMYklzJOWz
	 Z2NzJK/aA78ers2IruyB4ehp/GUBW33rbaqfxR+HlYBYTUe2Ci0BWEAHc1OKnzUJhK
	 ky82BPr5EFH0mxga5WklTyya9j5KMrA5ZRcGGEov4XamHKpekOmSOCuhXIVyQ1G71t
	 h3dVNS1QVwAy+5IMWwFObLcA+oPCXsLxUB26eBQzj6IsP7N4V8aYbNlrwQg548G5Oh
	 cjekEwXGAz0JwZA+KhnQLHDnF2uNvAxjsXxtqD6IqWEMWiHnoJBAHVn/2AxCp1iaYM
	 OTN0Z08XzuNaw==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 6C54049FEE;
	Sun, 15 Nov 2026 08:39:46 +0000 (UTC)
From: Arun Iyengar via B4 Relay <devnull+aiyengar1990.gmail.com@kernel.org>
Date: Sun, 15 Nov 2026 08:39:46 +0000
Subject: [PATCH v2 1/4] media: verisilicon: Size the VP8 segment map for
 the largest frame
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261115-hantro-fixes-v2-1-bfecfb07a3e7@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794731985; l=1178;
 i=aiyengar1990@gmail.com; s=20261110; h=from:subject:message-id;
 bh=HL3Blb6OWyDUqsGQviHP7B92VIrg7DTEXdqj8j/7nqU=;
 b=URFopEk5oS38P36Xwr5aN0tmKgXZZJP3hjScqQ7OJNMmx9tPMQBLbZNUh1y3wt6NuOamQ+j0N
 +ANmer4lhJKAinZXiGcHEnq5GMutHJAjFs7HSl2II1X3w3Sm2sHoQy7
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

The segment map is sized at STREAMON, but the CAPTURE format can grow
while streaming and overrun it. Size it for the largest frame, as VP9
does.

Fixes: bbd267daf4fc ("media: verisilicon: vp9: Allow to change resolution while streaming")
Cc: stable@vger.kernel.org
Signed-off-by: Arun Iyengar <aiyengar1990@gmail.com>
---
 drivers/media/platform/verisilicon/hantro_vp8.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_vp8.c b/drivers/media/platform/verisilicon/hantro_vp8.c
index 381bc1d3bfda..98ad86269bc3 100644
--- a/drivers/media/platform/verisilicon/hantro_vp8.c
+++ b/drivers/media/platform/verisilicon/hantro_vp8.c
@@ -151,8 +151,8 @@ int hantro_vp8_dec_init(struct hantro_ctx *ctx)
 	int ret;
 
 	/* segment map table size calculation */
-	mb_width = DIV_ROUND_UP(ctx->dst_fmt.width, 16);
-	mb_height = DIV_ROUND_UP(ctx->dst_fmt.height, 16);
+	mb_width = DIV_ROUND_UP(ctx->vpu_src_fmt->frmsize.max_width, 16);
+	mb_height = DIV_ROUND_UP(ctx->vpu_src_fmt->frmsize.max_height, 16);
 	segment_map_size = round_up(DIV_ROUND_UP(mb_width * mb_height, 4), 64);
 
 	/*

-- 
2.55.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
