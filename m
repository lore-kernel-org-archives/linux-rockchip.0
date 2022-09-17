Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1766C54EE9
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Sep 2022 11:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gSHt8g2Ow5w+xej5nR+vYPoAjtS0qAdhrTIOcimTIxg=; b=EDqY8xdgDM2VSc
	I9nN4NeM7UNoJvoykNaxL+n1xKFGznAtzgXq9zux4SzEJj5HHIkclhAeMWbi/TAd62BbvZXEvXW8X
	K8VED4RC3naiaKhxcWdb0lgZv0RgugMs3/SgPDJNsjE54l7mpGbuw6uy1qEsPHhap/8FZ0O++jtPv
	fOvyKII6pnFbfbdwkxWlOlzw9Xpcl+UEZyEGgSF79NJAW3SkfH0IFlLMW1xUl/bzGM4baifIToIGw
	L08J1cl8QAphUhz16LEWi4+PwmEjkzsHJfODyo+tKiOVR5Do0M45oXRCyIYw5FD9xPo8UeBKVO/9Y
	LNs1v7SIcrgL4EpzOPMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZVvZ-005Rb3-2u; Sat, 17 Sep 2022 11:24:05 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZVvM-005RUN-TD; Sat, 17 Sep 2022 11:23:54 +0000
Received: by mail-wr1-x432.google.com with SMTP id b5so39860775wrr.5;
        Sat, 17 Sep 2022 04:23:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=BLaZsI5cHIlw7RVl5F8MBLXrX/g4UKCzX1CL0avGDbA=;
        b=d0K6CztBq5gRQLYp4DDG2Mlix0A/5s/oWvW19VjAaWyceu4IANY1RW+rCcgOZYTvYr
         XqeEwLTRjXYXediwKovvIMz4DltaXuzOxU148WbLacW8solEY56bdil+cBqnSssDgv4G
         e3n0dokQ6pl0m2M4jVAFi0KrVQ6GdCYPWbyfnYbEuNW5PaW4Rklwg6psnfwmIxxQHAWf
         QcvPaWrMxHlAL4tRgHmBmBymzna10Gcvc95Ny7qnpl3k5qwsWB0H5c39xgIKDtRik3HH
         6/OR7AOgaG5xweuPbZSjPrvL/GX9dBoy4I0UWTjqhogXPJPzevKi2uEefiUgSHaG8/0s
         Wq9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=BLaZsI5cHIlw7RVl5F8MBLXrX/g4UKCzX1CL0avGDbA=;
        b=uAe/v+Qskis0p5Mqm61LnTAiiNts8Xt9OEEnFbtnzDL+mTOVDW2/YQeQR+Lja9kxlw
         bXomkcqEH+4lDQmL8lc6hoLtirWZAwVQUVnukZ3/4KEW99S2usifIuyC34mH3yeTT9+i
         bjxzS06325zS6YJFxwbN7NmanB+wenuDEKRlsN19MG8Sr4f5ntzbgH5lVOh6OZYzNjhI
         0TrmYCt79H3n6XQuZoSFcx5Vs3w+HH7IUir2L8TsWcfTk9Q1MGnIHlV8G2ldo0GNTfx9
         5DnZX/I2FCfuJkwhnbugsDlQIVtOuUyATi7ZWrbFDPTUWOqp9DgjTNiMxgOmKQy8ewCt
         bcQg==
X-Gm-Message-State: ACrzQf2vaezXxD9tSDmQywLX2v6V7CxWi5Z2SEyPTxPECGC99FQvNIJd
	5/RBzKiA1ulWsHNjHtvt5Ek+sq9dyqzxyUcHT1U=
X-Google-Smtp-Source: AMsMyM4G6Rwfjo82H5KT2z/QKbJZY4Yd5IU+QdU93M2HfI/3kfSMUgjqS6/NG3y7+nRyTw6QE0jw40pFqFl2ZxbazYg=
X-Received: by 2002:adf:e806:0:b0:22a:f5c6:6954 with SMTP id
 o6-20020adfe806000000b0022af5c66954mr310007wrm.539.1663413830274; Sat, 17 Sep
 2022 04:23:50 -0700 (PDT)
MIME-Version: 1.0
References: <YySdhiqZgXpl0q/g@lab.hqhome163.com> <CAMdYzYovjSMZgpWd+ATWsv2piNc2ZtnKfB1cTBukvsnfG41g_w@mail.gmail.com>
 <14722513.tv2OnDr8pf@phil>
In-Reply-To: <14722513.tv2OnDr8pf@phil>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sat, 17 Sep 2022 07:23:39 -0400
Message-ID: <CAMdYzYp1SYVCxOKwHspvDXoqkAxUj1hTY6J7EeRabKxD5Nrj1w@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: k3566-quartz64-a: adds sata variant
To: Heiko Stuebner <heiko@sntech.de>
Cc: Alessandro Carminati <alessandro.carminati@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220917_042352_992756_8717A61E 
X-CRM114-Status: GOOD (  32.86  )
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

On Sat, Sep 17, 2022 at 2:42 AM Heiko Stuebner <heiko@sntech.de> wrote:

Good Morning Heiko,


>
> Hi Peter,
>
> Am Samstag, 17. September 2022, 03:40:07 CEST schrieb Peter Geis:
> > On Fri, Sep 16, 2022 at 12:06 PM Alessandro Carminati
> > <alessandro.carminati@gmail.com> wrote:
> > >
> > > The Quartz64 board is built upon Rockchip RK3566.
> > > Rockchip RK3566 has two combo phys.
> > > The first connects USB3 and SATA ctrl1, and the second PCIe lane and SATA
> > > ctrl2.
> > > The second combo phy is hardwired to the PCIe slot, where for the first,
> > > the hardware on the board provides both the USB3 connector and the SATA
> > > connector.
> > > This DT allows the users to switch the combo phy to the SATA connector.
> >
> > Good Evening,
> >
> > NACK to this whole series. Neither works correctly in the hardware as
> > is,
>
> Just for my understanding for the future, sata not working is that a bug
> in the soc or the board?

This is a board level problem. Attempting to build a device that had
both ports electrically connected without a switch chip created a
device where neither worked correctly. The SATA controllers themselves
are amazing. I've used both nvme and sata m2 drives on the model b for
example.

>
> > and USB3 was decided to be left enabled as the SATA port will be
> > removed completely in the next revision.
>
> That is good to know. Thanks for the heads up :-)

In regards to this sort of stuff in the future, we're working on
fragment overlay support in U-Boot to work around the kernel's lack of
support. If I remember correctly EDK2 will be implementing the switch
in firmware as well. Devices that support both (at least ones I
maintain) will have both in the dts, with the less likely use case
left disabled. End users can simply switch which one is enabled if
they want.

Very Respectfully,
Peter

>
> Heiko
>
>
> > > Signed-off-by: Alessandro Carminati <alessandro.carminati@gmail.com>
> > > ---
> > >  arch/arm64/boot/dts/rockchip/Makefile                   | 1 +
> > >  arch/arm64/boot/dts/rockchip/rk3566-quartz64-a-sata.dts | 9 +++++++++
> > >  2 files changed, 10 insertions(+)
> > >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a-sata.dts
> > >
> > > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> > > index 8c843f6fc3cc..1d5dd91d1a34 100644
> > > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > > @@ -60,6 +60,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-rock-pi-n10.dtb
> > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
> > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
> > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a-usb3.dts
> > > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a-sata.dts
> > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-b.dtb
> > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-roc-pc.dtb
> > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-soquartz-cm4.dtb
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a-sata.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a-sata.dts
> > > new file mode 100644
> > > index 000000000000..8620df7ec01e
> > > --- /dev/null
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a-sata.dts
> > > @@ -0,0 +1,9 @@
> > > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > > +
> > > +/dts-v1/;
> > > +
> > > +#include "rk3566-quartz64-a.dtsi"
> > > +
> > > +&sata1 {
> > > +       status = "okay";
> > > +};
> > > --
> > > 2.34.1
> > >
> > >
> > > _______________________________________________
> > > Linux-rockchip mailing list
> > > Linux-rockchip@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/linux-rockchip
> >
>
>
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
