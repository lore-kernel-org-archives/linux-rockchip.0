Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 837F8C61D99
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 15:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rEA3bFilpbK6BDGpr86Sx2LBGs7sQLfb0K7n040F8EY=; b=chcMWjRDPl+nWF
	qsEpttOaBXdDL/7yP3YfyMKYpuWbWIw6uNVC4BPbfSR3zTHnHG7Xk09t69pESqV4xT92TeVuV1guU
	UWK8O4Z7n27NnfH58nzBVa+NI2mZl/9NWlLcS9SNlIvEZTWzVkNk8wQPuPtxViXDBUfXlzXjpxaBE
	qlnsqz+3MeOGA3ceN2ngziZ1RfyzrM7j2zTJP3vqFp7rLUM3P0wR3t8ZRPRxktugPl2mb+NJGXNbO
	59CzGol5NIw0QAVf33bq1Ij6i47YtmpBfV+skTOpeUnS3pXHDpS/ZBNOk74JfJeCAaeweQ9Skzt5g
	scnmPaXo4zTJaMunqV7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5otu-002D1u-0i;
	Wed, 22 Nov 2023 15:12:26 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5ots-002D0y-0g;
	Wed, 22 Nov 2023 15:12:25 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-a02d91ab199so228822366b.0;
        Wed, 22 Nov 2023 07:12:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700665940; x=1701270740; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JQfIch1n/oRDhqVwiC5BqHYmxmK2tX6xAmCbIID5gio=;
        b=bP7okgCTAam38l/gbW8c6rxVkjqUYpH4lajv4EZBgPXcTzSQFBAiSwml9v4MvImSP7
         aoY0jzg9RISqAYr6f2bY/YvfDU07KEKsreniBTBzTJLlThDDHd3cuXZ+2hutwUj0MeZy
         LCdab+Yt3H5HLeV+dxu63hWjzj1ImzWeNe9YIgcHPdbQ0vWOWGriY8m9a5pphr9vblmf
         HWysfnovoLbqjNc7XiEmU+mDOttO7Yp45LXfrdFnkgAfTksep5YDpHh244WgRAL4LYis
         Pbfm3mhwe/o/AKA+yD0fS2ZHKxdtEHp0KVfLMKjJvpayZyBV0sJYRKfyosmQBg05lAdg
         nTtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700665940; x=1701270740;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JQfIch1n/oRDhqVwiC5BqHYmxmK2tX6xAmCbIID5gio=;
        b=AFjoc3eD/96vqviTIBRH3HPj0+8GvNZOxP5vWNEIKl1ttXhDRP+duK6nMTWB5/nWde
         aYEDSA3cg1KRr8zX2EBbaqSKF+CILPgQb8BPwA4dKZxtiBi79gPfBY2nLJjo9WNTBbtv
         Lmb3EX3/oE3KgY/z/YtrBru9QF5R4ghQS+58BC2I0UI+/g9yQJXj1vw5qQnXsBtnCoVX
         22JnNr1YjDp3sMp2fR8p7SG9Qj2296QlGzEI6Zq70moCiWiCm3xFebvb13I/UOV45v+o
         DCMpmYFU2+gAmjNn8rE6Ma/Y2P2Ilowuhgx58ov6xdhlKosDTLzTwEg4YgI7SSqcsXqA
         tmrg==
X-Gm-Message-State: AOJu0YxC6KAgBDB2AZDzqNfIRMDjfKmYQhT7r88leuZ502lLwllJU/oq
	KAlZF4NZYi1EXnYbnMQhQ4E=
X-Google-Smtp-Source: AGHT+IHiLgBVKOXhv7+TxBpeKUaX4wKMK5XDupDn+7Jg4ZH8f40KnSZtsabsjI+c1Zsx7zphFi/2RA==
X-Received: by 2002:a17:906:10d:b0:a04:837e:a955 with SMTP id 13-20020a170906010d00b00a04837ea955mr1124649eje.32.1700665939918;
        Wed, 22 Nov 2023 07:12:19 -0800 (PST)
Received: from tom-HP-ZBook-Fury-15-G7-Mobile-Workstation (net-2-39-142-131.cust.vodafonedsl.it. [2.39.142.131])
        by smtp.gmail.com with ESMTPSA id i18-20020a17090671d200b009fc3845adc1sm4816513ejk.154.2023.11.22.07.12.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 07:12:19 -0800 (PST)
Date: Wed, 22 Nov 2023 16:12:17 +0100
From: Tommaso Merciai <tomm.merciai@gmail.com>
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jacob Chen <jacob2.chen@rock-chips.com>,
	Yichong Zhong <zyc@rock-chips.com>,
	Shunqian Zheng <zhengsq@rock-chips.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Kieran Bingham <kieran.bingham@ideasonboard.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Eddie Cai <eddie.cai.linux@gmail.com>,
	Allon Huang <allon.huang@rock-chips.com>,
	Jeffy Chen <jeffy.chen@rock-chips.com>, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] media: rkisp1: Fix media device memory leak
Message-ID: <ZV4aUfNGS/C/8cAM@tom-HP-ZBook-Fury-15-G7-Mobile-Workstation>
References: <20231122-rkisp-fixes-v1-0-1958af371e39@ideasonboard.com>
 <20231122-rkisp-fixes-v1-1-1958af371e39@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231122-rkisp-fixes-v1-1-1958af371e39@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_071224_266272_1F7D9428 
X-CRM114-Status: GOOD (  16.12  )
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

Hi Tomi,

On Wed, Nov 22, 2023 at 04:42:22PM +0200, Tomi Valkeinen wrote:
> Add missing calls to media_device_cleanup() to fix memory leak.
> 
> Fixes: d65dd85281fb ("media: staging: rkisp1: add Rockchip ISP1 base driver")
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index c41abd2833f1..e10cc2881757 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -617,6 +617,7 @@ static int rkisp1_probe(struct platform_device *pdev)
>  	media_device_unregister(&rkisp1->media_dev);
>  err_unreg_v4l2_dev:
>  	v4l2_device_unregister(&rkisp1->v4l2_dev);
> +	media_device_cleanup(&rkisp1->media_dev);
>  err_pm_runtime_disable:
>  	pm_runtime_disable(&pdev->dev);
>  	return ret;
> @@ -637,6 +638,8 @@ static void rkisp1_remove(struct platform_device *pdev)
>  	media_device_unregister(&rkisp1->media_dev);
>  	v4l2_device_unregister(&rkisp1->v4l2_dev);
>  
> +	media_device_cleanup(&rkisp1->media_dev);
> +
>  	pm_runtime_disable(&pdev->dev);
>  }

Looks good to me.
Reviewed-by: Tommaso Merciai <tomm.merciai@gmail.com>

Thanks & Regards,
Tommaso

>  
> 
> -- 
> 2.34.1
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
