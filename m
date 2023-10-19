Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44F60CDB486
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Oct 2023 12:55:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LvJyiEeJgx1mOjD3RLiEJXb+N45kK2fpebVmGXS8VWA=; b=0Xze8hI9v81JyK
	gw9FRN/zz/l08LJm6ZiBqTmEQwJl+soQ95M3T6QeC1QFCXRgQSNqUhA/7KBpr53ui+K3kKLdO6HbE
	YmOoZQ5zAm6Z7PsD+uVldBwOGbKu70eaWI8u9Z9Nvlj/t7urZHW8/xTelIq++k+j9yo5Z1z/J2iFC
	88HlMeRcYu31DdWu+DSDdIAU9KQpWAXR7cCDh8RZx+1H7zOGkdBIxTbaiMIdp+F7SuLp6sW6QpGcv
	N6t74wt5qNa6aGz01vomAtlIgKCQfw7MTitk7Dlr4q83sGC1sOkplHvLlyFdL+8qofe1klA8j09cq
	G/MplpmzhAy0HUAR/Vnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtSYf-00HQAN-3B;
	Thu, 19 Oct 2023 12:55:26 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtSW6-00HNR0-0m;
	Thu, 19 Oct 2023 12:52:53 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:ccea:1fb5:34eb:239b])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 71D976607346;
	Thu, 19 Oct 2023 13:52:40 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697719960;
	bh=o2sVtoPPYvq8hM/qyihWIqN4hasDvFA4zhZmTyTxJEg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=bl48PpE5NDZebqIf4S8TN181nqE+MoISdGxTxyrqH1RiuOGtwArSPEyyH+Xb+wkgh
	 w1NycJrH9LIvWMg7PwRGd9GihTSnfiRc4PGFWJry7LTscvqtZESaCGELig/kOVYcyj
	 Nh6uUaR1cXwVjScIWvKp/i/OBCX5rF+7dBeoTdy5HMkXBe61Ot/xLNU8W7oTnraubb
	 GalWOifBsDNJJpxStBs7qTlt2qSs9wDlzU8G405PjI3FihAUKzb0Mix4XW5VNb+KzM
	 LcU2jIyW6Pe9/1wOs/Kvm8EUlnDuiGXwVpNlCdFnFHMuLJmWRGyjVtHM37GsZ1wnqI
	 P0qnzfaUxjQjQ==
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
Subject: [PATCH v13 19/56] media: dvb-core: Do not initialize twice queue num_buffer field
Date: Thu, 19 Oct 2023 14:51:45 +0200
Message-Id: <20231019125222.21370-20-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231019125222.21370-1-benjamin.gaignard@collabora.com>
References: <20231019125222.21370-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231019_055246_481970_D4697CDC 
X-CRM114-Status: UNSURE (   9.07  )
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
 drivers/media/dvb-core/dvb_vb2.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/media/dvb-core/dvb_vb2.c b/drivers/media/dvb-core/dvb_vb2.c
index 3a966fdf814c..a731b755a0b9 100644
--- a/drivers/media/dvb-core/dvb_vb2.c
+++ b/drivers/media/dvb-core/dvb_vb2.c
@@ -177,7 +177,6 @@ int dvb_vb2_init(struct dvb_vb2_ctx *ctx, const char *name, int nonblocking)
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
