Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D799C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Apr 2022 17:01:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nsjyPQFTyq3oW7P7uzwXDgSzPX0279KSyEwrp3CrH6g=; b=jJHZatLTr2n0eB
	ksgteWAar3rnmiG6v8QWLtvchSSlU4c5tNPBX7FZaZqHRVmAt2yau85WHMDcikCYinMiIvx0BKil8
	a0CBg0GmJ+SW8QX0LEUMZk0dB7/goV6IUNlVR0UlscSoXLUMkYofJL9+mzKEDeUgpeinY52pqG4w2
	5E9GpSxi3hB674eMJgqU9g9OClAKTKgZC9zBE51xh3SV6t4A68LD3DSUocvWae0km07aBuEO7PW/j
	p+k1G7PqhWiZXNClM8nqd8yoFlRitWhI27DP9n+NDNzCLTydYFJquE1FXL34+VUwyXixSSKB6zgOa
	2mmNifM9UTzqQYnxLHeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndxPX-009p8A-KC; Mon, 11 Apr 2022 17:01:07 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndxPM-009p5e-MM; Mon, 11 Apr 2022 17:00:58 +0000
Received: by mail-ed1-x52b.google.com with SMTP id b24so19221879edu.10;
 Mon, 11 Apr 2022 10:00:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=xpy+Tnj7CSKL3X1uy9b/hDN/vNkE2wdoaTq7+ca8M10=;
 b=EUuImKaaNnPaaTkG6bKXr8HOXsakGzjtj6MwQzcNNnCginsQOkhcLw9musbZzPcwCe
 u/pmx4TtJXQiMiWhwLmH5iZdX/6DYIV6uC/0MNnhRCFMdbgb/lc/0w6ImKxbKK3tGSzd
 R/ZDMG3P7uYw8upLYen3/7m1Bfp4iNS02kMgCGC3iumIcsrqsvr9p2qKXzC575Tmsh2h
 lIWUGabTR//BgAc8VJhfGNOXEiMgWtvkbqepKY5ThE/EOCsLFXpUpjF/GEaCI/67XY75
 61TpHI9o3ut2YGuuQYIt8oIE/9FyeD7Og0PA+rzwmvGt2NAH3NnhVcET6AQyQm6TyxIS
 8wjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=xpy+Tnj7CSKL3X1uy9b/hDN/vNkE2wdoaTq7+ca8M10=;
 b=DlSYNrNiZnn5IY9MAz4S6OEBc4rUfiUHlqpbSsdauQr+VneA38O5HRongkhswxNLgT
 +rSxdokii6QGASzVs41Qwfk/nUyrgJcnekJoXZpS3EpdO8KZy8u7KIe9BJM5S8tFKlQR
 Ky6khwuDXqbn/WVl6ec5Cp6lrQMrJac8biMlA+i7f368NuS2/82Qm+w9Mfcmcw2ZlDq3
 V/+sIQy8SxF3tsEqrip4N6sWX7f9cuROdNu1E/tq/UGfTIdEyYAyK1xhnM9sCsbR8X9J
 FPXX5MVTgX5DyvQtm6b+g2YQl9I2bOOeK+/qAA7EpRcvKWIwy+cdM4zG5yPB5NQr1wae
 4frA==
X-Gm-Message-State: AOAM530nIc1Yhd7AbArqe7dO6O/Rn3H9LsRi7n8fMu6io219ir9N5S7G
 lPqEa33m9fM6GtiUUi1GxA==
X-Google-Smtp-Source: ABdhPJyZWh5pBitjWq97qA691BTkI6+vlnwnK/ZRRj/OfjGkLZqOhhIF8UGk3ef12YyoZgHpQrbEiQ==
X-Received: by 2002:aa7:d682:0:b0:419:3b78:e489 with SMTP id
 d2-20020aa7d682000000b004193b78e489mr34615358edr.372.1649696453246; 
 Mon, 11 Apr 2022 10:00:53 -0700 (PDT)
Received: from ?IPV6:2001:16b8:e9a0:2b00:12ab:3410:473c:e8ef?
 ([2001:16b8:e9a0:2b00:12ab:3410:473c:e8ef])
 by smtp.gmail.com with ESMTPSA id
 f13-20020a50bf0d000000b0041cdd9c9147sm10371016edk.40.2022.04.11.10.00.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 11 Apr 2022 10:00:52 -0700 (PDT)
Message-ID: <2b0f0eba-87fe-e2c4-d951-2b090b827ca6@gmail.com>
Date: Mon, 11 Apr 2022 19:00:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v10 12/24] drm/rockchip: dw_hdmi: drop mode_valid hook
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>
References: <20220408112238.1274817-1-s.hauer@pengutronix.de>
 <20220408112238.1274817-13-s.hauer@pengutronix.de>
 <8fac5d72-c635-521c-e7d1-a3980a4ed719@gmail.com>
 <20220411075357.GQ4012@pengutronix.de>
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <20220411075357.GQ4012@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220411_100056_784931_CFBE7482 
X-CRM114-Status: GOOD (  22.86  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am 11.04.22 um 09:53 schrieb Sascha Hauer:
> On Sun, Apr 10, 2022 at 01:31:23PM +0200, Alex Bee wrote:
>> Am 08.04.22 um 13:22 schrieb Sascha Hauer:
>>> The driver checks if the pixel clock of the given mode matches an entry
>>> in the mpll config table. The frequencies in the mpll table are meant as
>>> a frequency range up to which the entry works, not as a frequency that
>>> must match the pixel clock. The downstream Kernel also does not have
>>> this check, so drop it to allow for more display resolutions.
>>>
>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>> ---
>>>
>> You're correct: That frequency is meant to be greater or equal. But I'm
>> not sure if it makes sense to completely drop it - what happens for
>> clocks rates > 600 MHz which might be supported by later generation
>> sinks (HDMI 2.1 or later)?
>> As these are not supported by the IPs/PHYs currently supported by that
>> driver a reason a simple
>>
>>         int i;
>>
>>
>>
>>         for (i = 0; mpll_cfg[i].mpixelclock != (~0UL); i++) {
>>
>> -               if (pclk == mpll_cfg[i].mpixelclock) {
>>
>> +               if (pclk >= mpll_cfg[i].mpixelclock) {
> 
> Should be <=

Sure, sorry 'bout that.
> 
> No other user currently in the tree has this check.
I dont't think that's true - it might not be checked against mpll table,
but max pixelclocks are checked in meson_encoder_hdmi_mode_valid for
amlogic, in sun8i_dw_hdmi_mode_valid_a83t and
sun8i_dw_hdmi_mode_valid_h6 for allwinner and rcar_hdmi_mode_valid for
rcar platform. There is no other point in rockchip dw-hdmi platform
driver where this is currently checked.

> hdmi_phy_configure_dwc_hdmi_3d_tx() has this:
> 
>> 	/* PLL/MPLL Cfg - always match on final entry */
>> 	for (; mpll_config->mpixelclock != ~0UL; mpll_config++)
>> 		if (mpixelclock <= mpll_config->mpixelclock)
>> 			break;
>>
>> 	for (; curr_ctrl->mpixelclock != ~0UL; curr_ctrl++)
>> 		if (mpixelclock <= curr_ctrl->mpixelclock)
>> 			break;
>>
>> 	for (; phy_config->mpixelclock != ~0UL; phy_config++)
>> 		if (mpixelclock <= phy_config->mpixelclock)
>> 			break;
>>
>> 	if (mpll_config->mpixelclock == ~0UL ||
>> 	    curr_ctrl->mpixelclock == ~0UL ||
>> 	    phy_config->mpixelclock == ~0UL)
>> 		return -EINVAL;
> 
> This means we already have this check and others already in the generic
> part of the dw-hdmi driver. Should we maybe do the above in
> dw_hdmi_bridge_mode_valid() instead of doing it in the users?
I guess that's not possible, due to the different kind of phys which are
used for dw-hdmi. The checks you are refering to, are only done for dw
hdmi tx phys, but not for "vendor phys" (like for RK3328 and RK3228, for
example) - those have have own drivers which are handled only in dw-hdmi
platform driver.
Therefore this check should remain here for Rockchip also.

Regards,
Alex
> 
> Sascha
> 
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
