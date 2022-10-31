Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D78A3C38A02
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Oct 2022 12:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Vv6PrRAN73pDvf2O6xScWmfzp5R4DN69FAvjZnXZsY=; b=Jfb18c/28XiVG4
	GPcjW1Ny11lgwfSBNpFU/D0BUtHM8cAJy+q3momA4uORjDRbljtqMWI7pgq3O04KU9KJSwHDfGBui
	0lczOuF6OxBgsmJlfEZyDheJyTFVd82mJjpJzTp6SgwenUvcE7/VYdFvnxOz3eLOTDWN1/yhjBm3g
	nvvdb0/shSpwAaatHY0gqCasMY49+u11c2VWD6FZDX3MHOtuphb9o1yNoXRENJ2M43bCZJZZAvR5U
	LIiilhEqO51IFzWIF+CSubQngk/8HJIt7UHO8HlLRMeTZ/fEPsAEbzPsiNYFvJ0qOG+QiNAyYso1y
	qTUMDTn3Hn4WE/NjIreg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opTTg-00BVv3-KT; Mon, 31 Oct 2022 12:01:16 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opTTa-00BVqp-PX
	for linux-rockchip@lists.infradead.org; Mon, 31 Oct 2022 12:01:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1667217669;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ypYZqoZTsptEoKYiFoPm/p19rfXtb3oU3pAWnCNe+WI=;
	b=Um0bWPtnyeOPJmdnNX9d8d26ToOOIhSUQLe012k+2M0S/ZChuLGgG1icugyzAYKZMHLDjG
	dA5kemPBDvJ0VfLNHGzo+pa7ypHsi7XRbqNXb4oFbxbnclWNPAKTd38H65qfH0Uo/KYzAm
	NC829L3Z2ZInnELIWfNybVTm4jInW+I=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-536-VkSvzgoSMmW2tikQb0eH7g-1; Mon, 31 Oct 2022 07:59:38 -0400
X-MC-Unique: VkSvzgoSMmW2tikQb0eH7g-1
Received: by mail-wr1-f71.google.com with SMTP id w23-20020adf8bd7000000b002358f733307so2984364wra.17
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Oct 2022 04:59:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ypYZqoZTsptEoKYiFoPm/p19rfXtb3oU3pAWnCNe+WI=;
        b=YcxTA/vFDNjWED1rvfsc7tS1mtY7u0nTHcsDXwBk5btpMof2Ou/59VHNQ9jEDpx2bX
         onwvYsZFCy9jpTM/6+NyhLyit/K/ewycuOZldpSQI7zBj37+X8cvWocrFCLHdRmsXmCr
         ucUSsvC/VRWAXcH2Rr9/qnSHY3dVDQ7eSrA0QHH2e7E1Wb1ls2R4GW5J1bn9JP+iOVvT
         iLc7uX5w05wAjq0yiv+dhosPU0FaLDKvOin+lFKFOUdAXztc/4TtCG3r54+xJhTKx+07
         l83g6Z0RBRNXzYFMrYE6gEGTZ+7lB5ugA2zR9d2ym3X8f8IkjuxUbO77QsYAuOSCPHQy
         xbLA==
X-Gm-Message-State: ACrzQf2/LULjvVpNvhOEjs3atsvJIfHdA7MINB3YpDgZO12cP4tEtYaJ
	e8OdRp/AHouIf3yWvwWQHBHOBfXNgs1IIi1pMf8lA44wnSTL/8PqrFRtVMR7iAIekJECwCfd/pP
	5l4I1NOdlF7jbDLUgnarXpypcJe0gBY8m
X-Received: by 2002:a05:600c:468e:b0:3c6:f510:735c with SMTP id p14-20020a05600c468e00b003c6f510735cmr7602950wmo.179.1667217577130;
        Mon, 31 Oct 2022 04:59:37 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM6EBETLSD4MBJxdnzTxR3FGu4hBbX2SQFUCrJloOPK1q2LF0w1HzUkYOXWVOI9w84+cugepvA==
X-Received: by 2002:a05:600c:468e:b0:3c6:f510:735c with SMTP id p14-20020a05600c468e00b003c6f510735cmr7602924wmo.179.1667217576945;
        Mon, 31 Oct 2022 04:59:36 -0700 (PDT)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id 123-20020a1c1981000000b003c6c182bef9sm7774720wmz.36.2022.10.31.04.59.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Oct 2022 04:59:36 -0700 (PDT)
Message-ID: <ae69e0c5-05ee-f0ef-a333-53bbaff5c3e8@redhat.com>
Date: Mon, 31 Oct 2022 12:59:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH v2 02/21] drm/mcde: Don't set struct drm_driver.lastclose
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
 <20221024111953.24307-3-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221024111953.24307-3-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_050110_922531_C0D276CB 
X-CRM114-Status: UNSURE (   8.22  )
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
> Don't set struct drm_driver.lastclose. It's used to restore the
> fbdev console. But as mcde uses generic fbdev emulation, the
> console is being restored by the DRM client helpers already. See
> the call to drm_client_dev_restore() in drm_lastclose().
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
