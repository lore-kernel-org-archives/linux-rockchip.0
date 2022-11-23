Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DA26C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Nov 2022 16:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qWz9s5vDgnnrCXNntnXLZzIlVUOK9e7KJM8rQJ62+Xk=; b=UcgoVYEs9df1hL
	arbMeUayFElXvy/wSmRfe4YoY0hBA4s8/Jv+LJA0C8Kg7U4KwRTujGWYkOGENMSSTSc5VBipjt9NZ
	Xp3xsO7a4bCMX4WswGt204Hux6SAdF5zCZYXfcVUX26V3vNSQ+/2un24+17VoYg8Cey0M2Wuj1LHh
	ld+2Vhcu96514sQ9zydA2tT1a65UvP27BFhWd39Dp+ocsoo/Ye79+WbKi5scWEzCX+Zj2RVxyVzT3
	1l6UUBXMWsIjBeWhlC6cnMh1C+itct8aDese3+DF7n697fu/zYtMJskFCFF1gl1IwylIY3FOYQIiW
	U8JyyfIWvTGpWc4+sNPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxsis-000tze-Cm; Wed, 23 Nov 2022 16:35:42 +0000
Received: from mail-yb1-xb36.google.com ([2607:f8b0:4864:20::b36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxsip-000txv-8q
	for linux-rockchip@lists.infradead.org; Wed, 23 Nov 2022 16:35:41 +0000
Received: by mail-yb1-xb36.google.com with SMTP id z192so21491236yba.0
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Nov 2022 08:35:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=I512k+5HxYN6TIYNRPVdtDxoBAmyY+SrEKRZhcw37Jg=;
        b=ei9V3ZOElczjruMMx6tL0CNa+yhbaYUOyBh5s103CFRHYUUcOp/G6QhgtfZr6+ZRIu
         KuF822LhArqBJ2geTG6U0zKIguwA+ZPgGWRz1g1A+sDVVqMZUJS/nxFmeHYssSFP5kk6
         xnQ6GpDWpGTFSSoPFYbQ3NDZ/8ldGhPQbTV8+zj9mjji8SsA17fbqA64OYAH58X5EsJX
         YmMoNd8kZYrYppf1mfdVW0BoJiZFdMX/jhxeNRtTDgROU2v80PRu1wDMW9Q+VCITYa/X
         08GkSlxY36oZC5C1N75HniBZWdWkekjr2JBsjHAfixYGq+WaO5g5F2VmUorrWXuZhSbS
         CWiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I512k+5HxYN6TIYNRPVdtDxoBAmyY+SrEKRZhcw37Jg=;
        b=yxlf5celgVsTbPLWstGzdBE1YFNJexxKMwV3liQb9NZnWZE9rs8QCnPm8PnElmOP4W
         7LHnUS+hMBVSRXzCCeYCYsLpdtoSYxHqHDIA6k02Ogj9PfPrZcu2gCBRasZN0ScwOHMm
         +ug8785bJ4eFfpKTqInIGJL38hM3ICqg2WVXo3v83EOn31HTdpFz1/qu8Q4ZTB9a01VM
         Fezg3GOoxIcgELynVfJlco9IK89C6Pa4KE6yTuZkApOAA320PAK8A55KVXw8CodkMGqz
         Vme1vZM2U18MuNKe5D1iRCQX9rvg3y4fwxZ328R+mv9H3MzbEMizmeSQqoOfmHPkmr+i
         V/mA==
X-Gm-Message-State: ANoB5plZ9y4O2YFR8LMv+7RAL9p6V96GA3f9kSgBKOZ6QGjZvRNxHH65
	2b1DCvWBtXGxqwk+STrYzN6LNQmNusDf7yivBmBvTA==
X-Google-Smtp-Source: AA0mqf5pllc0QqC3+Ys8ottc4PMAMxgfQ1Nx8S4Gs9rMEjdsQxuVNXp/uZH68vAUtJ5KB0PdkZtV5nIZQyITvOD8Pxo=
X-Received: by 2002:a25:aa2f:0:b0:6d6:9455:cb0d with SMTP id
 s44-20020a25aa2f000000b006d69455cb0dmr9232544ybi.539.1669221336842; Wed, 23
 Nov 2022 08:35:36 -0800 (PST)
MIME-Version: 1.0
References: <20221108041400.157052-1-jagan@edgeble.ai> <20221108041400.157052-7-jagan@edgeble.ai>
 <429df965-bd4a-afa4-e66c-6907677fbf8c@linaro.org> <CA+VMnFxs06_KvZc5p_rNAep9aJ+t908CUtVcVTBV7c_b1mu+Xg@mail.gmail.com>
 <149c2614-d87a-4406-5552-f444709a6e09@linaro.org>
In-Reply-To: <149c2614-d87a-4406-5552-f444709a6e09@linaro.org>
From: Jagan Teki <jagan@edgeble.ai>
Date: Wed, 23 Nov 2022 22:05:25 +0530
Message-ID: <CA+VMnFybPA=6-LvSDd=7EXk6fo4oY_hNBwCcDURgnFs4DP_hzA@mail.gmail.com>
Subject: Re: [PATCH v7 06/10] ARM: dts: rockchip: Add Rockchip RV1126 SoC
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	Johan Jonker <jbx6244@gmail.com>, Jon Lin <jon.lin@rock-chips.com>, 
	Sugar Zhang <sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_083539_503000_78BCBBD9 
X-CRM114-Status: GOOD (  24.37  )
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

On Tue, 15 Nov 2022 at 13:25, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 15/11/2022 07:38, Jagan Teki wrote:
> > On Tue, 8 Nov 2022 at 23:43, Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 08/11/2022 05:13, Jagan Teki wrote:
> >>> RV1126 is a high-performance vision processor SoC for IPC/CVR,
> >>> especially for AI related application.
> >>>
> >>> It is based on quad-core ARM Cortex-A7 32-bit core which integrates
> >>> NEON and FPU. There is a 32KB I-cache and 32KB D-cache for each core
> >>> and 512KB unified L2 cache. It has build-in NPU supports INT8/INT16
> >>> hybrid operation and computing power is up to 2.0TOPs.
> >>>
> >>> This patch add basic core dtsi support.
> >>>
> >>> Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
> >>> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> >>> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> >>> ---
> >>> Changes for v7:
> >>> - fix dtbs_check
> >>> - rearrange nodes
> >>> - remove Edegble in license text
> >>> Changes for v6:
> >>> - add psci node
> >>> Changes for v5:
> >>> - none
> >>> Changes for v4:
> >>> - update i2c0
> >>> - rebase on -next
> >>> Changes for v3:
> >>> - update cru and power file names
> >>> Changes for v2:
> >>> - split pinctrl in separate patch
> >>>
> >>>  arch/arm/boot/dts/rv1126.dtsi | 438 ++++++++++++++++++++++++++++++++++
> >>>  1 file changed, 438 insertions(+)
> >>>  create mode 100644 arch/arm/boot/dts/rv1126.dtsi
> >>>
> >>> diff --git a/arch/arm/boot/dts/rv1126.dtsi b/arch/arm/boot/dts/rv1126.dtsi
> >>> new file mode 100644
> >>> index 000000000000..a485420551f5
> >>> --- /dev/null
> >>> +++ b/arch/arm/boot/dts/rv1126.dtsi
> >>> @@ -0,0 +1,438 @@
> >>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> >>> +/*
> >>> + * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd.
> >>> + */
> >>> +
> >>> +#include <dt-bindings/clock/rockchip,rv1126-cru.h>
> >>> +#include <dt-bindings/gpio/gpio.h>
> >>> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> >>> +#include <dt-bindings/interrupt-controller/irq.h>
> >>> +#include <dt-bindings/pinctrl/rockchip.h>
> >>> +#include <dt-bindings/power/rockchip,rv1126-power.h>
> >>> +#include <dt-bindings/soc/rockchip,boot-mode.h>
> >>> +
> >>> +/ {
> >>> +     #address-cells = <1>;
> >>> +     #size-cells = <1>;
> >>> +
> >>> +     compatible = "rockchip,rv1126";
> >>> +
> >>> +     interrupt-parent = <&gic>;
> >>> +
> >>> +     aliases {
> >>> +             i2c0 = &i2c0;
> >>> +             serial0 = &uart0;
> >>> +             serial1 = &uart1;
> >>> +             serial2 = &uart2;
> >>> +             serial3 = &uart3;
> >>> +             serial4 = &uart4;
> >>> +             serial5 = &uart5;
> >>
> >> These are not properties of a SoC but board. They depend on the
> >> particular routing on the board... unless this SoC is an exception from
> >> all others?
> >
> > Was this a new feature to follow, didn't see this before at least
> > rockchip SoC's.
> >
>
> It's not exactly new comment, but rather not always enforced/given.

It seems like i2c0 and serial aliases are required across SoC instead
of the specific board. An example of which i2c0 connected via PMIC
which indeed require aliases to get a probe, which is common across
SoC.

[    1.778941] i2c_dev: i2c /dev entries driver
[    1.780877] rk3x-i2c ff3f0000.i2c: rk3x-i2c needs i2cX alias
[    1.781410] rk3x-i2c: probe of ff3f0000.i2c failed with error -22
[    1.791312] Bluetooth: HCI UART driver ver 2.3

Thanks,
Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
