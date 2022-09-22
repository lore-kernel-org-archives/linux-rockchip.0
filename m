Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 842E1C6FA82
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Sep 2022 13:10:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m3GPkDlEo8ohGdBDQMNE2dvUmOXyqBmwyWMZRyWrURE=; b=r44/Rcm5XI9T71
	+45UW5e1cnwdec+ZYH8Yc6mA/F19OBF9AI+THjXAuUImkV0xzmZIz2MEP8/2kmvwuZQ8prPprvi/X
	ne4pWO8j5S/vdis333YMhB6/8jl8TjiMbSJDvtDADCMGnTy4u8OrY6DJpbpvcLp8fwTrmzgZ7wH8S
	9jEGjnyEHipx0YrpXG4hTpVGb2dzFWk2pZ4iYGx5mJ/83QF373TwcCh34ZAToXhQ5XBg1TGbiP2At
	QHv6yn8yt4bIaDjyy9/68a09hBYDV83aGQPfjBc/6gtNW0JuTLUpFJwut/7/X0qHLRdhpbHaeWjVI
	LPYxuEJqbqqBAYm9ou7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obLy5-00FZgd-Id; Thu, 22 Sep 2022 13:10:17 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obLy3-00FZdn-3v
	for linux-rockchip@lists.infradead.org; Thu, 22 Sep 2022 13:10:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3696A1595;
	Thu, 22 Sep 2022 06:10:18 -0700 (PDT)
Received: from [10.1.196.40] (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AC7BE3F73B;
	Thu, 22 Sep 2022 06:10:05 -0700 (PDT)
Message-ID: <618e79c6-a1af-3262-2edd-b2d6c0064e02@arm.com>
Date: Thu, 22 Sep 2022 14:09:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 1/2] drm/rockchip: dw_hdmi: relax mode_valid hook
Content-Language: en-GB
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, kernel@pengutronix.de,
 linux-rockchip@lists.infradead.org
References: <20220822152017.1523679-1-s.hauer@pengutronix.de>
 <20220822152017.1523679-2-s.hauer@pengutronix.de>
 <a279a697-6960-c517-8984-335aa207126a@arm.com>
 <20220825114025.GR17485@pengutronix.de>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20220825114025.GR17485@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_061015_261780_BD3C2E58 
X-CRM114-Status: GOOD (  21.47  )
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

On 25/08/2022 12:40 pm, Sascha Hauer wrote:
> On Wed, Aug 24, 2022 at 05:07:50PM +0100, Robin Murphy wrote:
>> On 2022-08-22 16:20, Sascha Hauer wrote:
>>> The driver checks if the pixel clock of the given mode matches an entry
>>> in the mpll config table. The frequencies in the mpll table are meant as
>>> a frequency range up to which the entry works, not as a frequency that
>>> must match the pixel clock. Return MODE_OK when the pixelclock is
>>> smaller than one of the mpll frequencies to allow for more display
>>> resolutions.
>>
>> Has the issue been fixed that this table is also used to validate modes on
>> RK3328, which doesn't even *have* the Synopsys phy? Last time I looked, that
>> tended to lead to complete display breakage when the proper phy driver later
>> decides it doesn't like a pixel clock that mode_valid already said was OK.
>>
>> The more general concern is that these known-good clock rates are good, but
>> others may not be even when nominally supported, which I suspect is the
>> dirty secret of why it was implemented this way to begin with. I would
>> really really love this patch so my RK3399 board can drive my 1920x1200
>> monitor at native resolution, but on the other hand my RK3288 box generates
>> such a crap 154MHz clock for that mode that - unless that's been improved in
>> the meantime too - patch #2 might be almost be considered a regression if it
>> means such a setup would start defaulting to an unusably glitchy display
>> instead of falling back to 1920x1080 which does at least work perfectly
>> (even if the slightly squished aspect ratio is ugly).
> 
> I could limit the change to rk3568 only. Would that be an option?
> Not sure if I should rk3399 as well then as this would work, at least in
> your setup.

I think for now it might be enough to force an exact match if 
hdmi->plat_data.phy_force_vendor is set, with a big fat comment that 
it's to preserve the previous behaviour until vendor phy support can be 
sorted out properly. Beyond that, given that RK3288 and RK3399 do 
nominally support 4K as well, I don't think we actually have to leave 
them out, I just wanted to flag up that untested non-standard clock 
rates are a known source of potential issues once we open the door to them.

Cheers,
Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
