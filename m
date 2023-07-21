Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08900EB64DD
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jul 2023 15:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dpltzHrq5llEXthducktcKd+UBHMxeWqoSMxGwhVi2Q=; b=H3BRThRfck1dUg
	O4clEBoG6DjNBknvdbXQCQ3Nag/Nv+Wj1tYi49Ddf0NFt+wpk6/1x+6VgceheMg8SL+yrYvr4LTww
	tioAN4J0mX1enxwb+ALoH048A4IrBbqrIVWnzbHNi3pqn5mTJqauNiXJilFlZLVmw/RMzjIQ80mVD
	f/2P5+Qjj3HjSvSG+xXXU6I3i4EPQSPAL3qQHHcka5+0S+VEcrrt94tQu1H9zawY10XV/im4+PyIJ
	25Q4W/xdOyCbD7DoMZoE7Zd+0ptj+1jEm3KKJ6EWyMeOQhMKeow3msNK2wb6/7cSQ0U8IApPO8Dky
	k4elIBgTf2bF4Gi6803w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMrjB-00ENet-2t;
	Fri, 21 Jul 2023 15:07:33 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMrj9-00ENeN-2y
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Jul 2023 15:07:33 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1b8ad8383faso15123545ad.0
        for <linux-rockchip@lists.infradead.org>; Fri, 21 Jul 2023 08:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689952050; x=1690556850;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=U3ydrPiZouE89GGffikcepwvN6uL1WoSKBuPJRtgx+M=;
        b=G7MS5T5GSki2Fb3anydrMEWUshpROHu8KywfFHjGd9Cy6sQBaxpy+PuD/HiVBVsDay
         kuy4wrjDQv2+/l+lYgsW7dvzjicOjd+lWwDaXvqIc4cVGLlCIgiIrmSviVs6TGaTVq/a
         sCcFcFK997BXHU6WN7mn1r1janIIVn0kUTdplvI831mKp4k54iigMxxNXYgnlXIlXp4e
         sovjkEn9Vaf+WMJvILpmtOFmDfpkQIdchZXCGWbg2vXp9ZH7/q1Vdli1c/9P01dwXRED
         b9NCZmtRjkxHtNkyUdFpNtX4FKNlU24oxk+dw1zuX5O/kdb+F0eJobt1WFNjW8bF6VXs
         7rtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689952050; x=1690556850;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U3ydrPiZouE89GGffikcepwvN6uL1WoSKBuPJRtgx+M=;
        b=V96cvF9jeJ8yFOUfB1zLxQDUKLz04VBcblYsgSM8uScptkoaHPegcgRGb6FUf0L/ie
         GH1P8Q9neXP4b8Fs1uPJI6OmuKpTZRdkQdZgjjTVkmkKCQO/0jzJ5f7B+pFCGa5xsJzY
         0IV+nFwtlslmJKKxwWqJoL1xGZxOzb274+rzUoTA5m3bS58bV8MkrBgRQ4nnh1o5KGaJ
         OVKE7XZnX6OZLnmiqkQMaR1HVXkqPE3Mg2MFmo8HWF0aEyAaCR10dNbvMNLg5/pN6iwq
         k9UvlNjjsk/WQicROpKA1nZli0gTu3kdxmUgfy/BEsqbd7sftzWOI9nyA4Mvz3KTfiI2
         LGEg==
X-Gm-Message-State: ABy/qLZdiSVuSQKHFxBLlBKZX95wwHp7Ox3fGlJSyEMuBWG5MOZtzynp
	ufRsnKfR3+FTmxOO/RsrfIs=
X-Google-Smtp-Source: APBJJlHudh4wzA65C2mvfuLrWs5wS7f3QSeF22ZcYPqbCqnkpAg5l6/x7pjcNudcamopOCVeNZ8Ccg==
X-Received: by 2002:a17:902:d505:b0:1b6:76ee:190b with SMTP id b5-20020a170902d50500b001b676ee190bmr2409039plg.35.1689952050613;
        Fri, 21 Jul 2023 08:07:30 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id c1-20020a170903234100b001b03a1a3151sm3647497plh.70.2023.07.21.08.07.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Jul 2023 08:07:30 -0700 (PDT)
Message-ID: <c9614ffb-7840-6a84-883d-ed4371d75c11@roeck-us.net>
Date: Fri, 21 Jul 2023 08:07:28 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [RFC PATCH 2/2] regmap: Reject fast_io regmap configurations with
 RBTREE and MAPLE caches
Content-Language: en-US
To: Mark Brown <broonie@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>, Sascha Hauer <s.hauer@pengutronix.de>
References: <20230720032848.1306349-1-linux@roeck-us.net>
 <20230720032848.1306349-2-linux@roeck-us.net>
 <CGME20230721145342eucas1p12e658a54d36d985b2811e2c21f7810ee@eucas1p1.samsung.com>
 <c2bba4df-da1f-5666-89aa-28c6700575ca@samsung.com>
 <fe31bb86-40ec-4b77-9edd-eeaa61bb5e08@sirena.org.uk>
From: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <fe31bb86-40ec-4b77-9edd-eeaa61bb5e08@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230721_080731_984177_D2A68440 
X-CRM114-Status: GOOD (  13.14  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 7/21/23 08:03, Mark Brown wrote:
> On Fri, Jul 21, 2023 at 04:53:42PM +0200, Marek Szyprowski wrote:
> 
>> This patch, which landed in today's linux-next, breaks operation of the
>> RockChip's VOP2 DRM driver
>> (drivers/gpu/drm/rockchip/rockchip_drm_vop2.c). I'm not sure what is the
>> proper fix in this case. Should one change the cache type to REGCACHE_FLAT?
> 
> Actually Guenter and Dan have made the required updates to support this
> so the warning will be gone soon (hopefully Dan will send his patch
> properly shortly).

Do you plan to revert this patch ? If not regmap_init() would still fail
for the affected drivers, even after my and Dan's patches have been applied.

Thanks,
Guenter


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
