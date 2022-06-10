Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDB21C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jun 2022 12:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=efh5ho70jh8B20GMX5pgbAxdb8FlpoyO0W32mxF/zvk=; b=A76KAGlUYJ6y9e
	lPLvg5+9XzFo5yWlc6GaEAlF65UTP4JdiHHeTWGVLr3n9yBCJFIflTx2/8hJRFNQwbpzbnywUIJJv
	cLJgD0rhDcDI7x36AGWRdV3SlOtEgQXT8jjivV7oBlxylkV/ADhVtjlhRI8TtPZdmOXkWwNsr/v6T
	nRiOW6pIv5A1kkLzuMlTw1ARno0eNVTiWBLjetpVcqQ+EJAeWqGeuf3OMHIwAe3695dMRjqtNr82c
	7SRLGcJaBLkZNtYbKD0hDtE3DSpWnAy2596AUQf/QROAJO46Mm2p3UlPTZBJhHbExGCthxsMSVOcS
	QdK5mEbqeLvAsqcY9xew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nze8A-008FDu-RC; Fri, 10 Jun 2022 12:52:50 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nze87-008FAc-HQ
	for linux-rockchip@lists.infradead.org; Fri, 10 Jun 2022 12:52:49 +0000
Received: from whitebuilder.lan (192-222-136-102.qc.cable.ebox.net [192.222.136.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 326D8660172E;
	Fri, 10 Jun 2022 13:52:45 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1654865566;
	bh=KEgYpRbmOg42RSvzgWzI7s0Dp0JPZPIQTRZtvkFaa8c=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kqDiqDXGwGHyu3h9CfdF6JAWg8pVEAp7cWWaAgc6izCdsLLvepxAjJouykKy43dWM
	 8QzWrjNMJWBEJDQDtLXEMHR2S7fWtChcPIGY0Dft4r5Z13Pkp9GiCrd0YyiHJ9gxZ6
	 Zc2LkjX+iNKmvSijbrah7q4Qmz+zYYIqDKlH0e6oOkYrXgHM5fODqxWWr1Np+0woBE
	 8yU2M/bvRcMfUcBYCGdtYWBWmZ2VnquGtq79hWTs1/vDB8ecz5l7aDPIMF7ukgg3mF
	 10lfCbPqtsUd+oQvNNmecDE2dF8fYo/ZJF+GKhbjJ5Cc0eRMpxHRIaHya6rqKhaiac
	 v1vAk0fBPNcbg==
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: linux-media@vger.kernel.org,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	kernel@collabora.com,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 5/5] media: rkvdec: Improve error handling
Date: Fri, 10 Jun 2022 08:52:15 -0400
Message-Id: <20220610125215.240539-6-nicolas.dufresne@collabora.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220610125215.240539-1-nicolas.dufresne@collabora.com>
References: <20220610125215.240539-1-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_055247_765367_3A53D8AB 
X-CRM114-Status: GOOD (  13.30  )
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

There is two way decode errors can occur. In one case, the ready
status is not set and nothing have been written into the destination,
while in the other case, the buffer is written but may contain a
certain amount of errors. In order to differentiate these, we set
the payload for the first case to 0.

Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
 drivers/staging/media/rkvdec/rkvdec.c | 26 ++++++++++++++++++++++----
 1 file changed, 22 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index 7e76f8b72885..27f1f7276dd2 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -954,14 +954,32 @@ static irqreturn_t rkvdec_irq_handler(int irq, void *priv)
 	enum vb2_buffer_state state;
 	u32 status;
 
+	ctx = v4l2_m2m_get_curr_priv(rkvdec->m2m_dev);
 	status = readl(rkvdec->regs + RKVDEC_REG_INTERRUPT);
-	state = (status & RKVDEC_RDY_STA) ?
-		VB2_BUF_STATE_DONE : VB2_BUF_STATE_ERROR;
+
+	if (!(status & RKVDEC_RDY_STA)) {
+		struct vb2_v4l2_buffer *dst_buf = NULL;
+
+		if (status & RKVDEC_TIMEOUT_STA)
+			pr_debug("Decoder stopped due to internal timeout.");
+		else
+			pr_debug("Decoder stopped due to internal error.");
+
+		/*
+		 * When this happens, the buffer is left unmodified. As it
+		 * contains no meaningful data we mark is a empty.
+		 */
+		dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
+		vb2_set_plane_payload(&dst_buf->vb2_buf, 0, 0);
+		state = VB2_BUF_STATE_ERROR;
+	} else {
+		state = VB2_BUF_STATE_DONE;
+	}
 
 	writel(0, rkvdec->regs + RKVDEC_REG_INTERRUPT);
-	ctx = v4l2_m2m_get_curr_priv(rkvdec->m2m_dev);
 
-	if (ctx->coded_fmt_desc->ops->check_error_info)
+	if (ctx->coded_fmt_desc->ops->check_error_info &&
+	    state == VB2_BUF_STATE_DONE)
 		state = ctx->coded_fmt_desc->ops->check_error_info(ctx);
 
 	if (cancel_delayed_work(&rkvdec->watchdog_work))
-- 
2.36.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
