Return-Path: <SRS0=uU3o=GJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35E10C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jan 2021 13:46:03 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F2DA822B40
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jan 2021 13:46:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F2DA822B40
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uxrFYb72ZV5QVvdjsn3mlxoINs5vAMa52+P/t5Qu8Fw=; b=TO9ZMLXdqOmq70af6FQqZtsXJ
	trwuHtufymDR4d7IP0XJ88/VUrfXuFit14lhH6q0xPDlxP1QApoFkP/x5rwWhWU4El6NDbGRu5KeH
	35UfonPIwOv1zYoHXyg4ZOyM+b/WhfzBxh6pRZASGojsXrwvZNFZ+MaAUK9XcV1rlENtzvXFQUgfJ
	L3IljOGVp7G7ax7DAcQamVMmh07gfJukpSTnDuJj4gHmTaUaUzt7YgMk0aFBjgO38HYwVPq5qlIG3
	z5j69R597ax6HvW8GWndvj46oqCN+Xv0/yXVUj5pRVuD8IytTtcDnV0mq8oqiuTO1gsqvzj+E5YmH
	dLIF0oCgw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kx98S-0000Xq-6G; Wed, 06 Jan 2021 13:46:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kx98O-0000Tn-Sd
 for linux-rockchip@lists.infradead.org; Wed, 06 Jan 2021 13:45:58 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id BE4DA2311A;
 Wed,  6 Jan 2021 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1609940754;
 bh=dCoF2O50cFUHjCxcKBfGbJ4M0gpxaJLAvMtc+XoF27U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=saP0e/tkb9fUsADhfZ8zphsUzXLH5nHr03v0X18DRG4nTOOm5iF8uwxftDnxfirRn
 t2AZbtNgRRWmOA7lPQb4FmNpvQVQvirHznbPK80l/iBodfuCjPfsoZtOOdtJOaHleX
 LYGldEnecXvSTNm3P7+lBNC3P5e2HezXgqzfyA5c=
Date: Wed, 6 Jan 2021 14:47:14 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Zheng Yongjun <zhengyongjun3@huawei.com>
Subject: Re: [PATCH -next] media: rkvdec: use resource_size
Message-ID: <X/W/YnBwP5q9sxkI@kroah.com>
References: <20210106131820.32706-1-zhengyongjun3@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210106131820.32706-1-zhengyongjun3@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210106_084557_086437_5FFFD45D 
X-CRM114-Status: GOOD (  15.30  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Jan 06, 2021 at 09:18:20PM +0800, Zheng Yongjun wrote:
> Use resource_size rather than a verbose computation on
> the end and start fields.
> 
> Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>
> ---
>  drivers/staging/media/rkvdec/rkvdec.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
> index d25c4a37e2af..66572066e7a0 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.c
> +++ b/drivers/staging/media/rkvdec/rkvdec.c
> @@ -130,7 +130,7 @@ static void rkvdec_reset_fmt(struct rkvdec_ctx *ctx, struct v4l2_format *f,
>  	memset(f, 0, sizeof(*f));
>  	f->fmt.pix_mp.pixelformat = fourcc;
>  	f->fmt.pix_mp.field = V4L2_FIELD_NONE;
> -	f->fmt.pix_mp.colorspace = V4L2_COLORSPACE_REC709,
> +	f->fmt.pix_mp.colorspace = V4L2_COLORSPACE_REC709;
>  	f->fmt.pix_mp.ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
>  	f->fmt.pix_mp.quantization = V4L2_QUANTIZATION_DEFAULT;
>  	f->fmt.pix_mp.xfer_func = V4L2_XFER_FUNC_DEFAULT;
> -- 
> 2.22.0
> 

That is not what this patch does at all :(

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
