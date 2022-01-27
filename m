Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00268C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jan 2022 10:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/18SRkXASGGYKsQydE37nCHDKObhPJmWdwf98JSzx8M=; b=YHrONyVEzpLg7B
	RxvzgGEL1F3cddS1paOie3/PsjQc2yQgKZqE1LVP3Exbj6dbY7ERU/VKzmK5t0InGtLWExFJJQYKV
	uwiAb2MJYf7OYqwgo1PevynBm04m7yjLYPd5Ki2zJeV7h8r+GzvAKn/zyuTbgI+zSzuHEbEIYFvzn
	E162UZp1/0pe6ldInekXdWCyF/gd5QHf3NTpOkt/2NVUuSdmeCNnEQiMjQaK/yadaE/lrU/iJQQnT
	NAlwBasnxeqt+9hf1KroJp4b1zP5ndsoMEThQAodjBT/XOm9rYcYorC8WKN3bY3FTf2Df08A9TUXa
	wO6iMFPy5xDXLwQZySDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nD1cy-00F2of-RI; Thu, 27 Jan 2022 10:03:40 +0000
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nD1V0-00F01V-7I; Thu, 27 Jan 2022 09:55:27 +0000
Received: by mail-yb1-xb35.google.com with SMTP id k17so6954503ybk.6;
 Thu, 27 Jan 2022 01:55:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/EedJrG4ul4UwFA3alRTDn+7vyfBymCk2ZRwzLvGunI=;
 b=VAkvS+4+4m9uodQr+lOef7e4aMBiZSRvbRhCl8EvFL8dPoU7aajphSlGTJwbf6G4RG
 +KAXXYIhkuR61kROEhKH5Y0ouyYWDZ48ay/s3NbZKieWtbC+xL3SRtHVmPFWVaqaB2A1
 f+bEkgdj4JRAYXZnHb6AXZgHtfuBQQBqO0Z8JDTwAzzyuIYU25252pG6JUgtROEXOH00
 BPRvyHAUGhHCL0i6LFN8ICnurGmT03vxwzT9kFJCcIpNC24vcFBOZiykXSAQ0PAQ61sy
 +Bw6JnodlGy+8diz8TaiJk6lQv4WXkYyYRl4Mg0Q8lLfCqHb0nBLN+gpsT38Xr+4gTgS
 q9gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/EedJrG4ul4UwFA3alRTDn+7vyfBymCk2ZRwzLvGunI=;
 b=F5iA4Db4AAHzG46xRuWB06nL/BB0kQvhHh2cE3ooReFUceh/UkLxe4JDY4UQZ9kRWs
 lHy+7elMaf616Ks8O3FqUSScqn1XxCWWTBpxheD58QdSPxtdHnurXQLOMvRGlzr4QzI0
 c97rqj06RsR0q7u8J8vYahtFLbLLXwetYXDEqoStNi3eqdxKeBrgdVC2G7bJLKnsJbis
 trf4Rbuk2IeArLmt2JZ26JjAgDEgKvYdqGF2RZP59jsezt7JVcJ/fjW8b+Hz9SolGXuI
 r4vZ2byAk7jF2gn/bLJlxBBm6WXaLk/dsHBJ3E4wTSCId8L5XvEMmpyobxiJpumohLP5
 zlUw==
X-Gm-Message-State: AOAM532ZCLqkp+r6yPLAj93HCali2NP7tENQ8q1NyWLAF57BRIxs2QHI
 V2qpCgjV3M+jiD5b1qno4aXSSujxsoa3B+RLho8tzwcRhq4=
X-Google-Smtp-Source: ABdhPJxprAY982Zt5MSbxLAgHsuavBv30BLYQ5498ZVxx3qKzuslSVSbiUu9KBNIyQ9Kxqga4qYumyh/Rxyodf8MQxk=
X-Received: by 2002:a25:dfc7:: with SMTP id w190mr4396026ybg.696.1643277324675; 
 Thu, 27 Jan 2022 01:55:24 -0800 (PST)
MIME-Version: 1.0
References: <20220127010023.3169415-1-pgwipeout@gmail.com>
 <20220127010023.3169415-4-pgwipeout@gmail.com>
 <07281029-0efd-0a74-0d96-92e3dcf5bbb7@gmail.com>
In-Reply-To: <07281029-0efd-0a74-0d96-92e3dcf5bbb7@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 27 Jan 2022 04:55:13 -0500
Message-ID: <CAMdYzYrKq==Bs0aonrJBC+W2c4nQ8cUn2dn_Se4WDaRCkT6SYg@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: add Quartz64-A sdmmc1 node
To: Johan Jonker <jbx6244@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220127_015526_329026_311CE64B 
X-CRM114-Status: GOOD (  22.96  )
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

On Thu, Jan 27, 2022 at 1:18 AM Johan Jonker <jbx6244@gmail.com> wrote:
>
>
>
> On 1/27/22 02:00, Peter Geis wrote:
> > The sdmmc1 node on Quartz64-A supports the optional wifi module from
> > Pine64.
> > Add the sdmmc1 node and requisite sdio_pwrseq to enable wifi support on
> > the Quartz64-A.
> >
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > ---
> >  .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 45 +++++++++++++++++++
> >  1 file changed, 45 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> > index 33c2c18caaa9..1d73ac6557c5 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> > @@ -91,6 +91,18 @@ simple-audio-card,codec {
> >               };
> >       };
> >
> > +     sdio_pwrseq: sdio-pwrseq {
>
> > +             status = "okay";
>
> When a node is not previously disabled, then there's no need for "okay".

Thanks, this is here in case an end user wants to easily hack the
board to use this for other purposes.

>
> > +             compatible = "mmc-pwrseq-simple";
> > +             clocks = <&rk817 1>;
> > +             clock-names = "ext_clock";
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&wifi_enable_h>;
> > +             reset-gpios = <&gpio2 RK_PC2 GPIO_ACTIVE_LOW>;
> > +             post-power-on-delay-ms = <100>;
> > +             power-off-delay-us = <5000000>;
> > +     };
> > +
> >       vcc12v_dcin: vcc12v_dcin {
> >               compatible = "regulator-fixed";
> >               regulator-name = "vcc12v_dcin";
> > @@ -147,6 +159,17 @@ vcc_sys: vcc_sys {
> >               regulator-max-microvolt = <4400000>;
> >               vin-supply = <&vbus>;
> >       };
> > +
> > +     /* sourced from vcc_sys, sdio module operates internally at 3.3v */
> > +     vcc_wl: vcc_wl {
> > +             compatible = "regulator-fixed";
> > +             regulator-name = "vcc_wl";
> > +             regulator-always-on;
> > +             regulator-boot-on;
> > +             regulator-min-microvolt = <3300000>;
> > +             regulator-max-microvolt = <3300000>;
> > +             vin-supply = <&vcc_sys>;
> > +     };
> >  };
> >
> >  &cpu0 {
> > @@ -475,6 +498,12 @@ pmic_int_l: pmic-int-l {
> >               };
> >       };
> >
> > +     sdio-pwrseq {
> > +             wifi_enable_h: wifi-enable-h {
> > +                     rockchip,pins = <2 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
> > +             };
> > +     };
> > +
> >       vcc_sd {
> >               vcc_sd_h: vcc-sd-h {
> >                       rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
> > @@ -516,6 +545,22 @@ &sdmmc0 {
> >       status = "okay";
> >  };
> >
> > +&sdmmc1 {
> > +     bus-width = <4>;
> > +     cap-sd-highspeed;
> > +     cap-sdio-irq;
>
> > +     disable-wp;
>
> From mmc-controller.yaml:
>
>   disable-wp:
>     $ref: /schemas/types.yaml#/definitions/flag
>     description:
>       When set, no physical write-protect line is present. This
>       property should only be specified when the controller has a
>       dedicated write-protect detection logic. If a GPIO is always used
>       for the write-protect detection logic, it is sufficient to not
>       specify the wp-gpios property in the absence of a write-protect
>       line. Not used in combination with eMMC or SDIO.

Appreciate it, I will drop this.

>
> > +     keep-power-in-suspend;
> > +     mmc-pwrseq = <&sdio_pwrseq>;
> > +     non-removable;
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&sdmmc1_bus4 &sdmmc1_cmd &sdmmc1_clk>;
> > +     sd-uhs-sdr104;
> > +     vmmc-supply = <&vcc_wl>;
> > +     vqmmc-supply = <&vcc_1v8>;
> > +     status = "okay";
> > +};
> > +
> >  &spdif {
> >       status = "okay";
> >  };

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
