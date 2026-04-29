Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CE86CD13D3
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Apr 2026 19:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ftcWFDyoVn3Y7m0D+hQo5VQxEW5X8OM/WX2drp0gvjM=; b=LxyhkHz7frhG/6
	wuJ90hCfY+JTlBbJLNmP4xzlx0ZiVQrlAdhmVItxytDP1TZrL+CN5GWrt0Bbbzmqv5u1moPtWmNv+
	hw3Q9chgSU8QUh6FxJW3rbVSIWy0DESaYquJAdGjEizx296OkdIbWVV0ggD7vC1reNMfZJfQfOhwE
	e/X/UZ+FULk3mB0bj1CuTMBkfgY9ZdWyxMRm5TFlwo3225CQeozAYETVArzrbxozM50NLDMyf1LLz
	nx5R3sdZxq189ilNhAD9aKA6M1hV++Fede//rRoSjoG1fW1YwgdLkTaQ/i50sbBEZhVIHSdUKeAz9
	jxsHFTEq8PBMZ8NSAA0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIAyV-00000004A7B-1dUr;
	Wed, 29 Apr 2026 19:53:36 +0000
Received: from web04.chillydomains.com ([193.19.92.170])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIAyQ-00000004A4m-2HvN
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Apr 2026 19:53:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=web04.chillydomains.com; s=dkim; h=From:To:Cc:Subject:Date:
	Message-ID:X-Mailer:In-Reply-To:References:MIME-Version:
	Content-Transfer-Encoding; bh=+BMPRzE2ZaYndt8PUP9j3vTLvi6F1/BIe/
	+XCjPPh4w=; b=lrxD/WNwHIEekuNqi8vyqW3sAshhJYlyBWCJnbqSeTMYEytjp+
	UyGR2ATf8nRI1fDgeTXCln6LGbfU4BNAUXh/sUDzdti6LlZajf/4fLrePDzBpnfR
	Zo7FfaU9+6/4cWOP1EtpX0Nzmz3AyYUTl73wrxubhby8h1gzOUF1xTtmF0vyGvLV
	CjZU8gbZvp74M1UX9jJuJSqdVC+xjGUQYsICFy+ocDlBL0TMO0Ua+6ZF5cHRPUD/
	DjvymalihIlfMzkrStbDUkw4uHkM/LTqfTPDlJT+m0gGPrUxqjE7F2chM01iLOPb
	OTNNJgyb9YhYocCpHiL/e7PC4y/B+Zw4YCyA==
Received: (qmail 2739579 invoked by uid 7799); 29 Apr 2026 21:53:28 +0200
Received: by simscan 1.4.0 ppid: 2739543, pid: 2739553, t: 0.6181s
         scanners: clamav: 0.103.9/m:62/d:27778
Received: from 31.29.52.71.dynamic-pppoe.dt.ipv4.wtnet.de (HELO localhost) (automation@reauktion.de@31.29.52.71) by web04.chillydomains.com with SMTP [61968]; 29 Apr 2026 21:53:28 +0200
From: Markus Fritsche <mfritsche@reauktion.de>
To: Tomasz Figa <tfiga@chromium.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Jacob Chen <jacob-chen@iotwrt.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH RFC 2/3] media: hantro: attach dma_resv release fence at buf_queue
Date: Wed, 29 Apr 2026 19:53:05 +0000
Message-ID: <20260429195306.239666-3-mfritsche@reauktion.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260429195306.239666-1-mfritsche@reauktion.de>
References: <20260429195306.239666-1-mfritsche@reauktion.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260429_125330_926165_3FF5ED62 
X-CRM114-Status: GOOD (  10.41  )
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

Opt the hantro driver into the new vb2 release-fence helper.

When userspace QBUFs a buffer to hantro, the buffer is added to the
driver's m2m queue via v4l2_m2m_buf_queue. We additionally call
vb2_buffer_attach_release_fence() so each plane's dmabuf->resv
gets a real producer fence attached. The fence is signalled by
vb2_buffer_done when hantro completes the decode (via
v4l2_m2m_buf_done_and_job_finish in hantro_drv.c, which converges
on vb2_buffer_done).

Wayland compositors (and any other userspace) that import hantro
CAPTURE buffers and wait on the dmabuf's implicit-sync fence now
wait on a real fence representing the producer's actual completion,
not a stub. Validated end-to-end on PineTab2 (RK3566 / Mali-G52 /
mainline 6.19 with this series backported) playing 1080p30 H.264 in
chromium under stock KDE Plasma 6.6.4 Wayland: KWin's
Transaction::watchDmaBuf wait completes correctly the moment
hantro's IRQ fires, instead of falling back to a stub-resolved
poll.

Signed-off-by: Markus Fritsche <mfritsche@reauktion.de>
---
 drivers/media/platform/verisilicon/hantro_v4l2.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index 62d3962c1..e95a3433a 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -877,6 +877,18 @@ static void hantro_buf_queue(struct vb2_buffer *vb)
 	}
 
 	v4l2_m2m_buf_queue(ctx->fh.m2m_ctx, vbuf);
+
+	/*
+	 * Opt in to vb2's dma_resv release-fence path. Userspace
+	 * consumers that imported this buffer's dmabuf and wait on
+	 * its implicit-sync fence (poll(POLLIN) or
+	 * DMA_BUF_IOCTL_EXPORT_SYNC_FILE) get a real producer fence
+	 * representing this device's completion, instead of the stub
+	 * fence dma_buf_export_sync_file substitutes when dma_resv
+	 * is empty. Best-effort: a fence-allocation failure means we
+	 * lose implicit-sync precision, no functional regression.
+	 */
+	(void)vb2_buffer_attach_release_fence(vb);
 }
 
 static bool hantro_vq_is_coded(struct vb2_queue *q)
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
