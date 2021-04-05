Return-Path: <SRS0=J5Gw=JC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7E27C43470
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Apr 2021 08:57:13 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6781661245
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Apr 2021 08:57:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6781661245
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OmIJfdQrEt9druwf1VJfMP+pSdcHVhV+YufeD7pydhA=; b=QvqDZjAHt5uR2UmOnUGFQ0WEq
	se4qyBdIqLrd8fegqZhhETtUTlgIo+QxDVLURf92qF0Nb4VGKzO2W6oB+Tu3XdMOuwI+y+mx1Tl/j
	gnAj6fSZ1oun/1W9OdZYRCoq63efvSVHWsImgeJRB8eCXIyTlPVKdcmqDsGPAvN2nYQzM99OAh87d
	ZlSBeUI9DUy2u1OUD4wcNVkDeiaK0UQSlOECIfkrQ5h+pHI76McAwB5TaCSCOqTcsX0u0xhOW3jlZ
	vJGEeWSu8kt7Xt4hJAojoV+uYvPtU/fu858RXQBDnJ8GwqfbS+Ml/L8JoO8MEmYh9NRkZnRX6v10s
	FnhsXtAcw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lTL2j-00H0A5-ND; Mon, 05 Apr 2021 08:57:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lTL2V-00H08H-0j; Mon, 05 Apr 2021 08:56:57 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id EAB4961393;
 Mon,  5 Apr 2021 08:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617613013;
 bh=kr/6sN8tuduA4F6HDFz4zOQ0J1pE2XlaVrY2dUMgOng=;
 h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
 b=ggtKbw9Uu6ZqDi+Rns7FtXn8vDCMPLT3dMIrKmY69X8P0lx8S6jnmlUGLj7+JZdS9
 wa9adIq+dlI/Zrj3OQD3fZdvYkd3DFHdx4/fx9bGsjtDaFFPJaGN29A+Z0+f+eA0KI
 dmIauMgP7WuQ4dCJNZx90jQedY9ak0pvL+CML75oeODCMI4ATG1JSDqBS7EsHrSi0k
 V0B5HPUijP5QykKJSD5TrG60R23FPBc/mHSdJMQfwp7C/d2gHd7bTKLSRAlWm1jaT9
 1+piAASBaCEDvxrz5/MMy1FfParUoxsMh18qp6FLSh2iRgTVGahcyjjpsH91v55nui
 uuAzgVAPd75uQ==
Received: by mail-lj1-f169.google.com with SMTP id z8so11958320ljm.12;
 Mon, 05 Apr 2021 01:56:52 -0700 (PDT)
X-Gm-Message-State: AOAM530m6MahRsDm/tV+WvHJ5D1zOZVcnpvQyeMf9yZzwlQ9SHrk6AQo
 nocoalMZTWHfXUvyJrFJaXKp5RfLxVzcRB5F5PM=
X-Google-Smtp-Source: ABdhPJxBkA9pgGCG626Kz6QwB6SBWAuWEQdgmh+HthBulgeoakBIc6Jr6MojiArKUKaWgfDKYu15IWLAc8QdS2mq990=
X-Received: by 2002:a2e:7d04:: with SMTP id y4mr16080522ljc.94.1617613011247; 
 Mon, 05 Apr 2021 01:56:51 -0700 (PDT)
MIME-Version: 1.0
References: <20210405074459.4217-1-cnsztl@gmail.com>
 <CAGb2v66K3SFSkm9T_D6X5o7jSYOoYpYeS_yMp1k6nMonmjiHZA@mail.gmail.com>
 <CAOP2_Th4+ZXtYfrr2kWnnuuzzS-HdNvN6FVtMj=5-nk4QTOvnQ@mail.gmail.com>
In-Reply-To: <CAOP2_Th4+ZXtYfrr2kWnnuuzzS-HdNvN6FVtMj=5-nk4QTOvnQ@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 5 Apr 2021 16:56:38 +0800
X-Gmail-Original-Message-ID: <CAGb2v65c2jFQCuAg_PhqJA+_m5Vi-cX=f8yHZ41P=_XnhBvKNQ@mail.gmail.com>
Message-ID: <CAGb2v65c2jFQCuAg_PhqJA+_m5Vi-cX=f8yHZ41P=_XnhBvKNQ@mail.gmail.com>
Subject: Re: [PATCH] rockchip: enabled LAN port on NanoPi R2S
To: Tianling Shen <cnsztl@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Johan Jonker <jbx6244@gmail.com>, David Bauer <mail@david-bauer.net>, 
 Robin Murphy <robin.murphy@arm.com>, devicetree <devicetree@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210405_095655_635047_E826D12E 
X-CRM114-Status: GOOD (  31.10  )
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Apr 5, 2021 at 4:53 PM Tianling Shen <cnsztl@gmail.com> wrote:
>
> Hi Chen-Yu,
>
> On 2021-04-05 16:14, Chen-Yu Tsai <wens@kernel.org> wrote:
> >
> > Hi,
> >
> > On Mon, Apr 5, 2021 at 3:46 PM Tianling Shen <cnsztl@gmail.com> wrote:
> > >
> > > From: David Bauer <mail@david-bauer.net>
> > >
> > > Enable the USB3 port on the FriendlyARM NanoPi R2S.
> > > This is required for the USB3 attached LAN port to work.
> > >
> > > Signed-off-by: David Bauer <mail@david-bauer.net>
> > > Signed-off-by: Tianling Shen <cnsztl@gmail.com>
> > > ---
> > >  .../boot/dts/rockchip/rk3328-nanopi-r2s.dts   | 23 +++++++++++++++++++
> > >  1 file changed, 23 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
> > > index faf496d789cf..6ba9799a95c5 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
> > > @@ -37,6 +37,18 @@
> > >                 };
> > >         };
> > >
> > > +       vcc_rtl8153: vcc-rtl8153-regulator {
> > > +               compatible = "regulator-fixed";
> > > +               gpio = <&gpio2 RK_PC6 GPIO_ACTIVE_HIGH>;
> > > +               pinctrl-names = "default";
> > > +               pinctrl-0 = <&rtl8153_en_drv>;
> > > +               regulator-always-on;
> > > +               regulator-name = "vcc_rtl8153";
> > > +               regulator-min-microvolt = <5000000>;
> > > +               regulator-max-microvolt = <5000000>;
> >
> > This is just a simple switch, not an actual regulator.
> > It would make more sense to drop the voltage range and
> > instead have the implementation pass-through voltage
> > constraints from its parent.
>
> Thanks, I'll remove them in v2.
>
> >
> > > +               enable-active-high;
> > > +       };
> > > +
> > >         leds {
> > >                 compatible = "gpio-leds";
> > >                 pinctrl-0 = <&lan_led_pin>,  <&sys_led_pin>, <&wan_led_pin>;
> > > @@ -265,6 +277,12 @@
> > >                         };
> > >                 };
> > >         };
> > > +
> > > +       usb {
> > > +               rtl8153_en_drv: rtl8153-en-drv {
> > > +                       rockchip,pins = <2 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
> > > +               };
> > > +       };
> > >  };
> > >
> > >  &io_domains {
> > > @@ -364,6 +382,11 @@
> > >         dr_mode = "host";
> > >  };
> > >
> > > +&usbdrd3 {
> > > +       dr_mode = "host";
> > > +       status = "okay";
> >
> > Please also add a device node for the actual Ethernet controller, and
> > set up an aliases node for it, so that the bootloader has some place
> > to fill in a MAC address.
>
> But there's no valid (unique) MAC address for both this or on-board ethernet...
> They're non-existent in design.

Correct. And thanks for confirming that it's not just me and Robin that
got boards without the MAC address EEPROM...

If the user sets some MAC address in the bootloader environment by hand,
the bootloader could still potentially pass that MAC address to Linux
through the device tree. Whether the board has a valid address or not
is beside the point.


ChenYu


> Thanks,
> Tianling.
>
> >
> >
> > ChenYu
> >
> > > +};
> > > +
> > >  &usb_host0_ehci {
> > >         status = "okay";
> > >  };
> > > --
> > > 2.17.1
> > >
> > >
> > > _______________________________________________
> > > linux-arm-kernel mailing list
> > > linux-arm-kernel@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
