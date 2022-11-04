Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60B88C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Nov 2022 10:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dIzsHk1XN3OYU6/iXeExGfuo9cLSGLl5QFCRh8i+/bM=; b=RTOxyJbUaWA7FJ
	AFju12+8Q+GL9Wk9sYRjdRugLbcrUyVCfUU8PQ39lzyKiOU5PkgOb900n7vgvjS0/p/KNmlxZUucq
	cjy8Er2F4WOX8kQIKWE65qb5X6i4Z1ZJRl5qvsh38JHFIUTbMknoObuIVoV0FlEJ5otkIX9dpbIvr
	9YROfx0Ic0sUZ5U/fwXamuPv6ObGCkvJyu8WpO0gvSCYS/bFTpynpGEhhumEHBGXRd9dM79qSFySt
	AAOKhH7GEHZHip5bCRASbsnCnrQoDSi2/PbPTfeWBVB69dWCerF6LrI/OeBQmAblA0ItsLnCyirDy
	5JCDvKmMZpW3721f+1QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqu5l-003ECZ-5w; Fri, 04 Nov 2022 10:38:29 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqu5W-003E4g-IT
	for linux-rockchip@lists.infradead.org; Fri, 04 Nov 2022 10:38:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1667558293;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=M88yz4GfmbUNq4mWECugnsnJkV6z34uCwDqL3DFZ74U=;
	b=NSadry/5Xnc4ign0y3gVVb2HTrv/F/FD9j/CiHVuysim8WdGnCVFTxFC0Bkw1ns66oSUj7
	08sWJWTaOupAbFycxQlJc243ZWqRbEwDmeVqNo9OfWQfhk1ZoMGeQOUc+YdBrdx1lToLO9
	gld/0xqzrqjagqe/BADmAjYB0EHRGa0=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-315-SW0-nb8COZOMbcRLED6K1Q-1; Fri, 04 Nov 2022 06:38:10 -0400
X-MC-Unique: SW0-nb8COZOMbcRLED6K1Q-1
Received: by mail-wr1-f70.google.com with SMTP id h26-20020adfaa9a000000b002364ad63bbcso1099618wrc.10
        for <linux-rockchip@lists.infradead.org>; Fri, 04 Nov 2022 03:38:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M88yz4GfmbUNq4mWECugnsnJkV6z34uCwDqL3DFZ74U=;
        b=gMn7i5FZ9sBIlOAAWZzDKQTjyWXCHjS1f8m9UDBykSXY6HtY2Ewg8gHylwmR6fW/gV
         4nG2Jq0pWk3Xgd3Rx2sO4ULSp9qLLmZlTgWCumh5WPuEJtLuDFX5xGixrdZ91SwNQ3Y/
         yKMJqh9EgjRP2PX3RuDiYsdxgHsOs1WiiPcQ0SPZVwIMAZmIyCkjxuyrG4RWEIYP/ZDQ
         tP+q7ZvNogNHqYPoAKvj3N8OsEvJcdz4melvi499IwephDGddvJ7dMr49KCdlzSHeDLB
         ajT4yKYXFpX7Zx9j5Q7GF8V1bCDS2UG8TjedV2cJDQVkqxO7wzN+SB9nfgW1K8zR95dK
         ME2Q==
X-Gm-Message-State: ACrzQf1MtfMLoTuZfy18hivbKwm7jmGLNfiIljjHubNkv7VV2MnW0zDh
	YbICXV7Nv6OKrtI/tjBoXc+zmaC60b/hNo3CYECvMsXA3Ue5KBcbQ4ZLizA+yKM/2bKYtuVxLGX
	MZEUq4tYkSbyGCh/x60teQpcjgT08sqKQ
X-Received: by 2002:adf:bc51:0:b0:236:8fa1:47ea with SMTP id a17-20020adfbc51000000b002368fa147eamr218073wrh.77.1667558289570;
        Fri, 04 Nov 2022 03:38:09 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM6s9MOXnwXonR8VOapq6d4n3ZU7IGA+EIjACuJbvHHOLIXD7EQUkeJV/V+5P7qnQBQKVLAVkQ==
X-Received: by 2002:adf:bc51:0:b0:236:8fa1:47ea with SMTP id a17-20020adfbc51000000b002368fa147eamr218064wrh.77.1667558289372;
        Fri, 04 Nov 2022 03:38:09 -0700 (PDT)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id k4-20020a05600c1c8400b003b4cba4ef71sm2534442wms.41.2022.11.04.03.38.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Nov 2022 03:38:09 -0700 (PDT)
Message-ID: <1f5e6de4-3fe2-7933-f8c0-5f13564595cc@redhat.com>
Date: Fri, 4 Nov 2022 11:38:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH v3 23/23] drm/fb-helper: Clarify use of last_close and
 output_poll_changed
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, sam@ravnborg.org, mripard@kernel.org,
 maarten.lankhorst@linux.intel.com
Cc: linux-aspeed@lists.ozlabs.org, nouveau@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-samsung-soc@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 xen-devel@lists.xenproject.org, linux-sunxi@lists.linux.dev,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 etnaviv@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 spice-devel@lists.freedesktop.org, linux-tegra@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-mips@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 freedreno@lists.freedesktop.org
References: <20221103151446.2638-1-tzimmermann@suse.de>
 <20221103151446.2638-24-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221103151446.2638-24-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_033814_719643_80791C1B 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
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

On 11/3/22 16:14, Thomas Zimmermann wrote:
> Clarify documentation in the use of struct drm_driver.last_close and
> struct drm_mode_config_funcs.output_poll_changed. Those callbacks should
> not be said for fbdev implementations on top of struct drm_client_funcs.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
