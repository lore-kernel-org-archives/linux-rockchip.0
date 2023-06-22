Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C6DBEB64D8
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jun 2023 13:14:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zfHU1FG2a+dFyH+N//gSTliJbZy/bLuBr4PgS5U7fOw=; b=4Tt1pcof8z2AGt
	3+IddI4fXfC+gLI2YtWX6s/AV7h7bsOom216XbssSDnH0qu12gSbM8lFlhynmB4Pz5IumHUXmxl7h
	QaMz8/s3W+FQzBwKUx4kEtwWGIijESu8EighUPKVaGK6mSZg5og1hEXroNP5ZBZ4D78oylPq+FGnx
	wuiMVZ31CMqo/XrNBUti1HvJxY+etOmWR0dPbB7zmBDk0DPopXHwPiOpzdAFKqDkWUAno+3IEGVc5
	4stzBJ7cLbbWCeH8FtnmsRSPp1eKtz6OkwidfOPAfgg7JnvxeJgJuEtkzmYvHKFSFBxBzjfhfY3W4
	0NILQXsmmrv/PvNk5qww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCK8h-000jNy-2y;
	Thu, 22 Jun 2023 13:14:19 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCK8P-000j8E-2L;
	Thu, 22 Jun 2023 13:14:04 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:7d72:676c:e745:a6ef])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id CAD856607121;
	Thu, 22 Jun 2023 14:13:58 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1687439639;
	bh=AARgP4b8y2Xc1aS5YL8NqmR9rbb2o30p7zaaWtG32hU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ZxTiNMH1hDCi1nmk94lamG1X/2drYWUgcsGIuJCmAR05Ubc5m56NTZ+iGvO/n0COj
	 nne8y6hoklBPJ4I4t+WDe+eTO2xu+fS1eTuXPRnUScsede9aTvM654IoXdkFqk/GnG
	 3mlubjY9Uu2T3PqDO/7ETnGGa7FqWaMwdW5l/zCaTM9bRqXcsyj6ro6OMKhffFAnL6
	 jUETkWD2LsuwYKGL2MAfHw4aQEE6iuZZD+SfZ8qz1s9PM68lv2tgozf3XHVDQd3dHi
	 k5RcUi5+R72uhu9shyNTsVUXzQDGH02zvUa16zSSJTA1JSma86yxCtjJ7lcwBFsmUI
	 rQ2YJSV5cVQ1A==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	tfiga@chromium.org,
	m.szyprowski@samsung.com,
	ming.qian@nxp.com,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org,
	hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v3 03/11] media: videobuf2: Remove VB2_MAX_FRAME limit on buffer storage
Date: Thu, 22 Jun 2023 15:13:41 +0200
Message-Id: <20230622131349.144160-4-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230622131349.144160-1-benjamin.gaignard@collabora.com>
References: <20230622131349.144160-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_061401_909943_9278B675 
X-CRM114-Status: GOOD (  11.65  )
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

Remove VB2_MAX_FRAME buffer limit since Xarray allows to store
more than that.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/common/videobuf2/videobuf2-core.c | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/media/common/videobuf2/videobuf2-core.c b/drivers/media/common/videobuf2/videobuf2-core.c
index f1ff7af34a9f..86e1e926fa45 100644
--- a/drivers/media/common/videobuf2/videobuf2-core.c
+++ b/drivers/media/common/videobuf2/videobuf2-core.c
@@ -455,9 +455,9 @@ static int __vb2_queue_alloc(struct vb2_queue *q, enum vb2_memory memory,
 	struct vb2_buffer *vb;
 	int ret;
 
-	/* Ensure that q->num_buffers+num_buffers is below VB2_MAX_FRAME */
+	/* Ensure that q->num_buffers + num_buffers is UINT_MAX */
 	num_buffers = min_t(unsigned int, num_buffers,
-			    VB2_MAX_FRAME - q->num_buffers);
+			    UINT_MAX - q->num_buffers);
 
 	for (buffer = 0; buffer < num_buffers; ++buffer) {
 		/* Allocate vb2 buffer structures */
@@ -858,9 +858,9 @@ int vb2_core_reqbufs(struct vb2_queue *q, enum vb2_memory memory,
 	/*
 	 * Make sure the requested values and current defaults are sane.
 	 */
-	WARN_ON(q->min_buffers_needed > VB2_MAX_FRAME);
+	WARN_ON(q->min_buffers_needed > UINT_MAX);
 	num_buffers = max_t(unsigned int, *count, q->min_buffers_needed);
-	num_buffers = min_t(unsigned int, num_buffers, VB2_MAX_FRAME);
+	num_buffers = min_t(unsigned int, num_buffers, UINT_MAX);
 	memset(q->alloc_devs, 0, sizeof(q->alloc_devs));
 	/*
 	 * Set this now to ensure that drivers see the correct q->memory value
@@ -976,11 +976,6 @@ int vb2_core_create_bufs(struct vb2_queue *q, enum vb2_memory memory,
 	bool no_previous_buffers = !q->num_buffers;
 	int ret;
 
-	if (q->num_buffers == VB2_MAX_FRAME) {
-		dprintk(q, 1, "maximum number of buffers already allocated\n");
-		return -ENOBUFS;
-	}
-
 	if (no_previous_buffers) {
 		if (q->waiting_in_dqbuf && *count) {
 			dprintk(q, 1, "another dup()ped fd is waiting for a buffer\n");
@@ -1005,7 +1000,7 @@ int vb2_core_create_bufs(struct vb2_queue *q, enum vb2_memory memory,
 			return -EINVAL;
 	}
 
-	num_buffers = min(*count, VB2_MAX_FRAME - q->num_buffers);
+	num_buffers = min(*count, UINT_MAX - q->num_buffers);
 
 	if (requested_planes && requested_sizes) {
 		num_planes = requested_planes;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
