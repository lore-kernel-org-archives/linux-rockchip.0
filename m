Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE652CDB46E
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Oct 2023 12:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hSJ5Zsr470+iZ/hKyP+c2DXC2Qm61njNvUE+AQWyNTg=; b=mkIw6UwUyV8wpC
	0ToBJg6X16h8RXg+PxJKgRzvu28gBcGVwaS84Clos2KnLsdRYM+eTpqHknL1E+vbu/aKkIHvxBsFE
	diuvf/miCugxgHCy3axwXtcb3eX9qGYTPGgiAVH1jCmgScD+qkm0VY0tU6EnDauiUc4f0SExOzgEM
	Ag/yYexD3Cw+el9+q4AO4ZXvlWgJJ36xvqVdfin912h/sbIki4Qok15Ns9hTwWTc5vad3TcrCiHHQ
	uINMylA1GODsEIooW8iyNQbYfqq+kSZvRNaKYQmHcN3ItqDFiYhV37qZYbIHDQkTHa2fcLBKGgh6g
	DiAnj5iOOu4d9c9ntilQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qquWQ-000vzn-1Y;
	Thu, 12 Oct 2023 12:10:34 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qquWN-000vyE-0l
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Oct 2023 12:10:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1697112630;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=e0nmqy59jy/rGMIg2W3+5Ft0g6PXLLlnoefzeVrsrTs=;
	b=beqyh4PLRp+lJVqofVBXI1Je8U6uSBGc0ce9wpi5WLnhOIApog1Xr1Q6et9RzG80zZ+xaN
	GMR1+ZB4BU9M6gtYjy+/F3pWaSOMIkO0qIWN19hxvq/P9UyH5OtAMgE97tud0A+F7mKJdC
	kv2diO6cBxLxo3tytlmoJiAtPkXktlA=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-27-oGP4ru2XOmqxjKosicdYGw-1; Thu, 12 Oct 2023 08:10:27 -0400
X-MC-Unique: oGP4ru2XOmqxjKosicdYGw-1
Received: by mail-ej1-f70.google.com with SMTP id a640c23a62f3a-9a5d86705e4so68685066b.1
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Oct 2023 05:10:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697112626; x=1697717426;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=e0nmqy59jy/rGMIg2W3+5Ft0g6PXLLlnoefzeVrsrTs=;
        b=UY5gWr0TCFuzollHOdhthnqrgJRgEtlRnuJrJAUpPIdxr5yerPKw/ll/do551dG/Px
         4ZkY+9hKunQQ3QgR9nok+zETdJVxDUoFpwu28Si3hC5Me/Vn32Qq/+mLISB1TpYcG673
         xm7Pd+bQZmFH1dGz3SrvyTZfUwUoUig0saHaStSan7rT77t9LQ3h6oDVUqrUc1hMZ8mX
         2DNz0IqzesAABxsxWAO5gx2ISPjUQPJ1M8jvJWfQiZYX5pK/F6NHZ4DcEODhGnRptkSp
         u3hllAdc9TlcZMmCCYuhMmw6zVp6u053HhKo+1mMq4rVhvclabwTEY0KfHq7hEj2pPIf
         h33g==
X-Gm-Message-State: AOJu0YxXFX0EIjfjXoryB4/HcxWVzdGAWWXwXUh46GRLA2wLknRN0u57
	KVLLhWp/wSEbo3yVLnBnhg02HvvtS0ePaCz1zILbOe9bGIm6bByN6vvrfR92NY58sESI7tCQHIs
	bRcEh5duVlLcYbLgwiiB22IgVz0z97hbO
X-Received: by 2002:a17:906:cc13:b0:9b6:50d3:2a75 with SMTP id ml19-20020a170906cc1300b009b650d32a75mr19703349ejb.48.1697112625894;
        Thu, 12 Oct 2023 05:10:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEjvJVtD0uQR8XMo2cR7XmHJlpYVc+HmbN4viv4pGPb6gmHPLLfBWOiJNvTCRNd4xhqfQomHg==
X-Received: by 2002:a17:906:cc13:b0:9b6:50d3:2a75 with SMTP id ml19-20020a170906cc1300b009b650d32a75mr19703329ejb.48.1697112625566;
        Thu, 12 Oct 2023 05:10:25 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec? (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl. [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
        by smtp.gmail.com with ESMTPSA id x26-20020a170906711a00b0099329b3ab67sm11000199ejj.71.2023.10.12.05.10.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Oct 2023 05:10:25 -0700 (PDT)
Message-ID: <c9e693a2-845f-9ef1-e3cb-724cece84756@redhat.com>
Date: Thu, 12 Oct 2023 14:10:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v11 17/56] media: atomisp: Stop direct calls to queue
 num_buffers field
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com,
 Sakari Ailus <sakari.ailus@linux.intel.com>
References: <20231012114642.19040-1-benjamin.gaignard@collabora.com>
 <20231012114642.19040-18-benjamin.gaignard@collabora.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20231012114642.19040-18-benjamin.gaignard@collabora.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231012_051031_339896_6D148EA5 
X-CRM114-Status: GOOD (  14.43  )
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

Hi,

On 10/12/23 13:46, Benjamin Gaignard wrote:
> Use vb2_get_num_buffers() to avoid using queue num_buffers field directly.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> CC: Hans de Goede <hdegoede@redhat.com>
> CC: Sakari Ailus <sakari.ailus@linux.intel.com>

Thanks, patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans




> ---
>  drivers/staging/media/atomisp/pci/atomisp_ioctl.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
> index a8a964b2f1a8..09c0091b920f 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
> @@ -1028,7 +1028,7 @@ static int atomisp_qbuf_wrapper(struct file *file, void *fh, struct v4l2_buffer
>  	struct atomisp_device *isp = video_get_drvdata(vdev);
>  	struct atomisp_video_pipe *pipe = atomisp_to_video_pipe(vdev);
>  
> -	if (buf->index >= vdev->queue->num_buffers)
> +	if (buf->index >= vb2_get_num_buffers(vdev->queue))
>  		return -EINVAL;
>  
>  	if (buf->reserved2 & ATOMISP_BUFFER_HAS_PER_FRAME_SETTING) {


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
