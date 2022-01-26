Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31FEDC28CF5
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jan 2022 20:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GoFw3BoppuvcO1tdnjZmL8z943KTKIymhSM5oqX0Pnk=; b=hUN8t/qcfOHede
	9yXTSD5BKDLgUxdxvOdkqI/t/61FGpw2tRYJb9VQcV0tUDu8UJLwYBU4XMeXwhF9R8abDc/uZtcP9
	VJi44uli44i06m+fD6HMUHlTTpyrSY67kxKeTxlHBKL3wLOqu7I52kDUCD+bvD6gZvszJGxypDdjh
	bS5ZMHcjQdS91KTdoNDWPSUEIIZsBUGbLHqnN2xm8kX86q7VVEiGpAi0l0FIrzlIG8dJwlmxN2T+C
	gH69uQjq7yFF8Zi0ZQIu65yg28+6iRrv3FxRz8vcayvHBx0GTTLyFJBkNS3zhiDlZzee8zrS7AaPs
	ExsG86TO6hMI4Yn1rUSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCoSz-00DRGy-Im; Wed, 26 Jan 2022 20:00:29 +0000
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCoSj-00DR9v-Uq; Wed, 26 Jan 2022 20:00:15 +0000
Received: by mail-yb1-xb35.google.com with SMTP id k31so2078605ybj.4;
 Wed, 26 Jan 2022 12:00:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wJitFFvuG9U27VE5xDsshWEG+RLx//q3+Kf8s/0efLA=;
 b=IB6FHARyL2Wi3BsHj1bGchMCEtBXLv5/1LaJAOk8bXFQVE4LQmOzSuqNxRnEi1miMM
 CNRMvzPCtSrdYJOyOpClPfremh1MBmRGSXyVeEjvYxlwelVdtb87vWO+EsoPeQ7MSz5L
 GoNa9M0MYnkPLZ/xNoekXr1DWEmUTQiaN6pXDd1TdEhHfn9ptmJf4czrp74NI3MEaAHv
 bnses4O01vK33ETZXxwqvrzSBMw+mY+O7CgkgV3QjkTIxolcegL3eyc3tSnVQ8MJoNA4
 nwNvmuMdr3NSrKA94y2UNo1G6KzZTgi2zBK5Ywh5XjXqJnAGIT+Bpg6lr3DoPjIAyduX
 DE6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wJitFFvuG9U27VE5xDsshWEG+RLx//q3+Kf8s/0efLA=;
 b=a6avERH8Ymz4tYJYklfWUV6MI1hBDhW0CPrLh2R2TApNvtFfOcXYwcfrvL2Dyoe/lZ
 6NAH4VUloLKuFcXiuTH0G2LuqvrQGa+A9/8DuLy0J/Y8qX1gBSarGPyIXB7rpG4ouCAz
 OqPXujYu/l8pRNvEDST8ypL+lYOrekP0AbqZknOjAz6Utu6IfujYhAU9ZL3XW4Eokmcn
 uUw40DKXnOjb4KkzdULIRGfDL7CHb7FwZ6/2S0PS89oi+SWHTY0FmPQCar3Qo+K9WBuf
 lS+sMufWMPCvPWP/DVAJmg9uWlsHB55nsVqFsdmk8jEvmSAjVCczBccCwiHYXHzajAje
 /80Q==
X-Gm-Message-State: AOAM530G8f8oO8s2VNcpeST6xaDYL9XKHw3XZ8QY8awzifkTksgCZ4C5
 4xBPNNmQ7w0NZiuiL38EtzR9h/8Vp/Ca2Wy9HQxCzYkFb0Y=
X-Google-Smtp-Source: ABdhPJxth+wPVilLzlTzlFktv0sqR193AtoZzoZz1MfcBDy+YaXG320Ay/wnjmM+mLCBKK07QwNqr+YuazBkReA/GNQ=
X-Received: by 2002:a25:1583:: with SMTP id 125mr766085ybv.216.1643227212355; 
 Wed, 26 Jan 2022 12:00:12 -0800 (PST)
MIME-Version: 1.0
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
 <20220126145549.617165-22-s.hauer@pengutronix.de>
 <CAMdYzYrLw9+VW08cuj4_o4GDFhgBB8dZ-oVJ0TUnKFGLNetdyQ@mail.gmail.com>
 <a1438d39-b670-1ca5-d3f7-4e3f54702e53@arm.com>
 <CAMdYzYrcsj5Vas+ysoK6iD3uEAdmhcmLVi-5LY7hfHEtjeB6Cg@mail.gmail.com>
 <45132d1f-626d-5fe3-3118-21c0b3f4c8f1@arm.com>
In-Reply-To: <45132d1f-626d-5fe3-3118-21c0b3f4c8f1@arm.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 26 Jan 2022 15:00:01 -0500
Message-ID: <CAMdYzYpyrACnNtRYUNSSkEA_AUdWJ22BvWKU3YVHumLmcB1fpA@mail.gmail.com>
Subject: Re: [PATCH 21/27] arm64: dts: rockchip: rk356x: Add HDMI nodes
To: Robin Murphy <robin.murphy@arm.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 devicetree <devicetree@vger.kernel.org>, kernel@pengutronix.de, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, 
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_120014_028472_633A790B 
X-CRM114-Status: GOOD (  32.21  )
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

On Wed, Jan 26, 2022 at 2:25 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2022-01-26 18:44, Peter Geis wrote:
> > On Wed, Jan 26, 2022 at 12:56 PM Robin Murphy <robin.murphy@arm.com> wrote:
> >>
> >> On 2022-01-26 16:04, Peter Geis wrote:
> >>> On Wed, Jan 26, 2022 at 9:58 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >>>>
> >>>> Add support for the HDMI port found on RK3568.
> >>>>
> >>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> >>>> ---
> >>>>    arch/arm64/boot/dts/rockchip/rk356x.dtsi | 37 +++++++++++++++++++++++-
> >>>>    1 file changed, 36 insertions(+), 1 deletion(-)
> >>>>
> >>>> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> >>>> index 4008bd666d01..e38fb223e9b8 100644
> >>>> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> >>>> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> >>>> @@ -10,7 +10,6 @@
> >>>>    #include <dt-bindings/pinctrl/rockchip.h>
> >>>>    #include <dt-bindings/power/rk3568-power.h>
> >>>>    #include <dt-bindings/soc/rockchip,boot-mode.h>
> >>>> -#include <dt-bindings/soc/rockchip,vop2.h>
> >>>>    #include <dt-bindings/thermal/thermal.h>
> >>>>
> >>>>    / {
> >>>> @@ -502,6 +501,42 @@ vop_mmu: iommu@fe043e00 {
> >>>>                   status = "disabled";
> >>>>           };
> >>>>
> >>>> +       hdmi: hdmi@fe0a0000 {
> >>>> +               compatible = "rockchip,rk3568-dw-hdmi";
> >>>> +               reg = <0x0 0xfe0a0000 0x0 0x20000>;
> >>>> +               interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
> >>>> +               clocks = <&cru PCLK_HDMI_HOST>,
> >>>> +                        <&cru CLK_HDMI_SFR>,
> >>>> +                        <&cru CLK_HDMI_CEC>,
> >>>> +                        <&pmucru CLK_HDMI_REF>,
> >>>> +                        <&cru HCLK_VOP>;
> >>>> +               clock-names = "iahb", "isfr", "cec", "ref", "hclk";
> >>>> +               pinctrl-names = "default";
> >>>> +               pinctrl-0 = <&hdmitx_scl &hdmitx_sda &hdmitxm0_cec>;
> >>>
> >>> I looked into CEC support here, and it seems that it does work with one change.
> >>> Please add the two following lines to your patch:
> >>> assigned-clocks = <&cru CLK_HDMI_CEC>;
> >>> assigned-clock-rates = <32768>;
> >>>
> >>> The issue is the clk_rtc32k_frac clock that feeds clk_rtc_32k which
> >>> feeds clk_hdmi_cec is 24mhz at boot, which is too high for CEC to
> >>> function.
> >>
> >> Wouldn't it make far more sense to just stick a suitable clk_set_rate()
> >> call in the driver? AFAICS it's already explicitly aware of the CEC clock.
> >
> > This is handled purely in the
> > drivers/gpu/drm/bridge/synopsys/dw-hdmi.c driver, so I'm hesitant to
> > touch it there as it would affect all users, not just Rockchip.
>
> I'd have a strong hunch that it's a standard thing for the DesignWare IP
> and not affected by platform integration. I don't have the magical
> Synopsys databook, but between the trusty old i.MX6 manual and most of
> the other in-tree DTs getting their dw-hdmi "cec" clock from
> suspiciously-obviously-named sources, I'd be somewhat surprised if it
> was ever anything other than 32KHz.

My main concern was similar to the other HDMI clock issues, mainly
setting the clock can propagate up and affect other users of the
upstream clock.
I'll spin up a quick patch for this method.

Thanks,
Peter

>
> Robin.
>
> > Could someone familiar with the dw-hdmi IP weigh in on the minimum and
> > maximum clock rate the CEC block can handle?
> >
> >>
> >> Robin.
> >>
> >>>> +               power-domains = <&power RK3568_PD_VO>;
> >>>> +               reg-io-width = <4>;
> >>>> +               rockchip,grf = <&grf>;
> >>>> +               #sound-dai-cells = <0>;
> >>>> +               status = "disabled";
> >>>> +
> >>>> +               ports {
> >>>> +                       #address-cells = <1>;
> >>>> +                       #size-cells = <0>;
> >>>> +
> >>>> +                       hdmi_in: port@0 {
> >>>> +                               reg = <0>;
> >>>> +                               #address-cells = <1>;
> >>>> +                               #size-cells = <0>;
> >>>> +                       };
> >>>> +
> >>>> +                       hdmi_out: port@1 {
> >>>> +                               reg = <1>;
> >>>> +                               #address-cells = <1>;
> >>>> +                               #size-cells = <0>;
> >>>> +                       };
> >>>> +               };
> >>>> +       };
> >>>> +
> >>>>           qos_gpu: qos@fe128000 {
> >>>>                   compatible = "rockchip,rk3568-qos", "syscon";
> >>>>                   reg = <0x0 0xfe128000 0x0 0x20>;
> >>>> --
> >>>> 2.30.2
> >>>>
> >>>
> >>> _______________________________________________
> >>> Linux-rockchip mailing list
> >>> Linux-rockchip@lists.infradead.org
> >>> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
