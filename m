Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 081F6C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Aug 2024 15:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=p/OYR0GOegw15Wlw2Mx8jAdZT8JX2OZ5fr8QQyL9qC8=; b=3aUi666qoV9a9+WpWEzNJ7iurg
	frufK9yh+3RWeijlCGYTDcJvqLd8vEl5XUKuj33ufSP08mzxXN4fqExZR/9SnzfNCrIL/XR/rqo61
	Z4a6lZiDdp3aI7gUb7k/M9gYMecAZrHVyAx8AzWoOiaRFv/7abU9HXi6ATKIPr0rI4yyY7AAjKNOj
	fH4QotKrIjjb7wqq3l484/GBxeNPBpwqaqfX7Xa2hXj3nHGmRaTKQN++EV/XQuGhTU6gOd94MhuEk
	H+vKDdEsIY30q9wwwIWkDbh+1SIpwQFIZZRazeFro4eKIZvUkztQIeW88PQdqJH8z2BRTHPNy8Ec7
	vJ4szAjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdWgd-00000000h2U-1Cag;
	Mon, 12 Aug 2024 15:10:19 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdWfx-00000000gtq-1vk9;
	Mon, 12 Aug 2024 15:09:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 64179CE0E60;
	Mon, 12 Aug 2024 15:09:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DED03C32782;
	Mon, 12 Aug 2024 15:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723475374;
	bh=deWuRDJPCT5foWSV44HA7CYL8GYl7vdMf1Zpapv5XKo=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=AAIzYEwFnviJyUy/yD9Tw3CxmOF45cdw3/aF/vhW8GEyHCcIZBPuhVpzhJXB2Vsta
	 9XbecjNGYw8q5pyqkdiR3ucGZ0wUSLmQLR69dC+IMBMIaJHxFWOFaSvQRCKISrrtNQ
	 xiIlnoL2pBFsWohKL16xDtEf7nB8i+Qkac53bhyaER4+qi9z3bfP1iJuJ4KbTRRdDx
	 o7M8/+jU1G1NxD4lZ/34RxQenx3jaw3jyLlkfk5KZshHzXL8eefGnXzUuhjsGCfO0A
	 J41i+sV0lntGANeqwnlMfv6xWzFy68z0av4EJq8pqDIaWGwI6T/PWBh0Ew2Kov3uV4
	 TnKaogwXhIdqQ==
Date: Mon, 12 Aug 2024 09:09:32 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, 
 Alexey Charkov <alchark@gmail.com>, linux-iio@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 linux-serial@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-i2c@vger.kernel.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, 
 Dragan Simic <dsimic@manjaro.org>, Jagan Teki <jagan@edgeble.ai>, 
 Yifeng Zhao <yifeng.zhao@rock-chips.com>, Tim Lunn <tim@feathertop.org>, 
 Elaine Zhang <zhangqing@rock-chips.com>, Andi Shyti <andi.shyti@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Heiko Stuebner <heiko@sntech.de>, Jonathan Cameron <jic23@kernel.org>, 
 Muhammed Efe Cetin <efectn@protonmail.com>, devicetree@vger.kernel.org, 
 Finley Xiao <finley.xiao@rock-chips.com>, 
 Lars-Peter Clausen <lars@metafoo.de>, 
 Shresth Prasad <shresthprasad7@gmail.com>, linux-kernel@vger.kernel.org, 
 Ondrej Jirman <megi@xff.cz>, Liang Chen <cl@rock-chips.com>, 
 Weizhao Ouyang <weizhao.ouyang@arm.com>, Jiri Slaby <jirislaby@kernel.org>, 
 Jimmy Hon <honyuenkwun@gmail.com>, linux-arm-kernel@lists.infradead.org, 
 kernel@collabora.com, linux-rockchip@lists.infradead.org, 
 Chris Morgan <macromorgan@hotmail.com>, Andy Yan <andyshrk@163.com>, 
 Lee Jones <lee@kernel.org>
In-Reply-To: <20240802214612.434179-10-detlev.casanova@collabora.com>
References: <20240802214612.434179-1-detlev.casanova@collabora.com>
 <20240802214612.434179-10-detlev.casanova@collabora.com>
Message-Id: <172347513683.603014.1210944906291860196.robh@kernel.org>
Subject: Re: [PATCH 09/10] arm64: dts: rockchip: Add rk3576 SoC base DT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_080937_888139_63007D6F 
X-CRM114-Status: GOOD (  16.41  )
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


On Fri, 02 Aug 2024 17:45:36 -0400, Detlev Casanova wrote:
> This device tree contains all devices necessary for booting from network
> or SD Card.
> 
> It supports CPU, CRU, PM domains, dma, interrupts, timers, UART and
> SDHCI (everything necessary to boot Linux on this system on chip) as
> well as Ethernet, I2C, SPI and OTP.
> 
> Also add the necessary DT bindings for the SoC.
> 
> Signed-off-by: Liang Chen <cl@rock-chips.com>
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> [rebase, squash and reword commit message]
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  .../boot/dts/rockchip/rk3576-pinctrl.dtsi     | 5775 +++++++++++++++++
>  arch/arm64/boot/dts/rockchip/rk3576.dtsi      | 1635 +++++
>  2 files changed, 7410 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3576.dtsi
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


New warnings running 'make CHECK_DTBS=y rockchip/rk3576-armsom-sige5.dtb' for 20240802214612.434179-10-detlev.casanova@collabora.com:

In file included from arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts:14:
arch/arm64/boot/dts/rockchip/rk3576.dtsi:6:10: fatal error: dt-bindings/clock/rockchip,rk3576-cru.h: No such file or directory
    6 | #include <dt-bindings/clock/rockchip,rk3576-cru.h>
      |          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[3]: *** [scripts/Makefile.lib:434: arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dtb] Error 1
make[2]: *** [scripts/Makefile.build:485: arch/arm64/boot/dts/rockchip] Error 2
make[2]: Target 'arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dtb' not remade because of errors.
make[1]: *** [/home/rob/proj/linux-dt-testing/Makefile:1389: rockchip/rk3576-armsom-sige5.dtb] Error 2
make: *** [Makefile:224: __sub-make] Error 2
make: Target 'rockchip/rk3576-armsom-sige5.dtb' not remade because of errors.






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
