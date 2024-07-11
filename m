Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 000C1C3DA41
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jul 2024 09:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hwfDFiCdrdv8VxMweajd9nDcVYE6na5rdB8RpeBhDNg=; b=a1KVvhG6CzekEb
	zd/YTrbOYM85pItRiT0O+7991vtvdmnpah8G7eUKhlB/uxor59LdMGhzm4w70Fe4AyqYLMIKY3AOo
	tTe/jFpnfd+QhmfcfiMAmEema8etruCQGasYPTV8YKL7YEElC33VB50zK8jFcYcG2/wgja1ZhO5rF
	yvhYM3dWjeBBJurfw9mUUT7BUnWMNuAdhaUR28wTZyYqnfnZzdqZgEbZZBLY7hlIIhxFDPT/s4d6p
	x1lKvVHFlPjwbFZg7UqwjhXaEvrVrsjBIv5ofMEEMAzGxeqkczsMMwvb2zmEEO7Sp1cPhNfoB5ytJ
	40pdvpUD+AW4ymSnCOlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRpon-0000000DJ3I-31kJ;
	Thu, 11 Jul 2024 09:10:25 +0000
Received: from mail-oo1-xc33.google.com ([2607:f8b0:4864:20::c33])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRpoU-0000000DIwr-21XB;
	Thu, 11 Jul 2024 09:10:07 +0000
Received: by mail-oo1-xc33.google.com with SMTP id 006d021491bc7-5c669a0b5d1so343127eaf.3;
        Thu, 11 Jul 2024 02:10:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720689005; x=1721293805; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XsucxGW9Y+TjxP5luc1qfbPrrug0CyYu7la7U7tC3b8=;
        b=ZXS8AYikTbNkP9i5jDxU8MsHIzU21/hvLFv91WgyiTLhbbAMlh2QffLZvus83RUX5E
         DBjToF3f5E9VTCXezlJFxABQr1E4BDVgsC+pUL5mk9Zbhqp4bsEWn/xSZo0dHGCp8/RV
         SbHYyE9hip6Bzw6O49Erxv62nF91+zhju26aahbjhohpCboGP3grex/h/Zjg/ZM1m7Yt
         vQzLO5dPSqUjGQL6FsbQ3IWmRVozWpokNKDMxVjNVrZ09h3n75XIw7mOCh96p3xfr0If
         0RpNH5nWZ3LuCfY7w5G/Ey4NTMz5oo4rzcmEKXw1QHCdfZOcZWJYc6Wa8HY11zW/7/D1
         BbSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720689005; x=1721293805;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XsucxGW9Y+TjxP5luc1qfbPrrug0CyYu7la7U7tC3b8=;
        b=KdRpeivjmZAcNB2vgQEjZT2Funfo0sjafcBGN44f3nrLZaE7T/nBzmjtF2tWToZEdB
         f4xBXF54XAf5vG4bgVFa2ELsA3Gqvs8YTaILrKU3SNLNAUNVS/L2s1FRp2qd6iXG/w1q
         Ww+0Pbuwy1EOkiHSnUr6ftEOhMDUuk4vBOEvIak0RWZC9wOQO8x24OHnkhtoL3vTUqQb
         Fd/brKnswXQQ0FWJae9v5TgrCbyjXtTq4nZ3W+CPYpXSgHTY649QAyMfcYLbS1U1PAKH
         SKultfyDTBwelQHlm/kg5/eOumeCJH/s5Al3IbMhLTU2a4WgvrEatHg4kJ4Rxo+2+WXf
         vc5w==
X-Forwarded-Encrypted: i=1; AJvYcCX/ks38aVPlzAif3Y+jsvUgULCo8cTV8cWurUiocUGY9qL+LjD3o9Ws/j4p22UqWK2FNiQ4XkhvkJYw51vTjoBuURaDkh43mPqs0OR5d+B9FsPg4bHrObeexfwvFacEBJSE1p7DuFD+EoUopamStBH4nPtgrImVWqU=
X-Gm-Message-State: AOJu0YwGB03sYAFtN5mo2jJtAvSGHmH125ddCpiUJusKueMiYslIXtp6
	11aotrMxtcMdBo3wYoRgByH0vS9TkQl/3zAynTrcNjqPfRqnP4c1x84UseySz6/GUSyNyKZ2Rzd
	YG3TgKjR1eYBU4n/O9BLZwWBJfY4=
X-Google-Smtp-Source: AGHT+IGMwf9afo3OG1lHgS1ygbb9ZfnegCOtYS2szd+hQvD0ovzyg8NehAjnnLFB/W90zesnDvVLncGZ45ZwhA2XryA=
X-Received: by 2002:a4a:51c1:0:b0:5c2:20eb:aebe with SMTP id
 006d021491bc7-5c68e49f1bamr8218134eaf.9.1720689005129; Thu, 11 Jul 2024
 02:10:05 -0700 (PDT)
MIME-Version: 1.0
References: <20240711060939.1128-1-linux.amoon@gmail.com> <a8c1f49e-bf25-4fd3-a16f-13088f75767f@kwiboo.se>
In-Reply-To: <a8c1f49e-bf25-4fd3-a16f-13088f75767f@kwiboo.se>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 11 Jul 2024 14:39:48 +0530
Message-ID: <CANAwSgQCn3jgiruiLs0cu-C+DguLtnk=msboAh8jNSF4P28gjA@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add missing pinctrl for PCIe30x4 node
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240711_021006_550207_50202635 
X-CRM114-Status: GOOD (  31.79  )
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

Hi Jonas,

Thanks for your review comments.

On Thu, 11 Jul 2024 at 14:13, Jonas Karlman <jonas@kwiboo.se> wrote:
>
> Hi Anand,
>
> On 2024-07-11 08:09, Anand Moon wrote:
> > Add missing pinctrl settings for PCIe 3.0 x4 clock request and wake
> > signals.Each component of PCIe communication have the following control
> > signals: PERST, WAKE, CLKREQ, and REFCLK. These signals work to generate
> > high-speed signals and communicate with other PCIe devices.
> > Used by root complex to endpoint depending on the power state.
> >
> > PERST is referred to as a fundamental reset. PERST should be held low
> > until all the power rails in the system and the reference clock are stable.
> > A transition from low to high in this signal usually indicates the
> > beginning of link initialization.
> >
> > WAKE signal is an active-low signal that is used to return the PCIe
> > interface to an active state when in a low-power state.
> >
> > CLKREQ signal is also an active-low signal and is used to request the
> > reference clock.
> >
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > ---
> > V2: Update the commit messge to describe the changs.
> >     use pinctl group as its pre define in pinctl dtsi
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 6 +-----
> >  1 file changed, 1 insertion(+), 5 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> > index 2e7512676b7e..ab3a20986c6a 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> > @@ -301,7 +301,7 @@ &pcie30phy {
> >
> >  &pcie3x4 {
> >       pinctrl-names = "default";
> > -     pinctrl-0 = <&pcie3_rst>;
> > +     pinctrl-0 = <&pcie30x4m1_pins>;
>
> Use of the existing pcie30x4m1_pins group may not be fully accurate for
> the PERST pin. The use of reset-gpios indicate that the PERST pin is
> used with GPIO function and the driver will implicitly change the
> function from perstn_m1 to GPIO. So this may not be best representation
> of the hw, hence my initial suggestion, something like:
>
>         pcie30x4_pins: pcie30x4-pins {
>                 rockchip,pins =
>                         <4 RK_PB4 4 &pcfg_pull_none>,
>                         <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>,
>                         <4 RK_PB5 4 &pcfg_pull_none>;
>         };
>
> Similar change should probably also be done for pcie2x1l0 and pcie2x1l2,
> not just pcie3x4.
>

Ok but it is better to update this in rk3588s-pinctrl.dtsi otherwise
the pcie30x4m1_pins
will not be used at all on all the boards
I will update the PERST pin to RK_FUNC_GPIO on all the pcie2x1l0,
pcie2x1l2 and  pcie30x4
is this ok for you?

> Regards,
> Jonas

Thanks
-Anand
>
> >       reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
> >       vpcie3v3-supply = <&vcc3v3_pcie30>;
> >       status = "okay";
> > @@ -341,10 +341,6 @@ pcie2_2_rst: pcie2-2-rst {
> >       };
> >
> >       pcie3 {
> > -             pcie3_rst: pcie3-rst {
> > -                     rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
> > -             };
> > -
> >               pcie3_vcc3v3_en: pcie3-vcc3v3-en {
> >                       rockchip,pins = <1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
> >               };
> >
> > base-commit: 34afb82a3c67f869267a26f593b6f8fc6bf35905
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
