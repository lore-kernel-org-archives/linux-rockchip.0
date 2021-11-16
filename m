Return-Path: <SRS0=A1uQ=QD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CECF9C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Nov 2021 14:39:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A157463223
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Nov 2021 14:39:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A157463223
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5184fAwGINuWWAwG/+F3176rCmqP/TunZHhTCmkU+qQ=; b=ye4pwE7BjoCx3X
	sRkcSKqVTUC4de+IZtTQngK8w5Sd6hM8HdPC47OHsbhj72tbOciEraZ6ZjDXkHrKQenauxwId8lBu
	gtoI+HtqirOaMHLlMT7aq3kbQ7QzYHOB+a3Pcy6W5oA5B3Q1WkhzxQu+3/WTTe8olmknKG/RBJwzF
	91vCP6EbnXpJx5mFCznxR3Jlo19JvX9+2ZKQZ6eNWXY9pXL8rMV6oAjmKdE/RrccY83pHvC7elKki
	gLoM4X3S0n+NP3XOnpYFA/MGCTSTc+HH4TpYm4ecTk1esDnjVKZVL5G6S29X8/JNJJyuxWtixEYo3
	ZvHA4MfoPsHTvxwwQSJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmzcj-001vPE-2t; Tue, 16 Nov 2021 14:39:49 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmzbn-001uzK-1w; Tue, 16 Nov 2021 14:38:54 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 9BAF61F457CA
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=collabora.com; s=mail;
 t=1637073529; bh=puTDVxKvsG/SEplOOyqAU/Pya4sBeAzzzC0bFdbbs+0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PIVORhVMNzko4EQKELvZyLkyGoUsK4DilBR48MDpP2eaQRuSLWOoRR3kme5xa/nYU
 VzRRf9ARrGI7eB5vutFaUOdED1kjx4dFngDZPm7nSpfLAeJCi6eqjJsFMsPoLgGocY
 vAUY1fVApPCEmmmZq7EA2REQQYc0VUs3fgSwTR31EqvHM+e7JOimegLDYnvqZqyVOc
 Y8VG7jgpacLXuZh/tZsV6nKklmv1b/kQkshXV77O6DUrp7bGaji2aP8ZQmzX649qKE
 bBIDjGggVdop+Mo+X5Yc1lUe4sAWmczIP0HszfRZ9hZwzl8mtAFYWWB81a9urfUi/M
 Y5zbPH8YDbTAg==
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
Cc: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Fabio Estevam <festevam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Heiko Stuebner <heiko@sntech.de>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH v8 01/12] hantro: postproc: Fix motion vector space size
Date: Tue, 16 Nov 2021 15:38:31 +0100
Message-Id: <20211116143842.75896-2-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211116143842.75896-1-andrzej.p@collabora.com>
References: <20211116143842.75896-1-andrzej.p@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_063851_236367_7262A1E5 
X-CRM114-Status: GOOD (  13.31  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Ezequiel Garcia <ezequiel@collabora.com>

When the post-processor hardware block is enabled, the driver
allocates an internal queue of buffers for the decoder enginer,
and uses the vb2 queue for the post-processor engine.

For instance, on a G1 core, the decoder engine produces NV12 buffers
and the post-processor engine can produce YUY2 buffers. The decoder
engine expects motion vectors to be appended to the NV12 buffers,
but this is only required for CODECs that need motion vectors,
such as H.264.

Fix the post-processor logic accordingly.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/staging/media/hantro/hantro_postproc.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
index ed8916c950a4..07842152003f 100644
--- a/drivers/staging/media/hantro/hantro_postproc.c
+++ b/drivers/staging/media/hantro/hantro_postproc.c
@@ -132,9 +132,10 @@ int hantro_postproc_alloc(struct hantro_ctx *ctx)
 	unsigned int num_buffers = cap_queue->num_buffers;
 	unsigned int i, buf_size;
 
-	buf_size = ctx->dst_fmt.plane_fmt[0].sizeimage +
-		   hantro_h264_mv_size(ctx->dst_fmt.width,
-				       ctx->dst_fmt.height);
+	buf_size = ctx->dst_fmt.plane_fmt[0].sizeimage;
+	if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_H264_SLICE)
+		buf_size += hantro_h264_mv_size(ctx->dst_fmt.width,
+						ctx->dst_fmt.height);
 
 	for (i = 0; i < num_buffers; ++i) {
 		struct hantro_aux_buf *priv = &ctx->postproc.dec_q[i];
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
