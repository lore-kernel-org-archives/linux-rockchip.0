Return-Path: <SRS0=Fx1p=JZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7BCEC433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 14:56:49 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9694961027
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 14:56:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9694961027
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=21V/sjOuxuKEv8gWqalRtoakx8GKCCeHjYPMqmesQJ0=; b=VvR15DgV417j86mrgQt5GBW1C
	uXPNsTwhP10T/aMxKyNgmQHDAc7toSb2UXzxOZF3Af96MfCj7xTBO7YpBn7lFimEswpHoxR8DJmNp
	Qt99YZZDbz2zUmrf4o/wpsk7XAGT5KUJvzgVQD4KhTMtXSTjZbvONCR1Cl7/5VUYvDsfc0wR4AcWV
	Y9oz+S2zmrZ8Z6atU97G/HPOo/Lx0rYaCASzIrlQs70OubP0w1epotba3IJjIRa7kPHrvuZED51Le
	RhXVtqE/2SX70ZojgOdJKT6zcJBvDHdxyFihgciP+g02K4ASOxoheFyns42gZzIBIUXE6VDqQOoWE
	KbNuLtX5A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lblcD-003gZ8-NT; Wed, 28 Apr 2021 14:56:38 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lblYi-003fSs-IH
 for linux-rockchip@desiato.infradead.org; Wed, 28 Apr 2021 14:53:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=GTX0vTRos7KShyz/ObUVYiSs3KYC2oNWMFgYSRqgy2M=; b=QrqOJlbV3p15b7XDyFEDve9q9o
 8Z03VJNwkQKqV5hfgfx+opev5+hygl5Qf0KQZqEwM3aY1Omy20r9F/jsUznLLbX+xfIdkB56LePGu
 82vIqhE+tuToC4S8iunKau7ZaVLmYKfPr/B+L3/BQ6rnan3Wpk5eJfvNyu6CDCSN33MXCRq+riBNR
 BrGLgp4u/uNIbVIbwahKHPN8+I0NCMobugPs6h2ZwBZLqkytNxHn3RWg3FcXpMaaQQ54WLYWihZH8
 yda3t6DFdsF72r14bHnBLFOIGosTtCIC4/6pGdvSF85hRrF3DLxZHcdMTA8lkZti0ylr+b+KcGJJV
 YTa3l0xQ==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lblYY-00HVQU-Ud
 for linux-rockchip@lists.infradead.org; Wed, 28 Apr 2021 14:52:54 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id AA0676193A;
 Wed, 28 Apr 2021 14:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619621564;
 bh=iGZe8aaDJjF2bkRR0aV7yAcLZay9Jx4R6lGwINryHgY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=r7Zsn7ZfibgO5NJ4O8W7hayhDjJqzikad8KZcJEMy4lO6Tn7c1Z9mq4POy6ubsaNP
 EevLODRnXfD9y4mg3Jb8InxQUOfR89aCWmOcVk67go3jfWYt8Z2ua1Vol8/5h9J+y+
 HUs3ADhigpOxMlJwTfi3kVMCPSg/qr1HNKwKzct5J59tQ3+Tza/AYLeBbf9Eki6GXM
 wadAqpYw59ZjJ17iQcLkDHfLelN7Yiq9xGn8U4ueZeZ0yE2LxmnQbEulEHX+WqXLEh
 oe0VvCNPYVjwSktLb+OGh+KHNrDm9IlHHRVsaGZ4l1K/hk/tCFoEf4NAQC2epp4MuH
 IUpDoVR0Gc6Lg==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1lblYS-001Dtv-AF; Wed, 28 Apr 2021 16:52:44 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v4 78/79] media: hantro: use pm_runtime_resume_and_get()
Date: Wed, 28 Apr 2021 16:52:39 +0200
Message-Id: <803c39fafdd62efc6f9e4d99a372af2c6955143b.1619621413.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1619621413.git.mchehab+huawei@kernel.org>
References: <cover.1619621413.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210428_075251_104230_5F9DB810 
X-CRM114-Status: GOOD (  11.29  )
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

Commit dd8088d5a896 ("PM: runtime: Add pm_runtime_resume_and_get to deal with usage counter")
added pm_runtime_resume_and_get() in order to automatically handle
dev->power.usage_count decrement on errors.

While there's nothing wrong with the current usage on this driver,
as we're getting rid of the pm_runtime_get_sync() call all over
the media subsystem, let's remove the last occurrence on this
driver.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/hantro/hantro_drv.c | 23 ++++++++++++++++-------
 1 file changed, 16 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 595e82a82728..25fa36e7e773 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -56,14 +56,12 @@ dma_addr_t hantro_get_ref(struct hantro_ctx *ctx, u64 ts)
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
 	clk_bulk_disable(vpu->variant->num_clocks, vpu->clocks);
 
 	src = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
@@ -81,6 +79,16 @@ static void hantro_job_finish(struct hantro_dev *vpu,
 					 result);
 }
 
+static void hantro_job_finish(struct hantro_dev *vpu,
+			      struct hantro_ctx *ctx,
+			      enum vb2_buffer_state result)
+{
+	pm_runtime_mark_last_busy(vpu->dev);
+	pm_runtime_put_autosuspend(vpu->dev);
+
+	hantro_job_finish_no_pm(vpu, ctx, result);
+}
+
 void hantro_irq_done(struct hantro_dev *vpu,
 		     enum vb2_buffer_state result)
 {
@@ -155,7 +163,8 @@ static void device_run(void *priv)
 	ret = clk_bulk_enable(ctx->dev->variant->num_clocks, ctx->dev->clocks);
 	if (ret)
 		goto err_cancel_job;
-	ret = pm_runtime_get_sync(ctx->dev->dev);
+
+	ret = pm_runtime_resume_and_get(ctx->dev->dev);
 	if (ret < 0)
 		goto err_cancel_job;
 
@@ -165,7 +174,7 @@ static void device_run(void *priv)
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
