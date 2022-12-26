Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD125C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Dec 2022 21:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g6UrIO5+CgqWaKkcOEQjEEnYJa97+MMCXERN/Osz/1w=; b=0ybxHTAKXLh+l3
	y+D3sWdC9mXESJqrb5F5Z8kPmAo50PvR9UPCiaDisQtEYWPdg1rVkzavD9V7LdHKoybYCqhXeiOtP
	6Behm747ainIAoSNN0o3i7XJsetYz+ZWRYlFUYejKpMMmy3qwfOTwbjdyewB+DsQVFrRdqmZizKl1
	b7JMnz3/+Z8K/FbczyKRGP3IRYL1wgd6gKzD7d3WSRXMVNyPgDV1P+kGATYgb/rOlJKusdB9KfRrI
	2DhouvF3IhCw5EkZt6ej40U2WE6MxymZVd1f7OWhY22Y28jizDd08Nk0+v5tk2dRLaj364b81X2k2
	XGCjy8y/AV2Ov2QgdfsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9uwm-007Sj9-Fe; Mon, 26 Dec 2022 21:23:48 +0000
Received: from mail-ot1-x329.google.com ([2607:f8b0:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9uwZ-007Saq-0a
	for linux-rockchip@lists.infradead.org; Mon, 26 Dec 2022 21:23:37 +0000
Received: by mail-ot1-x329.google.com with SMTP id i26-20020a9d68da000000b00672301a1664so7212240oto.6
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Dec 2022 13:23:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ti7gNQ0joFnwn5bt+CZWp7BNKSVRmg7a1dGHdw6oaqs=;
        b=XDH+5MEhPGVK+G1gjrU3HfJlvPyPXfqKA0a+oHe7iTOj0gUkquyND3Nuzcr66GNuXO
         5UnafZCtNImxHYFkWOMTwZSIc7CqYYU6SiWbdRO+3RYJNsDVHythZEjw0qXb/keSDSZ7
         HXc4J/2CKk880AfOeR6/zBEJpzBkMycp0lUTFF5hXeEcn/Ov270wsz+hWxxaSI8e2djA
         dP3QubNT6wimBYw/jmd+yAYepYwPpPXExIzXCU3vFHXUdLIdekSsy2d1Kx2loS0P3YzW
         WsvSBR2dQNfcLHybU7/Li33f8+0S7jHTWvNbi7nyqKUw5kQYN4IFIu9Grs/fcjXWY9yL
         mt3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ti7gNQ0joFnwn5bt+CZWp7BNKSVRmg7a1dGHdw6oaqs=;
        b=xmNTaNLlA5UKkstI875nWRroaAJfF50gaRTfblK91F6NOcFwgfdMJWf6Vs3u/V2R4b
         o29BwCkEcgfd757I1OCUO44SZIvhaFSU1AUnZg4QhOFw15DL3Q+Qs3+3AtOJReExDSb/
         zKtu/DtxOTVY/LLbs+nRMccSVsyzMsF11e23gqCuLNE9/neUzUh/4M9lMy4X0YFO9mPX
         UjGgS4IdzxThTSAxt5d4NzbUj3p+lzUVS57DHguJY5O3ELMlMfdqBcFpD89GT1KTmscm
         VJWUhHM2K8eEKaguepj0TYbrPD+DdBO3OPm/3N/jJ8fLYTpOsRZhhZOQ7b/NDbKobZ8R
         Wq2g==
X-Gm-Message-State: AFqh2krlJliI/xyhwjmgTrJ9J+teWdNhKHp5dFsavOWYa+GqYUZjDvC2
	XLawuP5e5l05xc15kRfWalI18g==
X-Google-Smtp-Source: AMrXdXuyzktmR/DGOD8+kKKwQCQ9dUZSvkxUANpa6OnHhmmbynG6F1V4UFEfKk7iMSO8Sbvw4b6Lyw==
X-Received: by 2002:a9d:7cca:0:b0:677:3d79:e60a with SMTP id r10-20020a9d7cca000000b006773d79e60amr9133706otn.31.1672089813146;
        Mon, 26 Dec 2022 13:23:33 -0800 (PST)
Received: from eze-laptop ([190.11.62.130])
        by smtp.gmail.com with ESMTPSA id r24-20020a056830135800b006731ecc5bedsm5808337otq.14.2022.12.26.13.23.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Dec 2022 13:23:32 -0800 (PST)
Date: Mon, 26 Dec 2022 18:23:26 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] media: hantro: Use core-generated bus_info value
Message-ID: <Y6oQzl3UPO73LhCX@eze-laptop>
References: <20221226052606.144109-1-wenst@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221226052606.144109-1-wenst@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221226_132335_670055_751104FF 
X-CRM114-Status: GOOD (  20.70  )
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

On Mon, Dec 26, 2022 at 01:26:06PM +0800, Chen-Yu Tsai wrote:
> The Hantro driver uses a hardcoded value for the bus_info field in the
> media device and |struct v4l2_capability|. This worked well when there
> was just one device. However with the iMX.8 series we are now seeing
> two Hantro blocks on the same chip. The static bus_info is no longer
> sufficient for differentiating devices.
> 
> Since commit f2d8b6917f3b ("media: v4l: ioctl: Set bus_info in
> v4l_querycap()"), the V4L2 core provides a default value for the
> bus_info field for platform and PCI devices. This value will match
> the default value for media devices added by commit cef699749f37
> ("media: mc: Set bus_info in media_device_init()"). These defaults
> are stable and device-specific.
> 
> Drop the static bus_info values from the hantro driver and use the
> defaults.
> 
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>

Makes sense.

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Thanks!


> ---
> Changes since v1:
> - Dropped unrelated Makefile change
> 
>  drivers/media/platform/verisilicon/hantro_drv.c  | 2 --
>  drivers/media/platform/verisilicon/hantro_v4l2.c | 2 --
>  2 files changed, 4 deletions(-)
> 
> diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
> index 8cb4a68c9119..b0aeedae7b65 100644
> --- a/drivers/media/platform/verisilicon/hantro_drv.c
> +++ b/drivers/media/platform/verisilicon/hantro_drv.c
> @@ -1050,8 +1050,6 @@ static int hantro_probe(struct platform_device *pdev)
>  
>  	vpu->mdev.dev = vpu->dev;
>  	strscpy(vpu->mdev.model, DRIVER_NAME, sizeof(vpu->mdev.model));
> -	strscpy(vpu->mdev.bus_info, "platform: " DRIVER_NAME,
> -		sizeof(vpu->mdev.bus_info));
>  	media_device_init(&vpu->mdev);
>  	vpu->mdev.ops = &hantro_m2m_media_ops;
>  	vpu->v4l2_dev.mdev = &vpu->mdev;
> diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
> index 2c7a805289e7..c1a116031013 100644
> --- a/drivers/media/platform/verisilicon/hantro_v4l2.c
> +++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
> @@ -142,8 +142,6 @@ static int vidioc_querycap(struct file *file, void *priv,
>  
>  	strscpy(cap->driver, vpu->dev->driver->name, sizeof(cap->driver));
>  	strscpy(cap->card, vdev->name, sizeof(cap->card));
> -	snprintf(cap->bus_info, sizeof(cap->bus_info), "platform: %s",
> -		 vpu->dev->driver->name);
>  	return 0;
>  }
>  
> -- 
> 2.39.0.314.g84b9a713c41-goog
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
