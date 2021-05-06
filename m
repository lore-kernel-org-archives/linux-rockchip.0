Return-Path: <SRS0=3OfA=KB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52F81C433ED
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 14:37:36 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A8910610A0
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 14:37:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A8910610A0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9uSk80+LbzVIaHfvoH0bXSE/TqdHTVcb33UTOn4ImLE=; b=FdIFXGApSwEnMWtV408aDJhkBD
	RXhRcWP+rj90M05/3zwFR1KQloKW1hdhH2Na2Ld3XfadTkfesiORUBlR55AiVCu4eZ40eTkezFK1B
	4VTAV8lhOxadFFrnDkyfsi/tSBwSxvCyxpzq939jI5QZDbOhfPsz92wrrJIRupr7ritpyraSwIXt0
	ovnFx34S8TcPj+LtSL5PivLtrqOI8M0WPKKTHeSmQvQdw9fkACUbK+S1lYgHvSmLik/GF9lo2VdzI
	xNKThNqhc9vETOxuNtF9F3I9HbFOZ6Kvs15kEowvGe6dICRbDo5TcQuPZAdNc1BRjLbpfiQU5rIlf
	QYVyNhLA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lef85-004SJc-H7; Thu, 06 May 2021 14:37:29 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lef84-004SJR-6U
 for linux-rockchip@desiato.infradead.org; Thu, 06 May 2021 14:37:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=QYBYiS06M0ZIeHOv6IG/2lIhcn0259v9ZjF54ysLJ7g=; b=DxgHFHLGABrJ/ZuYtbgDAwSJ0G
 zIZdoJhm6pjp7VFtsxGkoWxUUBJ8i3ULkkABYNFr7yLgr9jnsWbECl3y4bP26kixfOidJxuZqfoJ+
 VXgJ+WFWstlnd1hZQqv6iVzkK/Qw2Pr6WeC61gzfBflP102YalqyVkm/EGM0FK6NkXhCVqEUgQh9J
 +Q30YHC3FT+IeyTGSs37m9p4BXBdbNK1QNTzsskXDwz909nxY4ROI3H4RJCAchTCRiXAuzBlr4jjS
 MsRbowWzyG6+z5HPEyGSr/KUIUv3qkfIitfhNo70+x6eOSHEpsGPj4drLh7ZJX5WEOafaVd03kRT/
 20NHolLQ==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lef81-0066RW-KP
 for linux-rockchip@lists.infradead.org; Thu, 06 May 2021 14:37:26 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7339F610A0;
 Thu,  6 May 2021 14:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620311844;
 bh=fJSwzFf7c0GmQiYWV5kfjwbHtHttKC4v3Xf+3U7MQWE=;
 h=From:To:Cc:Subject:Date:From;
 b=YmrPgJU2fnYn2hgmdWtfZVPlhNhJLGJ1mvpacnoqrsD3ZZhOID+H3zj90sz6ZBaNM
 tJIL/aUtzUuCf5RYG+2LED2Zl9q+4+hck5t4iKt8NetaEcR1+hiLVCX9RuiDh8lSK/
 JNmRv06Vf2yiTBOCruDnqkPGpjuHHYUVI6n8UTrgkfYNahjCQtCQGr65x93fVearrj
 wRP3sYb4h3uTcgo22YBy8sjGxqBK53uY/l8lCAUxeeC1jI4YWdltj0kRKwdICkgcBi
 WFCI+JqmIEEczaE88YcKeZEYlH86L+IV/47iMz/+W3nueqwNL4luYvsJBVoVZ3g9Sz
 FDwLVi1/ix40g==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1lef7y-000P0w-0J; Thu, 06 May 2021 16:37:22 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
Subject: [PATCH v2] media: hantro: do a PM resume earlier
Date: Thu,  6 May 2021 16:37:20 +0200
Message-Id: <a8b63a10d606dcbee9acc17b54d5d8eaa3d8fc3e.1620311838.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_073725_743856_BA273BF5 
X-CRM114-Status: GOOD (  12.48  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The device_run() first enables the clock and then
tries to resume PM runtime, checking for errors.

Well, if for some reason the pm_runtime can not resume,
it would be better to detect it beforehand.

So, change the order inside device_run().

Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
Fixes: 775fec69008d ("media: add Rockchip VPU JPEG encoder driver")
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/hantro/hantro_drv.c | 35 +++++++++++++++--------
 1 file changed, 23 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 595e82a82728..eea2009fa17b 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -56,16 +56,12 @@ dma_addr_t hantro_get_ref(struct hantro_ctx *ctx, u64 ts)
 	return hantro_get_dec_buf_addr(ctx, buf);
 }
 
-static void hantro_job_finish(struct hantro_dev *vpu,
-			      struct hantro_ctx *ctx,
-			      enum vb2_buffer_state result)
+static void hantro_job_finish_no_pm(struct hantro_dev *vpu,
+				    struct hantro_ctx *ctx,
+				    enum vb2_buffer_state result)
 {
 	struct vb2_v4l2_buffer *src, *dst;
 
-	pm_runtime_mark_last_busy(vpu->dev);
-	pm_runtime_put_autosuspend(vpu->dev);
-	clk_bulk_disable(vpu->variant->num_clocks, vpu->clocks);
-
 	src = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
 	dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
 
@@ -81,6 +77,18 @@ static void hantro_job_finish(struct hantro_dev *vpu,
 					 result);
 }
 
+static void hantro_job_finish(struct hantro_dev *vpu,
+			      struct hantro_ctx *ctx,
+			      enum vb2_buffer_state result)
+{
+	pm_runtime_mark_last_busy(vpu->dev);
+	pm_runtime_put_autosuspend(vpu->dev);
+
+	clk_bulk_disable(vpu->variant->num_clocks, vpu->clocks);
+
+	hantro_job_finish_no_pm(vpu, ctx, result);
+}
+
 void hantro_irq_done(struct hantro_dev *vpu,
 		     enum vb2_buffer_state result)
 {
@@ -152,11 +160,14 @@ static void device_run(void *priv)
 	src = hantro_get_src_buf(ctx);
 	dst = hantro_get_dst_buf(ctx);
 
-	ret = clk_bulk_enable(ctx->dev->variant->num_clocks, ctx->dev->clocks);
-	if (ret)
-		goto err_cancel_job;
 	ret = pm_runtime_get_sync(ctx->dev->dev);
-	if (ret < 0)
+	if (ret < 0) {
+		pm_runtime_put_noidle(ctx->dev->dev);
+		goto err_cancel_job;
+	}
+
+	ret = clk_bulk_enable(ctx->dev->variant->num_clocks, ctx->dev->clocks);
+	if (ret)
 		goto err_cancel_job;
 
 	v4l2_m2m_buf_copy_metadata(src, dst, true);
@@ -165,7 +176,7 @@ static void device_run(void *priv)
 	return;
 
 err_cancel_job:
-	hantro_job_finish(ctx->dev, ctx, VB2_BUF_STATE_ERROR);
+	hantro_job_finish_no_pm(ctx->dev, ctx, VB2_BUF_STATE_ERROR);
 }
 
 static struct v4l2_m2m_ops vpu_m2m_ops = {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
