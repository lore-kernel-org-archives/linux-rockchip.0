Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51186C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Feb 2022 22:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QOKf07q8kcwEbNQwtHDNVDmns1HTjwJr5oxQCJ/vKiU=; b=yJuvrDBc87YN54
	GnjciQKgSk2VhlVnuwb9pf8dt47GKe6Cq1NSqnlp+v+YOJlUI0CsnOyLsn/gXnT4pLEdRVZMryzqV
	xyJTP4ykewv6oei6BmK8mzRaCRJWh5ZAkXrq93fIt4185Ivp4lvGMwRcbyzGD/jDLA5Xq4FA7oE8m
	ah/MH3XZGMBYT0zY5pTCp262xJCCGj7f50+6Ier+r15uRuGNuGxkp7dDkUs+/VKF8c3I7N6UX5v5o
	KhKmelIchjvNO7L32qsELEQsn3WpNVe4zgVCUv4/ReM2fiXz3RFyIMSP/9s3Y/ZN7NPNjwBzZwPOg
	NLtNNygJ0R2Ni6rP4KoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOSHK-00AI4s-Ii; Sun, 27 Feb 2022 22:44:34 +0000
Received: from mail-yb1-xb2a.google.com ([2607:f8b0:4864:20::b2a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOSHH-00AI4G-Ij; Sun, 27 Feb 2022 22:44:33 +0000
Received: by mail-yb1-xb2a.google.com with SMTP id g6so16943724ybe.12;
 Sun, 27 Feb 2022 14:44:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cZ9QMnKlNqSU27RKVmQdYv0oOCGNcDDfO8PVwoF5xyQ=;
 b=mMmUILbThtIsXV6Pu18EK0OgQ0rPIotUagZulWrczHBjjJXOn6hFNCvbt8cct9W//5
 mJ2xGwXRrFPc19EkvUTl7O1gDGJayclhyDgPQKBUrI5MAbCm04jC7KsP088ak61awBJH
 o45gcDhw0QI7KPEkjpItrAoVjDtoA6XtPdFaR/NqO0EdcxevD1s5zgLhnYT9IOB4iHH5
 tK1QsB9MLVGH4vsSeBF+e+/zEscon3hg+GBZ7BfpqTcV35U+AhKHgvTHmGLuod54nMFA
 CbH3UZEUWGqvvaNDdyTwTit2RWICqFbh70bBLKcBsZfo+FFomxnhp/ozmA6wlEMj8WFW
 4x/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cZ9QMnKlNqSU27RKVmQdYv0oOCGNcDDfO8PVwoF5xyQ=;
 b=dMJ0qo74DcjUxU1I3j/oV0erbwyT4JWKcs4PqtFlTdpNK8Lwf1ZG17NWuSBs6Vxk+8
 yqlxpm+8g8u4YnQ9e0OZjdypVc+xpfb3lQKtafdn767dL9LosFCG8otx2CHgqq1HeGh1
 AiKgteXXaSmLulsD+N5bPw+f/0LBCn2WeC74NyH02TTV0QU6ngyYyTO+rrTaYIR4USSe
 425NO1qrF/3gxx1aJV+/cYqRjdYRLDqvjRyArysNwtnDMcWjNt3XIxRS7pvA2HeqShpu
 uZ1ULNAIB23cKDMzlPKwhaarYvER4BBu4+C11/V751889hkeevtwc9qNs2BSkvAf/BJP
 +UfQ==
X-Gm-Message-State: AOAM532qDUG6rWeiQjx5XVx0ZRgC1Ws7lGUMtD5j+cE6L1TaFsRXQij7
 ItiDc1B1N3s4uKtMG4Uh8cZnW05OO/gkSL1vBmw=
X-Google-Smtp-Source: ABdhPJzhlOIRO5vSQFoRiLQmWNZRekBnUtdAYNQh7vMp8HF8X0cB9llnkb2qXIzlh8MnZkoBHVGA2H0iguVtWPBBT5o=
X-Received: by 2002:a25:5d0:0:b0:61d:932b:6fc0 with SMTP id
 199-20020a2505d0000000b0061d932b6fc0mr16650730ybf.585.1646001869946; Sun, 27
 Feb 2022 14:44:29 -0800 (PST)
MIME-Version: 1.0
References: <20220227153016.950473-1-pgwipeout@gmail.com>
 <20220227153016.950473-6-pgwipeout@gmail.com>
 <7b20fccd-4394-da3c-6556-4732d67cde3d@gmail.com>
In-Reply-To: <7b20fccd-4394-da3c-6556-4732d67cde3d@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sun, 27 Feb 2022 17:44:18 -0500
Message-ID: <CAMdYzYp8x_mKffm1WkHD4D1Fx_tVJ8WdBc=u-j+j_zRbJmyaCQ@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20220227_144431_670214_3499E330 
X-CRM114-Status: GOOD (  18.85  )
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

On Sun, Feb 27, 2022 at 12:50 PM Johan Jonker <jbx6244@gmail.com> wrote:
>
>
>
> On 2/27/22 16:30, Peter Geis wrote:
> > Add the dwc3 device nodes to the rk356x device trees.
> > The rk3566 has one usb2 capable dwc3 otg controller and one usb3 capable
> > dwc3 host controller.
> > The rk3568 has one usb3 capable dwc3 otg controller and one usb3 capable
> > dwc3 host controller.
> >
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3566.dtsi | 11 ++++++++
> >  arch/arm64/boot/dts/rockchip/rk3568.dtsi |  9 ++++++
> >  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 35 +++++++++++++++++++++++-
> >  3 files changed, 54 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566.dtsi b/arch/arm64/boot/dts/rockchip/rk3566.dtsi
> > index 3839eef5e4f7..0b957068ff89 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3566.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566.dtsi
> > @@ -6,6 +6,10 @@ / {
> >       compatible = "rockchip,rk3566";
> >  };
> >
> > +&pipegrf {
> > +     compatible = "rockchip,rk3566-pipe-grf", "syscon";
> > +};
> > +
> >  &power {
> >       power-domain@RK3568_PD_PIPE {
> >               reg = <RK3568_PD_PIPE>;
> > @@ -18,3 +22,10 @@ power-domain@RK3568_PD_PIPE {
> >               #power-domain-cells = <0>;
> >       };
> >  };
> > +
> > +&usb_host0_xhci {
> > +     phys = <&usb2phy0_otg>;
> > +     phy-names = "usb2-phy";
> > +     extcon = <&usb2phy0>;
> > +     maximum-speed = "high-speed";
> > +};
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> > index 5b0f528d6818..8ba9334f9753 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> > @@ -99,6 +99,10 @@ opp-1992000000 {
> >       };
> >  };
> >
> > +&pipegrf {
> > +     compatible = "rockchip,rk3568-pipe-grf", "syscon";
> > +};
> > +
> >  &power {
> >       power-domain@RK3568_PD_PIPE {
> >               reg = <RK3568_PD_PIPE>;
> > @@ -114,3 +118,8 @@ power-domain@RK3568_PD_PIPE {
> >               #power-domain-cells = <0>;
> >       };
> >  };
> > +
> > +&usb_host0_xhci {
> > +     phys = <&usb2phy0_otg>, <&combphy0 PHY_TYPE_USB3>;
> > +     phy-names = "usb2-phy", "usb3-phy";
> > +};
> > diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > index 7cdef800cb3c..072bb9080cd6 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > @@ -230,6 +230,40 @@ scmi_shmem: sram@0 {
> >               };
> >       };
> >
> > +     usb_host0_xhci: usb@fcc00000 {
>
> > +             compatible = "snps,dwc3";
>
> compatible = "rockchip,rk3568-dwc3", "snps,dwc3";
>
> compatible strings must be SoC orientated.
> Add binding like you did before.

Okay, should this go in the core yaml, since it's not really handled
by of-simple?
Also, should I add in the compatible for rk3328 as well?

>
> > +             reg = <0x0 0xfcc00000 0x0 0x400000>;
> > +             interrupts = <GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>;
> > +             clocks = <&cru CLK_USB3OTG0_REF>, <&cru CLK_USB3OTG0_SUSPEND>,
> > +                      <&cru ACLK_USB3OTG0>;
> > +             clock-names = "ref_clk", "suspend_clk",
> > +                           "bus_clk";
> > +             dr_mode = "host";
> > +             phy_type = "utmi_wide";
> > +             power-domains = <&power RK3568_PD_PIPE>;
> > +             resets = <&cru SRST_USB3OTG0>;
> > +             snps,dis_u2_susphy_quirk;
> > +             status = "disabled";
> > +     };
> > +
> > +     usb_host1_xhci: usb@fd000000 {
>
> > +             compatible = "snps,dwc3";
>
> compatible = "rockchip,rk3568-dwc3", "snps,dwc3";
>
> > +             reg = <0x0 0xfd000000 0x0 0x400000>;
> > +             interrupts = <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>;
> > +             clocks = <&cru CLK_USB3OTG1_REF>, <&cru CLK_USB3OTG1_SUSPEND>,
> > +                      <&cru ACLK_USB3OTG1>;
> > +             clock-names = "ref_clk", "suspend_clk",
> > +                           "bus_clk";
> > +             dr_mode = "host";
> > +             phys = <&usb2phy0_host>, <&combphy1 PHY_TYPE_USB3>;
> > +             phy-names = "usb2-phy", "usb3-phy";
> > +             phy_type = "utmi_wide";
> > +             power-domains = <&power RK3568_PD_PIPE>;
> > +             resets = <&cru SRST_USB3OTG1>;
> > +             snps,dis_u2_susphy_quirk;
> > +             status = "disabled";
> > +     };
> > +
> >       gic: interrupt-controller@fd400000 {
> >               compatible = "arm,gic-v3";
> >               reg = <0x0 0xfd400000 0 0x10000>, /* GICD */
> > @@ -297,7 +331,6 @@ pmu_io_domains: io-domains {
> >       };
> >
> >       pipegrf: syscon@fdc50000 {
> > -             compatible = "rockchip,rk3568-pipe-grf", "syscon";
> >               reg = <0x0 0xfdc50000 0x0 0x1000>;
> >       };
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
