Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DC8AC4167B
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Dec 2022 19:39:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UHY10lQXZmj5yyhlj62Ij+KQifvcu+5/TOre9KOZOY8=; b=EIunNfDrLs/IEz
	Hh8tU24vVQ+7DCqKsnMaYHzfXOnZze2rxXPeG3nbITQx+KZmtkovdp3aOQuCZC51zay3AJuyhaQd+
	9ymjj1+jCjUlocuY7pI33r0Tes0b3o4paXvZ3lR3vOvMPAHSa4CaABxO5vJdOaQ6ZgKM/61QKDQ73
	6jy95s1MvpL3OJX6Z0/zFFnxNbAORalUycyBOm3Lz/xAtQePVLizjuqmLWvU1FrLd2glKhWKvGW3L
	QOEc48Ln8Ffsj8xk6Ol7y6Ae/oFgFh6yqg3UctOhQQnK2+i0gSssBRki/hOPfYWRqj+zVsu9Nb3wf
	CpJKV2YBHaD6fSZ1TKsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8nsn-00BcCa-0v; Fri, 23 Dec 2022 19:39:05 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8nsb-00Bc0R-2X
	for linux-rockchip@lists.infradead.org; Fri, 23 Dec 2022 19:38:55 +0000
Received: from whitebuilder.lan (192-222-136-102.qc.cable.ebox.net [192.222.136.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C02906602CDF;
	Fri, 23 Dec 2022 19:38:48 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1671824329;
	bh=TUAr5G3EJwUIxmCfLgOCFNIvuOyhhl3yWtc6GNPry2I=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lvcIaKKR/tt7H4Ib7/Uo1TNLUWO/jCNSbZeEk3Vxoh2bBTJl8KGOwpmtZAcWzHOkX
	 jW3Y+vGfSvNWfEr0kBiqF4W34+dDF5PgjHg6zrECJY+toAXdQXUK8U+vWH59Jh5t4m
	 pwNWuQ6GS7XdBo6TLwZYVlzRm5GyIcOpjQ3aYcBL9XgQ1UNq7ejSG9AILoyc3BsU+4
	 /JsdhbpP9xTC5b61WCfANZC7pu8T2c8ZRjOHFdpbGu4hGm7Y0RMD4u2bkveZlUpQAj
	 7Q41Nw1Lpy9XaG5cLF9G6wJ/5r3xfY2i/fofZkIn94/w3O8yI1JYBDkpfSIVqUfwZ8
	 EaVTmMHPYNn/w==
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kernel@collabora.com,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/4] media: rkvdec: Re-enable H.264 error detection
Date: Fri, 23 Dec 2022 14:38:05 -0500
Message-Id: <20221223193807.914935-4-nicolas.dufresne@collabora.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221223193807.914935-1-nicolas.dufresne@collabora.com>
References: <20221223193807.914935-1-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221223_113853_295277_C8B2E450 
X-CRM114-Status: GOOD (  13.34  )
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

This re-enable H.264 error detection, but using the other error mode.
In that mode, the decoder will skip over the error macro-block or
slices and complete the decoding. As a side effect, the error status
is not set in the interrupt status register, and instead errors are
detected per format. Using this mode workaround the issue that the
HW get stuck in error state, and allow reporting that some corruption
may be present in the buffer to userland.

Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
 drivers/staging/media/rkvdec/rkvdec-h264.c | 23 +++++++++++++++++++---
 1 file changed, 20 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
index 4fc167b42cf0c..dfe3e235f099a 100644
--- a/drivers/staging/media/rkvdec/rkvdec-h264.c
+++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
@@ -1162,14 +1162,15 @@ static int rkvdec_h264_run(struct rkvdec_ctx *ctx)
 
 	schedule_delayed_work(&rkvdec->watchdog_work, msecs_to_jiffies(2000));
 
-	writel(0, rkvdec->regs + RKVDEC_REG_STRMD_ERR_EN);
-	writel(0, rkvdec->regs + RKVDEC_REG_H264_ERR_E);
+	writel(0xffffffff, rkvdec->regs + RKVDEC_REG_STRMD_ERR_EN);
+	writel(0xffffffff, rkvdec->regs + RKVDEC_REG_H264_ERR_E);
 	writel(1, rkvdec->regs + RKVDEC_REG_PREF_LUMA_CACHE_COMMAND);
 	writel(1, rkvdec->regs + RKVDEC_REG_PREF_CHR_CACHE_COMMAND);
 
 	/* Start decoding! */
 	writel(RKVDEC_INTERRUPT_DEC_E | RKVDEC_CONFIG_DEC_CLK_GATE_E |
-	       RKVDEC_TIMEOUT_E | RKVDEC_BUF_EMPTY_E,
+	       RKVDEC_TIMEOUT_E | RKVDEC_BUF_EMPTY_E |
+	       RKVDEC_H264ORVP9_ERR_MODE,
 	       rkvdec->regs + RKVDEC_REG_INTERRUPT);
 
 	return 0;
@@ -1183,10 +1184,26 @@ static int rkvdec_h264_try_ctrl(struct rkvdec_ctx *ctx, struct v4l2_ctrl *ctrl)
 	return 0;
 }
 
+static int rkvdec_h264_check_error_info(struct rkvdec_ctx *ctx)
+{
+	struct rkvdec_dev *rkvdec = ctx->dev;
+	int err;
+
+	err = readl(rkvdec->regs + RKVDEC_REG_H264_ERRINFO_NUM);
+	if (err & RKVDEC_STRMD_DECT_ERR_FLAG) {
+		pr_debug("Decoded picture have %i/%i slices with errors.\n",
+			 RKVDEC_ERR_PKT_NUM(err), RKVDEC_SLICEDEC_NUM(err));
+		return VB2_BUF_STATE_ERROR;
+	}
+
+	return VB2_BUF_STATE_DONE;
+}
+
 const struct rkvdec_coded_fmt_ops rkvdec_h264_fmt_ops = {
 	.adjust_fmt = rkvdec_h264_adjust_fmt,
 	.start = rkvdec_h264_start,
 	.stop = rkvdec_h264_stop,
 	.run = rkvdec_h264_run,
 	.try_ctrl = rkvdec_h264_try_ctrl,
+	.check_error_info = rkvdec_h264_check_error_info,
 };
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
