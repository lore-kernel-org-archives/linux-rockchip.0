Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0976DC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Mar 2022 13:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yrcF7cox1CueV4/CqOvFExLSz/LihiL2xuPiYSRyjiY=; b=pw+12vY2tppD7y
	aciIvswwORzsQV2QuduUZp00MqwjTR/xeXw6Gmf2H59It8gCu4BVLMqDF9WB71XgVKRKSDba9ikg7
	s0rk8sMGN+zIr6GG9oDkgwO7OX52Xu4iwL3PQ3yXtEZpiDoqC1gZmldkE0CoF4ztvBpIA29B4fnw1
	Mct20N6KPgFKCqibKfG2/BfCFGUp3dbItG2pe8A3g7ya3LgthQP4SQ7oyjuJoCWPTzeh87ThSC1ga
	dh0TrP0yV2h0swVTR4iyMEiUs0toj/19PDDTokLT2Dy0Da4n3GWLs4n4d4kD7bLpJdndTJKe4H9UQ
	CI/TOAWwkuGj5KIlxMHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nUTI2-00Crob-Gf; Wed, 16 Mar 2022 13:02:10 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nUTHp-00CrmD-K2; Wed, 16 Mar 2022 13:01:59 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dmitry.osipenko) with ESMTPSA id 1EB8C1F44247
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1647435713;
 bh=TPGfrXl04clAy6QarZBcQdS8Z2Dzy3MPalq2g/tatFU=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=K7lg91P9xrAHkrU2xnRUCvaO8/TgQRyIhg7Zq8aFEr6hhssaP46hxTRtirDYdcZvr
 16X9OFnwrje191Ic2obLpXNd0cTlx6G0DcUN1jCe5XZ1Zggp5WEi9H3HavLsxETz/g
 atEM85ZFAucix+3s+sIUoGBBQrtr5+0pF+Pl59v+ogTwyQl27QgAVu/Nb4/Ar+Q39T
 uY46VJ7HDXhWcG3AGQ72qG+N3xar71gg/8XUFunYcednjVwxalh2dROCM8kRtiuh3q
 oOE1/mvupG12v1+PFygtAHKiI0T91G7wSZtQ9RAYl7c4MDMXhyGJ211VRkU4uFSTN6
 OSrjZZOiDzzUQ==
Message-ID: <4c04da9c-f9c9-7375-df1a-4661807549dd@collabora.com>
Date: Wed, 16 Mar 2022 16:01:49 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH v8 09/24] drm/rockchip: dw_hdmi: Add support for niu clk
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "elaine.zhang" <zhangqing@rock-chips.com>,
 Robin Murphy <robin.murphy@arm.com>, devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org
References: <20220311083323.887372-1-s.hauer@pengutronix.de>
 <20220311083323.887372-10-s.hauer@pengutronix.de>
 <4712e128-8a14-e361-0819-911dc3453372@collabora.com>
 <20220314081834.GK405@pengutronix.de>
 <96e3682c-51ff-6af2-ca07-6ea1b952dd70@collabora.com>
 <20220316091253.GQ405@pengutronix.de>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220316091253.GQ405@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220316_060158_023616_9FC88187 
X-CRM114-Status: GOOD (  30.82  )
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

On 3/16/22 12:12, Sascha Hauer wrote:
> On Mon, Mar 14, 2022 at 08:54:27PM +0300, Dmitry Osipenko wrote:
>> On 3/14/22 11:18, Sascha Hauer wrote:
>>> On Sun, Mar 13, 2022 at 12:07:56AM +0300, Dmitry Osipenko wrote:
>>>> On 3/11/22 11:33, Sascha Hauer wrote:
>>>>> The rk3568 HDMI has an additional clock that needs to be enabled for the
>>>>> HDMI controller to work. This clock is not needed for the HDMI
>>>>> controller itself, but to make the SoC internal bus logic work. From the
>>>>> reference manual:
>>>>>
>>>>>> 2.8.6 NIU Clock gating reliance
>>>>>>
>>>>>> A part of niu clocks have a dependence on another niu clock in order to
>>>>>> sharing the internal bus. When these clocks are in use, another niu
>>>>>> clock must be opened, and cannot be gated.  These clocks and the special
>>>>>> clock on which they are relied are as following:
>>>>>>
>>>>>> Clocks which have dependency     The clock which can not be gated
>>>>>> -----------------------------------------------------------------
>>>>>> ...
>>>>>> pclk_vo_niu, hclk_vo_s_niu       hclk_vo_niu
>>>>>> ...
>>>>> The clock framework does not support turning on a clock whenever another
>>>>> clock is turned on, so this patch adds support for the dependent clock
>>>>> to the HDMI driver. We call it "NIU", which is for "Native Interface
>>>>> Unit"
>>>>
>>>> This still doesn't make sense to me. You're saying that "pclk_vo_niu,
>>>> hclk_vo_s_niu" depend on "hclk_vo_niu", but HDMI doesn't use pclk_vo, it
>>>> uses pclk_hdmi.
>>>
>>> pclk_hdmi_host is a child clock of pclk_vo:
>>>
>>>      aclk_vo                  2        2        0   300000000          0     0  50000         Y
>>>         aclk_hdcp             0        0        0   300000000          0     0  50000         N
>>>         pclk_vo               2        3        0    75000000          0     0  50000         Y
>>>            pclk_edp_ctrl      0        0        0    75000000          0     0  50000         N
>>>            pclk_dsitx_1       0        0        0    75000000          0     0  50000         N
>>>            pclk_dsitx_0       1        2        0    75000000          0     0  50000         Y
>>>            pclk_hdmi_host     1        2        0    75000000          0     0  50000         Y
>>>            pclk_hdcp          0        0        0    75000000          0     0  50000         N
>>>         hclk_vo               2        5        0   150000000          0     0  50000         Y
>>>            hclk_hdcp          0        0        0   150000000          0     0  50000         N
>>>            hclk_vop           0        2        0   150000000          0     0  50000         N
>>
>> It was unclear that the pclk_hdmi is the child of pclk_vo by looking at
>> the clk driver's code, thank you!
>>
>> Won't be better if the implicit clk dependency would be handled
>> internally by the RK clk driver?
> 
> I have considered handling something like coupled clocks in the clock
> framework, but I have not yet considered handling this internally in the
> Rockchip clock driver.
> 
> I just had a quick look at the driver. While it sounds like an easy task
> to enable gate A whenever gate B is enabled I haven't found a good way to
> integrate that into the clk driver. It seems to me that it's not easier
> to implement in the clk driver than it is to implement it in the clk
> framework where it could be used by others as well.
> 
>> For example, by making the common gate
>> shared/refcounted. Have you considered this variant? Then we won't need
>> to change the DT bindings.
> 
> For the DT bindings it is just an additional clock. Should we have a
> better way to handle that case in the future we could simply ignore the
> additional clock. I wouldn't bother too much about this.

To me that NIU quirk should be internal to the clk h/w module, so it
doesn't feel nice to mix the clk h/w description with the HDMI h/w
description.

On the other hand, making clk driver to handle this case indeed will
take some effort as I see now. For example, clk driver of NVIDIA Tegra
has concept of shared gates, but bringing it to the RK clk driver will
be quite messy.

Alright, let's work around the clk limitation like you're suggesting. I
agree that it shouldn't really be a problem to deprecate the extra clock
later on.

I have last questions..

1. Previously you said that the PD driver takes care of enabling all the
clocks it can find in the device by itself on RPM-resume, then why HDMI
driver needs to enable the clock explicitly?

2. You added clk_prepare_enable(), but there is no corresponding
clk_disable_unprepare(), AFAICS. Why?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
