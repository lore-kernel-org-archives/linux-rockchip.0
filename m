Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8A14CDB483
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Oct 2023 11:48:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gnno8k7SrEcifNZNqlpjlS0Wo3FzDEnnpx/vtsFnBhs=; b=ZnDmUEnPYG+tic
	SEac5F1fwRa0nvyP2imys5HflevW5SV9N/hAK3mTZEMJe4eVEB9HV6jyEmT++MYmasMA45y0r7rTF
	UuHbC8LzAluCIaQwnFTLVJNGv48tvw2S+/0t+eKIsyrhcD70OXyHenbZlqfkvQPM3gfJYC9m09iCg
	kC28Z/rYsqsSk7tKbzJde1WS3NEqHbXirHAVynTcoWPjVt7mT/IEJ9fTpdrO8lNGJcrx2lhLaO04d
	zx670XZDXJWshXwlAoEryYbLEL6BNLwtHyXZ9YE2MuiCffCDsokILG7WfphyBuK9xJQGkrgvoO/wP
	GxzcglY8ISomFtCniA7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qquAo-000p8O-19;
	Thu, 12 Oct 2023 11:48:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqu9f-000o2m-1A;
	Thu, 12 Oct 2023 11:47:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=U9SUHzV9OOe5vx4PeBkdle/xt/W+APydzs+3ArsKJaQ=; b=rHnZc+l8hviACwaZfegkOJao03
	9GaHzSn5vf0+7qsfv13tCFdTPWq3ZEK7i4MqYJ/KpechA9zcLgdYxDTgMHScjc9prHH4QhucQXKc1
	/NpDneWtPrRnp5xuQP+NQuGbT/IX5PKKxK9aJXRPBJF+YSFYnurkweESceeeo0dtD3Uu8uBpJZrS2
	DBwLWLa3Z/qAqozDOys59pqW/3mPZw9KFpaTLE7yJbe413Y5OQxwKeRbbHJgvUYAnSVFxmDlW0/du
	hRM+wGJLY1rHb9tr483B+jxargU3387zWSDZYMZUF3xvpjwobs9kHrNR6xyDeYNncZ+1wexU/6wLy
	8lhHW6zQ==;
Received: from madras.collabora.co.uk ([46.235.227.172])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqu9a-001nHE-1y;
	Thu, 12 Oct 2023 11:47:02 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:7ae7:b86d:c19a:877e])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 060206607354;
	Thu, 12 Oct 2023 12:46:54 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697111214;
	bh=5KfiWYUr0TuNoyvJdKtw2RV1255T2m+jeyJI0vr6Ff0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=aCrikTOFQybhK78pRCHx52ATJ9QJM/2nih3qOdvHPt30k7OwFV+0OqwpP1uHh6jeM
	 IagDd2MgB1FK7117PgJtoRgcv8MI4a9n0rcmnADoF+BEpfnfLgR4zapCwExnMb6BPI
	 VI/cAmuc+8H4d+dbulHdbcEr7V/ZxswF/fT2F72zvmANmQ/OG+ZE36CNpjgH0AZzjr
	 oSCFEYVg5BptWYhbs60sJFLVARp8V4YQijlI0e4M3xxWArbN0Gz4GqGwVtWKhPeDtK
	 EMXdR6l983d1A7vjIZBHoWxSXtOp6+Ra8JMz3Iey/I83Ei1JZ5s2mZO/83RIBK8XKm
	 mxFPoM8dmj7tg==
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
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Zhou Peng <eagle.zhou@nxp.com>
Subject: [PATCH v11 09/56] media: amphion: Use vb2_get_buffer() instead of directly access to buffers array
Date: Thu, 12 Oct 2023 13:45:55 +0200
Message-Id: <20231012114642.19040-10-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231012114642.19040-1-benjamin.gaignard@collabora.com>
References: <20231012114642.19040-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231012_124700_329556_458DAA26 
X-CRM114-Status: GOOD (  12.05  )
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
CC: Ming Qian <ming.qian@nxp.com>
CC: Zhou Peng <eagle.zhou@nxp.com>
---
 drivers/media/platform/amphion/vpu_dbg.c | 22 ++++++++++++++++++----
 1 file changed, 18 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/amphion/vpu_dbg.c b/drivers/media/platform/amphion/vpu_dbg.c
index 982c2c777484..a462d6fe4ea9 100644
--- a/drivers/media/platform/amphion/vpu_dbg.c
+++ b/drivers/media/platform/amphion/vpu_dbg.c
@@ -140,11 +140,18 @@ static int vpu_dbg_instance(struct seq_file *s, void *data)
 
 	vq = v4l2_m2m_get_src_vq(inst->fh.m2m_ctx);
 	for (i = 0; i < vq->num_buffers; i++) {
-		struct vb2_buffer *vb = vq->bufs[i];
-		struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
+		struct vb2_buffer *vb;
+		struct vb2_v4l2_buffer *vbuf;
+
+		vb = vb2_get_buffer(vq, i);
+		if (!vb)
+			continue;
 
 		if (vb->state == VB2_BUF_STATE_DEQUEUED)
 			continue;
+
+		vbuf = to_vb2_v4l2_buffer(vb);
+
 		num = scnprintf(str, sizeof(str),
 				"output [%2d] state = %10s, %8s\n",
 				i, vb2_stat_name[vb->state],
@@ -155,11 +162,18 @@ static int vpu_dbg_instance(struct seq_file *s, void *data)
 
 	vq = v4l2_m2m_get_dst_vq(inst->fh.m2m_ctx);
 	for (i = 0; i < vq->num_buffers; i++) {
-		struct vb2_buffer *vb = vq->bufs[i];
-		struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
+		struct vb2_buffer *vb;
+		struct vb2_v4l2_buffer *vbuf;
+
+		vb = vb2_get_buffer(vq, i);
+		if (!vb)
+			continue;
 
 		if (vb->state == VB2_BUF_STATE_DEQUEUED)
 			continue;
+
+		vbuf = to_vb2_v4l2_buffer(vb);
+
 		num = scnprintf(str, sizeof(str),
 				"capture[%2d] state = %10s, %8s\n",
 				i, vb2_stat_name[vb->state],
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
