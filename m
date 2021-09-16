Return-Path: <SRS0=2I9J=OG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80CA6C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Sep 2021 20:11:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 46B9160E97
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Sep 2021 20:11:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 46B9160E97
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yVXUXzbYvv6gYzTVzvRTiFhxaHZslEVDVEgnNOkJL74=; b=M+muQ+SLQeCsyW
	fyfad1J3bjxqCvscMAoVEOwSCPKrMoWJ5jQtVSw1SksX5P/MjjnUR8/k/SuXGuC6e4939s330RzIh
	1hVfH4/9yhmKIStMA3SK9X9+0v2De7B3xe98nlkS6mBnwFPvUnXfOrFv3pcJsmeriGB+lLvqQHH5t
	Aif8erGQyMZS/7Sa9ByDhdx87hAnpRQe9LstK5eZKeV7Y8nefc7zwhENIRZLrt1NmHhvrtkngMdDI
	UNuLqlwb42tY4CqIqMsqR/YUutran2CJWaUJFbLeT5Q2XU6d1mt/CcV4qzy1EthYygDIKId6hdDhw
	TIVehu5CAxJmxFfg1cvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQxjB-00CJxy-S0; Thu, 16 Sep 2021 20:11:25 +0000
Received: from mail-il1-x129.google.com ([2607:f8b0:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQxj9-00CJx5-00
 for linux-rockchip@lists.infradead.org; Thu, 16 Sep 2021 20:11:24 +0000
Received: by mail-il1-x129.google.com with SMTP id w1so7897571ilv.1
 for <linux-rockchip@lists.infradead.org>; Thu, 16 Sep 2021 13:11:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=APWqHBEzdXZzdLiOIyrdv4QWCbABBWwTYsZdYBOwgKo=;
 b=QBLdwUFqXd1ByjixIWMqkf/7ci57a2fBos1DwOE7LjmLAVDGmDDnf5gVjqUX7yrDsI
 hl7C8/pUlNbzkmw8fisw229fO9Thg9JbkBnVyMUPyWCZTgCvz7O1Nd9vzE/BhNDcnbH/
 bgkTSaEaae6c5M4f6+tXWlJk2IkJ0rXB6Amgw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=APWqHBEzdXZzdLiOIyrdv4QWCbABBWwTYsZdYBOwgKo=;
 b=pdUDnsnLnplt5MnVr7doEBWS9gXOurS1JGgwpukvOA7M9fPbx0T7EummdrH/bbWQjy
 R3cwsCqYFIE9oTii8g2CjLnJ+LzIq/ZAtdkBotmllypGuCBO3CbntKY67m52z2yN3T7M
 VWNprsZ/Vid0Jc8hSBCiKCT2paCU7kcnwhXr+tay2NW7Y9TQZuXzOw7u/+cvt7Rfsbt2
 Ah2vDWrFCgB/0s3Qwer8/jAGBltWjwTbU3gY3u2T2pfXADzryIc5ZZvusmNOCs6fVxaC
 YoMZCHVMCTBGE4KzM+RQF9A8H/SdMRv1BkraYpzSj4O45a893hb03xryk6S5RfluAPl3
 4twQ==
X-Gm-Message-State: AOAM530i4gSaG+V2QMO36fQfzXJV6kgPFJ3N7xmCZ5W5r+UDeJK+s9QN
 OFO5+eppyRF5bBzfu56TyiqMq1OFcX3csQ==
X-Google-Smtp-Source: ABdhPJynHzwBICpRV6tQrnD6kcylHYXCaUk1WuGwl6Cn8jbXN9lkXL6/yvh+mAFyeYGZYg1l9FPUXA==
X-Received: by 2002:a05:6e02:154e:: with SMTP id
 j14mr5315406ilu.226.1631823081362; 
 Thu, 16 Sep 2021 13:11:21 -0700 (PDT)
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com.
 [209.85.166.48])
 by smtp.gmail.com with ESMTPSA id c11sm2356124ilu.74.2021.09.16.13.11.20
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Sep 2021 13:11:20 -0700 (PDT)
Received: by mail-io1-f48.google.com with SMTP id s20so801628ioa.4
 for <linux-rockchip@lists.infradead.org>; Thu, 16 Sep 2021 13:11:20 -0700 (PDT)
X-Received: by 2002:a5d:8458:: with SMTP id w24mr5699438ior.168.1631823080237; 
 Thu, 16 Sep 2021 13:11:20 -0700 (PDT)
MIME-Version: 1.0
References: <20210916193343.10206-1-macroalpha82@gmail.com>
In-Reply-To: <20210916193343.10206-1-macroalpha82@gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 16 Sep 2021 13:11:07 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VGX2xV88_S37bSAd9KQsBX7ko3W046JMp8EFUuuQhJFA@mail.gmail.com>
Message-ID: <CAD=FV=VGX2xV88_S37bSAd9KQsBX7ko3W046JMp8EFUuuQhJFA@mail.gmail.com>
Subject: Re: [PATCH v2] drm/rockchip: Update crtc fixup to account for
 fractional clk change
To: Chris Morgan <macroalpha82@gmail.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Sandy Huang <hjc@rock-chips.com>, 
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
 dri-devel <dri-devel@lists.freedesktop.org>,
 Chris Morgan <macromorgan@hotmail.com>, 
 Brian Norris <briannorris@chromium.org>, Chen-Yu Tsai <wenst@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210916_131123_102757_C6B8F0BA 
X-CRM114-Status: GOOD (  36.82  )
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

Hi,

On Thu, Sep 16, 2021 at 12:33 PM Chris Morgan <macroalpha82@gmail.com> wrote:
>
> From: Chris Morgan <macromorgan@hotmail.com>
>
> Fixes commit 287422a95fe2 ("drm/rockchip: Round up _before_ giving to
> the clock framework")

This belongs at the bottom of the commit and needs a colon. It also
shouldn't be word-wrapped.


> After commit 928f9e268611 ("clk: fractional-divider: Hide
> clk_fractional_divider_ops from wide audience") was merged it appears
> that the DSI panel on my Odroid Go Advance stopped working. Upon closer
> examination of the problem, it looks like it was the fixup in the
> rockchip_drm_vop.c file was causing the issue. The changes made to the
> clk driver appear to change some assumptions made in the fixup.
>
> After debugging the working 5.14 kernel and the no-longer working
> 5.15 kernel, it looks like this was broken all along but still
> worked, whereas after the fractional clock change it stopped
> working despite the issue (it went from sort-of broken to very broken).
>
> In the 5.14 kernel the dclk_vopb_frac was being requested to be set to
> 17000999 on my board. The clock driver was taking the value of the
> parent clock and attempting to divide the requested value from it
> (17000000/17000999 = 0), then subtracting 1 from it (making it -1),
> and running it through fls_long to get 64. It would then subtract
> the value of fd->mwidth from it to get 48, and then bit shift
> 17000999 to the left by 48, coming up with a very large number of
> 7649082492112076800. This resulted in a numerator of 65535 and a
> denominator of 1 from the clk driver. The driver seemingly would
> try again and get a correct 1:1 value later, and then move on.
>
> Output from my 5.14 kernel (with some printfs for good measure):
> [    2.830066] rockchip-drm display-subsystem: bound ff460000.vop (ops vop_component_ops)
> [    2.839431] rockchip-drm display-subsystem: bound ff450000.dsi (ops dw_mipi_dsi_rockchip_ops)
> [    2.855980] Clock is dclk_vopb_frac
> [    2.856004] Scale 64, Rate 7649082492112076800, Oldrate 17000999, Parent Rate 17000000, Best Numerator 65535, Best Denominator 1, fd->mwidth 16
> [    2.903529] Clock is dclk_vopb_frac
> [    2.903556] Scale 0, Rate 17000000, Oldrate 17000000, Parent Rate 17000000, Best Numerator 1, Best Denominator 1, fd->mwidth 16
> [    2.903579] Clock is dclk_vopb_frac
> [    2.903583] Scale 0, Rate 17000000, Oldrate 17000000, Parent Rate 17000000, Best Numerator 1, Best Denominator 1, fd->mwidth 16
>
> Contrast this with 5.15 after the clk change where the rate of 17000999
> was getting passed and resulted in numerators/denomiators of 17001/
> 17000.
>
> Output from my 5.15 kernel (with some printfs added for good measure):
> [    2.817571] rockchip-drm display-subsystem: bound ff460000.vop (ops vop_component_ops)
> [    2.826975] rockchip-drm display-subsystem: bound ff450000.dsi (ops dw_mipi_dsi_rockchip_ops)
> [    2.843430] Rate 17000999, Parent Rate 17000000, Best Numerator 17018, Best Denominator 17017
> [    2.891073] Rate 17001000, Parent Rate 17000000, Best Numerator 17001, Best Denominator 17000
> [    2.891269] Rate 17001000, Parent Rate 17000000, Best Numerator 17001, Best Denominator 17000
> [    2.891281] Rate 17001000, Parent Rate 17000000, Best Numerator 17001, Best Denominator 17000
>
> I have tested the change extensively on my Odroid Go Advance (Rockchip
> RK3326) and it appears to work well. However, this change will affect
> all Rockchip SoCs that use this driver so I believe further testing
> is warranted. Please note that without this change I can confirm
> at least all PX30s with DSI panels will stop working with the 5.15
> kernel.
>
> Upon advice from Doug Anderson <dianders@chromium.org> it was decided
> that we would first check if the clock rate can be set exactly as
> requested, and only if it could not would we then add 999 to it and
> attempt the process again. This way we can preserve the behavior for
> clocks that still need it while resolving the specific issue for the
> PX30 and DSI panels (since it is using a fractional clock).
>
> Changes since v1:
>
>  - Made the addition of 999 conditional based on whether the clock
>    subsystem can set the actual clock rate as requested.
>  - Updated the notes in the fixup routine to reflect this new behavior.
>  - Added reference to original commit, as this has technically been
>    broken since then however only now is it an issue due to the clock
>    changes.
>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 26 ++++++++++-----------
>  1 file changed, 12 insertions(+), 14 deletions(-)

I'm happy with this as a fix.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
