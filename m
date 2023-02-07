Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02D10C636D4
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Feb 2023 16:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:From:References:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eBxwDKzNq6SpftkcDCoxpV5J9whUAXyXiHWJkrUxydQ=; b=jr4KsowYr0VHar
	pn9uHzDpXGnomf/YtZNw/e+D5SPyNzWphtKIQ5NJQ3AT7HAbzuaNxCcakQ0ectfIYptZZzNwiUogs
	5eygdzHv0Rb5RgIUCgpm0PUdLEqHOwU/isooXj0CGsC+sVyqmQ8fmz8nUP0sdqzuaEkJf1VJsILa3
	t2pcS8jtCep6243QPziPsPD3VXVnfMh9z+lp+e2bv/uRzF4xvhyNHA0mshyNfCxUVwAH1/62CHWIu
	11XulSBBnvLr42KiqiP60N4rddt7VvutoeMLDOt3DQl0eIPRufLLofUNQAf+vfr3HZ/phxeXgCn81
	em/rDk6Zti7zSkLS25iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPQqc-00CpYz-4y; Tue, 07 Feb 2023 16:29:34 +0000
Received: from wrqvxttq.outbound-mail.sendgrid.net ([149.72.167.116])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPQqY-00CpY5-Fb
	for linux-rockchip@lists.infradead.org; Tue, 07 Feb 2023 16:29:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=mime-version:subject:references:from:in-reply-to:to:cc:content-type:
	content-transfer-encoding:cc:content-type:from:subject:to;
	s=s1; bh=c72ih5zuDNbCk9kSx3i6nfUsh4aUWIbF0xmV/W5go3Q=;
	b=KrvRvXlGl+MN9yKN6oZpW8oKvcshAB/Q68GdijEB0EXN/jufOQURdwvaPY7lL9q8Tm+b
	cdzrG9309p6+41IdKDCaGlvzIawbEOwndkBWlz/KI79gBILzZVR3DEJDTSRWOiLoiOqBEw
	WQEGtSXflMPsGFJCzNoGIuy3LHuGkhofiTPJhhN8oBy7FwNWw0BX2ehHptsUuwg9Wc/AE8
	xw1//zXTS7gLhacXksR0i39X6TdAGUfJmXY53qH2GhTLMAqByruTg2mGumiR4sw1fzRs0Z
	5LifsESxuseCGLou8u+9+QmGBb/CjdHURaQx2R7Io42QrXZAgea5z5YceLHr0Drw==
Received: by filterdrecv-6b9548745c-qkbjd with SMTP id filterdrecv-6b9548745c-qkbjd-1-63E27C67-40
        2023-02-07 16:29:27.725120436 +0000 UTC m=+7060874.479935476
Received: from [192.168.1.50] (unknown)
	by geopod-ismtpd-3-0 (SG) with ESMTP
	id pZbVE0a7SQGu9kp-Xw0ajw
	Tue, 07 Feb 2023 16:29:27.434 +0000 (UTC)
Message-ID: <7af9bc00-d095-5872-1319-ccae12795cfd@kwiboo.se>
Date: Tue, 07 Feb 2023 16:29:27 +0000 (UTC)
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v4 4/4] drm/rockchip: dw_hdmi: discard modes with
 unachievable pixelclocks
Content-Language: en-US
References: <20230207084452.1069656-1-s.hauer@pengutronix.de>
 <20230207084452.1069656-5-s.hauer@pengutronix.de>
 <0bec1f06-9fad-60ad-19eb-3d54135031f7@kwiboo.se>
 <20230207125107.GG10447@pengutronix.de>
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20230207125107.GG10447@pengutronix.de>
X-SG-EID:  =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h70KnpxJBzbTvf1GF?=
 =?us-ascii?Q?9G0aJ79mci1fFiD8x6ouxr4ojQ9goRT1Hs5huTX?=
 =?us-ascii?Q?ishQ+kZSzeY99atQDV4MguFknodKnbubBqCM396?=
 =?us-ascii?Q?TGeRbpcG96wZvS=2FxbNQMivqqarCU07ZeF490U9z?=
 =?us-ascii?Q?iNt2VoAVrsVekjoI9wA9J7sKLH2p=2Fe4oFgPNuzN?=
 =?us-ascii?Q?ozjGHF1bzyowc2Et83ggg=3D=3D?=
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, Dan Johansen <strit@manjaro.org>,
	Sandy Huang <hjc@rock-chips.com>, Nicolas Frattaroli
	<frattaroli.nicolas@gmail.com>, linux-rockchip@lists.infradead.org,
	FUKAUMI Naoki <naoki@radxa.com>, Michael Riesch
	<michael.riesch@wolfvision.net>, kernel@pengutronix.de, Robin Murphy
	<robin.murphy@arm.com>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_082931_236984_A6AE5EF1 
X-CRM114-Status: GOOD (  24.90  )
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

Hi Sascha,

On 2023-02-07 13:51, Sascha Hauer wrote:
> On Tue, Feb 07, 2023 at 11:01:26AM +0000, Jonas Karlman wrote:
>> Hi Sascha,
>>
>> On 2023-02-07 09:44, Sascha Hauer wrote:
>>> The Rockchip PLL drivers are currently table based and support only
>>> the most common pixelclocks. Discard all modes we cannot achieve
>>> at all. Normally the desired pixelclocks have an exact match in the
>>> PLL driver, nevertheless allow for a 0.1% error just in case.
>>>
>>> Tested-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
>>> Tested-by: Michael Riesch <michael.riesch@wolfvision.net>
>>> Tested-by: Dan Johansen <strit@manjaro.org>
>>> Link: https://lore.kernel.org/r/20230118132213.2911418-4-s.hauer@pengutronix.de>>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>> ---
>>>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 6 +++++-
>>>  1 file changed, 5 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
>>> index feba6b9becd6c..725952811752b 100644
>>> --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
>>> +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
>>> @@ -256,10 +256,14 @@ dw_hdmi_rockchip_mode_valid(struct dw_hdmi *dw_hdmi, void *data,
>>>  {
>>>  	struct rockchip_hdmi *hdmi = data;
>>>  	const struct dw_hdmi_mpll_config *mpll_cfg = rockchip_mpll_cfg;
>>> -	int pclk = mode->clock * 1000;
>>> +	int rpclk, pclk = mode->clock * 1000;
>>>  	bool exact_match = hdmi->plat_data->phy_force_vendor;
>>>  	int i;
>>>  
>>> +	rpclk = clk_round_rate(hdmi->ref_clk, pclk);
>>> +	if (abs(rpclk - pclk) > pclk / 1000)
>>> +		return MODE_NOCLOCK;
>>
>> The ref_clk is optional and rk3228/rk3328 dts do not supply a ref or vpll clock.
> 
> That's a bit unfortunate as we can't do this check then on these SoCs.
> 
> The clock is likely actually there in the system and maybe even in the
> clock driver, just not wired up to the HDMI. I don't know which one it
> is though, so I am afraid there's not much I can do about it other than
> just skipping the check when the clock is not there.

For rk3228/rk3328 I think just skipping the rate check when there is
no ref_clk should be fine.

The clock is provided by phy-rockchip-inno-hdmi.c for rk3228/rk3328. And
I recall we used to add ref/vpll clock to device tree to do something
similar in LibreELEC with our initial work-in-progress HDMI2.0 patches.

We have since then opted to just filter modes based on clk_round_rate
for !phy_force_vendor and instead extend the inno-hdmi pll table with
common hdmi/dvi clock rates, see [1] for the current state of RK HDMI2.0
related patches we use in LibreELEC.

Hopefully I can find some time in coming weeks to restart the work of
testing and sending those patches upstream, rebased on top of this series.

[1] https://github.com/Kwiboo/linux-rockchip/compare/v6.2-rc7...rockchip-6.2-hdmi2.0

Regards,
Jonas

> 
> Sascha
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
