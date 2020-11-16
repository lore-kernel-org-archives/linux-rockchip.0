Return-Path: <SRS0=vJNw=EW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E01C5519F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 16:25:33 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C20EB2222C
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 16:25:32 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="yiXDqUCZ";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O1Qjd+36"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C20EB2222C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e8qk6v6cuy+tGp53iWAZ8suf4JEFWgB+lbnbAfyUkTQ=; b=yiXDqUCZ1CsW5TgMOSqPKxwxo
	C/LYb9y2oCRpfXI6oUh689Oof+Vky58wANM8E4Vvb5cHjHpZ+STmk5Q5pKX3PyFDkMbyb9qTrIn0+
	ihcLczYYHY25R8E/qFiq9wAgrD200OikelU7J9p6kcZoPnZlcg62uhDeTIN50pXO4b7zzMU9/0ouL
	fiAZtBEGKqGMdgnxOtjufch/1v+IzqGNOxvT4AdU/bOzvmzij+iGMqMgRTZ3rkErJdSj2FGgoaSeB
	WZBDJ/mJkahM6ERkORY9q8xqdJDk1w+UqqEbm2V86hD6Ervh0tdrMbOnHMurzAVhyMMP6BFMMow0D
	L1LLgV1/w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kehJn-00073w-2L; Mon, 16 Nov 2020 16:25:27 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kehJj-00072U-Q1; Mon, 16 Nov 2020 16:25:24 +0000
Received: by mail-ed1-x541.google.com with SMTP id d18so6437796edt.7;
 Mon, 16 Nov 2020 08:25:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=36kI422mx2qfLcPg3+nHskQP6VdwizY0Ulfa8KTJnr0=;
 b=O1Qjd+36JGEvo6pZ30mwIxjGKl8BzRv9Z9ZrFgBmynNuqT2zdA0znCFqKRL9G+5Fcv
 ehaNLlkJ+qZcFQXkjFsxuaH8np3UuMufIj7YjXcUIgynj9LUoghdrn9L6QjxOo84a2uu
 +xxZYIB0oN/SNd3DK+mGOoxv2HVvTZW7YY07BH1yJcxyQu0RzqFXv3GfaCkpSy6DzXP/
 MXLTLXQ7Hk++kxORW12sr+JUTQdBCsPfKIUGGvxvhuxJFVn60RtgAcs9FFmza1SxD/IU
 Gu80B0PySPDo7A3ESBpHeOtX/lwq7U/ZRQLjA+ryedlpnvkhxsx84TZvrxw82haDmA3r
 J3pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=36kI422mx2qfLcPg3+nHskQP6VdwizY0Ulfa8KTJnr0=;
 b=a7TWfmDiVBeuJJeTt5OdMdcpODtyD4AI+LMf140hrT0Tz4L+8EiuiZI4vmIgPL9Vaf
 iZ9DecHYXY+Kj43nqUQzP+9ExsE+bTYI2ZUx1oFg8+SfP3Hdeaxbh3n0N2akSHmr4yzW
 VmsvyzqVwKw5MWYX9SswD5biigP3DE6u/2ZhU++mar9P366VsK0mcrw95U+Cg1BjVyva
 Jh0EwJo86JQQGmxWdKZR99kEpPIgslQ8WDo85scdoYouUIll/6B8VU5BDAIWLTsdCfzP
 ncbQNiZKmEHuOha//+keGRr5kCALh6JioqmVcgzyxkwcKNum2v0dvTfJmf1wx7Y4xcno
 o9Pw==
X-Gm-Message-State: AOAM532YMqcOel4WAp7KcI9YjUErqiywkiUhxGlJDiDnb5UlqciWUut3
 GzZ6TB5W1KIWRiXRUiPmUswwqr100dRDNiX1YSsHpH36AzOLJg==
X-Google-Smtp-Source: ABdhPJwvsO8BY0A2SJ3pMJ9k/E9Uzy41HquFwR8+/Fdb9eiUpcLtm8P91iDhsjw0QZ3t7I6pu28tNlVpgLp/2F3paMQ=
X-Received: by 2002:a05:6402:22af:: with SMTP id
 cx15mr15950673edb.207.1605543922570; 
 Mon, 16 Nov 2020 08:25:22 -0800 (PST)
MIME-Version: 1.0
References: <20201116151735.178737-1-pgwipeout@gmail.com>
 <20201116151735.178737-4-pgwipeout@gmail.com>
 <ce2217b9-3627-df09-04d9-e47bef6c3572@gmail.com>
In-Reply-To: <ce2217b9-3627-df09-04d9-e47bef6c3572@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 16 Nov 2020 11:25:10 -0500
Message-ID: <CAMdYzYpFYEp_H-NX0+CWdUK_d8mqVjQD1w8SuQXwANTEbg7CvQ@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: add rk3328 usb3 and usb3phy
 nodes
To: Johan Jonker <jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201116_112523_894189_8DA69FCB 
X-CRM114-Status: GOOD (  25.35  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Felipe Balbi <balbi@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 =?UTF-8?B?546L5piO5oiQ?= <frank.wang@rock-chips.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 Kever Yang <kever.yang@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 wulf <wulf@rock-chips.com>, zyw <zyw@rock-chips.com>,
 =?UTF-8?B?5ZC06Imv5bOw?= <william.wu@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Nov 16, 2020 at 11:07 AM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Hi Peter,
>
> Just some comments...
>
> The compatible "rockchip,rk3328-dwc3" is currently under test in:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/balbi/usb.git/
>
> I think we should let it go in mainline first
> (if the maintainers agree?) and then you can base your serie on that.
>
> The compatible "rockchip,rk3328-usb3phy" needs to be added to a document
> as well.

I will address documentation in the complete patch set.
This set to get feedback on the method of implementation and if
possible make the glue layer unnecessary.

>
> Add increase version number after previous series.
>
> Is there any change in code or on how you detect?

It would seem that the patches you just linked simply enable the usb3
controller.
It does not address the original issues as to why this method was
rejected previously.
Without the phy driver, there is no hotplug detection, meaning that
only devices which are plugged in at boot are enumerated.

If you look at patch 2, you will see my glue driver is based off of-simple.
This is no accident, as I had originally plugged in my code into that driver.
At >40% rewrite of of-simple, it didn't feel "simple" anymore, so I
broke it out separately.

The patches you linked will work if the usb2 hub issue can be resolved
purely in the phy driver.

>
> On 11/16/20 4:17 PM, Peter Geis wrote:
> > Add the usb3 controller and usb3 phy nodes to the rk3328.
> >
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 65 ++++++++++++++++++++++++
> >  1 file changed, 65 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> > index bbdb19a3e85d..9fea9203d114 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> > @@ -853,6 +853,40 @@ u2phy_host: host-port {
> >               };
> >       };
> >
> > +     usb3phy: usb3-phy@ff470000 {
> > +             compatible = "rockchip,rk3328-usb3phy";
> > +             reg = <0x0 0xff460000 0x0 0x10000>;
> > +             clocks = <&cru PCLK_USB3PHY_OTG>, <&cru PCLK_USB3PHY_PIPE>;
> > +             clock-names = "usb3phy-otg", "usb3phy-pipe";
> > +             resets = <&cru SRST_USB3PHY_U2>,
> > +                      <&cru SRST_USB3PHY_U3>,
> > +                      <&cru SRST_USB3PHY_PIPE>,
> > +                      <&cru SRST_USB3OTG_UTMI>,
> > +                      <&cru SRST_USB3PHY_OTG_P>,
> > +                      <&cru SRST_USB3PHY_PIPE_P>;
> > +             reset-names = "usb3phy-u2-por", "usb3phy-u3-por",
> > +                           "usb3phy-pipe-mac", "usb3phy-utmi-mac",
> > +                           "usb3phy-utmi-apb", "usb3phy-pipe-apb";
> > +             #address-cells = <2>;
> > +             #size-cells = <2>;
> > +             ranges;
> > +             status = "disabled";
> > +
> > +             usb3phy_utmi: utmi@ff470000 {
> > +                     compatible = "rockchip,rk3328-usb3phy-utmi";
> > +                     reg = <0x0 0xff470000 0x0 0x8000>;
> > +                     #phy-cells = <0>;
> > +                     status = "disabled";
> > +             };
> > +
> > +             usb3phy_pipe: pipe@ff478000 {
> > +                     compatible = "rockchip,rk3328-usb3phy-pipe";
> > +                     reg = <0x0 0xff478000 0x0 0x8000>;
> > +                     #phy-cells = <0>;
> > +                     status = "disabled";
> > +             };
> > +     };
> > +
> >       sdmmc: mmc@ff500000 {
> >               compatible = "rockchip,rk3328-dw-mshc", "rockchip,rk3288-dw-mshc";
> >               reg = <0x0 0xff500000 0x0 0x4000>;
> > @@ -983,6 +1017,37 @@ usb_host0_ohci: usb@ff5d0000 {
> >               status = "disabled";
> >       };
> >
> > +       usbdrd3: usb@ff600000 {
> > +             compatible = "rockchip,rk3328-dwc3";
> > +             clocks = <&cru SCLK_USB3OTG_REF>, <&cru ACLK_USB3OTG>,
> > +                      <&cru SCLK_USB3OTG_SUSPEND>;
> > +             clock-names = "ref", "bus_early", "suspend";
> > +             #address-cells = <2>;
> > +             #size-cells = <2>;
> > +             ranges;
> > +             status = "disabled";
> > +
> > +             usbdrd_dwc3: dwc3@ff600000 {
> > +                     compatible = "snps,dwc3";
> > +                     reg = <0x0 0xff600000 0x0 0x100000>;
> > +                     interrupts = <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>;
> > +                     clocks = <&cru SCLK_USB3OTG_REF>, <&cru ACLK_USB3OTG>,
> > +                              <&cru SCLK_USB3OTG_SUSPEND>;
> > +                     clock-names = "ref", "bus_early", "suspend";
> > +                     dr_mode = "host";
> > +                     usb-phy = <&usb3phy_utmi>, <&usb3phy_pipe>;
> > +                     phy_type = "utmi_wide";
> > +                     snps,dis_enblslpm_quirk;
> > +                     snps,dis-u2-freeclk-exists-quirk;
> > +                     snps,dis_u2_susphy_quirk;
> > +                     snps,dis_u3_susphy_quirk;
> > +                     snps,dis-del-phy-power-chg-quirk;
> > +                     snps,dis-tx-ipgap-linecheck-quirk;
> > +                     snps,xhci-trb-ent-quirk;
> > +                     status = "disabled";
> > +             };
> > +     };
> > +
> >       gic: interrupt-controller@ff811000 {
> >               compatible = "arm,gic-400";
> >               #interrupt-cells = <3>;
> >
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
