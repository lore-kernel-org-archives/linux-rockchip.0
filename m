Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3651AC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Dec 2022 13:07:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e3G51dNzYdKvVZchrjt1DB/zyKpzKlfRDmXpW8lCJxg=; b=GJ25CroJNWTBxD
	8XWCwmuxesC53uvZmSq+bbsVRdMfResaMQTdf5p/OysPUSje0pLgvowsXTqgDDaC+XdCkXaA2rqsj
	dqktVOeSvsY2OGoKpQLIX300lD5wAlxxV0Ox8CIoqzjA4t0gIn6E3EbgyOpZfegVWEvRcqmgZljCe
	+UNdt2rp/Lcku0X/Yx8z+2qYbGtV0t1Vc3KjVzlrnvdNErdbZe+DWR70RMIp1U0ZhONy7PTpt/du0
	Yj07FqwC7V0qhgAuOLYXZX9tmQqQ4x9cqKE/a0VmjbkaqxloPMNHVNSlRoG+0lMlkJ9bMdhLphzXE
	psPGcRGMdm0qSRnpsZfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5nxO-009VBh-GH; Thu, 15 Dec 2022 13:07:26 +0000
Received: from mail-yb1-xb34.google.com ([2607:f8b0:4864:20::b34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5nxL-009VAx-Td
	for linux-rockchip@lists.infradead.org; Thu, 15 Dec 2022 13:07:25 +0000
Received: by mail-yb1-xb34.google.com with SMTP id v126so1626617ybv.2
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Dec 2022 05:07:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/ZEQhEp/AEuTAFQupk8n6ZQMLUUFNJMPI1X7g+sUNN8=;
        b=Bgi/fzBz6YgpewnB0UsUqG/JJ5Xdp6Qm9eQWTxS26F7S9/XWzQiZOlx1jLukFbwafd
         QIQrbCxBmQaQsknEfK7Jbl6hC6hC7vndDnRXkX/NYHQZr/irKw/1y/w+0ODPZ9ehC9G4
         MhVC1b/eZlH5FB1EpOdCGYWI/bEQ+y5tcKSj896piHLgw3EnRZNjuea4Pui8PkqCWsC6
         P7nIKllpX7quI2b52ZOHYZiRqzuEZg4hkUDQ4WfjO2EuGF/ohA7pKV5ItgCKY0+w/rtf
         JP+xvBR56/wmaw3C5oejdFTdBqIIvRwo0sEcOfVKIQPrlIDii6hAhJoyr75JN8xLTrJz
         bYxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/ZEQhEp/AEuTAFQupk8n6ZQMLUUFNJMPI1X7g+sUNN8=;
        b=hvFe7E35nEVjWGOK9/Od7CNAiwcxshM4GyfyhhFqBi93OWPMSqPoLdnmFRbLAjbz4+
         ifVtPMj84IFVd5NFfIlQXP4gyqBhlYK/EzPKC5PDkDmVuykIHW5UT9tqbWYpWD+EjR84
         u6+Q65g3dkWBuAir88uMqpMrQpoBeEPVxD7y5OV58uGAw1I1PpYRBwBa7qP0oRbZLYBy
         qgzlM14BOF+1ZQJx3KLpRg4qk8+BGKL/MApt2NI12VAIpXP2lM/U1QQzYRihjPdg8Vy+
         JcceOA+gCuH9rjFhJm73TM7/y/tpVmjHXP3CBDl6CRcHuVNmOpy3EpxgoXy+rdkFPE4L
         pBhg==
X-Gm-Message-State: ANoB5pnu7NXqNB/SvA8BCxgwSF8YUa08tCPyt1dDOiNQBOXtkVFNNCb3
	kM1a2RYi/CKVmr+6gWDyo1wXSCZkuo3ZQGyjZKcYXA==
X-Google-Smtp-Source: AA0mqf5RTMR/uAoOZK8ttO+7WO6orxQFr8A06Sf2JOydK+GaNZM+quva/yUjmIIulxU998U4yRh6DaFe7SdmomMzfcg=
X-Received: by 2002:a25:abee:0:b0:70c:4fa3:2cce with SMTP id
 v101-20020a25abee000000b0070c4fa32ccemr7845895ybi.539.1671109640972; Thu, 15
 Dec 2022 05:07:20 -0800 (PST)
MIME-Version: 1.0
References: <20221214182247.79824-1-sebastian.reichel@collabora.com> <20221214182247.79824-6-sebastian.reichel@collabora.com>
In-Reply-To: <20221214182247.79824-6-sebastian.reichel@collabora.com>
From: Jagan Teki <jagan@edgeble.ai>
Date: Thu, 15 Dec 2022 18:37:10 +0530
Message-ID: <CA+VMnFwT+Gi1nFBG2NDyMYx8wv+FrwzR8tb_8RrFh6QMGK8Q6g@mail.gmail.com>
Subject: Re: [PATCHv6 5/7] arm64: dts: rockchip: Add rk3588-evb1 board
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Marc Zyngier <maz@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Christopher Obbard <chris.obbard@collabora.com>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Kever Yang <kever.yang@rock-chips.com>, kernel@collabora.com, 
	Michael Riesch <michael.riesch@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221215_050723_979013_56CD2CA2 
X-CRM114-Status: GOOD (  18.27  )
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

On Wed, 14 Dec 2022 at 23:53, Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> From: Kever Yang <kever.yang@rock-chips.com>
>
> Add board file for the RK3588 evaluation board. While the hardware
> offers plenty of peripherals and connectivity this basic implementation
> just handles things required to successfully boot Linux from eMMC,
> connect via UART or Ethernet.
>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> [rebase, update commit message, use EVB1 for SoC bringup]
> Reviewed-by: Michael Riesch <michael.riesch@wolfvision.net>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3588-evb1-v10.dts     | 165 ++++++++++++++++++
>  2 files changed, 166 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
>
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 8c15593c0ca4..12ed53de11eb 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -72,3 +72,4 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-soquartz-cm4.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-bpi-r2-pro.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
> new file mode 100644
> index 000000000000..46ea2daf5d6e
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
> @@ -0,0 +1,165 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
> + *
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include "rk3588.dtsi"
> +
> +/ {
> +       model = "Rockchip RK3588 EVB1 V10 Board";
> +       compatible = "rockchip,rk3588-evb1-v10", "rockchip,rk3588";
> +
> +       aliases {
> +               mmc0 = &sdhci;
> +               serial2 = &uart2;
> +       };
> +
> +       chosen {
> +               stdout-path = "serial2:1500000n8";
> +       };
> +
> +       backlight: backlight {
> +               compatible = "pwm-backlight";
> +               brightness-levels = <
> +                         0  20  20  21  21  22  22  23
> +                        23  24  24  25  25  26  26  27
> +                        27  28  28  29  29  30  30  31
> +                        31  32  32  33  33  34  34  35
> +                        35  36  36  37  37  38  38  39
> +                        40  41  42  43  44  45  46  47
> +                        48  49  50  51  52  53  54  55
> +                        56  57  58  59  60  61  62  63
> +                        64  65  66  67  68  69  70  71
> +                        72  73  74  75  76  77  78  79
> +                        80  81  82  83  84  85  86  87
> +                        88  89  90  91  92  93  94  95
> +                        96  97  98  99 100 101 102 103
> +                       104 105 106 107 108 109 110 111
> +                       112 113 114 115 116 117 118 119
> +                       120 121 122 123 124 125 126 127
> +                       128 129 130 131 132 133 134 135
> +                       136 137 138 139 140 141 142 143
> +                       144 145 146 147 148 149 150 151
> +                       152 153 154 155 156 157 158 159
> +                       160 161 162 163 164 165 166 167
> +                       168 169 170 171 172 173 174 175
> +                       176 177 178 179 180 181 182 183
> +                       184 185 186 187 188 189 190 191
> +                       192 193 194 195 196 197 198 199
> +                       200 201 202 203 204 205 206 207
> +                       208 209 210 211 212 213 214 215
> +                       216 217 218 219 220 221 222 223
> +                       224 225 226 227 228 229 230 231
> +                       232 233 234 235 236 237 238 239
> +                       240 241 242 243 244 245 246 247
> +                       248 249 250 251 252 253 254 255
> +               >;
> +               default-brightness-level = <200>;
> +
> +               pwms = <&pwm2 0 25000 0>;
> +               power-supply = <&vcc12v_dcin>;
> +       };

Do we really need this now? and brightness-levels need not be required
to mention all.

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
