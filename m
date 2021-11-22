Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36452C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Nov 2021 17:47:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UXsAHI5wR0GZ9wCllMOC6e6BiUzYjy5LudCev3VLHug=; b=eVWPAx3rewig4t7KTiMuab1lUV
	9yhEEREGuJTL+KEUryywW9NYK0MrflvUz08l0uy6Vd6o1DSF+w0bB0Iv+/BcRpnHyhsPV/qHoyANy
	dJjOnVeItvY2prNY1r0WHpDl7VX4a+Cm36kdTTeqzo7GV8TTbngcMOr6OoonrZS85FQqYIesgkczb
	pQq7yLN0IjE5HfVcdaIzzh3KSz/OnGPR4172d3EKM6UYSmJ699cS9V0KInkd/H7au/ciyuKEyLdfB
	8LyPatMYKfzF33sKLe1QcGAm8eM/T49ZyvXd38Ea3BBCYlL07avePF8xVqVJJCQw9espTigLM5MuO
	IBAStG6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpDPy-00HHCw-PH; Mon, 22 Nov 2021 17:47:50 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpDPv-00HHCD-5y; Mon, 22 Nov 2021 17:47:49 +0000
Received: by mail-wm1-x32a.google.com with SMTP id i12so16245192wmq.4;
 Mon, 22 Nov 2021 09:47:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=NAERJfyuh3hrk2pVn4WCNTl0iGx7EaTAYCDW21ycnzg=;
 b=igGA+iIrutkZXjmuS+YrrJhUZ3MsONtDK7LNrgANUAUR94lF9jEQCaQJeeNdw09I3L
 Qn6uzRRjyPlTQR8UYxENPLbuy9k6VitQ52COxei9KRoowQUMQrei2umldoBea+U6zDN3
 PXOnvi2MoPTH8X75sEzgi6GweR3sT3bDEEJdG99pRKIF5ESPJ7QweC27e+v2r+Y9BEnq
 rgd5P5C0lPbbc4db0wOm/LZJqq4xWDfLjYgC2/YV5ctZUJDkwjZnOCBUu5CnmA9IKKGj
 SNDmbqUbYokfJtZGtQ1LA/LjRRJz6i3H27DpnOUIk+lZ+9cD++aSdc0u81/r8oR2dxeJ
 RYag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=NAERJfyuh3hrk2pVn4WCNTl0iGx7EaTAYCDW21ycnzg=;
 b=4s0aV9nLSUvWAyy2f65+QVpPXRommTfU1AR3kNcxuW8iz1dSHhPrhf8xcXd/mZ3E3i
 /xVQaFIbQ/eSfJqL3JCH4uXVN6S8b59vHYWmr+WftB4hgk8MriYWiWA77HOwN/aGljfJ
 QRSj3DpDw45jQi1+6wuqPo8l+SmxaIn55JSsDJj3vBbAfHO92AzlPLiBzurfWM2602Yf
 Eec6ZKPDMdJ3ryYrtBB4au81FYHzbxXdorOV/s9WPBj0vqUXPt5PYRigyJUQdbk05oWP
 ann2f4LVLNxRykRCK/fKhIxEsLnkDso+2BI4reudNaysQB0aXDiZolg1fja0xsV4NyUF
 ypgA==
X-Gm-Message-State: AOAM532jaT/ZNluWz9zoEDVkmkJufukKvtArgzVZPog+D0v5fNcuUltq
 seLFiIU1O/sISFzS+2SRdQ==
X-Google-Smtp-Source: ABdhPJyLhxP0ZcR453J7Jypjzt74httJPSj0sP8H7ogHHLG/J+9Xhjl/qHlL28VWh+9k9PTqrcuKnA==
X-Received: by 2002:a05:600c:501f:: with SMTP id
 n31mr32696731wmr.101.1637603265204; 
 Mon, 22 Nov 2021 09:47:45 -0800 (PST)
Received: from ?IPv6:2a02:810b:f40:4200:a22c:1f83:255b:80f3?
 ([2a02:810b:f40:4200:a22c:1f83:255b:80f3])
 by smtp.gmail.com with ESMTPSA id u15sm11746081wmq.13.2021.11.22.09.47.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 22 Nov 2021 09:47:44 -0800 (PST)
Subject: Re: [PATCH v1 00/12] drm/rockchip: RK356x VOP2 support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <73c57643-a0db-e7e7-174d-3cb6a978d98a@gmail.com>
 <20211122081008.GR6556@pengutronix.de>
From: Alex Bee <knaerzche@gmail.com>
Message-ID: <0f975419-f3a6-8c5d-f700-904957eea3e6@gmail.com>
Date: Mon, 22 Nov 2021 18:47:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211122081008.GR6556@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_094747_278121_0059342E 
X-CRM114-Status: GOOD (  45.77  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am 22.11.21 um 09:10 schrieb Sascha Hauer:
> Hi Alex,
>
> On Mon, Nov 22, 2021 at 12:18:47AM +0100, Alex Bee wrote:
>> Hi Sascha,
>>
>> Am 17.11.21 um 15:33 schrieb Sascha Hauer:
>>> This series adds initial graphics support for the Rockchip RK356[68]
>>> SoCs.  Graphics support is based around the VOP2 controller which
>>> replaces the VOP controller found on earlier Rockchip SoCs. The driver
>>> has been tested with HDMI support included in this series and MIPI-DSI
>>> which is not included because it needs some more work. The driver is
>>> taken from the downstream Rockchip kernel and heavily polished, most non
>>> standard features have been removed for now. I tested the driver with
>>> the libdrm modetest utility and also with weston with both pixman and
>>> panfrost driver support. Michael Riesch reported the driver to work on
>>> the RK3566 as well, but device tree support for this SoC is not yet
>>> included in this series.
>>>
>>> The HDMI changes are based on patches from Benjamin Gaignard, but
>>> modified a bit as I found out that the HDMI port on the RK3568 only
>>> needs one additional clock, not two. Also I added regulator support
>>> which is needed to get the HDMI up on the rk3568-EVB board.
>>>
>>> All review and testing feedback welcome
>>
>> thanks for working on that - it's very (very,very) much appreciated.
>>
>> It took me some time to figure it out: It seems rk3568-iommu driver s
>> broken - I did only get "white noise" when using it alongside vop
>> (similar like it was reported here before). However: removing the
>> iommu-property from vop makes it working for me with HDMI output on
>> quartz64 as well. Could you check if you have the iommu driver in kernel
>> enabled if it works for you, if the property is present in DT? (I used
>> 5.16-rc1 + this series + [0]).
> I have the iommu driver enabled and it works for me. I get this during
> boot:
>
> [0.263287] rockchip-vop2 fe040000.vop: Adding to iommu group 0
>
> So I expect it is indeed used.
>
>> Also vop mmu seems to have the
>> power-domain missing in your series (same as downstream) - however
>> adding that doesn't help much currently.
> Probably the power domain gets enabled anyway when the VOP is activated,
> so adding it to the iommu won't help anything. Nevertheless it seems
> correct to add the property, I'll do so in the next round.
>
>> As a sidenote: I verfied this with using Ezequiel's vpu addtion for
>> RK356x: It did only work when removing the iommu there as well (getting
>> tons of page faults otherwise) - so iommu driver really seems to broken,
>> at least for RK3566. (Or I'm a missing a option in kernel config, which
>> wasn't required for the older iommu version?)
> I don't think so. I started from defconfig and disabled other
> architectures and unneeded drivers, but I did not enable anything
> specific to iommu.

I've found out now that I can make it work with iommu, by limiting the
available memory to something below 4G (I have a 8G board). So there is
something wrong in the driver or somewhere in memory mapping, iommu api
(since it works when using CMA), ... however: it does clearly not relate
to your patch.

>> =A0
>> But as reported before: For HDMI this does currently only work for pixel
>> clock rates, which are integer-divisable with hpll clock rate (which is
>> the hardcoded parent of vop0's dclk)
>> As discussed in Benjamin's initial submission of the addition of
>> RK3568's hdmi controller [1] same as with RK3288's and RK3399's hdmi phy
>> needs a reference clock (it's called vpll there) which needs to get
>> switched before the vop switches the mode (since phy rate switching is
>> done before) - it's HPLL in case of RK356x. For whatever reason it's
>> called "ref" for RK356x only downstream [2] - so you should add another
>> clock "vpll" (renaming it to "ref" for _ALL_ SoCs which have it would be
>> a _GREAT_ idea) which is <&pmucru PLL_HPLL>.
> Yeah, a consumer clock should be named after the usage in the consumer,
> not after the provider name. I also stumbled over this and naming it
> "ref" makes much more sense. We'll likely have to keep supporting "vpll"
> as well for compatibility to old device trees.
>
>> What brings us to the "real" clock problem and the reason, why
>> non-integer divisable pixel clock rates are not possible ATM: This is a
>> long standing issue for RK3288 and RK3399 as well (and one of the main
>> reasons why 4k modes are not possible for those older SoCs currently):
>> Upstream all PLL rates are controlled with those PLL rate tables in the
>> clock driver and they have to be _exactly_ defined as they are used
>> (HDMI sinks are very picky).
>> You will not see any additional rates downstream for RK3568: they have a
>> mechanism there to automatically calculate the PLL settings if the rate
>> doesn't exist in these tables (IIRC this was submitted upstream also:
>> but it was rejected/ignored by maintainers).
> Looks like we have to try harder to get it upstream. Do you have a
> pointer to this patch?

Sure:

https://patchwork.kernel.org/project/linux-clk/patch/20191204082527.19957-1=
-zhangqing@rock-chips.com/

I don't know if that is the was last submitted version.

Best regards,

Alex

>> As a quick hackarround (for
>> testing): You could use this table [3] we are using in LibreElec for
>> RK3399 to get 4k modes working and assign it to HPLL in RK3568's clock
>> driver (I tested it and it works great). It might be possible to just
>> add those rates (some also without frac dividers) to the common PLL
>> table for RK3568.
> Thanks for noting. This could also explain why currently only 1080p is
> working.
>
> Sascha
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
