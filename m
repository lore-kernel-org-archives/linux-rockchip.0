Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B210C38A02
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Oct 2022 12:08:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=obiW6R5Os7pA9zoKE//Ho6us2egTFiIvQstHakxHHAI=; b=Cyawj+8o4ceMVl
	9qdFOG7frk4niHYWI6+xnWvVEzM5e89JPSaAjUch53fd1jAMBNbQDW3gKn4IkQZ7rF0Vw+wAMACuq
	q2wnq5XvETKAXwHcDiUubkdhLBXWHxgW3A/hOsqTwaldvQd55mAGQ9/qWfDt4m2X37riIi0V+wneD
	q+Dbcvdb4eMk1aP3wRDUbryIZsV3Lz/YX+7Ik9enMq5t1dMgRUWXP1sYM2dxav0J6ahqBxCoxhhaW
	+f78S0AsxTMNcve0WPS4usXSWi+NGfkJKtBqLcbOvYbabPTc3VNWvCifftorQUudQzX7+91hUq689
	es88ZoIJhr5Vqea44OiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opTas-00BXVX-AP; Mon, 31 Oct 2022 12:08:42 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opTaZ-00BXNR-Am
	for linux-rockchip@lists.infradead.org; Mon, 31 Oct 2022 12:08:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1667218102;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UzviKTRQBMSKwIl6kvNWZgMaFQwic4ec30sKv7m652k=;
	b=hTpZZxWmVNbgOUumUIGOnoXK6tML7MS1sKAKBMeqQeQUE7N5xybvsJ2RSKXZzsLUpjBio7
	+bmRcOjz0kwATlP6Hxgd4TSp9YQ1MhM2rRoBxhfzSoHbfeNbHy59j2iLuMmaQtOuHQZ1lp
	AMTyNaBuxjVpApoGKFXvFr/ZsmcgTJ4=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-445-Z-Lbt5yeNwOjPBEJia6VhQ-1; Mon, 31 Oct 2022 08:08:20 -0400
X-MC-Unique: Z-Lbt5yeNwOjPBEJia6VhQ-1
Received: by mail-wm1-f70.google.com with SMTP id s7-20020a1cf207000000b003cf56bad2e2so2174641wmc.9
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Oct 2022 05:08:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UzviKTRQBMSKwIl6kvNWZgMaFQwic4ec30sKv7m652k=;
        b=FxIamGgSZET7qUfSQ76cvflritK6Ptfr5yc1Bk3fHgQnPGK9PtgcqHvo2MBA/CYoBz
         t1RzxT8LX4/lr8lgc7OGBFU27ASCu+1FvvduaP6qo0fPX5ZEgwAGcBw/z+NCEucDTvNg
         XwdnFdF1HCKUv3S4BShFTtk3XyzEgg9n2oAsJaam7kBHxERg8E0hh4Ib4rQXh7vIZuBD
         rGyeXtrwl6+zSYeoEmemtQm34WF6MK/eXif/zmI1kMBW8DciRrzJ8tgFDvijDFlVocPe
         kKDO2fEiZiREaVNue2E/Q+D9Ye3eplMIBDyQHH2aezkp2nhUOAoZvLgQEW28ZYilTSJp
         PaBQ==
X-Gm-Message-State: ACrzQf01pRKLFQUyV7MHhaaDzK087PD5LZrgCVkEVUjHwV78TGuV2h5y
	IeW1zWySQ3bV3kxK2+pJmUKnWhRxJfifT82gj123BrXR/1P/mmDF0ulnpxa7G8pNJU/Y7hdV9IC
	1WQgDi5gkwRTA94CzO30Hn4JCpI52BDnU
X-Received: by 2002:a05:6000:15cd:b0:236:9701:7939 with SMTP id y13-20020a05600015cd00b0023697017939mr7691185wry.248.1667218098866;
        Mon, 31 Oct 2022 05:08:18 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM6Xfc/ao13H30KX93ABjLq4iUJ6oQF+1EOXF8gvz+3LvWSBMjjIijdjEWsEsBBK0GpYNHL8UA==
X-Received: by 2002:a05:6000:15cd:b0:236:9701:7939 with SMTP id y13-20020a05600015cd00b0023697017939mr7691171wry.248.1667218098682;
        Mon, 31 Oct 2022 05:08:18 -0700 (PDT)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id bn26-20020a056000061a00b0022cd0c8c696sm6948033wrb.103.2022.10.31.05.08.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Oct 2022 05:08:18 -0700 (PDT)
Message-ID: <fd53a4f9-34a8-f5f3-1b1f-baf4a456bcc9@redhat.com>
Date: Mon, 31 Oct 2022 13:08:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH v2 04/21] drm/amdgpu: Don't set struct
 drm_driver.output_poll_changed
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, sam@ravnborg.org, mripard@kernel.org,
 maarten.lankhorst@linux.intel.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 etnaviv@lists.freedesktop.org, linux-samsung-soc@vger.kernel.org,
 linux-hyperv@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-mips@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, nouveau@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org,
 spice-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-sunxi@lists.linux.dev,
 linux-tegra@vger.kernel.org, xen-devel@lists.xenproject.org
References: <20221024111953.24307-1-tzimmermann@suse.de>
 <20221024111953.24307-5-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221024111953.24307-5-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_050823_457512_557A8C14 
X-CRM114-Status: GOOD (  10.56  )
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

On 10/24/22 13:19, Thomas Zimmermann wrote:
> Don't set struct drm_driver.output_poll_changed. It's used to restore
> the fbdev console. But as amdgpu uses generic fbdev emulation, the
> console is being restored by the DRM client helpers already. See the
> functions drm_kms_helper_hotplug_event() and
> drm_kms_helper_connector_hotplug_event() in drm_probe_helper.c.
> 
> v2:
> 	* fix commit description (Christian)
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

Do you think that the fbdev helpers kernel doc has to be updated to mention
that drm_fb_helper_lastclose() and drm_fb_helper_output_poll_changed() are
not needed when generic fbdev emulation is used? Because by reading that is
not clear that's the case:

https://elixir.bootlin.com/linux/latest/source/drivers/gpu/drm/drm_fb_helper.c#L86

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
