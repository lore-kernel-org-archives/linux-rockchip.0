Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA013C5DF7D
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2026 12:12:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=prfy3xSsx7/27yUgd9KoolSkquS8n1Vi0ezlUshsRmw=; b=4njtke+cnRqO4y
	fYhUjqBd3rqT42Oq6oWAyqQ1ovN+iSOi+8lxsMw4x7G7FgihigFlwn8YerVT5JB3asKd3XZUKVEOV
	FZrE0luMuyWyDqweHiX4JJcO6EX5eLwWx2OOil5m0DXCxFAl6lunxqhWb8ONVlzGDJrsCVxOz/SAa
	+q4FBR5Sid+pMc7SW76IsSNlNJEoggkHqJMab7k5C9SXU3A28zpPJqOrCaf272kUPoXtcpcm0po61
	aI/GN8E3iJ3ALG/UNle35oxi/Z62zHA4wOhL8apMtFkOQ49Ay+2GFXrs+SbOnh9/md84XKahjbBjM
	J7i52XVckzs2yxSUY6lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwIgF-00000007uEx-0wnT;
	Tue, 18 Aug 2026 12:12:35 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwIgC-00000007uDW-0xIr
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Aug 2026 12:12:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1787055148;
 bh=IIl9f09sAtLyS8+D8lm8fCz9k0/RNdLNbkzXeNjbF6w=;
 b=N0WFkzBzuDTy0ijdt+OW6FTEtLbYXhCNykZeV3sTRTZEAmQJs6w0XB5270vNJiwB2215cOn4s
 djg2ysQevLIqbRjPjZM0XSZ32pWdj9g4tPSYoNqd0jO8TrlLWpuO0MqNjMpK4EsGBKp7qD/X29p
 c+W6Zg6nnoQc6Jn0msoOcqFJsvT1m5BX45722wiOs+6pdyiPDJf1w130kvEth5umvCUBEniRmK+
 I0BylIgBxEjDM5U5Cd4dY36e9dy6+vR0ZBcNevptuG2DSOABRdineNaGvtrUf7SCadMa48iwrI9
 FC8NXknns+nqyNlwZq2R88erkpmN4lGpG0uCoWqsxXkQ==
X-Forward-Email-ID: 6a844c23b1ee0df32f73bdb3
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.13.16
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <ad1e526e-a4cf-4c34-88ff-1884ef2f3dfe@kwiboo.se>
Date: Tue, 18 Aug 2026 14:12:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC] accel/rocket: DVFS on RK3588 - a hardware constraint, and
 some numbers
To: Igor Paunovic <royalnet026@gmail.com>,
 Nicolas Dufresne <nicolas@ndufresne.ca>, Tomeu Vizoso <tomeu@tomeuvizoso.net>
Cc: Heiko Stuebner <heiko@sntech.de>, Jiaxing Hu <gahing@gahingwoo.com>,
 Oded Gabbay <ogabbay@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org
References: <20260801131656.58450-1-royalnet026@gmail.com>
 <c495dae1976dab842d77f4a4a142217eb77b6fb7.camel@ndufresne.ca>
 <20260818072936.41844-1-royalnet026@gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20260818072936.41844-1-royalnet026@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_051232_586396_F1A9756B 
X-CRM114-Status: GOOD (  29.99  )
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

On 8/18/2026 9:27 AM, Igor Paunovic wrote:
> Hi Nicolas,
> 
>> I'm only looking at the RK3588, I suppose all the issues below
>> related to RK3576 ?
> 
> No - everything in the RFC is RK3588 (Orange Pi 5 Plus, all three
> cores). RK3576 is Jiaxing's enablement series and has its own set of
> problems; nothing I reported came from there.
> 
> I went through the four commits on rock5b-npu-poc-4 today. We
> converged on the same shape independently, which is encouraging:
> 200 MHz kept as the suspend rate, a single devfreq instance modelled
> on panfrost with busy time aggregated across the three cores, and a
> cooling device on top. Your ~2.5x on the SSD pipeline also matches
> the 2.58x I measured here with simple_ondemand against the 200 MHz
> pin.
> 
> The TF-A pointer (rk3588_clk.c, PVTPLL vs normal path) is the most
> valuable part for me - it names the mechanism behind the power-on
> ack failure I could only demonstrate empirically. I will reference
> it in the cover letter once I have checked the firmware source
> myself.

Based on what I learnt when playing around with the SCMI GPU pvtpll [1],
we must keep core block clock enabled as long as PVTPLL mode is enabled
instead of the normal PLL mode.

When PVTPLL mode is enabled, the PVTPLL GRF, PD and GPU block is fully
provided by the PVTPLL clock, i.e. SError when accessing hw regs in
case Linux disables CLK_GPU.

Linux does not know anything about PVTPLL mode, the SCMI clocks are
fully controlled by firmware (tf-a) and basically switches to use PVTPLL
mode for all rates above 100/200/300 MHz.

Vendor kernel typically always changes to use 100/200/300 MHz at system
and runtime suspend to disable use of PVTPLL.

Because this PVTPLL dependency is not really known to Linux we must
use workarounds to hide this, ideally we should fully implement PVTPLL
handling in Linux or ensure firmware always keep dependent clocks
enabled to avoid SError when accessing regs.

For GPU case I depend on the opp-suspend rate to ensure opp and runtime
pm framework make best effort to restore normal mode when GPU is unused.

However, opp framework does not provide any integration into pm runtime
so it will happily clk_set_rate() when pm runtime is suspended. My
workaround to avoid SError was to use a custom .config_clks() ops in
struct dev_pm_opp_config that just checks pm_runtime_suspended().

The RFC series at [1] was never posted on mailing list, but is currently
in use by e.g. Armbian to allow use of full 1 GHz rate of GPU on RK3588.

I am guessing NPU have similar limitations/requirements as the GPU block.

[1] https://github.com/Kwiboo/linux-rockchip/commits/next-20260619-rk35xx-scmi-gpu-clk/

Regards,
Jonas

> 
> Status here: after Tomeu's go-ahead I am preparing the series -
> bindings, a full-range OPP table in the DT (300-1000 MHz plus the
> 200 MHz suspend point, so essentially the table you ended up with),
> a safe-rate-on-suspend guard, the devfreq itself, and a hold-all
> guard that resumes all cores around any rate change. The guard is
> ordered before the devfreq patch so no bisect point has scaling
> without it. The one hard dependency is my "request the core clocks
> by name" v2, still waiting for pickup.
> 
> Agreed on OPP staying optional - the plan in my series is that the
> driver keeps working with no OPP table in the DT, which I saw you
> intend to fix on your side as well.
> 
> One path worth checking in your PoC, because it is the one that
> made me write the hold-all guard: a sysfs min_freq/max_freq write
> while all three cores are runtime-suspended goes straight to
> clk_set_rate, which can select the PVTPLL path while the domain is
> off - exactly the case your TF-A reference explains. With the guard
> in place I measured that write waking the cores and completing
> cleanly.
> 
> One difference in test conditions worth keeping in mind: my numbers
> are with the vendor bl31 that EDK2 bundles, yours is upstream TF-A.
> Comparing SCMI behaviour on both seems wise before either of us
> claims anything firmware-specific.
> 
> Thank you for the "take whatever you like" - anything I lift will
> carry credit, and I will Cc you on the series.
> 
> Regards,
> Igor
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
