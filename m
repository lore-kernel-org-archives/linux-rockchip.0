Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC7F1C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Nov 2022 06:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=biK8J8XCbfnnuPMNdBJkYNcvHUsXShR7EJx2frkQcmk=; b=xhnSNjrVB2MVpG
	CnoMGYopxZnOKp0TKpm9DL3ziR/gtkC2wQSkpz43pAOzo8dcVu2VLsJjxNKv4AGicgmEcM6IGRYLK
	fNkqf77sYqKTjzOWyXijk+jwcuBJEEuGKezfIMD7wKtYOnqO3ohlchlTdEWRRcEygsDdmh06nwxSw
	uYYaag2hAQvBDEeXfVJLSV2swGnRu4Yx5eKPJ2GcDptpmA1dx8ImBzHo9e+8NOJa++WtSSp+/n9He
	QiKqvSiecdrvMQDmPYewU+MY2tcIHgZpXx+0uMfHs50P07uIsFl7YVERt2Ae741Ea3ign8epgCBQv
	lMAjd48s+VzzROJ65FjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oupad-008FNg-0y; Tue, 15 Nov 2022 06:38:35 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oupaZ-008FMm-6z
	for linux-rockchip@lists.infradead.org; Tue, 15 Nov 2022 06:38:32 +0000
Received: by mail-yb1-xb33.google.com with SMTP id f201so14898260yba.12
        for <linux-rockchip@lists.infradead.org>; Mon, 14 Nov 2022 22:38:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6shJJo4xYqvesACp/7EtByfbdXxtPIwt6YdEFaaoorY=;
        b=KtnYSxEPptNmDg41JK6c0ZW9RxdZ6NXaJHhFC3XoYYfesPNnv/izUtRJDF9XMxTdwi
         evj/48DIwXqDq8TRG63zK73tuJcdb3bmBtphMaR+7WA9GKlbEKbsuallVA7K+J8+0rvU
         hYygSHEK+QonqJScvE46KF7cSkuJNKq7NHpLE78O0auAZkFYaveSj7ejpXEKFupbpN1F
         Uxs0ews+T5dEk1Hkm076bVckDAh2/Wq+pHT3Z9/x29G6T/OD6iG3823EbhnhKQOIAqnT
         FpVjeWp+dYVLvUzhlrQAkLH9AT2Q1rqFlvdRrkNRulyBjfN5+Lz7CD/ctsnkRhMUjw6O
         UnYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6shJJo4xYqvesACp/7EtByfbdXxtPIwt6YdEFaaoorY=;
        b=NwGi8IrKNRl53Bke1bIg6A923KeA8hVPfPbHwZcJG7Z+KpHLZR7I626O5/X1qoB+Zz
         94nhQaXIt0a7+2NAFI+AMlHFACaF3pltrXL4KV+T8dfvYKeiAdHGjpkQDC9kSJOdU7ZR
         0MJ8dAxO7/1knLfqtoDU4kuRwP7l9P1AiUjGshHVFL9SbSbbjnHwBsDMkbMjdMkT7CAM
         mmYQzv1NQohhn04U4yAWQyxnhl/z6W1o8bx1KNXsIGoc0/qfU6NDzCjqoSz6VdYxgtCl
         ct2T0K2yUIKMYSuWTZ1rXvEy8rvRaaYeKvYDNG4Th8aaB4b2Y2E6vTvQb5hXL2HADe6t
         Ht5g==
X-Gm-Message-State: ANoB5plfvPl5DnegxrA95t1kgtGPp9N6kHXMnG324LG1aIUcBFHbxw1N
	CX9EYwr9r+9DeJVGSIZXO68DtpoblakALKPjvesChw==
X-Google-Smtp-Source: AA0mqf7GgWnoT1OlRVIkansgNrcwHk+AdrHNSoMFN501pQtR/GqqAwQIYmTBxMXyZUYgjxUXBqcC/Rlmi/dYrk69nGM=
X-Received: by 2002:a25:acc7:0:b0:6dd:ac4a:65e1 with SMTP id
 x7-20020a25acc7000000b006ddac4a65e1mr16069701ybd.288.1668494309937; Mon, 14
 Nov 2022 22:38:29 -0800 (PST)
MIME-Version: 1.0
References: <20221108041400.157052-1-jagan@edgeble.ai> <20221108041400.157052-7-jagan@edgeble.ai>
 <429df965-bd4a-afa4-e66c-6907677fbf8c@linaro.org>
In-Reply-To: <429df965-bd4a-afa4-e66c-6907677fbf8c@linaro.org>
From: Jagan Teki <jagan@edgeble.ai>
Date: Tue, 15 Nov 2022 12:08:18 +0530
Message-ID: <CA+VMnFxs06_KvZc5p_rNAep9aJ+t908CUtVcVTBV7c_b1mu+Xg@mail.gmail.com>
Subject: Re: [PATCH v7 06/10] ARM: dts: rockchip: Add Rockchip RV1126 SoC
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	Johan Jonker <jbx6244@gmail.com>, Jon Lin <jon.lin@rock-chips.com>, 
	Sugar Zhang <sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_223831_507449_EC44AEEB 
X-CRM114-Status: GOOD (  25.79  )
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

On Tue, 8 Nov 2022 at 23:43, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 08/11/2022 05:13, Jagan Teki wrote:
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
> > +     interrupt-parent = <&gic>;
> > +
> > +     aliases {
> > +             i2c0 = &i2c0;
> > +             serial0 = &uart0;
> > +             serial1 = &uart1;
> > +             serial2 = &uart2;
> > +             serial3 = &uart3;
> > +             serial4 = &uart4;
> > +             serial5 = &uart5;
>
> These are not properties of a SoC but board. They depend on the
> particular routing on the board... unless this SoC is an exception from
> all others?

Was this a new feature to follow, didn't see this before at least
rockchip SoC's.

Heiko, any comments on this?

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
