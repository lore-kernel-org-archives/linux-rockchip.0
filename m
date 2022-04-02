Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E476C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 11:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RvVf7mjgMflGlBrmtOrLTxZlOalRKHjREqKbCL3NFtE=; b=3+7HX2DRzUyb1p
	wKYe/N0f5lBjyXzyJ3LJmGE78YLuZWY3FFXjpyKPFXoOvWpMZj7pNWPO5qNM2bVk5dijscoZhgAls
	EVe+UPHcNy9idYB+KAFDIATuCLvWYCh53jNnq0NwcLFe1IirP2gO31LXuOHT8qLBfAUnxqJTpFs3Q
	IKGFRqaaXYGpHuml3GpLLVnD362Jn9Dio+hMeNQJt+Fs4md4sY6aJb6RIRXi42kq5Ah6xok0U5G/t
	nVvV0A6t0k8eq31IYQOIpndDBd2y/5sF0Rtj5Fpyw+vU1Ja3Bym3G9Fowp5hO++iFgucbxF6Sre5r
	7DcaKWWuMb3VkmLtWrOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nac2k-008cQK-HC; Sat, 02 Apr 2022 11:35:46 +0000
Received: from mail-oi1-x22b.google.com ([2607:f8b0:4864:20::22b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nac2i-008cO6-8u
 for linux-rockchip@lists.infradead.org; Sat, 02 Apr 2022 11:35:45 +0000
Received: by mail-oi1-x22b.google.com with SMTP id t21so5272230oie.11
 for <linux-rockchip@lists.infradead.org>; Sat, 02 Apr 2022 04:35:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=tVmxAeV6jn1gWoncdeIJ5il6g0CdD+Hlq/EJxdUklqE=;
 b=LX19uD64aLiDbq3sb546SA4HLqf42Hkj/oUycVdKLmFoJECd+hM13ExfTEaEPnp2PL
 2KZsm7KZk4HZb4V+xwi5sbfA3JGGZAX/D+5SNk5btOtJHf6uT2RR2ULjb9KlhkpTm7F1
 XmYasU+20jlkyQ0EDlHndJu7lWkehb+9JOLlXJR+9yBBR/4B/DXXKmS+W3m9YHlsMfu8
 HgFtjrjGD7qNUTQvhYOFhghbbKH1dmjzRDvPikJLUswtPre+XZwrflCzE+GrbkHD0fQQ
 7uG76GGsFNZqmVKV/uVkn7FJqv/mI5i/aCUVRxso0YK5hffxgs/0UvtsF7kncaawG2GU
 INQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=tVmxAeV6jn1gWoncdeIJ5il6g0CdD+Hlq/EJxdUklqE=;
 b=akRgRzLn66rg3EWKzQ5wRGTxd2ufFQ2Dw2wf8zNZ7GVBohwjss4TsOXR8DyDidYdBi
 4k53PeUws/Sj2QjeZv7FErfPqVbnwWP3f/fp4VLdomBJ2Zk8ElELsxm/xzo5c+G6VCJh
 k3qeJCPZUZX9dWNZ0PVj7Xc8CYfK9LH8JsX78PO/5UkMRJZdbVuDOa8i9U+cuRTMX2t9
 lq+JG0eOPhteesDrYvfSkFB77Y6cTbZ7IfEf9r4zRZsK/r1JHmuoU9B//5aN8twvQc0y
 2a73BYV1C6V5bHDDe4zrl0mJ2m7GgehHrqWHRWvGC+ORU6KM0I9pD89P8gbp//XzgpOv
 +K4Q==
X-Gm-Message-State: AOAM533uN6W8gD7BIMoaP2Ah6M+ti7m6YYz8TKOe26cwoFIiS2w/EYVb
 o95+HtnSPXyO44IQZqw10ZcZoWNo3RiVKA==
X-Google-Smtp-Source: ABdhPJwxMUnytlHFsdF6Bum7FoSq6ZYIQ0IJaVahiou9heXHf6ka4kyt7XPFCWoOXG6HgpUNyhO1og==
X-Received: by 2002:a05:6808:120e:b0:2f8:6db8:afa0 with SMTP id
 a14-20020a056808120e00b002f86db8afa0mr6338394oil.283.1648899339624; 
 Sat, 02 Apr 2022 04:35:39 -0700 (PDT)
Received: from eze-laptop ([2803:9800:98c2:8470:9f4:8e2a:88e5:ec01])
 by smtp.gmail.com with ESMTPSA id
 b188-20020aca34c5000000b002da579c994dsm1998072oia.31.2022.04.02.04.35.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Apr 2022 04:35:39 -0700 (PDT)
Date: Sat, 2 Apr 2022 08:35:33 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@collabora.com,
 Sebastian Fricke <sebastian.fricke@collabora.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 17/23] media: rkvdec: Enable capture buffer holding
 for H264
Message-ID: <Ykg1BfGyI7ummQL8@eze-laptop>
References: <20220331193726.289559-1-nicolas.dufresne@collabora.com>
 <20220331193726.289559-18-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220331193726.289559-18-nicolas.dufresne@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_043544_336904_4A893289 
X-CRM114-Status: GOOD (  19.66  )
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

On Thu, Mar 31, 2022 at 03:37:19PM -0400, Nicolas Dufresne wrote:
> In order to support interlaced video decoding, the driver must
> allow holding the capture buffer so that the second field can
> be decoded into it.
> 
> Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> Reviewed-by: Sebastian Fricke <sebastian.fricke@collabora.com>

IMO, this patch (and the similar one for Hantro) should come
after interlaced support is added.

Thanks,
Ezequiel

> ---
>  drivers/staging/media/rkvdec/rkvdec.c | 4 ++++
>  drivers/staging/media/rkvdec/rkvdec.h | 1 +
>  2 files changed, 5 insertions(+)
> 
> diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
> index 1b805710e195..b6376eaa92d7 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.c
> +++ b/drivers/staging/media/rkvdec/rkvdec.c
> @@ -148,6 +148,7 @@ static const struct rkvdec_coded_fmt_desc rkvdec_coded_fmts[] = {
>  		.ops = &rkvdec_h264_fmt_ops,
>  		.num_decoded_fmts = ARRAY_SIZE(rkvdec_h264_vp9_decoded_fmts),
>  		.decoded_fmts = rkvdec_h264_vp9_decoded_fmts,
> +		.subsystem_flags = VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF,
>  	},
>  	{
>  		.fourcc = V4L2_PIX_FMT_VP9_FRAME,
> @@ -404,6 +405,9 @@ static int rkvdec_s_output_fmt(struct file *file, void *priv,
>  	cap_fmt->fmt.pix_mp.ycbcr_enc = f->fmt.pix_mp.ycbcr_enc;
>  	cap_fmt->fmt.pix_mp.quantization = f->fmt.pix_mp.quantization;
>  
> +	/* Enable format specific queue features */
> +	vq->subsystem_flags |= desc->subsystem_flags;
> +
>  	return 0;
>  }
>  
> diff --git a/drivers/staging/media/rkvdec/rkvdec.h b/drivers/staging/media/rkvdec/rkvdec.h
> index 2f4ea1786b93..e37f1a015fa0 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.h
> +++ b/drivers/staging/media/rkvdec/rkvdec.h
> @@ -81,6 +81,7 @@ struct rkvdec_coded_fmt_desc {
>  	const struct rkvdec_coded_fmt_ops *ops;
>  	unsigned int num_decoded_fmts;
>  	const u32 *decoded_fmts;
> +	u32 subsystem_flags;
>  };
>  
>  struct rkvdec_dev {
> -- 
> 2.34.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
