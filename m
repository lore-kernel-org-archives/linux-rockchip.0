Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E00BAC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Oct 2022 19:16:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6jtenagBmJTHEGhT57/bNR3gqcS35YMflaPeGgC8G1U=; b=TXTCsXoIx6apR7
	nGd9z3n2f5v9tz1xhzwggcpylEg1nTBTnCmq8eKo+MK/8CVXgHbcjQZHnvvCZgQDWsItqg74QeUCY
	FNyu0Asz20gm7lRCRc3DYt5iWyJ3MAPlJoPERtmMpQorwBjlbwBIrrnYlWWESJba3oE4DCgm/DCn0
	By6oUfV7mcZSUL2MFqSTJyAGHBO5JnLBDtI5PiXkuQjbBC3YCZa2FqawvMvQ8zihAtlczWgcOVkzU
	Wr1KCrHgdrRigVQw9/TPluSuuWAYq30le16h2M9gTNS12knkCkpZlBG52YKyH9gRNaTj3PH7OfA1u
	deGlI43rTohoS2KVz6Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okVb7-00ERcl-3S; Mon, 17 Oct 2022 19:16:25 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okVap-00ERR4-W7; Mon, 17 Oct 2022 19:16:09 +0000
Received: by mail-wm1-x32d.google.com with SMTP id l32so9312622wms.2;
        Mon, 17 Oct 2022 12:16:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rsSRW+G2rxl1qTZ7eXeAY8au2TKGPXJ9C9uJXfGontk=;
        b=f58qD0Y01+sBzs963EIbITJY88tl2KpclgURVg6w1N/urjJY33b/Oke7Rt+Zw9sZmZ
         1ePeHXmYHS5g/HvxDh3xrgvXl6ASCAkQClaYXnrH+zkpa5LpX7Uy0PEFKF6G9Hvh+bOR
         TmF2Ny01azJchxKXlbCMA30u89Bf0J4P8Oi6awyklYBgissIA3VueOwscksAl9Y6foEd
         M3HoYUt0tDLZ0GCkLB03yyHm8AHIRM4zoGTOF8GvaEMLgps2+xjGbm4ZpmZ5/pKnwCMN
         4bXZqCT5wJOZifO6OukbnvggvsSFpzwuS/eT7gYFGUBg1jFMrtULhPGlwIcN1nLVGDaA
         xSCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rsSRW+G2rxl1qTZ7eXeAY8au2TKGPXJ9C9uJXfGontk=;
        b=iZUa6NmZzDo7TciXPWN5gdQ2Ob5XJWo/Bkcu1CvlJcI8UgGd5CLgAfrgvNUd2iucF5
         ihHjnMv5eIx79gd8wC0xicVUmBrELomFNYEYjsG0xwTCJ0RxeuZnsesjPeLshoJZPsjM
         vIhF/WpfQk62sog5O6UlaTpB6mumCpkbYbKR+RJWMZEgiPooiHeqNkuBV2uIAA2quN8I
         Ggnjqww0jqV+bVl/43IReBN4MuvWDtE1wvQkXYob62ZSFYwLsGnoW5/g+H8bMlSCLLLP
         f2HetT0Fgj0Tn498S5IlOLAs3cxLQL7R6Rt8hOopYEtRZLib24ZiWauMQXaplQ6aFa+I
         uTrw==
X-Gm-Message-State: ACrzQf1g7g/HA6wa9Wk0WHeMFar4qY8m4VRUZ72/BCbx4wjx7V6+EWlh
	V0gX2XFQn+SC9sS7rwtVH9o=
X-Google-Smtp-Source: AMsMyM50ofQo1mrK+27tOaJQEscKROZJs4JZN2aX9HQe33XcbJRJyVdg/gk9ywf+TgT6EZs33L70bg==
X-Received: by 2002:a05:600c:490f:b0:3c6:2c21:97f6 with SMTP id f15-20020a05600c490f00b003c62c2197f6mr20028931wmp.177.1666034164909;
        Mon, 17 Oct 2022 12:16:04 -0700 (PDT)
Received: from [192.168.2.4] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id o36-20020a05600c512400b003c6edc05159sm9177519wms.1.2022.10.17.12.16.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Oct 2022 12:16:04 -0700 (PDT)
Message-ID: <8d884b80-ea5d-6c91-fef0-a093affb3247@gmail.com>
Date: Mon, 17 Oct 2022 21:16:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [BUG] [PATCH] drm/rockchip: use generic fbdev setup
Content-Language: en-US
To: John Keeping <john@metanate.com>, Thomas Zimmermann <tzimmermann@suse.de>
Cc: Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org,
 Sandy Huang <hjc@rock-chips.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20211029115014.264084-1-john@metanate.com>
 <d814394b-86c3-beb1-ddd4-04c65004f138@gmail.com> <Y00o3M7SKAB/w9sW@donbot>
 <2220890.jZfb76A358@phil> <c4bf7723-b3b8-0955-5ba3-e4d05bdc835a@gmail.com>
 <Y02mRUuecw2C1i+h@donbot>
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <Y02mRUuecw2C1i+h@donbot>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_121608_068606_8BED3A80 
X-CRM114-Status: GOOD (  21.90  )
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



On 10/17/22 21:00, John Keeping wrote:
> On Mon, Oct 17, 2022 at 08:30:23PM +0200, Johan Jonker wrote:
>>
>>
>> On 10/17/22 13:29, Heiko Stuebner wrote:
>>> Am Montag, 17. Oktober 2022, 12:05:16 CEST schrieb John Keeping:
>>>> Hi Johan,
>>>>
>>>> On Mon, Oct 17, 2022 at 10:11:32AM +0200, Johan Jonker wrote:
>>>>> Your patch contribution causes a kernel panic on MK808 with Rockchip rk3066a SoC.
>>>>> Would you like to contribute to fix this issue?
>>>>> The assumtion that drm_fbdev_generic_setup() does what rockchip_drm_fbdev_init did is not true!
>>>>> A revert makes it work again.
>>>>
>>
>>>> It looks like there are 3 different ways to end up with -ENOMEM here,
>>>> can you track down whether you're hitting one of the cases in
>>>> rockchip_gem_prime_vmap() or if it's the iosys_map_is_null case in
>>>> drm_gem_vmap()?
>>
>> It looks like it comes from rockchip_gem_prime_vmap() second return (2).
>>
>>
>> 	if (rk_obj->dma_attrs & DMA_ATTR_NO_KERNEL_MAPPING) {
>>
>> ////////////////
>>
>> 		printk("FBDEV rockchip_gem_prime_vmap 2");
>>
>> ////////////////
>> 		return -ENOMEM;
>> 	}
> 
> Ah-ha, Heiko was right that this is because the no-iommu path is broken
> as a result of switching to the generic fbdev code.
> 
> This patch should fix it, but I wonder if Thomas has any ideas about a
> better way to handle this since it feels a bit hacky to special-case the
> fb_helper inside the GEM code:

The penguin is back on screen. Thanks!

> 
> -- >8 --
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> index 614e97aaac80..da8a69953706 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> @@ -364,9 +364,12 @@ rockchip_gem_create_with_handle(struct drm_file *file_priv,
>  {
>  	struct rockchip_gem_object *rk_obj;
>  	struct drm_gem_object *obj;
> +	bool is_framebuffer;
>  	int ret;
>  
> -	rk_obj = rockchip_gem_create_object(drm, size, false);
> +	is_framebuffer = drm->fb_helper && file_priv == drm->fb_helper->client.file;
> +
> +	rk_obj = rockchip_gem_create_object(drm, size, is_framebuffer);
>  	if (IS_ERR(rk_obj))
>  		return ERR_CAST(rk_obj);
> -- 8< -- 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
