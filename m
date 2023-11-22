Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68D93C61D97
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 15:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nXsiRMIyjVqEuaJjiB5rJxapMduTKpXdg6eVAWdNwI4=; b=N8neegqdZNFR9d
	qFyiH5A2G6ESzrlwj4n9bNws+LEOa7kkdTVjirwsDsZyOapNttFpP8UjlHsR6pV/oABe1lZ+gmhuN
	JRQIJEK8sXyb8gQixfXZUO/6dFS+4cjcEWvuzTahXnpXrka9S1rTXo7urdxuAdVvQxtr/7YMPz/RP
	aLP/zUfTU7mIYkEf4JtlNnjs3cxoX1FGQvGvckfZKl3gn+yWMGdVd5sOup3+bc6gdtqRvjWVEQtkh
	VsYFfQZPdr2TPaSiX/Ewu+XiOPdquZF0BgdzrJYXt1ze8Un9ASojLY8EPiu4Z9XSpCU1iyNek/kSJ
	ZBBc5B0//JKSSdmwMIaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5ox2-002Ddq-1B;
	Wed, 22 Nov 2023 15:15:40 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5owz-002Dae-0n;
	Wed, 22 Nov 2023 15:15:39 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-544455a4b56so9522956a12.1;
        Wed, 22 Nov 2023 07:15:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700666124; x=1701270924; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SyHVCCe1TwoPClBnsSLHf4EvNUXQ/W3rjCvpOp2oD5E=;
        b=EkzQMQ/wuHTWV2u6JK7m2kc9lWUIw0gXSdgnEsFW968WwDagWZ/Lee1huY5WFUXXZe
         KGMP8Z+5gOhrLp9bE+GQc38k+oa5Mgcc+NrskzXhzRaw0Rn1LWhTwHtQKqoDqxcGT7q6
         xhuBmeEq6KQ9vWN8MnKhP7AqxOSiGplEAIf5cSTdVMAGkJd6+jsybvj3tE4WobwYIjXE
         O/cG/D1+k0QjWlIXZt0cINyWxIhl/W9K8y9XRtYtymnH6H1C8l1KiKV6cFs8XvGsFf7r
         e8jwevJGxDlo5QezGNlyXP4Ov4EOgign5uZwzvmlzE9WDVBmEJOKeOzRzHhvRlw8KDKC
         FLMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700666124; x=1701270924;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SyHVCCe1TwoPClBnsSLHf4EvNUXQ/W3rjCvpOp2oD5E=;
        b=BGPmVHXdCrAHmYdIaFnV8oh3qOwi5GUMo4rMV5YGSsb2UCr7KXYOU+9jin/UeeXNbP
         CzP24Z45i2sEPG0qeGyzVozVEvnr56syYGm+aFP6LVEHIl6mRlKKRm5gSGoScCC8N3Sd
         5l/tGyBtU+I5i3aSjniCO/s9Sq0AnXy01f1AwepynhEdF5wsEu33VPts8cywkeY6gP8y
         nyHtJv2I7e55zV77yWvNwEPi5vLgcJ4a6nFlIoFGVPIWcq22g3Sny0NhTTV2kIIgY0Jy
         k7MLvrmfF8oqNRVC1r0CqbXK7bYgjrq6YcfoxyWg6kh+MH6TGIzvnxm3XHy1WFDV/BsM
         EOPg==
X-Gm-Message-State: AOJu0YxpxIsiSFhSzGcOxe7GLdxeumU/nZ8bI/gR2ghxp+54HsFUOuvt
	pnUmIl2+EQ/Wo8r2nc/xlZI=
X-Google-Smtp-Source: AGHT+IHrw/Tts09VHKQ1692wNMYNCsWYYSRyyPml9Dx39zEbtepEmn480zIyu1XaqdkFM2CIrp5zqg==
X-Received: by 2002:a05:6402:100e:b0:54a:97c4:b03c with SMTP id c14-20020a056402100e00b0054a97c4b03cmr83170edu.2.1700666124240;
        Wed, 22 Nov 2023 07:15:24 -0800 (PST)
Received: from tom-HP-ZBook-Fury-15-G7-Mobile-Workstation (net-2-39-142-131.cust.vodafonedsl.it. [2.39.142.131])
        by smtp.gmail.com with ESMTPSA id r5-20020a056402018500b0053dec545c8fsm6191706edv.3.2023.11.22.07.15.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 07:15:23 -0800 (PST)
Date: Wed, 22 Nov 2023 16:15:21 +0100
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
Subject: Re: [PATCH 2/2] media: rkisp1: Fix memory leaks in
 rkisp1_isp_unregister()
Message-ID: <ZV4bCdo6vUvaeUE4@tom-HP-ZBook-Fury-15-G7-Mobile-Workstation>
References: <20231122-rkisp-fixes-v1-0-1958af371e39@ideasonboard.com>
 <20231122-rkisp-fixes-v1-2-1958af371e39@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231122-rkisp-fixes-v1-2-1958af371e39@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_071537_281781_7B553A15 
X-CRM114-Status: GOOD (  14.68  )
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

On Wed, Nov 22, 2023 at 04:42:23PM +0200, Tomi Valkeinen wrote:
> Add missing call to v4l2_subdev_cleanup() to fix memory leak.
> 
> Fixes: 2cce0a369dbd ("media: rkisp1: isp: Use V4L2 subdev active state")
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> index 88ca8b2283b7..45d1ab96fc6e 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> @@ -933,6 +933,7 @@ void rkisp1_isp_unregister(struct rkisp1_device *rkisp1)
>  		return;
>  
>  	v4l2_device_unregister_subdev(&isp->sd);
> +	v4l2_subdev_cleanup(&isp->sd);
>  	media_entity_cleanup(&isp->sd.entity);
>  }
>  
> 
> -- 
> 2.34.1
> 
> 

Reviewed-by: Tommaso Merciai <tomm.merciai@gmail.com>

Thanks & Regards,
Tommaso

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
