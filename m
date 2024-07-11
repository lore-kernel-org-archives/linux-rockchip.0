Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E4A2C3271E
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jul 2024 04:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oh2YfI2wlrxnK0wDd0TZ68E3z4Jeu+br7J7KruC1W1A=; b=MKZQNjXxedVrke
	e8LxmUPZIwsh8PE5jk9SduOsndzkckeqvZ4URdUTIBDvujDVTqj5nolHvuzWKDnrxuZM2cySPiU67
	7AfIv3S34B7RBeBj2Eg12TvSdwvAnR6Vm967imbmu5+biyyOO0FCsClagat3PxXjAB5dTGxNgHJdf
	2r3nHOwx8NklBMV9CNiTX1oq6IzYZEywsqFRy+PnzY0urQmC3d2YJCzltFnLuqGFfRxkkAvs1jsQ+
	UqGlZ+mjjGkWDJigCi/QGrW16n6GlCQ5eUAIKRc2hyudoQXL8aXwqaTEO7vfZvnFVEmc3+Cre5bEh
	eja8GPnf79qfYEfqmgZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRlbX-0000000Cgpo-3ne1;
	Thu, 11 Jul 2024 04:40:27 +0000
Received: from mail-oo1-xc30.google.com ([2607:f8b0:4864:20::c30])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRlbF-0000000Cgll-1TOD;
	Thu, 11 Jul 2024 04:40:11 +0000
Received: by mail-oo1-xc30.google.com with SMTP id 006d021491bc7-5caad707f74so236493eaf.1;
        Wed, 10 Jul 2024 21:40:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720672807; x=1721277607; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1Od3R3bcGX+eiybg0jI2BEJpMtPiCU3KF2hR8eo1Z/4=;
        b=J9ZGnU58+tNkpxPBTA7vBlVqNcAnVy837PQXE7oiW3p7GKfmv6a1o2vicyZHHThvU5
         wKVghpxCUNWFUjTmoafXJy4h8HJSl3ntgf/K7YHTHk72BtvAeTk33CqpaZhWhFZeoR+9
         3bX02KcxvYS2V/3fXyhW1n/7NF5pnmhY74FWIE9Hcsvvm6tmkcNgmN2Py3WobGJZhhz9
         SXNqBw4qu6s0T/OTs6tpRsGNV5r2+upvxI4C+kdoatiq6Qv/eBQ5p63TBcSyDSe4Fwj5
         N68qud8U2bA1WwheJ9I9WVos87YvN7DLxNlvYdS6Ns+Fi5a8DpIPfjOPcICYw4Iiylga
         RTtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720672807; x=1721277607;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1Od3R3bcGX+eiybg0jI2BEJpMtPiCU3KF2hR8eo1Z/4=;
        b=dBEGosZRHn3H5GubJQkcFKyA+Mj65FwKFlsUdnVUQzJxUu562lLabd/hBB/7/HEmXM
         5DavdWgaRtXfK0sdCbX8cZ6XpwmZgiY4kmRL26JvsnFiORhDkzTWw7NhaY9tqBD6HL7U
         CVPUPIZAQQbRbE9WOEiO+rY/rj4V4xsgUlS5WZf9fBrOISskwMODXl/qTR4ppRXpbDuu
         2MQ/VIeijylOuDApjyoEBFsTIZQT9Zil4rvU/c1kfAYBN64Dfmdq8UxJPUkdHvxPME4l
         l5BbJuPuzwrkx+fcnYmBGOPQ72JxICbtdncqFmvbKOkd/IOw1LbC8jGFTgd/zEMcO+VO
         nCTA==
X-Forwarded-Encrypted: i=1; AJvYcCUQc5bxhHd2X2n1b+ys96uwkUFy99f3rZpo88AzmZIPsqXZjWJRnpH4LYlWwJfbEQA+ZteMzAaubTsDpe5gFqh2nckl6t4VbwDrNHAPJ2hIyq9iVha3DZM/ZC62hFTghBVgp7vpJ6ZWxMKw1dXh3y/1ij2Y3swLApM=
X-Gm-Message-State: AOJu0Yz5VLQkV91ZtBKJl/9v6fQ+y+mN2fuspt+Bns5iZ2kudockk4sX
	JJa0i6O1nNxMA1EZTJqHY8VZPXYGSfVl3EcdaBeHUqv3ninELy6bDbK0uT2ImKTPwH4YbW4L8nx
	10A3PrpJgVAP/No0UcCf5Bg7btVQ=
X-Google-Smtp-Source: AGHT+IEE8wlvduAXJFfisR7I1tclcoNEn8rpUAB5g3dGOkqwD99eNjtH/GaAJE6cXZhxzKTWgoPhyzZTKR73rm0u4fc=
X-Received: by 2002:a05:6820:179a:b0:5c6:9320:4f1e with SMTP id
 006d021491bc7-5c693204f51mr9884607eaf.6.1720672807275; Wed, 10 Jul 2024
 21:40:07 -0700 (PDT)
MIME-Version: 1.0
References: <20240710142001.7234-1-linux.amoon@gmail.com> <84dc40f4-1948-4eb7-b16e-8a79357c2622@kwiboo.se>
 <CANAwSgQr2J_MU1idf5xGt4Q=gSLxLHJSEJGwnnPxWLhRjrx=6Q@mail.gmail.com>
In-Reply-To: <CANAwSgQr2J_MU1idf5xGt4Q=gSLxLHJSEJGwnnPxWLhRjrx=6Q@mail.gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 11 Jul 2024 10:09:50 +0530
Message-ID: <CANAwSgQqCtURhjLJSmiN_5sJQVurcaSsDmb6uqN9jyry=w3yXA@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: dts: rockchip: Add missing pinctrl for PCIe30x4 node
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_214009_436605_41254301 
X-CRM114-Status: GOOD (  22.96  )
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

On Wed, 10 Jul 2024 at 22:04, Anand Moon <linux.amoon@gmail.com> wrote:
>
> Hi Jonas,
>
> On Wed, 10 Jul 2024 at 20:11, Jonas Karlman <jonas@kwiboo.se> wrote:
> >
> > Hi Anand,
> >
> > On 2024-07-10 16:19, Anand Moon wrote:
> > > Add missing pinctrl settings for PCIe 3.0 x4 clock request and wake
> > > signals. Rename node from 'pcie3' to 'pcie30x4' to align with schematic
> > > nomenclature.
> > >
> > > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > > ---
> > >  .../boot/dts/rockchip/rk3588-rock-5b.dts      | 20 +++++++++++++------
> > >  1 file changed, 14 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> > > index 2e7512676b7e..a9b55b7996cf 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> > > @@ -301,7 +301,7 @@ &pcie30phy {
> > >
> > >  &pcie3x4 {
> > >       pinctrl-names = "default";
> > > -     pinctrl-0 = <&pcie3_rst>;
> > > +     pinctrl-0 = <&pcie30x4_perstn_m1 &pcie30x4_clkreqn_m1 &pcie30x4_waken_m1>;
> > >       reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
> > >       vpcie3v3-supply = <&vcc3v3_pcie30>;
> > >       status = "okay";
> > > @@ -340,14 +340,22 @@ pcie2_2_rst: pcie2-2-rst {
> > >               };
> > >       };
> > >
> > > -     pcie3 {
> > > -             pcie3_rst: pcie3-rst {
> > > -                     rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
> > > -             };
> > > -
> > > +     pcie30x4 {
> > >               pcie3_vcc3v3_en: pcie3-vcc3v3-en {
> > >                       rockchip,pins = <1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
> > >               };
> > > +
> > > +             pcie30x4_clkreqn_m1: pcie30x4-clkreqn-m1 {
> > > +                     rockchip,pins = <4 RK_PB4 RK_FUNC_GPIO &pcfg_pull_up>;
> > > +             };
> > > +
> > > +             pcie30x4_waken_m1: pcie30x4-waken-m1 {
> > > +                     rockchip,pins = <4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_down>;
> > > +             };
> >
> > Should these not be routed to the clkreqn_m1 and waken_m1 function
> > instead of gpio function?
> >
> > E.g. something like:
> >
> >                 pcie30x4m1_pins: pcie30x4m1-pins {
> >                         rockchip,pins =
> >                                 <4 RK_PB4 4 &pcfg_pull_none>,
> >                                 <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>,
> >                                 <4 RK_PB5 4 &pcfg_pull_none>;
> >                 };
> >
> > There are other rk35xx boards where only the perstn pin is configured
> > and could use a similar fix.
> >
>
> I understand this grouping for Gpio, but I am not very familiar with
> this feature.

Already we have a group of this pincrtl in the pinctrl.dtsi,
I will use this in my patch.

[0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/rockchip/rk3588s-pinctrl.dtsi?h=v6.10-rc7#n1775

Thanks for the tip.

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
