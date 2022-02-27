Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2642FC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Feb 2022 13:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oj5nuwa6TIw1JTiKvF8rvLCVPNieqMobUmsygN1HlvU=; b=VyRifahakSKHqI
	K86hq7tX2EVc61mX9RXsU5Vjm/tiVBYO0yZ7lDTvLJTkza/h/QqoUo7WZJTNeZVJjLobo6+uldAk+
	e3vW+cqlfl8YM/vzeDfjvr5U6hpG9ovnR1PYIaeHXHSv9w/C4sa1sHwzrxe9n5BbWh6mkryJ7dXEi
	l3bWJHiw8Scli/8+XsXpQ7wknygVPuK5VtlHsSGEz5TpWg4M27CxkighOhU11E2aJrPOZmEILbC3W
	A01gqQMB8J3/ptcNcEkAnuoXIjG9UsZIMQCmCyGNvFWei77Svp7eRIfR89yBoRfocofnm1KgoD9vy
	5QhxiBze4q1h3iiTPBOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOK5Y-009Kb2-Jt; Sun, 27 Feb 2022 13:59:52 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOK26-009JFA-G5; Sun, 27 Feb 2022 13:56:20 +0000
Received: by mail-yb1-xb33.google.com with SMTP id h126so529691ybc.1;
 Sun, 27 Feb 2022 05:56:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xc/7Dlh75lxyDiAYU+5HYV0L9tvJxDsTFMNP81dQQno=;
 b=UBOeYv6SwDgFKGbaBmR/0P/ERMKbg5kIeCUKKpMqQ8IES6motWVbhTR9/twlb02nVJ
 7LtSYHDAPbTVY3ga9zuHPY2Bqt4NAK91vQKc2gwb16Qy8DjchS0vqbMAJtdwdiWqZjbW
 Uc4ZWTvSAdwrxin4BNsCysnHFNKcQRcuDc7IWn2ilE9jTrFN5F/4bj9L/5YYAdxqZ4fj
 FtNEU8zYsyyTEKf1AMTh0Hmn1d2tthCXFFqENlmwbnPF7JkBSr8D5oMTCDiopwV0ocCI
 qyd4Df1zuDcevrea/9KvNaHkRP6+jqvzu0NN1Yz5LdMi2VpZsPwy4GCa6If1bsFBIYcf
 M6bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xc/7Dlh75lxyDiAYU+5HYV0L9tvJxDsTFMNP81dQQno=;
 b=WsIEo+xqIaJZQqS1obsddmiRQeNXwA46eEnOxZzpwMDygCGV06t4Mn0PmLxqokWWkl
 XVPGuHoMk47ZEKpy+nZGqOFedbjavADGtF5N6ViAV4Y61wOL17YzEERK4Hbj4z7+9UOA
 Y27ZNYXt/0FbY4zmQvfPjfJAZULPMwNhND/MiDj1RVh/SJYsmlYbwFHwSvNgIcZL+9Ft
 3KR3Fj6Sy1hVTl6qb7ZvLwXhVWGLc0H7As573UmWLdWic9PV18snaVcYpbctQdiCiXR8
 /L1JX+6p/sKyoE7KtQZgrmM/IDxklJYju8Q6JUNcTUwm60Mu3wXZy7X6E4xsBnCljTjv
 41Ww==
X-Gm-Message-State: AOAM531cjhujOVZ3C6rhda1LLWC7ztB/KkNTKFaQE6BUG7udd+ILpInG
 WCFcyk0cCLUO672J10xbzGDWdwjms/J6G2OmGZs=
X-Google-Smtp-Source: ABdhPJz9khkLFz86gIsM8mgkVyb76HvsrmNaCS2pTufix/js3aYjXkAufdiXRIwhnYI1+4w6LnM7A7KvHfXtonDQNFY=
X-Received: by 2002:a25:8490:0:b0:624:5f70:142a with SMTP id
 v16-20020a258490000000b006245f70142amr14772699ybk.173.1645970177342; Sun, 27
 Feb 2022 05:56:17 -0800 (PST)
MIME-Version: 1.0
References: <20220226184147.769964-1-pgwipeout@gmail.com>
 <20220226184147.769964-10-pgwipeout@gmail.com>
 <4a49ba17-436b-c6b3-4a7d-42902781d2f4@gmail.com>
In-Reply-To: <4a49ba17-436b-c6b3-4a7d-42902781d2f4@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sun, 27 Feb 2022 08:56:06 -0500
Message-ID: <CAMdYzYoKfyCOHrH-o1HDiMQqqQzvVrpY2TFVH4ANNzJvPg6rBQ@mail.gmail.com>
Subject: Re: [PATCH v2 09/11] arm64: dts: rockchip: add rk356x dwc3 usb3 nodes
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
X-CRM114-CacheID: sfid-20220227_055618_589356_BC899012 
X-CRM114-Status: GOOD (  26.00  )
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

On Sat, Feb 26, 2022 at 6:01 PM Johan Jonker <jbx6244@gmail.com> wrote:
>
>
>
> On 2/26/22 19:41, Peter Geis wrote:
> > Add the dwc3 device nodes to the rk356x device trees.
> > The rk3566 has one usb2 capable dwc3 otg controller and one usb3 capable
> > dwc3 host controller.
> > The rk3568 has one usb3 capable dwc3 otg controller and one usb3 capable
> > dwc3 host controller.
> >
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3566.dtsi | 12 +++++++
> >  arch/arm64/boot/dts/rockchip/rk3568.dtsi |  9 +++++
> >  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 45 +++++++++++++++++++++++-
> >  3 files changed, 65 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566.dtsi b/arch/arm64/boot/dts/rockchip/rk3566.dtsi
> > index 3839eef5e4f7..a57eb68faba2 100644
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
> > @@ -18,3 +22,11 @@ power-domain@RK3568_PD_PIPE {
> >               #power-domain-cells = <0>;
> >       };
> >  };
> > +
> > +&usb_host0_xhci {
> > +     phys = <&usb2phy0_otg>;
> > +     phy-names = "usb2-phy";
> > +     extcon = <&usb2phy0>;
> > +     maximum-speed = "high-speed";
> > +     snps,dis_u2_susphy_quirk;
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
> > index 7cdef800cb3c..b22e5a514ad7 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > @@ -230,6 +230,50 @@ scmi_shmem: sram@0 {
> >               };
> >       };
> >
> > +     usb_host0_xhci: usb@fcc00000 {
> > +             compatible = "rockchip,rk3568-dwc3", "snps,dwc3";
> > +             reg = <0x0 0xfcc00000 0x0 0x400000>;
> > +             interrupts = <GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>;
> > +             clocks = <&cru CLK_USB3OTG0_REF>, <&cru CLK_USB3OTG0_SUSPEND>,
> > +                      <&cru ACLK_USB3OTG0>;
> > +             clock-names = "ref_clk", "suspend_clk",
> > +                           "bus_clk";
> > +             dr_mode = "host";
> > +             phy_type = "utmi_wide";
>
> > +             power-domains = <&power RK3568_PD_PIPE>;
>
> When both usb_host0_xhci and usb_host1_xhci are connected to a usb2phy
> and the combphy's disabled there's no PCLK_PIPE enabled.
> Fix logic for RK3568_PD_PIPE by adding the USB3 clocks.
>
>
> > +             resets = <&cru SRST_USB3OTG0>;
>
> > +             reset-names = "usb3-otg";
>
> remove
>
> snps,dwc3.yaml only mentions the "resets" because
> devm_reset_control_array_get_optional_shared is used.
> reset-names is only a rk3399 legacy that I included due to the YAML
> conversion.
> With unevaluatedProperties now working "resets" also could be removed
> from rockchip,dwc3.yaml I think.

I've tested removing the reset entirely, and it seems the issues that
affected the rk3399 do not affect us here.

>
> https://github.com/torvalds/linux/commit/2f8e928408885dad5d8d6afefacb82100b6b62c7
> Added properties for rk3399 are:
>   power-domains
>   resets
>   reset-names
>
> > +             snps,dis_enblslpm_quirk;
> > +             snps,dis-u2-freeclk-exists-quirk;
> > +             snps,dis-del-phy-power-chg-quirk;
> > +             snps,dis-tx-ipgap-linecheck-quirk;
>
> sort
>
> > +             snps,xhci-trb-ent-quirk;
>
> ???
>
> check snps,dwc3.yaml

I've tried dropping all of these and testing all the configurations I
can think of.
The only one we seem to absolutely need is snps,dis_u2_susphy_quirk,
without which sometimes devices fail to enumerate after being removed.
The only weird behavior I found was on the Pinenote, where there is
only the OTG port and when a state change happens from host to device
mode the controller locks up the AXI bus for a few seconds until it
times out and gets reset by core.
OTG support is still a work in progress here though and is not supported yet.

TLDR: I'll be dropping all the quirks that have no apparent effect in
the v3, they can be added in if needed following broader testing.

Thanks for all the insight here!

>
> > +             status = "disabled";
> > +     };
> > +
> > +     usb_host1_xhci: usb@fd000000 {
> > +             compatible = "rockchip,rk3568-dwc3", "snps,dwc3";
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
>
> > +             power-domains = <&power RK3568_PD_PIPE>;
>
> dito
>
> > +             resets = <&cru SRST_USB3OTG1>;
>
> > +             reset-names = "usb3-otg";
>
> remove
>
> > +             snps,dis_enblslpm_quirk;
> > +             snps,dis-u2-freeclk-exists-quirk;
> > +             snps,dis_u2_susphy_quirk;
> > +             snps,dis-del-phy-power-chg-quirk;
> > +             snps,dis-tx-ipgap-linecheck-quirk;
>
> sort
>
> > +             status = "disabled";
> > +     };
> > +
> >       gic: interrupt-controller@fd400000 {
> >               compatible = "arm,gic-v3";
> >               reg = <0x0 0xfd400000 0 0x10000>, /* GICD */
> > @@ -297,7 +341,6 @@ pmu_io_domains: io-domains {
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
