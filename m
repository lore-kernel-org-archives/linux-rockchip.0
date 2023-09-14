Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2061DEEAA46
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Sep 2023 13:34:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dzXNdjedNLmejc2E8cpDuLp0YecLxKzV5qmbV/bBYNo=; b=JWmAz2CDzGWKfU
	XqdnV8MAAP/bcvRU77cQ3BiKp9xqBKT8tps1cHzMvlNCIsv5H2ao6h8XdG2yMFuLsd5B0tRACpOtK
	6RKUnMh7nn7FhsNpYAavxhHAemiB343p3xsG8Nvn3ysWqf7L0GyAVFp2kXPc7jtgQmG1FoTrYfaVG
	EUU+Txx7T/Ylm8dmlP37i2YO7dqFMyYweJyw5S/dysHtZiNsFxjN+YeZSWTbEUISNYr+TIFtizd+0
	T1aSvVYtk0topaNH1rDT0GoFU+OhKb30mVpc93Vwt/+DvkMsGBX7Jh23xLFG8rwie9IKAxK+AUfIX
	10YmSCvvKOEUgp1z1UrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgmU3-008SvU-2x;
	Thu, 14 Sep 2023 13:34:15 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgmTR-008S99-2o;
	Thu, 14 Sep 2023 13:33:40 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:36f2:37bd:ccbb:373f])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5D2FE6607358;
	Thu, 14 Sep 2023 14:33:35 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1694698415;
	bh=Osy0YWOEVUvzSOYoJm+JBXSigMNkmpw77qpRTwkivks=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=SDSzY/TwRn4hjbZQQ8bWA6bcK8mXL3C87PQzzQUb/JwUM/y4+aAzMW3YoEWJXVOcl
	 Aq6a+39QRO1ModNJw7jOTRL+eehodGl2VjPUWKOn95HyaNN3G5208QS6wNPJI2BCKO
	 geJrLl58MRUIb2HfT+U9XnfeOcZxXqiZRhtZ+yehb9+i+XQDd8AXxEIlmVR11YheSP
	 7Vf9MZY+YbFww48huT3wDz7xgFSCS9KH07RlSGtwDkkz1ygDqEsVdmojH+pI+jg7Tw
	 A+T4eAzI1Ccc5Kru15mlAo0XK2w4dnK1IK1UlMNg6Z3Sjv+o3GbzO78396TbxNmhoI
	 YrM4knVZIB21g==
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
Subject: [PATCH v7 08/49] media: visl: Use vb2_get_buffer() instead of directly access to buffers array
Date: Thu, 14 Sep 2023 15:32:42 +0200
Message-Id: <20230914133323.198857-9-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230914133323.198857-1-benjamin.gaignard@collabora.com>
References: <20230914133323.198857-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_063338_062748_57028030 
X-CRM114-Status: GOOD (  11.74  )
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

Use vb2_get_buffer() instead of directly access to vb2_buffer buffer array.
This could allow to change the type bufs[] field of vb2_buffer structure if
needed.
After each call to vb2_get_buffer() we need to be sure that we get
a valid pointer so check the return value of all of them.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/test-drivers/visl/visl-dec.c | 28 ++++++++++++++++------
 1 file changed, 21 insertions(+), 7 deletions(-)

diff --git a/drivers/media/test-drivers/visl/visl-dec.c b/drivers/media/test-drivers/visl/visl-dec.c
index 318d675e5668..ba20ea998d19 100644
--- a/drivers/media/test-drivers/visl/visl-dec.c
+++ b/drivers/media/test-drivers/visl/visl-dec.c
@@ -290,13 +290,20 @@ static void visl_tpg_fill(struct visl_ctx *ctx, struct visl_run *run)
 	for (i = 0; i < out_q->num_buffers; i++) {
 		char entry[] = "index: %u, state: %s, request_fd: %d, ";
 		u32 old_len = len;
-		char *q_status = visl_get_vb2_state(out_q->bufs[i]->state);
+		struct vb2_buffer *vb2;
+		char *q_status;
+
+		vb2 = vb2_get_buffer(out_q, i);
+		if (!vb2)
+			continue;
+
+		q_status = visl_get_vb2_state(vb2->state);
 
 		len += scnprintf(&buf[len], TPG_STR_BUF_SZ - len,
 				 entry, i, q_status,
-				 to_vb2_v4l2_buffer(out_q->bufs[i])->request_fd);
+				 to_vb2_v4l2_buffer(vb2)->request_fd);
 
-		len += visl_fill_bytesused(to_vb2_v4l2_buffer(out_q->bufs[i]),
+		len += visl_fill_bytesused(to_vb2_v4l2_buffer(vb2),
 					   &buf[len],
 					   TPG_STR_BUF_SZ - len);
 
@@ -342,13 +349,20 @@ static void visl_tpg_fill(struct visl_ctx *ctx, struct visl_run *run)
 	len = 0;
 	for (i = 0; i < cap_q->num_buffers; i++) {
 		u32 old_len = len;
-		char *q_status = visl_get_vb2_state(cap_q->bufs[i]->state);
+		struct vb2_buffer *vb2;
+		char *q_status;
+
+		vb2 = vb2_get_buffer(cap_q, i);
+		if (!vb2)
+			continue;
+
+		q_status = visl_get_vb2_state(vb2->state);
 
 		len += scnprintf(&buf[len], TPG_STR_BUF_SZ - len,
 				 "index: %u, status: %s, timestamp: %llu, is_held: %d",
-				 cap_q->bufs[i]->index, q_status,
-				 cap_q->bufs[i]->timestamp,
-				 to_vb2_v4l2_buffer(cap_q->bufs[i])->is_held);
+				 vb2->index, q_status,
+				 vb2->timestamp,
+				 to_vb2_v4l2_buffer(vb2)->is_held);
 
 		tpg_gen_text(&ctx->tpg, basep, line++ * line_height, 16, &buf[old_len]);
 		frame_dprintk(ctx->dev, run->dst->sequence, "%s", &buf[old_len]);
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
