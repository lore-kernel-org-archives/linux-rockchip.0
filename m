Return-Path: <SRS0=A12b=J3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_2 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C5FFC433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Apr 2021 18:10:58 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7D03561468
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Apr 2021 18:10:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7D03561468
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=Huawei.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:
	Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6DgOrTh+wH7Fmg8p6LdPCOBPHsDQoMcAS9W3JK6bM9k=; b=jiHH9kOMdH6kHiC3yXG5MACy/
	9SP87kOjKhS/A7r673bh5EeDaHDVFWMRA8+LTtEPQMiWQF19LNp7Qg6MYitkc9en9Aio5Ze1JA/gR
	vjOUGVkny6XuDTQoXkwkrqhnJcRNrcZy+kfCgbZVgKuoTBdZjMnjA1wJ+YYjTf/7CMpdMewpAhyuO
	VVSOm1Af9Rs+AWldAk4Oq+Q7fKo35YOgBJM7yFnnKI7qZaGApvgEb6/iQcR5l1b7GlzdAMMgZE3GS
	00KolmFuuvVaPutiVNf6m+skc4DeBXoLYDDyLp+xnVcUqaJJT874hbvjvfCevzBOjvHzfvra5gk7x
	SPfjjAEbQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcXbG-008M4D-7e; Fri, 30 Apr 2021 18:10:50 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcXbA-008M3j-Sh
 for linux-rockchip@desiato.infradead.org; Fri, 30 Apr 2021 18:10:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:CC:To:
 From:Date:Sender:Reply-To:Content-ID:Content-Description;
 bh=gRzAMwMf+i7VLo3hQE6NqbR5Qih+MvAslwTLajyxKKM=; b=TCIAT4gi4bulersp/sMcBB8wOF
 3+zKZ/IdhyjPsmTa/Q3z84vn9L3w3BrVR9qnX8StMtgSqit39gaoTanovFGWh+cXWWeULCqo5Y5j/
 +0q5vvOPfLFi5kg514utoBN/WsXZgCYj+KRzD17L0evZU4NGLjGuPMKkEgteCBX5AO40Mshy2PXYt
 0ylp/v3fRMhpArZ5ig5qil3eIkqM/yusbxniVoW/Uvtua03Qp9Wu1ec5YQLriw3IHDVV16jRdAf7W
 b3S5HZ6cgq2pxNimpGPe93C2g6bCP6k2w4XbcGuSnYTMUT4Us6WX2gKf+/nCtmDMutoQuirYjUDY/
 d6FUDygQ==;
Received: from frasgout.his.huawei.com ([185.176.79.56])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcXb6-001a05-Cz
 for linux-rockchip@lists.infradead.org; Fri, 30 Apr 2021 18:10:42 +0000
Received: from fraeml714-chm.china.huawei.com (unknown [172.18.147.201])
 by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4FX0Zs18T3z689Nt;
 Sat,  1 May 2021 02:02:45 +0800 (CST)
Received: from lhreml710-chm.china.huawei.com (10.201.108.61) by
 fraeml714-chm.china.huawei.com (10.206.15.33) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Fri, 30 Apr 2021 20:10:36 +0200
Received: from localhost (10.52.125.96) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.2; Fri, 30 Apr
 2021 19:10:35 +0100
Date: Fri, 30 Apr 2021 19:09:00 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
CC: <linuxarm@huawei.com>, <mauro.chehab@huawei.com>, Ezequiel Garcia
 <ezequiel@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Philipp Zabel
 <p.zabel@pengutronix.de>, <devel@driverdev.osuosl.org>,
 <linux-kernel@vger.kernel.org>, <linux-media@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v4 78/79] media: hantro: use pm_runtime_resume_and_get()
Message-ID: <20210430190900.00004dd3@Huawei.com>
In-Reply-To: <803c39fafdd62efc6f9e4d99a372af2c6955143b.1619621413.git.mchehab+huawei@kernel.org>
References: <cover.1619621413.git.mchehab+huawei@kernel.org>
 <803c39fafdd62efc6f9e4d99a372af2c6955143b.1619621413.git.mchehab+huawei@kernel.org>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.52.125.96]
X-ClientProxiedBy: lhreml721-chm.china.huawei.com (10.201.108.72) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_111040_744910_EE5BE84B 
X-CRM114-Status: GOOD (  18.17  )
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

On Wed, 28 Apr 2021 16:52:39 +0200
Mauro Carvalho Chehab <mchehab+huawei@kernel.org> wrote:

> Commit dd8088d5a896 ("PM: runtime: Add pm_runtime_resume_and_get to deal with usage counter")
> added pm_runtime_resume_and_get() in order to automatically handle
> dev->power.usage_count decrement on errors.
> 
> While there's nothing wrong with the current usage on this driver,
> as we're getting rid of the pm_runtime_get_sync() call all over
> the media subsystem, let's remove the last occurrence on this
> driver.

Not sure there is nothing wrong in here before your patch...


> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  drivers/staging/media/hantro/hantro_drv.c | 23 ++++++++++++++++-------
>  1 file changed, 16 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
> index 595e82a82728..25fa36e7e773 100644
> --- a/drivers/staging/media/hantro/hantro_drv.c
> +++ b/drivers/staging/media/hantro/hantro_drv.c
> @@ -56,14 +56,12 @@ dma_addr_t hantro_get_ref(struct hantro_ctx *ctx, u64 ts)
>  	return hantro_get_dec_buf_addr(ctx, buf);
>  }
>  
> -static void hantro_job_finish(struct hantro_dev *vpu,
> -			      struct hantro_ctx *ctx,
> -			      enum vb2_buffer_state result)
> +static void hantro_job_finish_no_pm(struct hantro_dev *vpu,
> +				    struct hantro_ctx *ctx,
> +				    enum vb2_buffer_state result)
>  {
>  	struct vb2_v4l2_buffer *src, *dst;
>  
> -	pm_runtime_mark_last_busy(vpu->dev);
> -	pm_runtime_put_autosuspend(vpu->dev);
>  	clk_bulk_disable(vpu->variant->num_clocks, vpu->clocks);
>  
>  	src = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
> @@ -81,6 +79,16 @@ static void hantro_job_finish(struct hantro_dev *vpu,
>  					 result);
>  }
>  
> +static void hantro_job_finish(struct hantro_dev *vpu,
> +			      struct hantro_ctx *ctx,
> +			      enum vb2_buffer_state result)
> +{
> +	pm_runtime_mark_last_busy(vpu->dev);
> +	pm_runtime_put_autosuspend(vpu->dev);
> +
> +	hantro_job_finish_no_pm(vpu, ctx, result);
> +}
> +
>  void hantro_irq_done(struct hantro_dev *vpu,
>  		     enum vb2_buffer_state result)
>  {
> @@ -155,7 +163,8 @@ static void device_run(void *priv)
>  	ret = clk_bulk_enable(ctx->dev->variant->num_clocks, ctx->dev->clocks);
>  	if (ret)
>  		goto err_cancel_job;

Before your patch, if this error condition happened, we'd call runtime_put
before the related runtime_get...  You fixed that, but the patch description
doesn't call it out.


> -	ret = pm_runtime_get_sync(ctx->dev->dev);
> +
> +	ret = pm_runtime_resume_and_get(ctx->dev->dev);
>  	if (ret < 0)
>  		goto err_cancel_job;
>  
> @@ -165,7 +174,7 @@ static void device_run(void *priv)
>  	return;
>  
>  err_cancel_job:
> -	hantro_job_finish(ctx->dev, ctx, VB2_BUF_STATE_ERROR);
> +	hantro_job_finish_no_pm(ctx->dev, ctx, VB2_BUF_STATE_ERROR);
>  }
>  
>  static struct v4l2_m2m_ops vpu_m2m_ops = {


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
