Return-Path: <SRS0=2XDZ=JD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F067CC433ED
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Apr 2021 12:10:44 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 96616613CA
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Apr 2021 12:10:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 96616613CA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KMqAbiQKVHcnDnBw41qHNQXmuAMRJ54f7akAK7Rw47E=; b=ZayHVky1lUGbyMB9a58SUiBmf
	B+huB2XgJ8esYx1S1czX7AB+i6HtZACQuMOondOgKHMHXFkQ13UZMbnHUXEUC+0X3BHrHaKp/Oi3M
	KirClaReZCIMQhG+sKjDgPrLS2WbGlWywBgFZ2i1QAjwu96Klj4gYeh3u+Nqx57TeAbNnX89V2Dig
	uQfus/LoVu4/QiGSaKzhHWTGDuHXoOFIV6EwDl5nmwKlQXWHpN/hwKcRU4qe1UXnotEbO0n9Z3T08
	IeeRta1qVRPUyg7790FG8MmhE6ajMwqaaKYtmpymJRvxz0FVZ4EyhNBRDYXvqd3yUiR7mOIGw3oDr
	OQVEx+Pjw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lTkXX-002W3Y-8Z; Tue, 06 Apr 2021 12:10:39 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lTkXL-002W0j-F5; Tue, 06 Apr 2021 12:10:29 +0000
Received: by mail-lf1-x134.google.com with SMTP id b14so22301618lfv.8;
 Tue, 06 Apr 2021 05:10:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A0FXSTiM7GC4Mvwuv2T0oynhHNDd7L5en4InWzjAui8=;
 b=immwf48ORJKbTnbiusrILWixOG0SjnZnU9YsXi79NfCDXcOLmUuRT1TsielKwFzHRf
 Q0UFpaJ08oq0o9TvShdrZ4y3scfNFZbr1RmMFzwVE3qZo8u15YbEuSJukLC1Poe+26eE
 w7KRKoVL+KN5ShIDhGdc4DbyURCW1fAo9d8IB2k6TiX20Gwi/DDNmeb/JL4sCev+sf8i
 kHElm7txv2YKTsQucNpYG2gZndEnTjBAMLxIF6d2Zm9bmYE3MQnv8T6vkdt5ESZfGGpM
 X3zkBX9nBP3ZSqqoqQ0wpPmiLBtqmEvYqsEmeXaW3PtBzQ5n0wPNkABvzmdHj48Yz7V5
 PeUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A0FXSTiM7GC4Mvwuv2T0oynhHNDd7L5en4InWzjAui8=;
 b=qZ1Yl2iQih8g8/4+vFtNjaUJKDRc6DaMdjqXB6ixHblsHZH7j2OOOlzLc0vxGvPN2C
 dv6uFDqC0Pu4VgoifjDaPSRai8G4QMqtmbv6TBnwrhXKoNKhiE80lpPEM8qXq2wpYEIX
 K8NPmAfg+qrbvpEHLfkRYWMbpRztrsNadPMDcqfe6wzFuRfd9ZZjG14pd/BqbmwEGiCj
 k2RV8zpVZXh4eRrlGws1tN6cIfSXi0aldOwMLvtzqExeAffQiJXuRYltvFmdTnl4lnGW
 3xuwkYAuVezQeVp69E+tpOz2m7V6u952IXXmXO/3UdtnrLO5VwMsSkxKUqpBI59ReiEu
 GoFQ==
X-Gm-Message-State: AOAM532FE39xSZc3RS+1yYzQYkUrZc604FtsbWlyluQEhGQwbqlj1sMK
 4zeXNeLg9L61MoCY5Yo1PYn2klXEIh6YKDqaLRmlrK0ZW20=
X-Google-Smtp-Source: ABdhPJy5j7Oe8GDmvwGPYJBow20bn4HG2AffSOHb5q7QrCTnk5XtXrtLuRd9Vm9lhM9/OaOc98uquqs4FenNXOVGvNM=
X-Received: by 2002:ac2:5ca7:: with SMTP id e7mr20852931lfq.646.1617711026053; 
 Tue, 06 Apr 2021 05:10:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210405093423.16149-1-cnsztl@gmail.com>
 <c12341c8-8590-8314-d59b-3d5903041491@gmail.com>
In-Reply-To: <c12341c8-8590-8314-d59b-3d5903041491@gmail.com>
From: Tianling Shen <cnsztl@gmail.com>
Date: Tue, 6 Apr 2021 20:10:14 +0800
Message-ID: <CAOP2_Tjm9k0n_=_8+kZhFh_xC7o+ne1EWiL2UKWGXpUY+L2vRA@mail.gmail.com>
Subject: Re: [PATCH v2] rockchip: enabled LAN port on NanoPi R2S
To: Johan Jonker <jbx6244@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 David Bauer <mail@david-bauer.net>, Robin Murphy <robin.murphy@arm.com>, 
 Chen-Yu Tsai <wens@kernel.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210406_131027_611816_5EBF3E56 
X-CRM114-Status: GOOD (  25.73  )
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

Hi Johan,

On 2021-04-05 19:03, Johan Jonker <jbx6244@gmail.com> wrote:
>
> Hi Tianling,
>
> On 4/5/21 11:34 AM, Tianling Shen wrote:
> > From: David Bauer <mail@david-bauer.net>
> >
> > Enable the USB3 port on the FriendlyARM NanoPi R2S.
> > This is required for the USB3 attached LAN port to work.
> >
> > Signed-off-by: David Bauer <mail@david-bauer.net>
> > [added device node for USB Ethernet controller]
> > Signed-off-by: Tianling Shen <cnsztl@gmail.com>
> > ---
> >  .../boot/dts/rockchip/rk3328-nanopi-r2s.dts   | 32 +++++++++++++++++++
> >  1 file changed, 32 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
> > index faf496d789cf..18936b393d9d 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
> > @@ -13,6 +13,10 @@
> >       model = "FriendlyElec NanoPi R2S";
> >       compatible = "friendlyarm,nanopi-r2s", "rockchip,rk3328";
> >
> > +     aliases {
> > +             ethernet1 = &r8153;
> > +     };
> > +
> >       chosen {
> >               stdout-path = "serial2:1500000n8";
> >       };
> > @@ -37,6 +41,16 @@
> >               };
> >       };
> >
>
> > +     vcc_rtl8153: vcc-rtl8153-regulator {
>
> sort nodename
>
> > +             compatible = "regulator-fixed";
> > +             gpio = <&gpio2 RK_PC6 GPIO_ACTIVE_HIGH>;
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&rtl8153_en_drv>;
> > +             regulator-always-on;
>
> > +             regulator-name = "vcc_rtl8153";
>
> exception to the sort rule
> sort regulator-name above all other regulator properties
>
> > +             enable-active-high;
>
> sort
>
> ----
> Heiko's sort rules:
>
> compatible
> reg
> interrupts
> [alphabetical]
> status [if needed]
>
> ----

Thank you very much, and I will update it in v3.

>
> > +     };
> > +
> >       leds {
> >               compatible = "gpio-leds";
> >               pinctrl-0 = <&lan_led_pin>,  <&sys_led_pin>, <&wan_led_pin>;
> > @@ -265,6 +279,12 @@
> >                       };
> >               };
> >       };
> > +
> > +     usb {
> > +             rtl8153_en_drv: rtl8153-en-drv {
> > +                     rockchip,pins = <2 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
> > +             };
> > +     };
> >  };
> >
> >  &io_domains {
> > @@ -364,6 +384,18 @@
> >       dr_mode = "host";
> >  };
> >
> > +&usbdrd3 {
> > +     dr_mode = "host";
> > +     status = "okay";
> > +
>
> > +     r8153: usb-eth@2 {
>
> With YAML undocumented additional properties and nodes generate
> notifications.
> We need a change in the documents below for that.
> rockchip,dwc3.yaml > usb-drd.yaml > usb.yaml
>
> Is there a standard for the usb-eth nodename?
>
> > +             compatible = "realtek,rtl8153";
>
> Since a while Rob has improved has scripts.
> There's no escape anymore.
> Add a YAML document to this serie for "realtek,rtl8153".

This is actually added by another patch[1], but doesn't go to upstream yet.
I'll ask David if he would like to submit it.

Kindly ping David.

1:
https://github.com/openwrt/openwrt/blob/master/target/linux/rockchip/patches-5.10/002-net-usb-r8152-add-LED-configuration-from-OF.patch
https://github.com/openwrt/openwrt/blob/master/target/linux/rockchip/patches-5.10/003-dt-bindings-net-add-RTL8152-binding-documentation.patch

>
> Improve checking for undocumented compatible strings
> https://github.com/devicetree-org/dt-schema/commit/93e7ada8d53af099074cb5d53f7caa12835784e0
>
> > +             reg = <2>;
>
> Why 2 ?
>

This is the device number on the USB bus.

> > +
>
> > +             local-mac-address = [ 00 00 00 00 00 00 ]; /* Filled in by U-Boot */
>
> This is a private property.
> In a generic dts that's up to the user.

Okay I will drop this.

Thanks,
Tianling.

>
> > +     };
> > +};
> > +
> >  &usb_host0_ehci {
> >       status = "okay";
> >  };
> >
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
