Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60CF1C021B2
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Feb 2025 19:09:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ccugJ5/gP0m8/DF4W1iSwxjqOsNxDTZ991QVmu7qnII=; b=tgyFHuzbFIb6R3
	shC2rnWY0ARj/9wJynoMCzjFwYox+bSpalQRLFa5pM1gVnO2BExdEJxxE++8Jbuf4QDsoSOHrEkin
	Ie8c8wHfH8NPRyxYslCU9IaDY6kZBHQU3Y2iMQPMaLS/TRWjgEVL1rvridiCI9nJQBsT8cNwxHccx
	K2JvyY1uiSU3O3eDlVG5kX5ItV1MeL5BFTwBaD9Mt0JRqUywMwLSAs8DQFMwN81qJAMs3VdtFvUW7
	Naa309TaohgVzse3HX4n60Y06/oGYGQwB6qTIIaYTyYxR8iHLcXDOxp8NjzxYbNc5BtSQP+W14RVj
	qme9mRU9++cZ4cID5y3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlurw-00000008Zob-2fFj;
	Sat, 22 Feb 2025 19:08:56 +0000
Received: from out.bound.email ([141.193.244.10])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tluqS-00000008Zd4-05Tf;
	Sat, 22 Feb 2025 19:07:25 +0000
Received: from mail.sventech.com (localhost [127.0.0.1])
	by out.bound.email (Postfix) with ESMTP id DBE678A312A;
	Sat, 22 Feb 2025 11:02:20 -0800 (PST)
Received: by mail.sventech.com (Postfix, from userid 1000)
	id C37D0160036F; Sat, 22 Feb 2025 11:02:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdfelt.com;
	s=default; t=1740250940;
	bh=PK6nhumwEa8qfufAAd/8nTxtim8pVFn24vKEFq4IzAo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ulhrDdKQC0RybuRsiOb0oCZysoTjgaZtZmCEg22IbJIaddd/elxKnfPCO2lf0RXMz
	 gCLvaWPsw+t0rL8wz8m4/HHaVKL7+CDQgWLG4qTwU2pksPQ8360zAsy0k35e4XyHTz
	 fRffFa94RJ47MIVRttCHyn9RkXhZqSDuZ21Ixqps=
Date: Sat, 22 Feb 2025 11:02:20 -0800
From: Johannes Erdfelt <johannes@erdfelt.com>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v6 3/5] arm64: dts: rockchip: Add Orange Pi 5 Ultra board
Message-ID: <20250222190220.GX16911@sventech.com>
References: <20250222172752.6254-1-honyuenkwun@gmail.com>
 <20250222172752.6254-4-honyuenkwun@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250222172752.6254-4-honyuenkwun@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250222_110724_179619_78356D32 
X-CRM114-Status: GOOD (  11.26  )
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

On Sat, Feb 22, 2025, Jimmy Hon <honyuenkwun@gmail.com> wrote:
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts
> new file mode 100644
> index 000000000000..fa975c5db0ae
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts
> @@ -0,0 +1,33 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include "rk3588-orangepi-5-compact.dtsi"
> +
> +/ {
> +	model = "Xunlong Orange Pi 5 Ultra";
> +	compatible = "xunlong,orangepi-5-ultra", "rockchip,rk3588";
> +};
> +
> +&led_blue_pwm {
> +	pwms = <&pwm4 0 25000 PWM_POLARITY_INVERTED>;
> +};
> +
> +&led_green_pwm {
> +	pwms = <&pwm5 0 25000 PWM_POLARITY_INVERTED>;
> +};
> +
> +&pinctrl {
> +
> +	usb {
> +		usb_otg_pwren: usb-otg-pwren {
> +			rockchip,pins = <4 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +};
> +
> +&vcc5v0_usb30_otg {
> +	gpios = <&gpio4 RK_PB1 GPIO_ACTIVE_HIGH>;
> +};

Error: arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts:58.24-25
syntax error
FATAL ERROR: Unable to parse input tree

I think you may need to include <dt-bindings/pwm/pwm.h>

JE


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
