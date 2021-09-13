Return-Path: <SRS0=UDy9=OD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6247EC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Sep 2021 18:30:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 30FBB610E6
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Sep 2021 18:30:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 30FBB610E6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OaVe1rFHec2JXJgLMlvGIMJsRYdpLbUPpTs6PdGZQo4=; b=qWHRl5jW5v6QQK
	O+WOEDpdseOGCxHgmsxu/ZU7FrSiPpRx5IhjQR/2UNuOlIpjq1TWIMMyOcdcJ1ToZhwIgKXhIHICv
	WsZbFJMbquYROIyxal3tZqk1j6v7hf3oYwiHLotvnfP1wDfVQgeOlaa4hLDgHHlxVclp6Aezws0GG
	GHHiPup38UwbD6AqLZ6kaCxgignualuqkjwIi8wXwV954HYK6123EEucgtRPRL4TnyBtCdNa5YEBe
	ALUYQ6ROzXEBbr9jZw6qMTg8+SaoxjLeFKjYjknA/uQjZsBWQpeDOBteVjXdb/F2Vucd/TuvzxM9J
	G7IFG8HOQPkGeuV60DKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPqj4-002vfk-VC; Mon, 13 Sep 2021 18:30:42 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPqin-002vUY-Jf; Mon, 13 Sep 2021 18:30:27 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 51D911F42466
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
Subject: [PATCH v4 01/10] hantro: postproc: Fix motion vector space size
Date: Mon, 13 Sep 2021 20:30:04 +0200
Message-Id: <20210913183013.19616-2-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210913183013.19616-1-andrzej.p@collabora.com>
References: <20210913183013.19616-1-andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_113025_801636_953F3B39 
X-CRM114-Status: GOOD (  12.69  )
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
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
