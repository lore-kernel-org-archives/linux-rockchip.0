Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55552C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 16:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IFe37QXvt1tuxZDgxQxnJ0LMeGLCweiOCSghZ9DvoXI=; b=nYF4icx42x59Ck
	cXRaCqcR3wBiphsRqwMb8j4SZ84AG5wyKZ7A1fHEWg3dKBMK+qcI7IO/Lim2Z/mOyotf2yN9CO0te
	sKWDr2eqG1c4BZK9FJRZGh4Xt74NtslEjKNlQpvdY7qjCK1sJjvg/hlic9OLHHt7Kesoq7R5VJHp1
	8+bf0EQUpxSVZ/HUg2PqtK0KYnZ9JmPpCnkZ6hN12FSiB+tT/U5aH8lpD3Pf71Bi7NrSJGY4pfA42
	PE3QcjIdOH1W7Wa1yQGH5uFBJRcKIlDcYYbT35APrqwQCPh87kXaTTNgrZCeUONNRqaZXN83oUBEr
	1oaC2XgXrlx5hcNoqVzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r182d-006lLq-1I;
	Thu, 09 Nov 2023 16:38:03 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r182P-006l5E-1K;
	Thu, 09 Nov 2023 16:37:50 +0000
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 50BBC66076AC;
	Thu,  9 Nov 2023 16:37:47 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699547868;
	bh=4RzVJeiaNWJl64ltMbZK/gliYakvNCXiKbj4cdjzk0A=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=HsNH8W0xojhkRfYJMLXzC9+4KkuxDowhuPqSp4aVXN3GOoT6CzhbmBrOLqPSKdB7o
	 VJCR4VM/JE4vRoXosfEccUoABdby1qMZ7f6GYjxn8metWxrCL64ThKrftmmlFyISnw
	 AdfsRyV0cjqFKG3vxSMMiU4HuTGkMIiNQpyy0gske6xUjcTn5u8EwDNsEQxmE/55/p
	 65OenSfIfskA1/iZTHsvd+Z/kHicnw3CD4AnWlrYRz24KF7PwIA4yacDXfDIWp1h2W
	 Z95N/n84zNwS8WbQLq/sNiGO2XRNTgkoix3EfK1prpRk2rWA/h58g4fA0/k09Zi7Dl
	 4u1cRQo1OUgUw==
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
Subject: [PATCH v15 19/56] media: dvb-core: Do not initialize twice queue num_buffer field
Date: Thu,  9 Nov 2023 17:34:35 +0100
Message-Id: <20231109163512.179524-20-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231109163512.179524-14-benjamin.gaignard@collabora.com>
References: <20231109163512.179524-14-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_083749_577423_D31BB214 
X-CRM114-Status: UNSURE (   7.51  )
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

The above memset already zeroed all the ctx fields, it is useless
to do it here again.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/dvb-core/dvb_vb2.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/media/dvb-core/dvb_vb2.c b/drivers/media/dvb-core/dvb_vb2.c
index 3a966fdf814c..167ff82a6fed 100644
--- a/drivers/media/dvb-core/dvb_vb2.c
+++ b/drivers/media/dvb-core/dvb_vb2.c
@@ -167,8 +167,6 @@ int dvb_vb2_init(struct dvb_vb2_ctx *ctx, const char *name, int nonblocking)
 
 	memset(ctx, 0, sizeof(struct dvb_vb2_ctx));
 	q->type = DVB_BUF_TYPE_CAPTURE;
-	/**capture type*/
-	q->is_output = 0;
 	/**only mmap is supported currently*/
 	q->io_modes = VB2_MMAP;
 	q->drv_priv = ctx;
@@ -177,7 +175,6 @@ int dvb_vb2_init(struct dvb_vb2_ctx *ctx, const char *name, int nonblocking)
 	q->ops = &dvb_vb2_qops;
 	q->mem_ops = &vb2_vmalloc_memops;
 	q->buf_ops = &dvb_vb2_buf_ops;
-	q->num_buffers = 0;
 	ret = vb2_core_queue_init(q);
 	if (ret) {
 		ctx->state = DVB_VB2_STATE_NONE;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
