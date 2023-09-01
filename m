Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB476CA0FEA
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Sep 2023 12:45:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dzXNdjedNLmejc2E8cpDuLp0YecLxKzV5qmbV/bBYNo=; b=y7BqOMWRWXWBOk
	kjlq2eJtWMZw37WXcXW7FVLky0jIKxeXLSp2099pIYprINg1OeFtSTDpG8ehQdHIO0MRNX2SUV+Jd
	jiLpN6x2qgi5jQqnzH/lKVQKyJDIM+n4Au7xkQ3JtMzNHA5dO891ZC8suQQoZ5oR+FKZsyQYCHliF
	qV9pDUtICdIVLLFA4PzA9aqgeUm0toBmMZi+oySCGjzXh91AoRNPxZLH9RTHk5kHN9KHMsrzz33b4
	9NnmS0ea/SoHC15Y2tp/C9EYKOnEDbK6WjFsxeCsUpwQpvGI+Ut4QlEZ1DCpUVFwbmNRTfi9gJkQS
	M1ANNJh63cU08lo8mtkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qc3WN-00HV0N-2J;
	Fri, 01 Sep 2023 12:45:07 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qc3Vm-00HUHQ-2U;
	Fri, 01 Sep 2023 12:44:32 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:4d01:31d2:de6b:d217])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 2D2FC66072BE;
	Fri,  1 Sep 2023 13:44:29 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1693572269;
	bh=Osy0YWOEVUvzSOYoJm+JBXSigMNkmpw77qpRTwkivks=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fE50Cfvx/VMcngZqc1bE9+j1nVuS1h6iYK7p30I/8cLa61Ys1tuxPw/+F/iyEdjb7
	 NYef31l76uAfj5ar9d4tjgkNbA1Q5tDi5KamofpT5YgnhI9y0EfF1q74ZKzf0Mq/L3
	 IRywATg2i6SCeUduM7NxhF90xSg+AOgE8cYYSL0lRUQQnyShX/mmC/eG/OnFzqf4mO
	 ivROKkVS9w541jjgDR+ZybUY02nPJSGIBVJX4oR/OIrimx9u5OvgQ+8hJut0wVZLGT
	 IUAncdhh908JOlt1d35UOfomRSKnaEdDBQ+Xx7ZT47dofQWoyzjzR8DON5pYfjEmNw
	 NiWFi6+aiPiMg==
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
Subject: [PATCH v6 08/18] media: visl: Use vb2_get_buffer() instead of directly access to buffers array
Date: Fri,  1 Sep 2023 14:44:04 +0200
Message-Id: <20230901124414.48497-9-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230901124414.48497-1-benjamin.gaignard@collabora.com>
References: <20230901124414.48497-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230901_054431_004375_8CA08690 
X-CRM114-Status: GOOD (  12.48  )
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
