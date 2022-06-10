Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60772C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jun 2022 12:52:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8F0E+DUFBuW1BsX7zzZxYzq0Q+XLLdTPtzz6/go/3mQ=; b=z3ZtzgzrEchb7f
	LC5kEZipmIY7+BYmOuNWjzhrDxeYWyEcne8RPSHrTGzMLxQZAS4FtAWKks1EPrrVSy4PBoMIxjJW5
	eRerd2p+2aIW2I0Gtn9cWcCv66TzHnB682ycGuQF2tZa6WXu1fQDwyRihi6jllX+qaJ6cWWcKZNvb
	hzzNOBPFJVn247Yyt8XHLDkQ1TopVP3WSojdgVhmmj9/+w4SF9w7C18kGmCpubof957TA5HMgx4mQ
	geR7K7VaVjpdRkF1SA0QOO1eWiGdiBXImdqgIOovxl6gbdRuOJeYpVZqv0Ox1/5Gffe5Yl1LtLAjF
	Fe9WyClt9h0ugVjIYcBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nze87-008FB9-Ar; Fri, 10 Jun 2022 12:52:47 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nze84-008F65-6Y
	for linux-rockchip@lists.infradead.org; Fri, 10 Jun 2022 12:52:45 +0000
Received: from whitebuilder.lan (192-222-136-102.qc.cable.ebox.net [192.222.136.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A15526601724;
	Fri, 10 Jun 2022 13:52:37 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1654865558;
	bh=y4VN0AML4mJdPo0xkn5rxhw/upvGXg3kQ19JexvXyQc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UI3Skr/92kfXBj52tMYRIZ6FWRT/l4PEhIYivbCO05yNRyVcPNbvgF58uk6e6+iQj
	 Kt3JacKtz/oSASW2AH5I/QH7vXPMz6wOCiOsyncXJ936xqn4AZ5m3kmiw1X/W6tlmu
	 xf/VPUEhR65CHI4yAG+aF1fRIK9gY//Rd+U5uh/A86dr2fmKKu+XaIBn3mGETMSOdv
	 Rd2KKU96sZayrHVHhRJo4EvEmomy08l8/miShcx1rPDAlwdt5i4tK1OPwfYD2RCAkv
	 iQrqhZCJU60bytKOvheg2H2SuLwBfmgt8jjNdeG7jG5sm0OqBOvTtsnLFCAPOLaSKM
	 ZvnQuhht3iQVQ==
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
Subject: [PATCH v1 2/5] media: rkvdec: Add an ops to check for decode errors
Date: Fri, 10 Jun 2022 08:52:12 -0400
Message-Id: <20220610125215.240539-3-nicolas.dufresne@collabora.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220610125215.240539-1-nicolas.dufresne@collabora.com>
References: <20220610125215.240539-1-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_055244_412398_52F6E09E 
X-CRM114-Status: GOOD (  13.61  )
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

This optional internal ops allow each codec to do their own
error status checking. The presence of an error is reported
using the ERROR buffer state. This patch have no functional
changes.

Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
 drivers/staging/media/rkvdec/rkvdec.c | 10 ++++++----
 drivers/staging/media/rkvdec/rkvdec.h |  2 ++
 2 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index 7bab7586918c..7e76f8b72885 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -950,6 +950,7 @@ static void rkvdec_v4l2_cleanup(struct rkvdec_dev *rkvdec)
 static irqreturn_t rkvdec_irq_handler(int irq, void *priv)
 {
 	struct rkvdec_dev *rkvdec = priv;
+	struct rkvdec_ctx *ctx;
 	enum vb2_buffer_state state;
 	u32 status;
 
@@ -958,12 +959,13 @@ static irqreturn_t rkvdec_irq_handler(int irq, void *priv)
 		VB2_BUF_STATE_DONE : VB2_BUF_STATE_ERROR;
 
 	writel(0, rkvdec->regs + RKVDEC_REG_INTERRUPT);
-	if (cancel_delayed_work(&rkvdec->watchdog_work)) {
-		struct rkvdec_ctx *ctx;
+	ctx = v4l2_m2m_get_curr_priv(rkvdec->m2m_dev);
 
-		ctx = v4l2_m2m_get_curr_priv(rkvdec->m2m_dev);
+	if (ctx->coded_fmt_desc->ops->check_error_info)
+		state = ctx->coded_fmt_desc->ops->check_error_info(ctx);
+
+	if (cancel_delayed_work(&rkvdec->watchdog_work))
 		rkvdec_job_finish(ctx, state);
-	}
 
 	return IRQ_HANDLED;
 }
diff --git a/drivers/staging/media/rkvdec/rkvdec.h b/drivers/staging/media/rkvdec/rkvdec.h
index 633335ebb9c4..4ae8e6c6b03c 100644
--- a/drivers/staging/media/rkvdec/rkvdec.h
+++ b/drivers/staging/media/rkvdec/rkvdec.h
@@ -73,6 +73,8 @@ struct rkvdec_coded_fmt_ops {
 		     struct vb2_v4l2_buffer *dst_buf,
 		     enum vb2_buffer_state result);
 	int (*try_ctrl)(struct rkvdec_ctx *ctx, struct v4l2_ctrl *ctrl);
+	/* called from IRQ handler */
+	int (*check_error_info)(struct rkvdec_ctx *ctx);
 };
 
 struct rkvdec_coded_fmt_desc {
-- 
2.36.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
