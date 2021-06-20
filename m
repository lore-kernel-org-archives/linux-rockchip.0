Return-Path: <SRS0=GbX+=LO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A3ACC48BDF
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Jun 2021 04:41:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A0311611C1
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Jun 2021 04:41:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A0311611C1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2doZX9jjJYYi8GRE7wQyyQQqEk5pz5E8qZ+D1HMXhUU=; b=0hG9o291kJYcDT
	0AXJ245+BOaHuHPTUUnA1Oj0sIe3lyYmGuo+GHfA4BRyAusBDWJeI88YRT1rrgRlNviF4tMe309V/
	svcYg8JNlQIvDtJSdLIsZ8AcvXd/NTSKagg0RNUU8KTvEcB5Gzd6nxaFytC7qdGy46OHOHvVK9RKU
	wCLMwPDg4LjQ4IbmDE4cJhJdzazp1UnVMBC2NzGdYjrVtlo94w8pslh0LheNiXFHwQmTWCfkl6egq
	NGzRWd9xo8mPodbS+vpMGtS+aZqQ300IfQXNNeMPfwpxdzAsoRmpzNzDLXDcFP8uBS2DSWC61Nn9s
	xaMxr+nEB6xbnneQYzfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lupHM-000SkY-S7; Sun, 20 Jun 2021 04:41:52 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lupHB-000Sjd-1D; Sun, 20 Jun 2021 04:41:42 +0000
Received: by mail-lj1-x22b.google.com with SMTP id k8so19886399lja.4;
 Sat, 19 Jun 2021 21:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eQIafI1N7mjXxp3LAVwoSKl9w56iiYhETX/yM5Qkk24=;
 b=SVtK2CyTmyg1plwJNmyDeAbTqa3x5YAJ/WVA2TwgFQm9ZOIqdwtoclFf1yNjoMqz1a
 Gg+RWjOjUGQZeuD05pPi3Y5fHALGeU8ncWQ710CMfETDltN+052a8ZPeuQqRfN3vja0o
 zCMHGMqZ2YrFYYX3+bV/hjWyQ8EYK4EZWhlTAnCfJgAZWLJsBDcznTIRjebn0/vSyUwb
 G3ItxLleyLDe9aoviS/xLP+QOcMgAH68KStEPMytOhsayf/L0vns7TTznMokJeqppyWg
 OW4QYRmnOUWTvZKwf89mEqU4bcnsi8NnJZmBcbUQkEV+s0LIUQeDdIcoanjQ3tN4NzDP
 EoSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eQIafI1N7mjXxp3LAVwoSKl9w56iiYhETX/yM5Qkk24=;
 b=q4ljejCmaiwOTEGIFVg8SIlJcgXNfpBsW8wlff8tHMeHxhpTIQQm2yIrEuGKwn7wGr
 UZweSzBhuwXaO5Z4fsMLVWXEQ5Gc63jyswufNqZJ3qTP5A/bZHjnVMr6LxK/6lrf+Q2Y
 KbXpZghIyjtVqViVOE71RfwfxIJHKejvGJCbk4ZTPlfR7xVZuyvlPK3MuQhOx/nRoCVa
 TxwbfSyujV6cXPINKw2oX/9vslsvh1kXDDO0QxooEYm5+izGUSK0DR1rINLdIY7uCmFD
 0wvtMH+O39L22GFUdkzUE0uk+GY8/qW9VMrErebPtTTDrs8SnO6OfPp7pAbo2nI+CG+5
 8Dww==
X-Gm-Message-State: AOAM531mOyc4oIHeCkwDT1upyPkw2tJqBOE1VVqQvkX0kf6pCkB+OcG7
 KqfArKcywbDZJDVup6QhnLMbB9zj0Pq8Jp24svg=
X-Google-Smtp-Source: ABdhPJz22ETIbOAUVHSeyZDBJygZsTtsDcL2NDGUCUqCaojgtaGjtPMi66K3pjkpKBqnER1/ZArOrSaU6Y3KYllI0k4=
X-Received: by 2002:a05:651c:111:: with SMTP id
 a17mr16371960ljb.151.1624164095734; 
 Sat, 19 Jun 2021 21:41:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210610091357.6780-1-cnsztl@gmail.com> <4448985.BddDVKsqQX@phil>
In-Reply-To: <4448985.BddDVKsqQX@phil>
From: Tianling Shen <cnsztl@gmail.com>
Date: Sun, 20 Jun 2021 12:41:23 +0800
Message-ID: <CAOP2_TgO98D5T8TfYNjKzD3cZR1Hcp9=RYS56_WKtta_GZ85-g@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: add EEPROM node for NanoPi R4S
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 Marty Jones <mj8263788@gmail.com>, 
 Jensen Huang <jensenhuang@friendlyarm.com>, Chen-Yu Tsai <wens@csie.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210619_214141_139443_4C759286 
X-CRM114-Status: GOOD (  21.38  )
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

Hi Heiko,

On Sun, Jun 20, 2021 at 6:11 AM Heiko Stuebner <heiko@sntech.de> wrote:
>
> Hi,
>
> Am Donnerstag, 10. Juni 2021, 11:13:57 CEST schrieb Tianling Shen:
> > NanoPi R4S has a EEPROM attached to the 2nd I2C bus (U92), which
> > stores the MAC address.
> >
> > Changes in v2:
> > - Added the size of EEPROM
> > - Added `mac-address` cell to pass the MAC address to kernel
> > - Removed `read-only` property in EEPROM node
> >
> > Signed-off-by: Tianling Shen <cnsztl@gmail.com>
>
> this produces errors when building the dtb:
>   DTC     arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dtb
> ../arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts:84.4-22: Warning (reg_format): /i2c@ff120000/eeprom@51/mac-address@fa:reg: property has invalid length (8 bytes) (#address-cells == 2, #size-cells == 1)
> arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtb: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
> arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtb: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
> arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtb: Warning (spi_bus_reg): Failed prerequisite 'reg_format'
> ../arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts:83.31-85.5: Warning (avoid_default_addr_size): /i2c@ff120000/eeprom@51/mac-address@fa: Relying on default #address-cells value
> ../arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts:83.31-85.5: Warning (avoid_default_addr_size): /i2c@ff120000/eeprom@51/mac-address@fa: Relying on default #size-cells value
>
> in the eeprom node you'll need to define #address-cells and #size-cells
> for this to work.

Thanks for pointing this out, added in v3.

Thanks,
Tianling.

>
> Thanks
> Heiko
>
>
> > ---
> >  .../boot/dts/rockchip/rk3399-nanopi-r4s.dts    | 18 ++++++++++++++++++
> >  1 file changed, 18 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> > index cef4d18b599d..50d3b11eb925 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> > @@ -68,6 +68,24 @@
> >       status = "disabled";
> >  };
> >
> > +&gmac {
> > +     nvmem-cells = <&mac_address>;
> > +     nvmem-cells-names = "mac-address";
> > +};
> > +
> > +&i2c2 {
> > +     eeprom@51 {
> > +             compatible = "microchip,24c02", "atmel,24c02";
> > +             reg = <0x51>;
> > +             pagesize = <16>;
> > +             size = <256>;
> > +
> > +             mac_address: mac-address@fa {
> > +                     reg = <0xfa 0x06>;
> > +             };
> > +     };
> > +};
> > +
> >  &i2c4 {
> >       status = "disabled";
> >  };
> >
>
>
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
