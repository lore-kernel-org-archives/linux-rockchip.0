Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E71260A263B
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2026 23:27:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=024NihaB;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=google.com header.i=@google.com header.a=rsa-sha256 header.s=20260707 header.b=Q+rlyZOz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:From:Subject:Message-ID:
	References:Mime-Version:In-Reply-To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Unsubscribe-Post:List-Owner;
	bh=/+3V4rWkc6l2yJx3/8G+Cj8q8LMUVKPRaVztKTdV5LA=; b=024NihaBmrXk+diYknvx4OEq68
	75QktZyb/WvRGCDy4IZWQuiAbPTbjJFpmeTwQg6jlbED6Ps/nsUeOEcpgkhfIBtsMV3fPH857VDvu
	q8WmNwOuucS6Ofc3NgMAzvJXUHxQ+2m05uIXMOgG5t8xzE9OqGqdn7SLfqhAqivU4THnsRciPIuj9
	oJo1nr2VArebHVV+wqsTtEbhkt5cN0oOSRJE4a7AGktQObNVO+9htVFH9ixMq02LR8BPkDCjfXsgo
	4E3cSydj8RG0nkzlu8tlcflbE1C5Qh5JBbwLeiK2Kiyxrx5pFhUynwpN1y54dTxfdXcCOZvVNaxlh
	SEo/gxWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRHj2-000000088aY-2h9a;
	Wed, 11 Nov 2026 23:27:32 +0000
Received: from mail-oi1-x248.google.com ([2607:f8b0:4864:20::248])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRHiz-000000088Yq-0z0V
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Nov 2026 23:27:31 +0000
Received: by mail-oi1-x248.google.com with SMTP id 5614622812f47-5640a2d9708so4201488b6e.1
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Nov 2026 15:27:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20260707; t=1794439647; x=1795044447; darn=lists.infradead.org;
        h=content-type:cc:to:from:subject:message-id:references:mime-version
         :in-reply-to:date:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=l3ncA7LGC0e8S60f6Aii7X3fJT4GkRwmt3Q/dedOq/0=;
        b=Q+rlyZOzQ5vzPa/ceANJkfmsD/1Oh5TTfcZMwV6O+92Ii385veXWiNOMd9HTp/VMvm
         JoNqWUBkAZSTQrLIFCcCP1ztb/wsph541sDLXYP7JWr2/Y4oTpvEdcsCxoIZEF7IxWhC
         8+yzmsmmLfNJzzJYpX7qiHqIv8F1D+kCYGsytiiRdfGO/+xLStGukGCptaSQG2YhT6Oc
         s8QmRJw7UW8g5P7EZtieUyeJW33S25BXcsaH4ly7xkgceirxDadHavdTGLIhhc4Hcbpv
         gfIFE/GAER77gcFLUJ6Hd8uLnKBSGjDqRIeY90F7Vabu+JiZ5PKFdOhVqG6IuSHVVU+z
         H5Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794439647; x=1795044447;
        h=content-type:cc:to:from:subject:message-id:references:mime-version
         :in-reply-to:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=l3ncA7LGC0e8S60f6Aii7X3fJT4GkRwmt3Q/dedOq/0=;
        b=xvDk1Mje099J0M7RqxbbWArMS6bKy7GmRXLmptIBgMcRiJvZkNzXL+t1iRR3m+jzA3
         49r+j4iYiw0HkEfZ7pNxJRlOT7OBuyr4CSJbU4MtYV6e0V0Rh8yeH7zBI6brlPU6dOZD
         EJEwbNzZ+hOQfCqnKu6JGGHK3FyAn0LtrtR6WdDfOF+9/jUBml9nUX/12P61Q+/28GA/
         tK5Obi85bgiDhqrLEAPVJaLSW0tm80jQ1vsmZNJMgbctmbVEcGNLpeefS1pzX0EHrB1d
         HxOhhDcZRLE2dzTnWsqvldpjblede5iD0zTqCPp/Pz3TW8nwzujBYXp91KMKclZoneg6
         WmNg==
X-Forwarded-Encrypted: i=1; AL+hErEXZHYeQo8UzquXVAMTVbnEaYJ2cgr3cFvAag0m6Krtb++j5tHQCdTlhO972QSIqbYJaGcMLpaq8o5WKjpcpQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z+Leq7Wt7CmEBnR5SQUbqU8mVeUO92SlJShGrS/85UbIttDZQxD
	uuNOIeMaZ09qN199JFQyWlRJB0ZicZoV1SrTDOYmLjM0rdd9JmkGcyUXwZ0w8NNTYX4rEiVNOpJ
	utxeKbtQm98rEHOy+Sa3UT3Wjkg==
X-Received: from ioz8.prod.google.com ([2002:a05:6602:20c8:b0:9c7:7bc8:8c7b])
 (user=justinstitt job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6808:2388:b0:517:dd67:aeb7 with SMTP id 5614622812f47-56b97e2b6cbmr3870593b6e.56.1794439646997;
 Wed, 11 Nov 2026 15:27:26 -0800 (PST)
Date: Wed, 11 Nov 2026 15:27:25 -0800
In-Reply-To: <20261105084518.386234-1-nikitash.mariiaw@gmail.com>
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0
References: <20261105084518.386234-1-nikitash.mariiaw@gmail.com>
Message-ID: <avT5yrP3PYemJNCI@google.com>
Subject: Re: [PATCH] media: verisilicon: Replace strlcat() with seq_buf
From: Justin Stitt <justinstitt@google.com>
To: Mariia Nikitash <nikitash.mariiaw@gmail.com>
Cc: nicolas.dufresne@collabora.com, benjamin.gaignard@collabora.com, 
	p.zabel@pengutronix.de, mchehab@kernel.org, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-hardening@vger.kernel.org, kees@kernel.org, morbo@google.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_152729_311966_F10D3D83 
X-CRM114-Status: GOOD (  15.70  )
X-Spam-Score: -9.5 (---------)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-18.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi,

On Thu, Nov 05, 2026 at 12:45:18AM -0800, Mariia Nikitash wrote:
> In preparation for removing the deprecated strlcat() API[1], replace
> the strscpy() and strlcat() calls with seq_buf operations when
> constructing Hantro video device names.
> 
> This preserves the resulting strings, including truncation
> when the compatible string and suffix exceed the destination
> buffer's capacity.
> 
> Link: https://github.com/KSPP/linux/issues/370 [1]
> Signed-off-by: Mariia Nikitash <nikitash.mariiaw@gmail.com>
> ---
>  drivers/media/platform/verisilicon/hantro_drv.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
> index 26e5d5547466..2bfcd45cc55e 100644
> --- a/drivers/media/platform/verisilicon/hantro_drv.c
> +++ b/drivers/media/platform/verisilicon/hantro_drv.c
> @@ -17,6 +17,7 @@
>  #include <linux/platform_device.h>
>  #include <linux/pm.h>
>  #include <linux/pm_runtime.h>
> +#include <linux/seq_buf.h>
>  #include <linux/slab.h>
>  #include <linux/videodev2.h>
>  #include <linux/workqueue.h>
> @@ -883,6 +884,7 @@ static int hantro_add_func(struct hantro_dev *vpu, unsigned int funcid)
>  	const struct of_device_id *match;
>  	struct hantro_func *func;
>  	struct video_device *vfd;
> +	struct seq_buf s;
>  	int ret;
>  
>  	match = of_match_node(of_hantro_match, vpu->dev->of_node);
> @@ -902,9 +904,12 @@ static int hantro_add_func(struct hantro_dev *vpu, unsigned int funcid)
>  	vfd->vfl_dir = VFL_DIR_M2M;
>  	vfd->device_caps = V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_M2M_MPLANE;
>  	vfd->ioctl_ops = &hantro_ioctl_ops;
> -	strscpy(vfd->name, match->compatible, sizeof(vfd->name));
> -	strlcat(vfd->name, funcid == MEDIA_ENT_F_PROC_VIDEO_ENCODER ?
> -		"-enc" : "-dec", sizeof(vfd->name));
> +
> +	seq_buf_init(&s, vfd->name, sizeof(vfd->name));
> +	seq_buf_puts(&s, match->compatible);
> +	seq_buf_puts(&s, funcid == MEDIA_ENT_F_PROC_VIDEO_ENCODER ?
> +			"-enc" : "-dec");
> +	seq_buf_terminate(&s);
>  
>  	if (funcid == MEDIA_ENT_F_PROC_VIDEO_ENCODER) {
>  		vpu->encoder = func;
> -- 
> 2.43.0
> 

Reviewed-by: Justin Stitt <justinstitt@google.com>

Justin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
