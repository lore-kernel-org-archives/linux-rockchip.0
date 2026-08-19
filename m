Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4B80C5DF81
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Aug 2026 16:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M9Eu6aQ+6q8T1ihaw++2gRN8onbgLhAZCVqKJSVBXj8=; b=A+N1TdAtCOdlef
	hzAkX4SDvFIE014pTq58ZvQVB6y21x4JH8Depqr3QHQIzWyKOpC8h6fmDE0EPQbDdKPUDFNDJUkUo
	jUZ/IG0BSjGwe7YnnFNj0Denj6Ezi/J1doXd8OQyVpprsfgGYhQbkRPReIrre45FIgZD/SV51UiVT
	IR3Is8fi1j96DDbEQsZT5FAWjVutV3CuD8wFNPDgPUO9pexxVsagxx51zHXs/5skH1EVthjhPYf+R
	3RECR7EC2WBec0xW7qcRV5+IbX0FjKEXzHiA8EaxmAgVC6GaWMROSSwW0XGtBJXm4ihy1VohaROLq
	Wh+WGup1qFQDNsXpljAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwj1V-0000000AA9C-1Y0M;
	Wed, 19 Aug 2026 16:20:17 +0000
Received: from smtp.forwardemail.net ([121.127.44.66])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwj1S-0000000AA8o-1SJg
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Aug 2026 16:20:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1787156413;
 bh=/Ys6PQN2Gy/gC4sjx/MhtQYooND7k7JjSVUYBnPXkNU=;
 b=AOn/L71PhedhMmPNFHZlkZFcn9zWf12E5CfiCB2GSVhXW04G7Gpoi448L6ivD0XsdVMaALMF5
 iACdeDtnmK19OiFEllaIU4X4pOZDL5uKxwhORVmuRod4392QSlxDx1Yh/lkKgZjDz/l/kSrMyyy
 MpoYhSgabJ7YSNKBQkJh/qBMmlQqyCzYnhBbhlgYX9Ay+sOi3GgqW2hP2DA4bKyUFRCbFkd0juS
 PeJyttiDbV4HwDO1lp+/YlzUSlI0FiSojzY5WZzADZR4G7JAKnDYrOXRZe6fxkAJlPWySF+BXAr
 2ZsNmhXJq6V7SZ50dMHppeO9a3YjvcP36GZ93F5FxnQQ==
X-Forward-Email-ID: 6a85d7ba03d49fd4b86d3e5c
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.66
X-Forward-Email-Version: 2.13.16
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <82c8b17e-7215-45ea-84d1-9991ba6fb541@kwiboo.se>
Date: Wed, 19 Aug 2026 18:20:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC] accel/rocket: DVFS on RK3588 - a hardware constraint, and
 some numbers
To: Igor Paunovic <royalnet026@gmail.com>
Cc: Nicolas Dufresne <nicolas@ndufresne.ca>,
 Tomeu Vizoso <tomeu@tomeuvizoso.net>, Heiko Stuebner <heiko@sntech.de>,
 Jiaxing Hu <gahing@gahingwoo.com>, Oded Gabbay <ogabbay@kernel.org>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
References: <20260801131656.58450-1-royalnet026@gmail.com>
 <c495dae1976dab842d77f4a4a142217eb77b6fb7.camel@ndufresne.ca>
 <20260818072936.41844-1-royalnet026@gmail.com>
 <ad1e526e-a4cf-4c34-88ff-1884ef2f3dfe@kwiboo.se>
 <286e8418-fae6-4979-96d1-e13abb04b3a1@kwiboo.se>
 <3204a0d0-969d-4ac6-adfd-29c57f1c3e0a@kwiboo.se>
 <20260819125932.5853-1-royalnet026@gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20260819125932.5853-1-royalnet026@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_092014_840146_65B842D5 
X-CRM114-Status: GOOD (  33.52  )
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

Hi Igor,

On 8/19/2026 2:59 PM, Igor Paunovic wrote:
> Hi Jonas,
> 
> I promised to determine empirically which clock the NPU PVTPLL needs.
> I ran that today. The answer is not what either of us expected, and it
> comes with two corrections to my previous mail, so those first.
> 
> Correction 1: I wrote that only core 0 requests PCLK_NPU_ROOT in the
> mainline DT. That is wrong - all three rknn-core nodes request it as
> their "pclk" (my grep had truncated the clocks list; verified since in
> the tree and in the live FDT). The hazard window is unchanged in
> practice - the gate still closes whenever all three cores are
> runtime-suspended, which is the normal idle state - but the sentence
> as I wrote it was false.
> 
> Correction 2: my inferred failure mechanism ("the GRF write cannot
> land, the mux still switches, the ring is left unconfigured and the
> failure appears later as a power-on ack timeout") understated reality
> considerably. Measured today:
> 
> Test module, on the same v2.12 firmware discussed earlier: acquire the
> clocks via the core DT node, verify all three cores runtime-suspended,
> then issue one clk_set_rate(scmi npu clk, 600 MHz - a PVTPLL-path
> rate). Serial console at loglevel 8, captured by a recorder on a
> second machine, so the last lines survive whatever happens. Three
> arms, one variable:
> 
>   held during set_rate          outcome
>   pclk_npu_root                 SoC resets, U-Boot 0.58 s after the call
>   pclk + hclk (the PD pair)     identical, 0.58 s
>   nothing (control)             identical, 0.58 s
> 
> No oops, no SError trace, nothing on the console after the set_rate
> marker in any arm - the SoC dies at firmware level and the reset
> latency is constant to the millisecond across all three. Bus clocks
> are simply irrelevant to this failure: my open question ("does the
> ring also need hclk_npu_root?") turns out to be the wrong question.
> No root clock makes a domain-off set_rate safe.

Correct, the power domain must be powered on when PVTPLL is used, I
thought this had already been concluded. It is hard to fully keep track
when context keeps being removed in each new mail ;-)

The GPU/NPU related PVTPLL, GRF etc lives inside its PD, at least on
RK3588. And I also think there was some dependency on the bus clock.
So when PVTPLL is used instead of a normal PLL from CRU, the PD must be
kept alive, and we must switch to a normal PLL before PD is powered off,
it is likely that some bus clock is also needed in addition to PD.

> 
> The explanation most consistent with the data is that the NPU GRF (or
> the PVTPLL block behind it) sits inside the NPU power island, so the
> EL3 write to 0xfd5a2000 with the island off is fatal regardless of any
> bus clock state. I cannot rule out that the firmware dies elsewhere in
> that path, but the clock-independence is measured, not inferred.

I thought it was possible to access the GRF when normal PLL from CRU is
used and clocks where enabled, but maybe there is also a dependency on
PD being powered on to access GRF in normal PLL mode.

> 
> The counterpart run closes the loop: same module, same set_rate to a
> PVTPLL rate (1 GHz), with the cores resumed first - completes cleanly,
> and the GRF readback then matches the firmware table exactly (ring
> length 12 for 1 GHz in CON0_H, cal_cnt 0x18 in CON1, 0x40000 gating
> interval in CON2). So the sequence we discussed is confirmed live in
> the registers, and the domain state is the single discriminating
> variable.
> 
> For the series the consequence is now sharp: every path that can issue
> an SCMI set_rate - governor, sysfs, cooling, OPP init - must guarantee
> the domain is powered first. The hold-all guard stays ordered before
> the devfreq patch, and your pm_runtime_suspended() check in
> config_clks() guards the OPP-initiated paths for exactly the same
> reason. On mainline as-is the NPU exposure is theoretical only because
> nothing scales the clock yet.

It is probably not just set_rate, with PD and/or CLKs disabled just
reading clk_summary to read SCMI clock rate can issue SError or a freeze.
At least that was something I managed to trigger when I was playing
around with using SCMI clock for GPU on RK3588, RK3576 or RK3528.

One option is to fully move GPU/NPU clocks and power domains to SCMI
firmware, and fully hide GPU/NPU related CRU clocks and PDs for from OS.

> 
> One small ask: we tried to read a ring frequency counter in the NPU
> GRF (candidate offset +0x24) to publish measured ring frequency vs
> voltage; it reads zero with the ring demonstrably running, so the
> candidate is wrong. If you happen to know the OSC counter offset in
> the GPU GRF from your experiments, the pointer would save a TRM dig -
> if not, no matter.

To my knowledge there are status regs that can be used to get the
measured rate of the PVTPLL, at least upstream TF-A have a commit [3]
for RK3588 that changes to report the measured rate when PVTPLL mode is
used.

It is possible the measured value only can be read back when PVTPLL mode
is used, ring is configured, PD is alive and bus clock is enabled and
enough time has passed.

[3] https://git.trustedfirmware.org/plugins/gitiles/TF-A/trusted-firmware-a.git/+/d2d6928641bacfa2370a9bb38cdddad229d99ad6

Regards,
Jonas

> 
> Regards,
> Igor


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
