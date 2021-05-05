Return-Path: <SRS0=Kxb6=KA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_2 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED30FC433ED
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 11:36:39 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4CFA1610A1
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 11:36:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4CFA1610A1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=Huawei.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:
	Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k795IPsGuGE+Gaw1Kzurib+b/v75KdBY71XpmSie8SI=; b=I3tG0bG4+X1YVVGlQGBFVyiyE
	t4wgP9yWHufWEY5mKzpmNcIRr02tyVhsldc1WoxbP9c46Ql9KsNQiQo4Ac4O3lGqLsBjuIEx6keU5
	wj75kS5UtD+ElQhZuVeoWK9SuFaVhq+VEPAE+OCmlCfrnlFNj9e2v3kNjtNiEm9N7zNVdjILtmar5
	OZ4irH9UIZWOD241hHCFBnVx6Y9nC3LuW1lClmNnmX2zMNSaQMfBsLyp4dIUFXrF0KhdSrUha+RvD
	ZCTPTI2wsqZ6VYzbrtQa4vWkAFObfKZBToEdMCYl+D6k1wLW9kO47k9yHnjBUNrU6yWn5nVajyPCC
	8ATh1iKGg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leFpP-0016L0-NM; Wed, 05 May 2021 11:36:31 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leFpH-0016J7-Ez
 for linux-rockchip@desiato.infradead.org; Wed, 05 May 2021 11:36:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:CC:To:
 From:Date:Sender:Reply-To:Content-ID:Content-Description;
 bh=r+of4F5vlTfKS1MP90fStKqvk6Olhpx9FaMgMETAWXY=; b=MryV4uedZso1FQCwUP+hBhKRsC
 8oZ80w2LlE/3Vx31p5KgscsmuqN3cLzU9oJnKH1vzAN6w+ECokjdD7LH7KyI/o9o5RemmPfH/dHcQ
 jUmZp8aIsRzsaGqPwY90X+uVdZsZSB1ZSYkLpb9oC8gt1JzSpwPYA0AwgixjbKj08dLjzkAre52FQ
 KKrPHw2gAkq8WEbFHs0LkHI+Yxy8qvFHX9NvjLqhHdHxIZwfiLXrhHcqmv9lSpktHNDwlLhUBnZaC
 k5FvhP1azm2WQrDuKaGeNSTyBMM3PwQgNndFaLqQQbfvUAcFMZqC6cet1xvlmFQIzuHmBuRJo5E7A
 CdL0cdOA==;
Received: from frasgout.his.huawei.com ([185.176.79.56])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leFpC-004hwG-My
 for linux-rockchip@lists.infradead.org; Wed, 05 May 2021 11:36:20 +0000
Received: from fraeml734-chm.china.huawei.com (unknown [172.18.147.201])
 by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4FZvbK0QHrz6rlWH;
 Wed,  5 May 2021 19:28:13 +0800 (CST)
Received: from lhreml710-chm.china.huawei.com (10.201.108.61) by
 fraeml734-chm.china.huawei.com (10.206.15.215) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Wed, 5 May 2021 13:36:15 +0200
Received: from localhost (10.52.120.138) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.2; Wed, 5 May 2021
 12:36:14 +0100
Date: Wed, 5 May 2021 12:34:35 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
CC: <linuxarm@huawei.com>, <mauro.chehab@huawei.com>, Ezequiel Garcia
 <ezequiel@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 <linux-kernel@vger.kernel.org>, <linux-media@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>, <linux-staging@lists.linux.dev>
Subject: Re: [PATCH 09/25] media: hantro: do a PM resume earlier
Message-ID: <20210505123435.00002065@Huawei.com>
In-Reply-To: <82114a4bd9c7bc1188c6a7167a6e74bb3360961d.1620207353.git.mchehab+huawei@kernel.org>
References: <cover.1620207353.git.mchehab+huawei@kernel.org>
 <82114a4bd9c7bc1188c6a7167a6e74bb3360961d.1620207353.git.mchehab+huawei@kernel.org>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.52.120.138]
X-ClientProxiedBy: lhreml725-chm.china.huawei.com (10.201.108.76) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_043618_906148_F96998ED 
X-CRM114-Status: GOOD (  17.50  )
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

On Wed, 5 May 2021 11:41:59 +0200
Mauro Carvalho Chehab <mchehab+huawei@kernel.org> wrote:

> The device_run() first enables the clock and then
> tries to resume PM runtime, checking for errors.
> 
> Well, if for some reason the pm_runtime can not resume,
> it would be better to detect it beforehand.
> 
> So, change the order inside device_run().
> 
> Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
> Fixes: 775fec69008d ("media: add Rockchip VPU JPEG encoder driver")
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

Does this move not result in a potential call of clk_bulk_disable() for clocks
that aren't enabled?

> ---
>  drivers/staging/media/hantro/hantro_drv.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
> index 595e82a82728..4387edaa1d0d 100644
> --- a/drivers/staging/media/hantro/hantro_drv.c
> +++ b/drivers/staging/media/hantro/hantro_drv.c
> @@ -152,13 +152,14 @@ static void device_run(void *priv)
>  	src = hantro_get_src_buf(ctx);
>  	dst = hantro_get_dst_buf(ctx);
>  
> -	ret = clk_bulk_enable(ctx->dev->variant->num_clocks, ctx->dev->clocks);
> -	if (ret)
> -		goto err_cancel_job;
>  	ret = pm_runtime_get_sync(ctx->dev->dev);
>  	if (ret < 0)
>  		goto err_cancel_job;
>  
> +	ret = clk_bulk_enable(ctx->dev->variant->num_clocks, ctx->dev->clocks);
> +	if (ret)
> +		goto err_cancel_job;
> +
>  	v4l2_m2m_buf_copy_metadata(src, dst, true);
>  
>  	ctx->codec_ops->run(ctx);


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
