Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1EB6C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Mar 2022 13:56:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s76aZ1B5x2wqDRs1umDmymgpn2xCMG7o+PGg1EcT3gs=; b=cDcTTDkKpVN2gl
	LYnbfGn043uzbBNsEFfQ4ViMV/scPBesY/YDrlrq8vZ7JRd5cww5QzXrTn/gD/fdGg79mWMKci4bz
	VmWtVFJ1SrkHlLhHxdVtbWK6xnDuKUTPr3UIw+I+/KA9qgN0qfM+kS+kaxjT7jLmvLR4B596g0NPT
	pLJM9u1TdAFxSFR8M0UxREVe04wrlzCxVWib5pQy0BBgaj+w5uNSJ5lhCbWtddu/YLPxeg4GRSYBb
	XNnTsAiLof0ASPTblpJl2fza1Hp3cdbdn9IEnuYwEIGdjb5GwKLBIVK+Rn6SjWbapBzFPZ/aRHzn4
	ot6noqK02DLC96kbzkVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nUU8D-00D6qq-6Q; Wed, 16 Mar 2022 13:56:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nUU7z-00D6mv-D7; Wed, 16 Mar 2022 13:55:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 18EA71476;
 Wed, 16 Mar 2022 06:55:47 -0700 (PDT)
Received: from [10.57.42.204] (unknown [10.57.42.204])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0F94D3F766;
 Wed, 16 Mar 2022 06:55:44 -0700 (PDT)
Message-ID: <e65975a4-7d5f-1fb3-a031-2bb61de7f6a5@arm.com>
Date: Wed, 16 Mar 2022 13:55:40 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH v8 09/24] drm/rockchip: dw_hdmi: Add support for niu clk
Content-Language: en-GB
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: "elaine.zhang" <zhangqing@rock-chips.com>, devicetree@vger.kernel.org,
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
 <4c04da9c-f9c9-7375-df1a-4661807549dd@collabora.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <4c04da9c-f9c9-7375-df1a-4661807549dd@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220316_065551_573257_D7756CBF 
X-CRM114-Status: GOOD (  32.79  )
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

On 2022-03-16 13:01, Dmitry Osipenko wrote:
> On 3/16/22 12:12, Sascha Hauer wrote:
>> On Mon, Mar 14, 2022 at 08:54:27PM +0300, Dmitry Osipenko wrote:
>>> On 3/14/22 11:18, Sascha Hauer wrote:
>>>> On Sun, Mar 13, 2022 at 12:07:56AM +0300, Dmitry Osipenko wrote:
>>>>> On 3/11/22 11:33, Sascha Hauer wrote:
>>>>>> The rk3568 HDMI has an additional clock that needs to be enabled for the
>>>>>> HDMI controller to work. This clock is not needed for the HDMI
>>>>>> controller itself, but to make the SoC internal bus logic work. From the
>>>>>> reference manual:
>>>>>>
>>>>>>> 2.8.6 NIU Clock gating reliance
>>>>>>>
>>>>>>> A part of niu clocks have a dependence on another niu clock in order to
>>>>>>> sharing the internal bus. When these clocks are in use, another niu
>>>>>>> clock must be opened, and cannot be gated.  These clocks and the special
>>>>>>> clock on which they are relied are as following:
>>>>>>>
>>>>>>> Clocks which have dependency     The clock which can not be gated
>>>>>>> -----------------------------------------------------------------
>>>>>>> ...
>>>>>>> pclk_vo_niu, hclk_vo_s_niu       hclk_vo_niu
>>>>>>> ...
>>>>>> The clock framework does not support turning on a clock whenever another
>>>>>> clock is turned on, so this patch adds support for the dependent clock
>>>>>> to the HDMI driver. We call it "NIU", which is for "Native Interface
>>>>>> Unit"
>>>>>
>>>>> This still doesn't make sense to me. You're saying that "pclk_vo_niu,
>>>>> hclk_vo_s_niu" depend on "hclk_vo_niu", but HDMI doesn't use pclk_vo, it
>>>>> uses pclk_hdmi.
>>>>
>>>> pclk_hdmi_host is a child clock of pclk_vo:
>>>>
>>>>       aclk_vo                  2        2        0   300000000          0     0  50000         Y
>>>>          aclk_hdcp             0        0        0   300000000          0     0  50000         N
>>>>          pclk_vo               2        3        0    75000000          0     0  50000         Y
>>>>             pclk_edp_ctrl      0        0        0    75000000          0     0  50000         N
>>>>             pclk_dsitx_1       0        0        0    75000000          0     0  50000         N
>>>>             pclk_dsitx_0       1        2        0    75000000          0     0  50000         Y
>>>>             pclk_hdmi_host     1        2        0    75000000          0     0  50000         Y
>>>>             pclk_hdcp          0        0        0    75000000          0     0  50000         N
>>>>          hclk_vo               2        5        0   150000000          0     0  50000         Y
>>>>             hclk_hdcp          0        0        0   150000000          0     0  50000         N
>>>>             hclk_vop           0        2        0   150000000          0     0  50000         N
>>>
>>> It was unclear that the pclk_hdmi is the child of pclk_vo by looking at
>>> the clk driver's code, thank you!
>>>
>>> Won't be better if the implicit clk dependency would be handled
>>> internally by the RK clk driver?
>>
>> I have considered handling something like coupled clocks in the clock
>> framework, but I have not yet considered handling this internally in the
>> Rockchip clock driver.
>>
>> I just had a quick look at the driver. While it sounds like an easy task
>> to enable gate A whenever gate B is enabled I haven't found a good way to
>> integrate that into the clk driver. It seems to me that it's not easier
>> to implement in the clk driver than it is to implement it in the clk
>> framework where it could be used by others as well.
>>
>>> For example, by making the common gate
>>> shared/refcounted. Have you considered this variant? Then we won't need
>>> to change the DT bindings.
>>
>> For the DT bindings it is just an additional clock. Should we have a
>> better way to handle that case in the future we could simply ignore the
>> additional clock. I wouldn't bother too much about this.
> 
> To me that NIU quirk should be internal to the clk h/w module, so it
> doesn't feel nice to mix the clk h/w description with the HDMI h/w
> description.
> 
> On the other hand, making clk driver to handle this case indeed will
> take some effort as I see now. For example, clk driver of NVIDIA Tegra
> has concept of shared gates, but bringing it to the RK clk driver will
> be quite messy.

 From a quick look, it seems like it could be straightforward 
conceptually at least. Presumably: subclass clk_gate_ops to 
enable/disable a required clock before enabling/disabling normally, have 
rockchip_clk_register_branch() resolve an optional required clock and 
pick gate_ops as appropriate, then the rest is basically just 
boilerplate for describing the dependencies in the first place. However 
I'd agree that in practical implementation terms it does look even 
simpler and cleaner for the clk_hw abstraction to provide the 
appropriate ops and resolution itself.

> Alright, let's work around the clk limitation like you're suggesting. I
> agree that it shouldn't really be a problem to deprecate the extra clock
> later on.

If there's a realistic chance that someone will actually work on a 
proper coupled/dependent/whatever clock abstraction before the rest of 
RK3588 is supported well enough for mainline users to start really 
caring about power efficiency, then arguably the simplest and cleanest 
workaround would be the other option that Elaine mentioned, of just 
marking hclk_vo as critical for now. If it's likely to turn into a 
"nothing's as permanent as a temporary fix" situation, though, then the 
DT binding has less functional impact, even if it does leave us 
developers with baggage down the line.

Robin.

> 
> I have last questions..
> 
> 1. Previously you said that the PD driver takes care of enabling all the
> clocks it can find in the device by itself on RPM-resume, then why HDMI
> driver needs to enable the clock explicitly?
> 
> 2. You added clk_prepare_enable(), but there is no corresponding
> clk_disable_unprepare(), AFAICS. Why?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
