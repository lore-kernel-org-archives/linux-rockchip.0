Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C02EFC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Oct 2023 16:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+VAggQkNM57MHqHlphH6Jumf0MK4yEGD/wdT3yrXVpE=; b=Z+0vS55drYrOT0
	ZDGOlrWTGMRrW+ZULtv4ymtYnyQ/3X4xZXR7I3U2A4UKNZmRd/s0/Kp0W0a3USSsAqf3K0b7MnVn5
	p+BwOAG+GMQU6Tw1FRTuowkfT584twCD6nGxhUkjK3ARDQhW0766uJ+BVxvFNDgdOXCprvjMvzu8W
	rThV0+cFwUxcvLOQvfmtkMVJJUDS9iaousg+MCCnjv8ZYP4KLoPibwuXSoNMyj7t40fWpT5RANMR/
	8zBODaBOJgXZUTV20eACQVf/sIga4ne4dLd99g1YcEafaEARM3tY3R6c5uklkHlNhDlUFdzd35AdG
	Hwc4nwPncC5bj126Z5fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qxrjH-005fE0-00;
	Tue, 31 Oct 2023 16:36:35 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxreq-005cK9-26;
	Tue, 31 Oct 2023 16:32:02 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:c562:2ef4:80c0:92f])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 15EA366073C2;
	Tue, 31 Oct 2023 16:31:59 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698769919;
	bh=DdlxkRuWKO9j/krVAsdkWz62fUG/5l8klfwhgZtW1d4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=jsZn+w9AGvdKGzrY+2z3fatrE1MKDJr2cgINg+ChcyXE6FwDgydRlJ+zp+pBj1HNo
	 SAAcPE1fqzvGJcvELQJkHxpYFP87r/UYB6BVMb0v9PmCMCU44d9T+1nDepbQf7Kju2
	 47vNleTl1+X29J+P34rflAOb+WYbhWhW+VcJgLEww4qmy+frNk5mcjxt+lCZ2dutrG
	 OVokWnBeg2D5wvdLnjTyhQcG+141GcRS08hZD1tSIXHBXj5nSba8kXbQ/O5wR6yCwv
	 EjrzcxcJ1Q3Beb6fLJmgH3ujKoz9PszEh7uAIrIs74wILR21u5Majy27QtJEwDf6c4
	 gNOUD8kLKXbog==
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
Subject: [PATCH v14 29/56] media: verisilicon: Stop direct calls to queue num_buffers field
Date: Tue, 31 Oct 2023 17:30:37 +0100
Message-Id: <20231031163104.112469-30-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231031_093200_834183_62140FFA 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
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

Use vb2_get_num_buffers() to avoid using queue num_buffers field directly.
This allows us to change how the number of buffers is computed in the
future.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
CC: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
---
 drivers/media/platform/verisilicon/hantro_postproc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/verisilicon/hantro_postproc.c b/drivers/media/platform/verisilicon/hantro_postproc.c
index 64d6fb852ae9..8f8f17e671ce 100644
--- a/drivers/media/platform/verisilicon/hantro_postproc.c
+++ b/drivers/media/platform/verisilicon/hantro_postproc.c
@@ -195,7 +195,7 @@ int hantro_postproc_alloc(struct hantro_ctx *ctx)
 	struct hantro_dev *vpu = ctx->dev;
 	struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
 	struct vb2_queue *cap_queue = &m2m_ctx->cap_q_ctx.q;
-	unsigned int num_buffers = cap_queue->num_buffers;
+	unsigned int num_buffers = vb2_get_num_buffers(cap_queue);
 	struct v4l2_pix_format_mplane pix_mp;
 	const struct hantro_fmt *fmt;
 	unsigned int i, buf_size;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
