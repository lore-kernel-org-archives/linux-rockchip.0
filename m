Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64D24C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 22:15:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KdMhTiIlkd/p9aiCqCl1PFo3TmZqNU81gTTcm4hKZRI=; b=bsaOcaFEH5bOKg
	F2/AYDBQ6OPzCXoZ8TPGJonK+0i93b0vZDEBxsoXyPG5R904wxWZh3H4m3vys2d2QmvWJD6veRyu4
	UEqwm85hPJG55UF6mOeBqEz6Jv8GIPEQDOb+X/8zQLiqJPRudfwNeUu1OHz9FLz6QqjqRHpQAAYjH
	RoxUDcHDRH1/ryGFPPF0nrOyOGkUCqnOfM3WE3vRG/GDuHOOSoAxGJtJaBX2ITx+k4LAfAgAZMBQ2
	S2Zx+sSUPbwzVHCaDUbEHV+42GUeFwXb2U87+R4q5acRj6Xmn1GGYl0CUEGz+6R4Qoz/w/h74ha1J
	aI+tVbWLTmQ38cpFJ1NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nelGM-002p8z-HD; Wed, 13 Apr 2022 22:14:58 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nelGA-002p51-HN; Wed, 13 Apr 2022 22:14:47 +0000
Received: by mail-pg1-x52b.google.com with SMTP id k29so3025594pgm.12;
 Wed, 13 Apr 2022 15:14:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=U9y1xoKzi02K/KnzJqfCTRkpP8q7PpqYFALghM4TId8=;
 b=WHgwByVV1RUv7aJq7PxxHS5+DaJFT9PzTJaJhniYsvxQqLFqcPp2hDVz999kDd7vu3
 CjVbSt81zORisRmsW9gXahpb3c3ziXg9hHo663C43uN4/rPCbumAQke/1mm8xCNlo8lu
 3DvNKjJ2G0LK8A9qFz56QGlz47thjGOTnwsl+pbxODQNglbfXk+Y7oHy6b7/G819w1Dv
 wEIY0hgHpj2qc9LpHZANSjabckL/kEeU0IBgg09/UT1Er/307UGc8NliyD6VsBmYQB6S
 G8c2apc5K7csOHOcvKXSnjbmGRC2niOz20Kbq3ku/q1BudhYFOOmEzfCpOPFpI1aN7XX
 8/Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=U9y1xoKzi02K/KnzJqfCTRkpP8q7PpqYFALghM4TId8=;
 b=OlvV0wP2s9Cajl3DKMBNqCBTEgXkRPYeG2zYio+CSneXVt/X0DifLLMIbHfUJcemzt
 gQct/dqNy8920x6tuU6D5u4OpP/49Ud+Oq10E5kJz9cZ5gfPjS0/4VzEY0HTPyFvhyEJ
 PALGiAvzJKkTkWbWbh3W725iLQpfJl5276uLPUr5pjAJIzD+tiYJ6+fti6cmDfQsX/8E
 42ULO4H97rR23RuLLg7Ww9fu1/7W8o24ZZ96GBXqB5PMNR7lst2xMDp/on6onxBBH0lB
 L/OforPdylHxfPip/dC3tFJ30UlY0u3/3r1qCk0FADTSC1j97RkRNSoKCL/q0EZPpnzM
 9m/Q==
X-Gm-Message-State: AOAM533ml/S4jhQhccK3NmaNgzar91Ggs+u9P/MGaZ00YKc2bWBMFmO8
 pyW+6zhJXFWRKb2lrZCIIuuZPxfhvQI=
X-Google-Smtp-Source: ABdhPJyY1TsLoUDvb6KhWIvp7Qylv1Fv5V+fCqMHoC51LSRiMTMZvWW9nXh99rAA0KINjL5zhr4QqQ==
X-Received: by 2002:a05:6a00:248e:b0:506:1dce:fcba with SMTP id
 c14-20020a056a00248e00b005061dcefcbamr910301pfv.21.1649888084545; 
 Wed, 13 Apr 2022 15:14:44 -0700 (PDT)
Received: from [172.30.1.44] ([14.32.163.5]) by smtp.gmail.com with ESMTPSA id
 q5-20020a17090a68c500b001cb651fffdbsm4086194pjj.8.2022.04.13.15.14.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 Apr 2022 15:14:44 -0700 (PDT)
Message-ID: <8824147c-5512-a7a5-9e89-60b510111500@gmail.com>
Date: Thu, 14 Apr 2022 07:14:40 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [RFC PATCH 2/2] PM / devfreq: rk3399_dmc: Block PMU during
 transitions
Content-Language: en-US
To: Brian Norris <briannorris@chromium.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>,
 linux-pm@vger.kernel.org, Doug Anderson <dianders@chromium.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20220406014842.2771799-1-briannorris@chromium.org>
 <20220405184816.RFC.2.I2d73b403944f0b8b5871a77585b73f31ccc62999@changeid>
From: Chanwoo Choi <cwchoi00@gmail.com>
In-Reply-To: <20220405184816.RFC.2.I2d73b403944f0b8b5871a77585b73f31ccc62999@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_151446_644409_3B01D588 
X-CRM114-Status: GOOD (  21.00  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi Brian,

On 22. 4. 6. 10:48, Brian Norris wrote:
> See the previous patch ("soc: rockchip: power-domain: Manage resource
> conflicts with firmware") for a thorough explanation of the conflicts.
> While ARM Trusted Firmware may be modifying memory controller and
> power-domain states, we need to block the kernel's power-domain driver.
> 
> If the power-domain driver is disabled, there is no resource conflict
> and this becomes a no-op.
> 
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
> 
>   drivers/devfreq/rk3399_dmc.c | 13 +++++++++++++
>   1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/devfreq/rk3399_dmc.c b/drivers/devfreq/rk3399_dmc.c
> index e494d1497d60..daff40702615 100644
> --- a/drivers/devfreq/rk3399_dmc.c
> +++ b/drivers/devfreq/rk3399_dmc.c
> @@ -21,6 +21,7 @@
>   #include <linux/rwsem.h>
>   #include <linux/suspend.h>
>   
> +#include <soc/rockchip/pm_domains.h>
>   #include <soc/rockchip/rk3399_grf.h>
>   #include <soc/rockchip/rockchip_sip.h>
>   
> @@ -93,6 +94,16 @@ static int rk3399_dmcfreq_target(struct device *dev, unsigned long *freq,
>   
>   	mutex_lock(&dmcfreq->lock);
>   
> +	/*
> +	 * Ensure power-domain transitions don't interfere with ARM Trusted
> +	 * Firmware power-domain idling.
> +	 */
> +	err = rockchip_pmu_block();
> +	if (err) {
> +		dev_err(dev, "Failed to block PMU: %d\n", err);
> +		goto out_unlock;
> +	}
> +
>   	/*
>   	 * Some idle parameters may be based on the DDR controller clock, which
>   	 * is half of the DDR frequency.
> @@ -198,6 +209,8 @@ static int rk3399_dmcfreq_target(struct device *dev, unsigned long *freq,
>   	dmcfreq->volt = target_volt;
>   
>   out:
> +	rockchip_pmu_unblock();
> +out_unlock:
>   	mutex_unlock(&dmcfreq->lock);
>   	return err;
>   }

Acked-by: Chanwoo Choi <cw00.choi@samsung.com>

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
