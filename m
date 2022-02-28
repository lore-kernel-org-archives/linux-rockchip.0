Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63CBEC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 13:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OCzLrpRn87QEAKulPDsc1rNY3GArSJJK87Q/WAPqVLQ=; b=fhkdPE7OCDHOsZ
	MZ0mkLJVDc/IKfGDd9EeX4qsSRFq6FOQzmjt0R/YQIwpcCn8gW/8NVHb64nBJW3ZZX7z85zn5mH7M
	BENddRjOwTgfQXN1L1evKidtt6Z/l8mRPluVqdB47CsPIQWT6L5VTJokY/pRV9DPu1hQhtnlpka9B
	91o2m8WQiDNS7yZhX3hs4dh0RHtK2g3VbWQ9TiMaIfFkzbFBSs2xCNbrCZUO9CBBXgeZElvSwuhba
	KhoaV7GJLpavMfZYh/NAY7HvrvZ6102zVdJqt3v3ViMvVlyrP5yLHw1JZvinIsZ/e67AallM9kbRl
	vlSqtdfL+Vx9FoGV+Y9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOftn-00CUmo-C2; Mon, 28 Feb 2022 13:17:11 +0000
Received: from mail-yb1-xb2d.google.com ([2607:f8b0:4864:20::b2d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOfgE-00CPmU-3j; Mon, 28 Feb 2022 13:03:11 +0000
Received: by mail-yb1-xb2d.google.com with SMTP id e140so20314702ybh.9;
 Mon, 28 Feb 2022 05:03:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XNRpJ8Jt0R4tLiHb+HbtNStgEz1uJPOasiJ9YaxoRyE=;
 b=Kzl42XOXSMpcT+U+yQtmSD3Oi1GMkdaYWBvnvpS1Bsc2B8RW3KHhAfMl+eNytnrtQ6
 jpXjmVLFo9aEjiVP38S8tnzVWAOMmsoAxmSnJ4HnJQuKYV8oQJJxfmLZ5tnAEy4UPF3X
 UbLmGkryDBNour+hvbHxTLvZ62Av4nzaO3tix9SsyaSp+USYzyyqzzZ9Dl/uBPAfzS6k
 KzKcLDFy/mXsRdUZbd7x18KB8RuS/s85Yi/+wwGzyyka6FrFdfmkgMn3Q24NHhDydeVB
 x0hbJ667CR5RvMlzwyo5mdON4aypx97qQk/Gqtp7qcYTX/ItDGW38EN++tLTYTOHZVNv
 6Omg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XNRpJ8Jt0R4tLiHb+HbtNStgEz1uJPOasiJ9YaxoRyE=;
 b=o+PWj4MRU+hoTbhBoAunWyEhsIBL0roPtrX3uyOxMgRDax6vdJNDlvtwY57M7cxMMF
 EU6rDx4WCaQDl9Re0onLs84TAGkhr57U+dPQm5DbIQHtq83cAN10C6xjDjVtZtFQygO3
 QqJVi4decszmvhgUwu4cKG4aRAPTdIo2awwjSKa2p0wWty076seTluPsD+KpnBRt8F5p
 xe2WZLLY+wZzEFMR1lB9upn7izUg6tEbn9y47Ip1YBNrl0XpJROnJsaDMoBSmvoFo6Cc
 fTJm8lQRE2mqrrsnwkicUAk1w7QGDWTd0QjPvguRmoVxBatfyjkOTWUIy2o8C93FGGyB
 kw0A==
X-Gm-Message-State: AOAM531conuMCnrMCl27HF4ATWRDFeOG/2UfnhDp63WeH19GTNoURiYK
 kvnf90O9M5hDDaM+pvHOC3I+W43AKEiysQHP51Y=
X-Google-Smtp-Source: ABdhPJzdvs82iiLgz3fdUf6D7AXDXcRrUJFEWDi/y6IeOiMBH50lTEy7Evn/Bj6NJNrAgF97jy+vsGyQmDKcXjxwBMk=
X-Received: by 2002:a25:5d0:0:b0:61d:932b:6fc0 with SMTP id
 199-20020a2505d0000000b0061d932b6fc0mr18827087ybf.585.1646053388782; Mon, 28
 Feb 2022 05:03:08 -0800 (PST)
MIME-Version: 1.0
References: <20220227153016.950473-1-pgwipeout@gmail.com>
 <20220227153016.950473-6-pgwipeout@gmail.com>
 <7b20fccd-4394-da3c-6556-4732d67cde3d@gmail.com>
 <CAMdYzYp8x_mKffm1WkHD4D1Fx_tVJ8WdBc=u-j+j_zRbJmyaCQ@mail.gmail.com>
 <3ac3cdf9-17c0-654f-b204-c5b4b0436c98@gmail.com>
In-Reply-To: <3ac3cdf9-17c0-654f-b204-c5b4b0436c98@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 28 Feb 2022 08:02:57 -0500
Message-ID: <CAMdYzYrxQUhFNog1hvwme=V-3xptE6C9Se09FxEoEQm9bPdEEQ@mail.gmail.com>
Subject: Re: [PATCH v3 5/7] arm64: dts: rockchip: add rk356x dwc3 usb3 nodes
To: Johan Jonker <jbx6244@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Michael Riesch <michael.riesch@wolfvision.net>,
 devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_050310_213245_4E724DCC 
X-CRM114-Status: GOOD (  24.74  )
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

On Mon, Feb 28, 2022 at 4:10 AM Johan Jonker <jbx6244@gmail.com> wrote:
>
>
>
> On 2/27/22 23:44, Peter Geis wrote:
> > On Sun, Feb 27, 2022 at 12:50 PM Johan Jonker <jbx6244@gmail.com> wrote:
> >>
> >>
> >>
> >> On 2/27/22 16:30, Peter Geis wrote:
> >>> Add the dwc3 device nodes to the rk356x device trees.
> >>> The rk3566 has one usb2 capable dwc3 otg controller and one usb3 capable
> >>> dwc3 host controller.
> >>> The rk3568 has one usb3 capable dwc3 otg controller and one usb3 capable
> >>> dwc3 host controller.
> >>>
> >>> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> >>> ---
> >>>  arch/arm64/boot/dts/rockchip/rk3566.dtsi | 11 ++++++++
> >>>  arch/arm64/boot/dts/rockchip/rk3568.dtsi |  9 ++++++
> >>>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 35 +++++++++++++++++++++++-
> >>>  3 files changed, 54 insertions(+), 1 deletion(-)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/rockchip/rk3566.dtsi b/arch/arm64/boot/dts/rockchip/rk3566.dtsi
> >>> index 3839eef5e4f7..0b957068ff89 100644
> >>> --- a/arch/arm64/boot/dts/rockchip/rk3566.dtsi
> >>> +++ b/arch/arm64/boot/dts/rockchip/rk3566.dtsi
> >>> @@ -6,6 +6,10 @@ / {
> >>>       compatible = "rockchip,rk3566";
> >>>  };
> >>>
> >>> +&pipegrf {
> >>> +     compatible = "rockchip,rk3566-pipe-grf", "syscon";
> >>> +};
> >>> +
> >>>  &power {
> >>>       power-domain@RK3568_PD_PIPE {
> >>>               reg = <RK3568_PD_PIPE>;
> >>> @@ -18,3 +22,10 @@ power-domain@RK3568_PD_PIPE {
> >>>               #power-domain-cells = <0>;
> >>>       };
> >>>  };
> >>> +
> >>> +&usb_host0_xhci {
> >>> +     phys = <&usb2phy0_otg>;
> >>> +     phy-names = "usb2-phy";
> >>> +     extcon = <&usb2phy0>;
> >>> +     maximum-speed = "high-speed";
> >>> +};
> >>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> >>> index 5b0f528d6818..8ba9334f9753 100644
> >>> --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> >>> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> >>> @@ -99,6 +99,10 @@ opp-1992000000 {
> >>>       };
> >>>  };
> >>>
> >>> +&pipegrf {
> >>> +     compatible = "rockchip,rk3568-pipe-grf", "syscon";
> >>> +};
> >>> +
> >>>  &power {
> >>>       power-domain@RK3568_PD_PIPE {
> >>>               reg = <RK3568_PD_PIPE>;
> >>> @@ -114,3 +118,8 @@ power-domain@RK3568_PD_PIPE {
> >>>               #power-domain-cells = <0>;
> >>>       };
> >>>  };
> >>> +
> >>> +&usb_host0_xhci {
> >>> +     phys = <&usb2phy0_otg>, <&combphy0 PHY_TYPE_USB3>;
> >>> +     phy-names = "usb2-phy", "usb3-phy";
> >>> +};
> >>> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> >>> index 7cdef800cb3c..072bb9080cd6 100644
> >>> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> >>> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> >>> @@ -230,6 +230,40 @@ scmi_shmem: sram@0 {
> >>>               };
> >>>       };
> >>>
> >>> +     usb_host0_xhci: usb@fcc00000 {
> >>
> >>> +             compatible = "snps,dwc3";
> >>
> >> compatible = "rockchip,rk3568-dwc3", "snps,dwc3";
> >>
> >> compatible strings must be SoC orientated.
> >> Add binding like you did before.
> >
> > Okay, should this go in the core yaml, since it's not really handled
> > by of-simple?
>
> Nothing to change in core.c, because the fall back string does the
> trick, so we don't have to change the driver for every new SoC.
> Change the node compatible here and add the binding.
> That's it. The rest comes later if needed.

It's the binding I'm referring to here.
snps,dwc3.yaml seems the logical place, but I want to make sure you
concur first.

>
> > Also, should I add in the compatible for rk3328 as well?
>
> No, same story the fall back string does the trick in core.c

Same thing here, since I'm in snps,dwc3.yaml anyways I can add the
rk3328 binding in and silence that error in one go.

>
>
> >
> >>
> >>> +             reg = <0x0 0xfcc00000 0x0 0x400000>;
> >>> +             interrupts = <GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>;
> >>> +             clocks = <&cru CLK_USB3OTG0_REF>, <&cru CLK_USB3OTG0_SUSPEND>,
> >>> +                      <&cru ACLK_USB3OTG0>;
> >>> +             clock-names = "ref_clk", "suspend_clk",
> >>> +                           "bus_clk";
> >>> +             dr_mode = "host";
> >>> +             phy_type = "utmi_wide";
> >>> +             power-domains = <&power RK3568_PD_PIPE>;
> >>> +             resets = <&cru SRST_USB3OTG0>;
> >>> +             snps,dis_u2_susphy_quirk;
> >>> +             status = "disabled";
> >>> +     };
> >>> +
> >>> +     usb_host1_xhci: usb@fd000000 {
> >>
> >>> +             compatible = "snps,dwc3";
> >>
> >> compatible = "rockchip,rk3568-dwc3", "snps,dwc3";
> >>
> >>> +             reg = <0x0 0xfd000000 0x0 0x400000>;
> >>> +             interrupts = <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>;
> >>> +             clocks = <&cru CLK_USB3OTG1_REF>, <&cru CLK_USB3OTG1_SUSPEND>,
> >>> +                      <&cru ACLK_USB3OTG1>;
> >>> +             clock-names = "ref_clk", "suspend_clk",
> >>> +                           "bus_clk";
> >>> +             dr_mode = "host";
> >>> +             phys = <&usb2phy0_host>, <&combphy1 PHY_TYPE_USB3>;
> >>> +             phy-names = "usb2-phy", "usb3-phy";
> >>> +             phy_type = "utmi_wide";
> >>> +             power-domains = <&power RK3568_PD_PIPE>;
> >>> +             resets = <&cru SRST_USB3OTG1>;
> >>> +             snps,dis_u2_susphy_quirk;
> >>> +             status = "disabled";
> >>> +     };
> >>> +
> >>>       gic: interrupt-controller@fd400000 {
> >>>               compatible = "arm,gic-v3";
> >>>               reg = <0x0 0xfd400000 0 0x10000>, /* GICD */
> >>> @@ -297,7 +331,6 @@ pmu_io_domains: io-domains {
> >>>       };
> >>>
> >>>       pipegrf: syscon@fdc50000 {
> >>> -             compatible = "rockchip,rk3568-pipe-grf", "syscon";
> >>>               reg = <0x0 0xfdc50000 0x0 0x1000>;
> >>>       };
> >>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
