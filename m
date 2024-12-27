Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0D1CE7718B
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Dec 2024 07:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kt75amv79R68rcVKoBKcEyi2cWw4wnlZAjbbsUYOuSU=; b=LzOUIfzAI+k3YY
	S342Asq8kC12D4E7yD1I+k9oLu05yWJSEClYM9LQkdTQG+n/b17+iytlPeLkdUVk2Vn4dSS1gZ0GQ
	WV29dOVSsca6RwNGZxeW3TBSrzq315n7B7fucPXDkxRBf4gsDZLepnAve5Y2IFXTkBuBwm6ZC0yzp
	KvtQ35rVp85rFNns/Ef6sMhaThrWA1jKBA7o7sfsfi5wwAxnzPRPzd+ZhboUioupRthGkm6B3ri6w
	DdaX/+Wa6/vj1A7r6T3zKu8bFv57mbpPTup/2/PlDlC+60yVuO548f1GuulyWpr5BDNJuGjXb2PGc
	GRI3gGaeHO4kVBClSeEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tR4vz-0000000HH2W-2gmV;
	Fri, 27 Dec 2024 07:38:59 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tR4vx-0000000HH27-3ESp;
	Fri, 27 Dec 2024 07:38:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EA3A25C01AB;
	Fri, 27 Dec 2024 07:38:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E6D2C4CED3;
	Fri, 27 Dec 2024 07:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735285136;
	bh=Wf+SvqNi6slsfwtp9CR+b3C0cjM1BKcBVm093pQ2syc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aTuE13RYXpFbp4ATHOcud1qoWz6gazgLh6G7+g6K+m+MYZPlTmlVRioMn0km9mkEE
	 nnTTjnBXZJevN4SHX8nPschH5OjNfKocnRCSFM9T8KfGnWGkIXoZljNeczyVXhfrx1
	 4BNhx+ANKF+gAznsdRteWmHrJJHiGVK6UDkVMsbK3RCzUiOLDiC6akwNed3GJjIbe/
	 0ik79J2Z8Ye9WlYsQNJfZ0hF9PF84uZjnNMtpTuI4RgbKUM0h6TZ6SgiULSqNfU7tX
	 IS5ZupcP/HvUDTuTG6HDZbZoFJSnMfh91qi+HIUmZhi6NOdjhwR245l5M6wLVCG3nM
	 iZrIdyQYy8NzQ==
Date: Fri, 27 Dec 2024 08:38:53 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v2 00/17] rockchip: Add rk3562 support
Message-ID: <sasnc2ocxnlfp4kprsobu5gkajjb5wdxhld73bg6xocgb3foah@yjmphtvpmyff>
References: <20241224094920.3821861-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241224094920.3821861-1-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241226_233857_903314_307976CD 
X-CRM114-Status: GOOD (  12.86  )
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
Cc: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Ulf Hansson <ulf.hansson@linaro.org>, heiko@sntech.de, devicetree@vger.kernel.org, linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>, dri-devel@lists.freedesktop.org, Andy Yan <andyshrk@163.com>, Finley Xiao <finley.xiao@rock-chips.com>, linux-i2c@vger.kernel.org, Jisheng Zhang <jszhang@kernel.org>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Shresth Prasad <shresthprasad7@gmail.com>, Jamie Iles <jamie@jamieiles.com>, David Airlie <airlied@gmail.com>, Dragan Simic <dsimic@manjaro.org>, linux-watchdog@vger.kernel.org, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Detlev Casanova <detlev.casanova@collabora.com>, Simon Xue <xxm@rock-chips.com>, Jiri Slaby <jirislaby@kernel.org>, Lee Jones <lee@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Tim Lunn <tim@feathertop.org>, linux-rockchip@lists.infradead.org, linux-serial@vger.kernel.org, Lorenzo Pieralisi <lpieralisi@kernel.org>, Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, Frank Wang <frank.wang@rock-chips.com>, Elaine Zhang <zhangqing@rock-chips.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Mark Brown <broonie@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, Bjorn Helgaas <bhelgaas@google.com>, Johan Jonker <jbx6244@gmail.com>, Wim Van Sebroeck <wim@linux-watchdog.org>, linux-arm-kernel@lists.infradead.org, Thomas Zimmermann <tzimmermann@suse.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>, Diederik de Haas <didi.debian@cknow.org>, Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Michael Riesch <michael.riesch@wolfvision.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Dec 24, 2024 at 05:49:03PM +0800, Kever Yang wrote:
> 
> This patch set adds rk3562 SoC and its evb support.
> 
> Split out patches belong to different subsystem.
> 
> Test with GMAC, USB, PCIe, EMMC, SD Card.
> 
> This patch set is base on the patche set for rk3576 evb1 support.
> 
> Changes in v2:
> - Update in sort order
> - remove grf in cru
> - Update some properties order
> 
> Finley Xiao (2):
>   arm64: dts: rockchip: add core dtsi for RK3562 Soc
>   arm64: dts: rockchip: Add RK3562 evb2 devicetree
> 
> Kever Yang (15):
>   dt-bindings: PCI: dwc: rockchip: Add rk3562 support
>   dt-bindings: mmc: Add support for rk3562 eMMC
>   dt-bindings: mmc: rockchip-dw-mshc: Add rk3562 compatible string
>   dt-bindings: power: rockchip: Add bindings for rk3562
>   dt-bindings: i2c: i2c-rk3x: Add rk3562 compatible
>   dt-bindings: gpu: Add rockchip,rk3562-mali compatible
>   dt-bindings: watchdog: Add rk3562 compatible
>   dt-bindings: spi: Add rockchip,rk3562-spi compatible
>   dt-bindings: serial: snps-dw-apb-uart: Add support for rk3562
>   dt-bindings: usb: dwc3: add compatible for rk3562
>   dt-bindings: pwm: rockchip: Add rockchip,rk3562-pwm
>   dt-bindings: rockchip: pmu: Add rk3562 compatible
>   dt-bindings: soc: rockchip: Add rk3562 syscon compatibles
>   dt-bindings: arm: rockchip: Add rk3562 evb2 board
>   dt-bindings: mfd: syscon: Add rk3562 QoS register compatible

You squezzed here like 12 different subsystems. Some of these changes
suggest missing drivers.

Please read basic upstreaming guide, some previous discussions and get
internal rock-chips help so we want repeat basics over and over.

Bindings are with drivers. Send them to respective subsystems.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
