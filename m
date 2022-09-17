Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFE63ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Sep 2022 13:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EfeWAmknifQnVNBqxcxui8AD/LBSg1EfkTq2srHMjyc=; b=FqOHsEMhnDMnGp
	ZKrwiQas+URhZkfHKGmXcFNeKrj5jhYVZSOm11vqWScXJNJ22+cbftz5ewWN2CKmZ5WE+ZF/Hu4O4
	m/TrmOHWi+xoNtaigX0FNXzp1PGmVIXtEgHL6TB9fbjdzxoThm+xbHCZQ26uHTRdroMsAaqtrIweA
	rR+ynXTy17fXN7VWgIyTaGNYa2Tj1aU3llgPg4cb98iuDtIogemRnMcJSE5p4vcVkhzXkyhWvJd83
	AIW1b2z/4iCa0SwRpbymEbnjFNhom2WP1uiZ9PKg+iETgxH1WgcQHemf+Eq/ennAg1zeVpIBcmObM
	0VnbzeThR7yFxbnOG9BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZYHj-006FWy-80; Sat, 17 Sep 2022 13:55:07 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZYHW-006FSy-PZ; Sat, 17 Sep 2022 13:54:56 +0000
Received: by mail-ed1-x52d.google.com with SMTP id z13so21270155edb.13;
        Sat, 17 Sep 2022 06:54:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=S8ftARU60tpfYXAboRA44VH/3e+C8sah/bpLiKM70U8=;
        b=ZgiLtA2E0Apsg51vOkHTElykpsyPfsNWzzNlENbY8oFVxW5m+wza3rul8ckxchebcZ
         nixXk0Q6zK40zWdWyEQd8dggL4C0G8EyPGo9WpySczXFIXekgHmKBj+Sst8QdWd1GKA/
         bWATgVIM/PYWQ5VrO/V+2reufQ8P2KdXRFudKwUfA7v5GHgLsDON7v+bZsfDcbvdtc1B
         FfjEq3PkOnm8raNQ8da1pCJg23AEzwxeJ5KpBU7rj8oxsB9J6q16z7nB+nf2wjZn3zIq
         eyX+iygw2cUltDkhtJQVjqj4MPNJ9yTgAq71iX+6VLwRTpt2p/yYy7xZHJ8UPU8sVyWG
         9/kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=S8ftARU60tpfYXAboRA44VH/3e+C8sah/bpLiKM70U8=;
        b=crpKfnkMOwJicMEX+XFrUOCzs4QNwTGBXFKSTjA9Qxch/+I0H1V89yvS6NWzoeUyDf
         /xfFwZyzyFIK5k7MsCSBBC3lQ8jbLknGYl7H3rKnHS0261WZ7G66CneJ4lUQ5cUd+5Dq
         8SCGgUG4QlTYVKEnJ7M0aQIzTxuqNKy8bq5EkYbtcsFtOZNzETein6VYE+JucFfQwDXE
         Rlzj/SXAxntRb6oRJTwI6hANl9v1xt71Ag9gkdYW6YMCE2F3scyvAFDCvZyrIjRXvY4K
         nhZm0VQDgv5u+WwSVyN/Qcib5Lw0VrHQ6WrarL4voo3fbWv77nAfd/932JrpvzE9mbbi
         +ukA==
X-Gm-Message-State: ACrzQf3csHD547gmBlZjLX8MxP+T6vWBOR886nNVcuPTKtImqmoc0aJr
	fVbROZBk6CVwB6yytecSgtI=
X-Google-Smtp-Source: AMsMyM5ztim6e7zUfdUo/c57LvKbQ8EqsbvJKbEpy4l+xiSNfLs0WO6m4gGePnAwbG6WnskJI806yg==
X-Received: by 2002:a05:6402:b45:b0:44e:a071:2b3b with SMTP id bx5-20020a0564020b4500b0044ea0712b3bmr8055690edb.95.1663422891326;
        Sat, 17 Sep 2022 06:54:51 -0700 (PDT)
Received: from lab.hqhome163.com ([194.183.10.152])
        by smtp.gmail.com with ESMTPSA id b25-20020a17090630d900b007803083a36asm5624155ejb.115.2022.09.17.06.54.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Sep 2022 06:54:50 -0700 (PDT)
Date: Sat, 17 Sep 2022 13:50:03 +0000
From: Alessandro Carminati <alessandro.carminati@gmail.com>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: k3566-quartz64-a: adds sata
 variant
Message-ID: <YyXQi9wfudMvUkgU@lab.hqhome163.com>
References: <YySdhiqZgXpl0q/g@lab.hqhome163.com>
 <CAMdYzYovjSMZgpWd+ATWsv2piNc2ZtnKfB1cTBukvsnfG41g_w@mail.gmail.com>
 <14722513.tv2OnDr8pf@phil>
 <CAMdYzYp1SYVCxOKwHspvDXoqkAxUj1hTY6J7EeRabKxD5Nrj1w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMdYzYp1SYVCxOKwHspvDXoqkAxUj1hTY6J7EeRabKxD5Nrj1w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220917_065454_866307_A3AF05FF 
X-CRM114-Status: GOOD (  49.51  )
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

Hello Peter,

Thank you for the valuable details you added to this thread.

If I understand correctly, the SATA controller has hardware-related 
issues if some electrical conditions are met by devices connected to 
the two SoC ports.

Here an example of a faulty device layout would be helpful.

But I guess this is not such common situation if you just connect a 
SATA device to the board.



On Sat, Sep 17, 2022 at 07:23:39AM -0400, Peter Geis wrote:
> On Sat, Sep 17, 2022 at 2:42 AM Heiko Stuebner <heiko@sntech.de> wrote:
> 
> Good Morning Heiko,
> 
> 
> >
> > Hi Peter,
> >
> > Am Samstag, 17. September 2022, 03:40:07 CEST schrieb Peter Geis:
> > > On Fri, Sep 16, 2022 at 12:06 PM Alessandro Carminati
> > > <alessandro.carminati@gmail.com> wrote:
> > > >
> > > > The Quartz64 board is built upon Rockchip RK3566.
> > > > Rockchip RK3566 has two combo phys.
> > > > The first connects USB3 and SATA ctrl1, and the second PCIe lane and SATA
> > > > ctrl2.
> > > > The second combo phy is hardwired to the PCIe slot, where for the first,
> > > > the hardware on the board provides both the USB3 connector and the SATA
> > > > connector.
> > > > This DT allows the users to switch the combo phy to the SATA connector.
> > >
> > > Good Evening,
> > >
> > > NACK to this whole series. Neither works correctly in the hardware as
> > > is,
> >
> > Just for my understanding for the future, sata not working is that a bug
> > in the soc or the board?
> 
> This is a board level problem. Attempting to build a device that had
> both ports electrically connected without a switch chip created a
> device where neither worked correctly. The SATA controllers themselves
> are amazing. I've used both nvme and sata m2 drives on the model b for
> example.
> 
> >
> > > and USB3 was decided to be left enabled as the SATA port will be
> > > removed completely in the next revision.
> >
> > That is good to know. Thanks for the heads up :-)
> 
> In regards to this sort of stuff in the future, we're working on
> fragment overlay support in U-Boot to work around the kernel's lack of
> support. If I remember correctly EDK2 will be implementing the switch
> in firmware as well. Devices that support both (at least ones I
> maintain) will have both in the dts, with the less likely use case
> left disabled. End users can simply switch which one is enabled if
> they want.

Reading through your message, I have the impression that you are trying 
to solve the problem on the firmware side.
I want to express my admiration for this effort.
I think that this is the right approach to solve this kind of problem, 
and that the more appropriate place to be for device trees is on the 
firmware and not in the kernel.
Currently, the kernel includes a considerable amount of device trees, 
and the Quarttz64-a device tree is already upstream.

As I understand, there's currently an effort to standardize the already 
existing device trees and give direction to the newcomers.
In a recent interaction with Krzysztof Kozlowski, I learned the already 
existing device trees are likely not to respond to these regulations. 

Sooner or later, each upstream device tree will need to be adjusted, 
and the currently upstreamed quartz64-a DTS is one of these.

I understand you are working on the u-boot side, possibly the EDK2. 
They alone are more than 80% of all the firmware running at this moment, 
but there's still a non-neglectable number of boots that use something 
else.

All these words to say: 

* Krzysztof confirmed the upstreamed device tree for the quartz64 needs 
  to be adjusted to meet the device trees node name regulation.

* The work needed to add the SATA support is minimal.

* Having this SATA DTS is not completely useless since numerous SATA 
  configurations work smoothly.

I am willing to work on this patch to make it suitable to be upstreamed.

Regards
Alessandro

> 
> Very Respectfully,
> Peter
> 
> >
> > Heiko
> >
> >
> > > > Signed-off-by: Alessandro Carminati <alessandro.carminati@gmail.com>
> > > > ---
> > > >  arch/arm64/boot/dts/rockchip/Makefile                   | 1 +
> > > >  arch/arm64/boot/dts/rockchip/rk3566-quartz64-a-sata.dts | 9 +++++++++
> > > >  2 files changed, 10 insertions(+)
> > > >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a-sata.dts
> > > >
> > > > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> > > > index 8c843f6fc3cc..1d5dd91d1a34 100644
> > > > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > > > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > > > @@ -60,6 +60,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-rock-pi-n10.dtb
> > > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
> > > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
> > > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a-usb3.dts
> > > > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a-sata.dts
> > > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-b.dtb
> > > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-roc-pc.dtb
> > > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-soquartz-cm4.dtb
> > > > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a-sata.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a-sata.dts
> > > > new file mode 100644
> > > > index 000000000000..8620df7ec01e
> > > > --- /dev/null
> > > > +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a-sata.dts
> > > > @@ -0,0 +1,9 @@
> > > > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > > > +
> > > > +/dts-v1/;
> > > > +
> > > > +#include "rk3566-quartz64-a.dtsi"
> > > > +
> > > > +&sata1 {
> > > > +       status = "okay";
> > > > +};
> > > > --
> > > > 2.34.1
> > > >
> > > >
> > > > _______________________________________________
> > > > Linux-rockchip mailing list
> > > > Linux-rockchip@lists.infradead.org
> > > > http://lists.infradead.org/mailman/listinfo/linux-rockchip
> > >
> >
> >
> >
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
