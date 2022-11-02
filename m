Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC969C43217
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Nov 2022 09:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zxn6ZQ24ZnE489VwjSUeJ5tZ0a4Dr6jTDfrsKOEPrnU=; b=lwQBlR4kjIC++X
	j9mtyJsY5ojBhGYxnNXRRLqnrHzdESau5ChothIHamZ7ovLvgo7FThL9KkMYFk9a19H8AzjnftUS2
	fb1ha5oyVOA7U6wBjp2ogEC/OGDse/62bHazgubgJ4YUkxoMt750gkI27MY3bOibrwHnr3udG0uTT
	3Sh1pe9YlBJA2i1St0Xy2kF8t+cE+5bkfS7KU8c9oeKT1HFQbilwBpDGaRk2wJLsTEUdyCLbQulKu
	jaF13ar2iVhNtMfgLgZX8FF2KnBfy23RC2mK4E48MjxPY9Hgp6+m0M0tOcY+hdTHlDo1FXai+lw3j
	X8Jl/pLAhKakL7a6Bhcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqAEV-00AKFU-09; Wed, 02 Nov 2022 09:40:27 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqAEO-00AKB8-ON
	for linux-rockchip@lists.infradead.org; Wed, 02 Nov 2022 09:40:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1667382019;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BsLrquRWckXT1s1aby8jZXWvTG60TzDOu2w8x1+2PdY=;
	b=eEAnBVkZJbwzOPCO+Ba00Yn0YLXfCYE/kW0GIiTKFGtZptXm2xdCv81hCkTt6G0W0+ckN1
	J3PQXDl4JZhhShU3rM6gg6Y9waiTMUIagw1GBGYxxmc2wXNu80JqKkN2IjYPSz5ToaFAtc
	JLhaW78yBy/xS+nq1+oPvVRgjM4PvtA=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-313-F_BzDVPXNjezFL-zbU2dug-1; Wed, 02 Nov 2022 05:40:18 -0400
X-MC-Unique: F_BzDVPXNjezFL-zbU2dug-1
Received: by mail-wm1-f69.google.com with SMTP id i128-20020a1c3b86000000b003cf4ff1b917so7734838wma.2
        for <linux-rockchip@lists.infradead.org>; Wed, 02 Nov 2022 02:40:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BsLrquRWckXT1s1aby8jZXWvTG60TzDOu2w8x1+2PdY=;
        b=Hc6JlzvVxLdv3J1hPFFlwCLfttcVT/fTPzx51ZQH2/NcnVpeewfiwrmMlkbHHAvMxz
         9EosCsaLdE5oOOou5SQ2EyLAdT93OZwC70Lr4j5k5SxMSxJygSqxN7WRNxds8HcXafSR
         I9kxOM3RQJ284HNGSaImFqHq9IWZeT2EJpIF2Pryc2/IQ2CdY12nJR9s+g/0oz+7tAig
         DC8OjrM5DzTY1Hq4WUkz+DlhnJ8Zk5yuFfQK33aZe4RmNCvMRAPqZ/R7C0ojmx5M84qp
         +l9tVZY1FlHIvalRRZTIWy2fjYc+423yJ9IGiw4Hho0V2wdPi5uHiKsSN03tZo2pUZ+C
         ZOfQ==
X-Gm-Message-State: ACrzQf0yazUUKReYmeP2e0Rz2pt5VSwxnoqXuILdNYGapSglVSUB2iaV
	nf9eoIy4SypMESg7Po/wMe2MEsprCkEhr5SPI0k8nybAzFD9Rm7njnZ0rSzEeYaMn6/Fyef+C03
	G59jtUmcehaysKcYIGPRMRwu/mgH1j5uh
X-Received: by 2002:adf:ba8f:0:b0:22c:def3:1179 with SMTP id p15-20020adfba8f000000b0022cdef31179mr14547812wrg.571.1667382017691;
        Wed, 02 Nov 2022 02:40:17 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM5M29YlmTkXAEgNYduNYpaEq18eaSYaR/je5Gn7y2xNrovwH6Pttvb6rYpMLmmOPDm/qr+vag==
X-Received: by 2002:adf:ba8f:0:b0:22c:def3:1179 with SMTP id p15-20020adfba8f000000b0022cdef31179mr14547781wrg.571.1667382017447;
        Wed, 02 Nov 2022 02:40:17 -0700 (PDT)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id j20-20020a05600c191400b003b47e8a5d22sm1924445wmq.23.2022.11.02.02.40.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Nov 2022 02:40:16 -0700 (PDT)
Message-ID: <7ac0da2c-0a43-4c02-4199-f48a50347171@redhat.com>
Date: Wed, 2 Nov 2022 10:40:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH v2 19/21] drm/fb-helper: Always initialize generic fbdev
 emulation
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
 <20221024111953.24307-20-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221024111953.24307-20-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_024020_892471_963855F6 
X-CRM114-Status: UNSURE (   9.69  )
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
> Initialize the generic fbdev emulation even if it has been disabled
> on the kernel command line. The hotplug and mode initialization will
> fail accordingly.
> 
> The kernel parameter can still be changed at runtime and the emulation
> will initialize after hotplugging the connector.
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
