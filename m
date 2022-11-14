Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 015E2C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Nov 2022 09:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sREeaCiPDWcdYnkCyLamwpZUEf9vbw1pxUPbZu2pKl0=; b=bMhExcPjWP1TC/
	FgSMmXUW8+xArn2BU6vco9p6GOjoSqDLsYRW92mxp9AuLutnhAUMWci/cgtpVgu32ESvAV0hVXkW5
	11sXHOVLOL1I7tvyZtmG3vBo8baRraY/nkNP9nFiFLoMGdVFK8WLGgHu2jCACkyxc65Hf41xXhpx8
	7+8V9G1Mz4PWJyhTrgF9OhiMF3svN319EQs+BDd+s6uwyeP+2Gik2ryTXKB5m0A/x2zXNge+Hoa9D
	wp7Zm21WWTqbRBu0D4IDnN+bjosBbTp5hgTA8ewjx5021Q+wDtsX/bUr0X+BiOWc8CO0Hu0mZm+fz
	BWBAlFhKbJ4vWgQ4jbNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouVsC-00HDBR-Ck; Mon, 14 Nov 2022 09:35:24 +0000
Received: from mail-yw1-x1130.google.com ([2607:f8b0:4864:20::1130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouVs9-00HD90-43
	for linux-rockchip@lists.infradead.org; Mon, 14 Nov 2022 09:35:22 +0000
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-3701a0681daso100788447b3.4
        for <linux-rockchip@lists.infradead.org>; Mon, 14 Nov 2022 01:35:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ntnoq8gW8iSMVK5tWb4ZW4DHWr7as4v8ZeRI0cAnD4I=;
        b=6ZFPzIfB82K4IIC6MZthEzpaEPwoHymyCBYB0ktGQvq1eV1dN6/kaGak+ViB+Hmh4L
         UchJzmFQDEarXJAiJtYe4EuwQOi/od3wznpJCemQaaaAm9Z2xAqfwiAsrKQlMXAGPR82
         idGrY4YrWnXGqurv8B/aXxUadhTXAZnm1WOWOpwqCd4q0Thg0QBMCogSUWw6PUteKwCn
         7dFUvSeu2Z12sgXy7NKQpJ4IASTN8e9QjJDuFQj48BtpDCKcfvVYYGl23L1+Jzym14Ar
         VFox10HdpXTf5mM42+js7V5TqzXFTv0NvHAvGLPwZWINDspjiAft0F5WHuyn+/LdO/Rj
         hqaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ntnoq8gW8iSMVK5tWb4ZW4DHWr7as4v8ZeRI0cAnD4I=;
        b=VcBUrBRtWnTdkhssTNDcgufu5aWNG408771c2BprKOT2y1NZOdjGueNf9UR8r6iydt
         S7Stek09kVnhpWFfHkltryMkoW2x6vacFHaEXiNuKJDa4l5OE40+zmjSBojHQHlWBLd9
         EFNbofNIzTsBR5wnafwtLeiW91JRI6WT9p7zfNooDL2s5YdDN5E7TOimEXNYISIpEVDI
         m0UCvXs+BhRvI2W5sDszdX+6lbXg1aNPYU1cOs0lerF63/6SPlW5WtsIzmHksEQ5/4JW
         1wjnjcQBbNdZE69rDIq/V+xwbKwsR89/62Kpc1jHkce9u8EAb7AXFVPxsvqVQacJaPZY
         asXA==
X-Gm-Message-State: ANoB5pn6kzWkvQpuomp8HC95ggRtnctHUUAFSL2qeDXLgbW1U+AxKYGp
	rMwH2nwnE/R+Z8HgbgFfayNIHeXWp3kixHGVFQd/LQ==
X-Google-Smtp-Source: AA0mqf6J1cPh9pOE9NwrW1Heb1I0ZzioELZs9Re1u6pB02e7UZ4/7XEViAOY9IxQHOBZe4Oi3xxCHpSjzTMRBAwWnTo=
X-Received: by 2002:a81:1115:0:b0:36e:60bf:1af0 with SMTP id
 21-20020a811115000000b0036e60bf1af0mr12283566ywr.331.1668418519220; Mon, 14
 Nov 2022 01:35:19 -0800 (PST)
MIME-Version: 1.0
References: <20221108041400.157052-1-jagan@edgeble.ai> <20221108041400.157052-7-jagan@edgeble.ai>
 <137ac777-9ab4-3b3b-6155-99d77cfab30b@gmail.com>
In-Reply-To: <137ac777-9ab4-3b3b-6155-99d77cfab30b@gmail.com>
From: Jagan Teki <jagan@edgeble.ai>
Date: Mon, 14 Nov 2022 15:05:08 +0530
Message-ID: <CA+VMnFyViY102b7FF11eTAuPj=xYGFRDud3uw7FnYwHsTiHUFg@mail.gmail.com>
Subject: Re: [PATCH v7 06/10] ARM: dts: rockchip: Add Rockchip RV1126 SoC
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	Jon Lin <jon.lin@rock-chips.com>, Sugar Zhang <sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_013521_348580_EC752C87 
X-CRM114-Status: GOOD (  26.62  )
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

On Wed, 9 Nov 2022 at 01:47, Johan Jonker <jbx6244@gmail.com> wrote:
>
> Hi Jagan, Heiko,
>
> Have a look at some comment below.
>
> Johan
>
> On 11/8/22 05:13, Jagan Teki wrote:
> > RV1126 is a high-performance vision processor SoC for IPC/CVR,
> > especially for AI related application.
> >
> > It is based on quad-core ARM Cortex-A7 32-bit core which integrates
> > NEON and FPU. There is a 32KB I-cache and 32KB D-cache for each core
> > and 512KB unified L2 cache. It has build-in NPU supports INT8/INT16
> > hybrid operation and computing power is up to 2.0TOPs.
> >
> > This patch add basic core dtsi support.
> >
> > Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
> > Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> > ---
> > Changes for v7:
> > - fix dtbs_check
> > - rearrange nodes
> > - remove Edegble in license text
> > Changes for v6:
> > - add psci node
> > Changes for v5:
> > - none
> > Changes for v4:
> > - update i2c0
> > - rebase on -next
> > Changes for v3:
> > - update cru and power file names
> > Changes for v2:
> > - split pinctrl in separate patch
> >
> >  arch/arm/boot/dts/rv1126.dtsi | 438 ++++++++++++++++++++++++++++++++++
> >  1 file changed, 438 insertions(+)
> >  create mode 100644 arch/arm/boot/dts/rv1126.dtsi
> >
> > diff --git a/arch/arm/boot/dts/rv1126.dtsi b/arch/arm/boot/dts/rv1126.dtsi
> > new file mode 100644
> > index 000000000000..a485420551f5
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/rv1126.dtsi
> > @@ -0,0 +1,438 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd.
> > + */
> > +
> > +#include <dt-bindings/clock/rockchip,rv1126-cru.h>
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/interrupt-controller/arm-gic.h>
> > +#include <dt-bindings/interrupt-controller/irq.h>
> > +#include <dt-bindings/pinctrl/rockchip.h>
> > +#include <dt-bindings/power/rockchip,rv1126-power.h>
> > +#include <dt-bindings/soc/rockchip,boot-mode.h>
> > +
> > +/ {
> > +     #address-cells = <1>;
> > +     #size-cells = <1>;
> > +
> > +     compatible = "rockchip,rv1126";
> > +
>
> [..]
>
> > +     uart0: serial@ff560000 {
> > +             compatible = "rockchip,rv1126-uart", "snps,dw-apb-uart";
> > +             reg = <0xff560000 0x100>;
> > +             interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
> > +             clock-frequency = <24000000>;
> > +             clocks = <&cru SCLK_UART0>, <&cru PCLK_UART0>;
> > +             clock-names = "baudclk", "apb_pclk";
>
> > +             dmas = <&dmac 5>, <&dmac 4>;
>
>                 dma-names = "tx", "rx";
>
> DT describes hardware.
> Maybe add some dma-names ?

I think these are possible to add.

>
> ===
>
> 4 UART0 RX High level
> 5 UART0 TX High level
>
> 6 UART1 RX High level
> 7 UART1 TX High level
>
> 8 UART2 RX High level
> 9 UART2 TX High level
>
> 10 UART3 RX High level
> 11 UART3 TX High level
>
> 12 UART4 RX High level
> 13 UART4 TX High level
>
> 14 UART5 RX High level
> 15 UART5 TX High level
>
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&uart0_xfer>;
> > +             reg-shift = <2>;
> > +             reg-io-width = <4>;
> > +             status = "disabled";
> > +     };
>
>
> [..]
>
>
> > +
> > +     timer: timer@ff660000 {
>
> timer0: timer@ff660000 {
>
> This is the first of 6 timers. Change label.

Okay.

>
> > +             compatible = "rockchip,rv1126-timer", "rockchip,rk3288-timer";
> > +             reg = <0xff660000 0x20>;
> > +             interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
> > +             clocks = <&cru PCLK_TIMER>, <&cru CLK_TIMER0>;
> > +             clock-names = "pclk", "timer";
> > +     };
>
> Add possible more timer nodes ?

I think it is okay to go with timer0 in this basic version patchset,
will keep adding it in future patches.

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
