Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 554EDC3DA41
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jul 2024 10:11:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NEw/VplaraR9cu7eJNLNyajg18kDJVutSnhO9Ycsjs0=; b=YjwEeA0jw0J5vP
	8wycOl5WUFhbYHCW3rXQnO4aSkBDyJzFr5nsNZxB9y0+M4CMolIaTCKlouRQJ9Rh0SIY+MliNnvr4
	HSqWPO1x0lNCTIrYKsaJva+YBecZ4z/IxkCZuxWMtMsSFxjFkwNLRtGQXoM/IRAbHm5zdoB3yZz8b
	qn5ODh4XU6oW3bnJFYUPO1DFtjwas3Y06rricn0QXwYytw1O3fcNUeDoVj3Bh1tSKwyhDZvdE7/9q
	CJfWwqpc2vdZAchqPCwBWZMW03ZF6hqR/WvL6dwp3KSp9/wiYQSwGS+li0EiYYJMKmTvMmcEfAllS
	ntLTzkPaqE23gFwpSfcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRqm6-0000000DTpp-3rKn;
	Thu, 11 Jul 2024 10:11:42 +0000
Received: from mail-oo1-xc32.google.com ([2607:f8b0:4864:20::c32])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRqlo-0000000DTli-1OMB;
	Thu, 11 Jul 2024 10:11:25 +0000
Received: by mail-oo1-xc32.google.com with SMTP id 006d021491bc7-5c691c6788eso344103eaf.2;
        Thu, 11 Jul 2024 03:11:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720692683; x=1721297483; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sssdm/mEGaX8VGYzfAqbuhLtQj02OuS8MMuxfvANIDE=;
        b=gcksVJvdheQmeyRCLyZTdu+Z25qIEQuJ4w0m6RULDgjY30B9QvDX6xTXZRDE6t3qWF
         6avGXKt5YUh5hWrdBCHFgEMjH0vavSIGMmfhzYHpsiQ8lpr8A8Ji2FrE3t3DuzqJz+X3
         9cTJNtC5a3h+b+VnjFrfkN+2Hv7tnQv+6wRFR7kx73cYbR5RZto1xrFhY/UbKrRvTxl2
         cteMuCJxgWK9W8hWwQSRKWhBJB8l/8eK1WXhNz1y3gZnZJmDc5WD5Sh13do+7v5/oBoE
         ZBqguVZRd+k4EpaSDYuzecW3sf/1DbVavT71chPiPwxwB3FdFHx8UbhIu7NevP/UGGfQ
         NNMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720692683; x=1721297483;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sssdm/mEGaX8VGYzfAqbuhLtQj02OuS8MMuxfvANIDE=;
        b=iYBTfrortwlHrqNdc81rB7/C5TkxhDVx9uALWibsnTHd31v/7hHM8b0j/qDDkj/Cs7
         u/I7XHVbXSAP76bIaiSNTiuPrRiJo1thuS16eaIoCe7Y2SdTM/xV6SXTyEDu1NwiSxti
         hEhNkCweRLybUVRfCMGx6rt6oouRLVYndp5c6EqXD+hORbouPWvMJt0FNtQI1mvhhrV9
         9CauEpLPIZBf+grqwnDBgkSnyerfnYjhqaujfERue1GetPYYuZ/C7bNa/0YGDo5zRRYd
         KnHXpWj9/8MLWGdvxr2vI64nNcfRMDufMePe+aCBlUZxZtK5yihr4vhjaYRE9N47GdxZ
         qjug==
X-Forwarded-Encrypted: i=1; AJvYcCXLotlYWi8yeyPtfpOpDPNcd+7t5U3SBIFTO5ppIZFwtBh0H44vTiq2EpINC6B1cUYDnxW95RSpvwaR2vYX81n+jAGIl7MAr3vCOX3jZgJXU77i2VaGzAo539OPEC4SkEPrpQUyCMTDG3SZRZZHZti09g0dK8BP8I4=
X-Gm-Message-State: AOJu0YzbmT86aJc70obRSmpDZperfjWL282kS/IdKnWuQ2Gc5QA4LKxl
	fZ5ACMNW+ToXANHal6iUC/2RyQEtbeSYzHMwvrvhIon/eluqtDEr4B4fXHoZwqGBA3dqp13OvJo
	IOqfdVdY9afd91mNftQ4WMFgwEQg=
X-Google-Smtp-Source: AGHT+IH1ttR/75JuJ021My5b2HIIn6/NSlK3cCUvgWvkm1omkLOkdMxUT723shGbnPaKxgwdRxEBdva9+b/Da6UWs40=
X-Received: by 2002:a4a:302:0:b0:5bd:b695:5bf1 with SMTP id
 006d021491bc7-5c68e49e561mr8401082eaf.9.1720692683096; Thu, 11 Jul 2024
 03:11:23 -0700 (PDT)
MIME-Version: 1.0
References: <20240711060939.1128-1-linux.amoon@gmail.com> <a8c1f49e-bf25-4fd3-a16f-13088f75767f@kwiboo.se>
 <CANAwSgQCn3jgiruiLs0cu-C+DguLtnk=msboAh8jNSF4P28gjA@mail.gmail.com> <6250fa05-7a06-4fa1-a2be-9cb66a2d2822@kwiboo.se>
In-Reply-To: <6250fa05-7a06-4fa1-a2be-9cb66a2d2822@kwiboo.se>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 11 Jul 2024 15:41:06 +0530
Message-ID: <CANAwSgQdr-SADuKMxZqa=j6mHAC0K1N7nje29RTPm9N5j-++qg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add missing pinctrl for PCIe30x4 node
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240711_031124_394728_B5C639CE 
X-CRM114-Status: GOOD (  41.31  )
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

Hi Jonas

On Thu, 11 Jul 2024 at 15:15, Jonas Karlman <jonas@kwiboo.se> wrote:
>
> Hi Anand,
>
> On 2024-07-11 11:09, Anand Moon wrote:
> > Hi Jonas,
> >
> > Thanks for your review comments.
> >
> > On Thu, 11 Jul 2024 at 14:13, Jonas Karlman <jonas@kwiboo.se> wrote:
> >>
> >> Hi Anand,
> >>
> >> On 2024-07-11 08:09, Anand Moon wrote:
> >>> Add missing pinctrl settings for PCIe 3.0 x4 clock request and wake
> >>> signals.Each component of PCIe communication have the following control
> >>> signals: PERST, WAKE, CLKREQ, and REFCLK. These signals work to generate
> >>> high-speed signals and communicate with other PCIe devices.
> >>> Used by root complex to endpoint depending on the power state.
> >>>
> >>> PERST is referred to as a fundamental reset. PERST should be held low
> >>> until all the power rails in the system and the reference clock are stable.
> >>> A transition from low to high in this signal usually indicates the
> >>> beginning of link initialization.
> >>>
> >>> WAKE signal is an active-low signal that is used to return the PCIe
> >>> interface to an active state when in a low-power state.
> >>>
> >>> CLKREQ signal is also an active-low signal and is used to request the
> >>> reference clock.
> >>>
> >>> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> >>> ---
> >>> V2: Update the commit messge to describe the changs.
> >>>     use pinctl group as its pre define in pinctl dtsi
> >>> ---
> >>>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 6 +-----
> >>>  1 file changed, 1 insertion(+), 5 deletions(-)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> >>> index 2e7512676b7e..ab3a20986c6a 100644
> >>> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> >>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> >>> @@ -301,7 +301,7 @@ &pcie30phy {
> >>>
> >>>  &pcie3x4 {
> >>>       pinctrl-names = "default";
> >>> -     pinctrl-0 = <&pcie3_rst>;
> >>> +     pinctrl-0 = <&pcie30x4m1_pins>;
> >>
> >> Use of the existing pcie30x4m1_pins group may not be fully accurate for
> >> the PERST pin. The use of reset-gpios indicate that the PERST pin is
> >> used with GPIO function and the driver will implicitly change the
> >> function from perstn_m1 to GPIO. So this may not be best representation
> >> of the hw, hence my initial suggestion, something like:
> >>
> >>         pcie30x4_pins: pcie30x4-pins {
> >>                 rockchip,pins =
> >>                         <4 RK_PB4 4 &pcfg_pull_none>,
> >>                         <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>,
> >>                         <4 RK_PB5 4 &pcfg_pull_none>;
> >>         };
> >>
> >> Similar change should probably also be done for pcie2x1l0 and pcie2x1l2,
> >> not just pcie3x4.
> >>
> >
> > Ok but it is better to update this in rk3588s-pinctrl.dtsi otherwise
> > the pcie30x4m1_pins
> > will not be used at all on all the boards
>
> I agree that it is unfortunate that the PERST pin is included in the
> groups in pinctrl.dtsi, however, for pcie ep mode the pins should more
> than likely be using the perstn_m1 function and not GPIO, so there are
> uses for the existing pin groups for ep mode.
>
> In my opinion using pcie30x4m1_pins as-is and having implicitly changing
> to GPIO function when driver/usage in the software require it is an okay
> description of the hw.
>
> However, seeing how use of pcie ep is described using its own node in DT
> I can understand that for rc mode the pin should be changed to GPIO to
> properly describe the expected usage.
>

Thanks for your explanation.

> When I tried to add similar implicit change to use GPIO function in
> U-Boot to fix system freeze when improper pinctrl was used, it resulted
> in some discussions, see [1] ;-)
>
> [1] https://lore.kernel.org/u-boot/20240511112821.1156519-1-jonas@kwiboo.se/t/#u
>
Ok, I get this.

> > I will update the PERST pin to RK_FUNC_GPIO on all the pcie2x1l0,
> > pcie2x1l2 and  pcie30x4
> > is this ok for you?
>
> This should probably be reworked in pinctrl.dtsi together with all
> affected boards and/or use a group override in the board dts.

I will keep these board-specific pinctl changes.

>
> Regards,
> Jonas
>

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
