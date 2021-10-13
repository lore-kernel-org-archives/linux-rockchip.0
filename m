Return-Path: <SRS0=uHDa=PB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18954C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Oct 2021 14:23:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D1CBB60E96
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Oct 2021 14:23:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D1CBB60E96
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=vanguardiasur.com.ar
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Yo6ZrnwUW6+A/SSFiENxO1vcoPWOUcr2MdM9T+s0Sw=; b=zRG1JIfCYGFvkK
	JylFj5r7Hr60wC3WgRy6pxglRSuPtHguIdzEIE3Sfwqz6Gg+Hdq4nHS3qyDTWUOLaJ2RvU0NUo8MP
	BZc1yKKE+NcLpM7oGutylF9xjYRxNX2SynyJerN7GVzSvNYaq9eor3ib9hzy6kEzWnDk/aPsrSrhB
	VFC4n4mPYkHkUZ2NH/NGVBJoXPqsccSVUKbFkDl1Km/2kw5gUZkKy4OZbrbqyRPOO/ObqcMLMT+SV
	F/1dWvvsVD9POSSDTGsUuamYMCHYXtQJ9SHlFBB67QJGf5cLxKGjZDkWxPI1/vT43MJwZZtL9WRKp
	C7m0uDMiCWI9pZ/md6Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mafAD-00H86C-Ja; Wed, 13 Oct 2021 14:23:25 +0000
Received: from mail-ua1-x92d.google.com ([2607:f8b0:4864:20::92d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mafA6-00H80r-NN
 for linux-rockchip@lists.infradead.org; Wed, 13 Oct 2021 14:23:21 +0000
Received: by mail-ua1-x92d.google.com with SMTP id i15so4957605uap.0
 for <linux-rockchip@lists.infradead.org>; Wed, 13 Oct 2021 07:23:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=7w/SpwqUg1NtXlESs19PovhWHJiT5rNlJWgKAzuzlAE=;
 b=NXN3/6opbxMONUbmwhMTGJ45Wx47wxNTSTy8tiZ9DEIwTDESJrVNdX3Ebsqu+YcY6M
 D0gmdJ0nCNdGbmaNxXCMbvk3Kk1gkte52sQG2mM9czGZejuGOUgWpz60bd7Rs7OLIicG
 a3I8ARXHglmgKNd+4AB/JAQi4+1GPYohAzugS953pzmSHoOKXqjbmsTHEenoc4XJr91J
 cCPmlhJaFaMZD3T5b3CoV8/bu3jWISwQhGhRc5zi4dBudCBs+efvkphULFwtNhrgA2Jx
 muPKfNAzyCGOmCyvzG0tTgYeBcMycflCLzXfCHRm9SsMsGbjvwLB7sFlDqJAZ6EdMk92
 dAuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=7w/SpwqUg1NtXlESs19PovhWHJiT5rNlJWgKAzuzlAE=;
 b=4Cfto7QybSx1AMXBIupTLpbPzTPu2c/5O1ySm+VfmHNzbpiZkGoGtIPf3EZJjjSRuZ
 pTFmeaRMjFOMxU+gTGCQIDV8nTJGJneF7sMAHxxCJLJ84fHq6ixNewTyYeNsbrm82WWe
 weMQgkaFJwXzZDHBP0Rbt/Y36ocLpPU44HitBfLzhPC650UrmK9SwVad5/WDSgHDoRyz
 ARUUzwYMmoyxGRhyjtyTPdzcxGVA+/T0z8qPriLxpuLkNJieHnoJk5HCJPMDMZfJ1fgx
 ux1jaB6rN7yQjquUBNpuLMksoyDoRzmBEqVeSrMcjp6k9zpbGjAGG1QVi4st8MrsUwmQ
 vUWA==
X-Gm-Message-State: AOAM530PlNPw+6cMG7CDD4myw+ulEPcdAuxryPnSsFvQFt02eiR4Z0hd
 47Mbnel1wivk8UTNAjS41OlkwA==
X-Google-Smtp-Source: ABdhPJwTqgTV9HIXGGN+anjhVzoBSubJf8so1ONfQF8nBDLgW3FrUf6as8wCjY9HYniJ1jC0Ebnrvw==
X-Received: by 2002:a67:d189:: with SMTP id w9mr38724521vsi.55.1634134996280; 
 Wed, 13 Oct 2021 07:23:16 -0700 (PDT)
Received: from fedora ([196.32.91.248])
 by smtp.gmail.com with ESMTPSA id q26sm6243875vkn.40.2021.10.13.07.23.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 07:23:15 -0700 (PDT)
Date: Wed, 13 Oct 2021 11:23:11 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>, stable@vger.kernel.org
Subject: Re: [PATCH 1/2] media: rkvdec: Do not override sizeimage for output
 format
Message-ID: <YWbrz/+gZE7z+Ab5@fedora>
References: <20211008100423.739462-1-wenst@chromium.org>
 <20211008100423.739462-2-wenst@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211008100423.739462-2-wenst@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211013_072319_019542_EB04B5C7 
X-CRM114-Status: GOOD (  19.37  )
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

Hi Chen-Yu,

On Fri, Oct 08, 2021 at 06:04:22PM +0800, Chen-Yu Tsai wrote:
> The rkvdec H.264 decoder currently overrides sizeimage for the output
> format. This causes issues when userspace requires and requests a larger
> buffer, but ends up with one of insufficient size.
> 
> Instead, only provide a default size if none was requested. This fixes
> the video_decode_accelerator_tests from Chromium failing on the first
> frame due to insufficient buffer space. It also aligns the behavior
> of the rkvdec driver with the Hantro and Cedrus drivers.
> 
> Fixes: cd33c830448b ("media: rkvdec: Add the rkvdec driver")
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Thanks for taking care of this!

Ezequiel

> ---
>  drivers/staging/media/rkvdec/rkvdec-h264.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
> index 76e97cbe2512..951e19231da2 100644
> --- a/drivers/staging/media/rkvdec/rkvdec-h264.c
> +++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
> @@ -1015,8 +1015,9 @@ static int rkvdec_h264_adjust_fmt(struct rkvdec_ctx *ctx,
>  	struct v4l2_pix_format_mplane *fmt = &f->fmt.pix_mp;
>  
>  	fmt->num_planes = 1;
> -	fmt->plane_fmt[0].sizeimage = fmt->width * fmt->height *
> -				      RKVDEC_H264_MAX_DEPTH_IN_BYTES;
> +	if (!fmt->plane_fmt[0].sizeimage)
> +		fmt->plane_fmt[0].sizeimage = fmt->width * fmt->height *
> +					      RKVDEC_H264_MAX_DEPTH_IN_BYTES;
>  	return 0;
>  }
>  
> -- 
> 2.33.0.882.g93a45727a2-goog
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
