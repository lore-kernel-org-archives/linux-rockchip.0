Return-Path: <SRS0=J5Gw=JC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-19.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C18DC433ED
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Apr 2021 11:56:55 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2A19A6139E
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Apr 2021 11:56:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2A19A6139E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Qk9UDVYekgbFchQLvWLcGUEsNaoPHdNoLU/l44Em+I0=; b=PQFIspgJodsw8/02KvS2lEeYS
	jiPJaSmD7secUKe4EHpZiKzMz2BaWSkxRwC6RvaZy899O64pOCPaOIWTe6k5NLrT/ItqkawMSdNjD
	CZRKrTICKS+fN+NQvTWCyit279/Uiyi5sSQvsORkzuzI+X/evEzaYKN8rJtODeqKIkF1oGEqUOIvB
	mKn3RDmrnoS+VXrqLUKrgVPIOMc3CjbpC3/4VaOscW16Q8BtEpjtDw1rMmZF+oRpGK8nVIaeSs1u7
	DSg9J0hisqo8qETpcb6fr7p+YdhwkAOWuPAQthlecoKqIEPeTqvijM30UtUBOFAXSzuqFgRlgS1Wu
	v7oIna7Ew==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lTNqd-00HD2s-15; Mon, 05 Apr 2021 11:56:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lTNqP-00HD1t-CA; Mon, 05 Apr 2021 11:56:40 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 32AE76139E;
 Mon,  5 Apr 2021 11:56:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617623795;
 bh=qD0D8WJ+lKgn1aSNGRrMa7S04oUn0rYr1F45lHkry/8=;
 h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
 b=rXd8uJhOjbc4Dr32iA/NRdSbIdb9oEMeL761dE57tYjIqIGjW8gklGIiMYgJqUp+O
 D/gVJeYmWNweOKaiDuivOE/j/bKhsywJ7sDBhDho3J5wQqYE+TitvXUpUiB4YJd+fH
 8kQNnDZIJRzLveEhHmDVWfTnd2eJp+0gDBS9rY++B8Pe5j4URKBDfzqj+81m8Jwo5K
 6Oi0kPaWY/fffvPq0ZS8HZWKf4FyysUgehnWwyblYYhKJGQRSOr78r0w0Pno88rr6w
 GmRPiy0shj/jEYNW7lWiFXVZsvCqJwdfd6QtoRu5qzJbrCqwLru6SQuSZC/CpCdyv7
 N1lPQ1VPhl08A==
Received: by mail-lf1-f54.google.com with SMTP id w28so16991027lfn.2;
 Mon, 05 Apr 2021 04:56:35 -0700 (PDT)
X-Gm-Message-State: AOAM5323aSHqF5SVqllEolFdQZ+ji0afNH3bLEXJ0Z+XQ/DQ+zF6hMBB
 DQS4oyWX1+zwb0z6R5BW0uTStjG1X4ghSrpXdJk=
X-Google-Smtp-Source: ABdhPJwyUesL4g5lSOGAcVCqL7ntODZwSA2VUpWJDrzGbvihgoTOYhadpu89RuJjTOFujFsjdeHrDEdGzko2qkzu0KQ=
X-Received: by 2002:ac2:46ee:: with SMTP id q14mr17318622lfo.303.1617623793546; 
 Mon, 05 Apr 2021 04:56:33 -0700 (PDT)
MIME-Version: 1.0
References: <20210405093423.16149-1-cnsztl@gmail.com>
 <c12341c8-8590-8314-d59b-3d5903041491@gmail.com>
In-Reply-To: <c12341c8-8590-8314-d59b-3d5903041491@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 5 Apr 2021 19:56:21 +0800
X-Gmail-Original-Message-ID: <CAGb2v65vdH-6h-y_SLUqSqgAOh3+2=BHV8hgABbKcEF23GBWkg@mail.gmail.com>
Message-ID: <CAGb2v65vdH-6h-y_SLUqSqgAOh3+2=BHV8hgABbKcEF23GBWkg@mail.gmail.com>
Subject: Re: [PATCH v2] rockchip: enabled LAN port on NanoPi R2S
To: Johan Jonker <jbx6244@gmail.com>, Tianling Shen <cnsztl@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 David Bauer <mail@david-bauer.net>, Robin Murphy <robin.murphy@arm.com>, 
 devicetree <devicetree@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210405_125637_813556_CD8499FC 
X-CRM114-Status: GOOD (  23.73  )
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

On Mon, Apr 5, 2021 at 7:03 PM Johan Jonker <jbx6244@gmail.com> wrote:
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

The USB devices binding seems to specify "device" and then
"interface" sub-nodes.

> > +             compatible = "realtek,rtl8153";
>
> Since a while Rob has improved has scripts.
> There's no escape anymore.
> Add a YAML document to this serie for "realtek,rtl8153".

Actually it should be "usbbda,8153", which conforms to

    Documentation/devicetree/bindings/usb/usb-device.yaml

Giving "realtek,rtl8153" to the kernel will not help it match any
device.

ChenYu

> Improve checking for undocumented compatible strings
> https://github.com/devicetree-org/dt-schema/commit/93e7ada8d53af099074cb5d53f7caa12835784e0
>
> > +             reg = <2>;
>
> Why 2 ?
>
> > +
>
> > +             local-mac-address = [ 00 00 00 00 00 00 ]; /* Filled in by U-Boot */
>
> This is a private property.
> In a generic dts that's up to the user.
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
