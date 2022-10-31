Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E604FA3740
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Oct 2022 12:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xt9oAMp/xoapZ16RBgTg7vFAFApnoF9H8LPwLZkUGJc=; b=uB+AS3krxbAbEE
	LrqcKXLIKEr/QMIeB/ulE/3WS3t7C1cr/L8rqo2k1yD1bsvHxjP9hMHyCFk/LQbdtoJcbrxc27gp+
	R/IVxUFQGKIsJHrtKYuPDR4rYhLEV6LWZJ8XwaAq1/MLroGFp8Bi/jtu/1ocm/LGiU5f3C8v7N8iD
	kOT0+SeX93m1gY+8fU7G6M5MDou+c0AmwSzpU42quEPdLeymz9SeoG7l0r047R1PX1Z1h7G+OO2Fw
	0Z+AfLkmKGHUxaVRple8QEPb3iKtZEwfBT1jnoxUPXClXeVJrP4i1yUSPYeQWeXaY8hbOCSwg8cLO
	jdSuwr6hU5P0i+VE5M9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opTku-00BaoO-Iv; Mon, 31 Oct 2022 12:19:04 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opTkc-00Bah5-SP
	for linux-rockchip@lists.infradead.org; Mon, 31 Oct 2022 12:18:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1667218726;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Y9o0NAEqIzltln/rJd0nXK88QZ5o4OnoHZo920P8Bvg=;
	b=Yq2vh5BPAFYXNqTmz45TO27gOGaEcKKgJ74J2P9uFbq1II6y6U3bF40ps2tONPhT0DZf/I
	RF7/5zp+GKvMpKk3D2IsUcBkI4g8j5sOLxHbx0adGnOOxtABBMolAreUnovH59S+8xcSb+
	LOJjnMj8GgK7Xopo8ZsJFx/qs9eO+aA=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-404-R-Fl27AXO22Ypv2sRmZePQ-1; Mon, 31 Oct 2022 08:18:44 -0400
X-MC-Unique: R-Fl27AXO22Ypv2sRmZePQ-1
Received: by mail-wm1-f69.google.com with SMTP id v191-20020a1cacc8000000b003bdf7b78dccso5234190wme.3
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Oct 2022 05:18:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y9o0NAEqIzltln/rJd0nXK88QZ5o4OnoHZo920P8Bvg=;
        b=Rz8rcBFuVH4jhPLm9A/CE+O7h1lY46rLWdy644HLrxi57hgk5rwl619HEKICOKaP3v
         nrsS6oi0vhN8tH/CmfchrM/PIMaWTR/DjajHuFdx83cVc1zOGQbe5cwQiqxEZfe4kxtw
         imqI4h6pUdy/owo9TwYZ4ZHyarBCmeUESsY7KZoLpvlm6V4Ez/i5k6cJ0uKVqFOqesK/
         +BvQOd5ajWBiU5G1GOi+Qp1qDppSGozpPP0jEn9x5uT6bUl2lEHcV43rS84z+o6dsYVo
         3gWTeEEW7GjSXdV8vVA3gBBlrDLs74q3wX+YvQL1ANYRGBgES1//lam2hbjcWZ1/tT1a
         QZWA==
X-Gm-Message-State: ACrzQf2lrmouyGBj0TdUmbB3gHW3O57vaeoLsHYvLkGDIarM/+yE83nC
	wlBu2hET8NdVFwKiV19TPhoArf717B+LQMfbT2+2nGBVAwb1+59FlDIMon4Vpz21TyYydrQrnes
	GmbVts23Zdz9iS/xAF4028EJYx90R0BjB
X-Received: by 2002:a05:600c:1913:b0:3c7:32c8:20f1 with SMTP id j19-20020a05600c191300b003c732c820f1mr18174579wmq.81.1667218723538;
        Mon, 31 Oct 2022 05:18:43 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM7l/GcAhTFdfukiyp7nV9yfjX7i/zfBGid5JfBMyP3xXFRWK8fegD9382/Cb8rQ8SeG7Fkrtw==
X-Received: by 2002:a05:600c:1913:b0:3c7:32c8:20f1 with SMTP id j19-20020a05600c191300b003c732c820f1mr18174541wmq.81.1667218723353;
        Mon, 31 Oct 2022 05:18:43 -0700 (PDT)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id l7-20020a05600c1d0700b003b505d26776sm1928473wms.5.2022.10.31.05.18.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Oct 2022 05:18:42 -0700 (PDT)
Message-ID: <05a2ad4a-b053-ba98-2547-520ab51d3e77@redhat.com>
Date: Mon, 31 Oct 2022 13:18:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH v2 07/21] drm/logicvc: Don't set struct
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
 <20221024111953.24307-8-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221024111953.24307-8-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_051847_069681_B34F0946 
X-CRM114-Status: UNSURE (   8.65  )
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

On 10/24/22 13:19, Thomas Zimmermann wrote:
> Don't set struct drm_driver.output_poll_changed. It's used to restore
> the fbdev console. But as logicvc uses generic fbdev emulation, the
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

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
