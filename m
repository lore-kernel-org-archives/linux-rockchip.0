Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 672E9E98FB7
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Apr 2026 13:51:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZkHtzyG/TyjdBdLJscBFabvq6wZvkLUiaq1VzqEJ1p0=; b=F1h68zAT+62cmU
	o5hC702Kt+oVysn0w1L1prmfAIzOJqAYs2CS6CPDg7QyeQBkbnb5cZzG6n6m2XVclf4FpIPsWTzTm
	+LBoMju+0XHIBvJPX1WRhQbJczisxmdrYyaIwCwLfz3AP8WDncEP71P/6ThdQLTyQ6hW2qHUXh+gw
	lu5MaQIF69VJMIuL6L1Y9wBmie0a9m8WNA42gsgZws9RQLxe8Ex+7ob4+XQcNr4AZDOsrlvcE5AxD
	6Fh+M5A+jU+CbWX5pAR0igFV+c1NwYjTzJxXj6S+pS2dThgcDn8YAdSLUWVr85ijGtNtrY+FhkAjD
	0GtN8FO/Fw8E2XWsRDeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wApnK-0000000Aa2B-1Pho;
	Thu, 09 Apr 2026 13:51:42 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wApnD-0000000AZxP-12Cd;
	Thu, 09 Apr 2026 13:51:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1775742692;
	bh=Uf3oawvhkOYDFsuF3t/kHZrtN6yz3uwa92uWH3g5zZM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=jOsFp6YU19b4d9Al8Ya16eVbiA5JsxqAJk1Td7XesbTO3lecWg/CaHDjV0z88Z+wb
	 DyGdSLd82ehcyXpESkkersjoow99twav8ffpVGSyo3ljejE60umkCJ9pbHze46LVhs
	 oxjOOr/1tbekHy8UbuabqjGHmFVtrRN3wJcra9WNgm9OC1T/V4Q0YOy79DOrQlMl44
	 3lMVLCTZyFfuGEWUpqiSDomLanqEgLF4fT7glpfMKA0b+hD3NKsbNNNTYA51Bg50BZ
	 R9Oqk6nhI4gqtPtVmYnR9TjTyP1CWvkNOO90zFU29Aey0SxevVZ1FuUg+E6VCQVF+6
	 wGCto+Wtu4K+w==
Received: from [192.168.0.15] (unknown [100.64.0.170])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 09A3017E1313;
	Thu,  9 Apr 2026 15:51:30 +0200 (CEST)
From: Detlev Casanova <detlev.casanova@collabora.com>
Date: Thu, 09 Apr 2026 09:50:37 -0400
Subject: [PATCH 2/7] media: v4l2-mem2mem: Remove WARN_ON() in
 v4l2_m2m_job_finish()
MIME-Version: 1.0
Message-Id: <20260409-rkvdec-multicore-v1-2-62b316abf0f7@collabora.com>
References: <20260409-rkvdec-multicore-v1-0-62b316abf0f7@collabora.com>
In-Reply-To: <20260409-rkvdec-multicore-v1-0-62b316abf0f7@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Hans Verkuil <hverkuil+cisco@kernel.org>, Jonas Karlman <jonas@kwiboo.se>
Cc: kernel@collabora.com, linux-media@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, 
 Detlev Casanova <detlev.casanova@collabora.com>
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260409_065135_947916_21C2161C 
X-CRM114-Status: UNSURE (   8.71  )
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

This warning was added because there was no way, for drivers that support
holding capture buffers to mark jobs done correctly without calling
v4l2_m2m_buf_done_and_job_finish().

Now that v4l2_m2m_buf_done_manual() has been introduced, it has become
possible and drivers can use it with v4l2_m2m_job_finish() for finer
grained buffer management.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 drivers/media/v4l2-core/v4l2-mem2mem.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/media/v4l2-core/v4l2-mem2mem.c b/drivers/media/v4l2-core/v4l2-mem2mem.c
index 7f9fad4f6807..27f7dd7974b5 100644
--- a/drivers/media/v4l2-core/v4l2-mem2mem.c
+++ b/drivers/media/v4l2-core/v4l2-mem2mem.c
@@ -487,13 +487,6 @@ void v4l2_m2m_job_finish(struct v4l2_m2m_dev *m2m_dev,
 	unsigned long flags;
 	bool schedule_next;
 
-	/*
-	 * This function should not be used for drivers that support
-	 * holding capture buffers. Those should use
-	 * v4l2_m2m_buf_done_and_job_finish() instead.
-	 */
-	WARN_ON(m2m_ctx->out_q_ctx.q.subsystem_flags &
-		VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF);
 	spin_lock_irqsave(&m2m_dev->job_spinlock, flags);
 	schedule_next = _v4l2_m2m_job_finish(m2m_dev, m2m_ctx);
 	spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
