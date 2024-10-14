Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90B0ED18145
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Oct 2024 20:32:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IdTgGsjpX3nZ0EFxoDsmzhUYLrnUNQgte0jsxj6/GoY=; b=c2yHkACuvnPZ1FrMAFUOdhVaA9
	JYjpMNbQYoirRBo6WaO59mB84RysohKaAkEbCGXmFhf0huEnmXqSiMjzd9Nic5mh8j4ZSZXFObfMB
	wBOqIxebMuNTDORpo5W2vx07D6WVPxtvE6byRvwqg61gPOBXTkPpxfLceTVtF0ldRkGEx1TJKA+qB
	u+QUd7Yzr1dkBRbCGXFvtnoJ7CZKPEM4xlaxaw9go09hYTrvOXfs3jWGexfzhFXi8UM0Sm/2/AykF
	CXo7v+yBUyGK+aTsJYmhGiuBLO4laB+xNOQ5kwbPbZLYd+PczkC5POPV+DbTxY6KFSs4NYTJ6HTaY
	OwuF6cfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Rjc-00000006Ocu-42K1;
	Mon, 14 Oct 2024 20:32:08 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Rgs-00000006OCd-0eII;
	Mon, 14 Oct 2024 20:29:19 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728937755;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DU60WL7DeLOtDOK8bJ4w2KZeuNGEq/82GYZDHFw14lE=;
	b=HKsn0S9TKKzWyslK26UMDckc592r3RWQhpWtdnl9rSbPcZIsLoOhVQBdBy61CVL+xdG4hp
	fG6YS6rPr+HomDcbdN01FRt03BsoHwVFmx+3+qw2LY8T0YPJgCrDLgPL1B/DVRy94VZFX3
	itt8Wzv39tScYpodsp8SoHSaVerj4Fc2/lLCwn9+Ei3W4bsZZFmwlLy8XCZpqqnn60Y8Yc
	19cwgv7qlaglbcGfM1XYYhtNqiv6G+vbTlQNUyxZtyBdElTwopm+381mWgrg9OBn/egGBR
	oQdTeX6YETf0v9cGyzJ5BdnNgzkJ4qILrbfqfAhI4boxSbbfiVgMKrujsWNBnQ==
Date: Mon, 14 Oct 2024 22:29:14 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Cenk Uluisik <cenk.uluisik@googlemail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Chris
 Morgan <macromorgan@hotmail.com>, Jonas Karlman <jonas@kwiboo.se>, Andy Yan
 <andyshrk@163.com>, Tim Lunn <tim@feathertop.org>, Jagan Teki
 <jagan@edgeble.ai>, Michael Riesch <michael.riesch@wolfvision.net>, Jimmy
 Hon <honyuenkwun@gmail.com>, Jing Luo <jing@jing.rocks>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 2/2] arm64: dts: rockchip: Add rk3588-orangepi-5b
 device tree and refactor
In-Reply-To: <20241014180324.536702-2-cenk.uluisik@googlemail.com>
References: <20241014180324.536702-1-cenk.uluisik@googlemail.com>
 <20241014180324.536702-2-cenk.uluisik@googlemail.com>
Message-ID: <c773f975333718d0a677616b68252ec3@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_132918_518857_34A19C6F 
X-CRM114-Status: GOOD (  19.80  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Cenk,

Please see a few comments below.

On 2024-10-14 20:02, Cenk Uluisik wrote:
> Implements a slightly modified rk3588s-orangepi-5b.dts
> from the vendor. Unfortunately the &wireless_bluetooth
> and &wireless_wlan are not implemented yet.
> 
> Bigger parts of the rk3588s-orangepi-5.dts file were
> moved into a new rk3588s-orangepi-5.dtsi file, so
> that both device trees from the orangepi-5 and 5b
> include from it and avoid including from the .dts.
> 
> This changes the Orange Pi 5's sdmmc alias to be mmc1,
> breaking existing users if they used the /dev/mmc0 device
> file, so it's consistent with all the other rk3588 DTS,
> which, is also the new default that rockchip wants to use.
> https://github.com/orangepi-xunlong/linux-orangepi/commit/bce92d16b230b8e93c2831fb7768839fd7bbab04
> Therefore also add the sdhc alias to be mmc0 on the
> rk3588s-orangepi-5b.dts.

It would be good to reflow the patch description to use the
76-or-so-column width a bit better.

> How does this board differ from the original Orange Pi 5?
>   - the Orange Pi 5 has a M.2 NVMe M-key PCI 2.0x1
>     slot (hooked to combphy0_ps) whereas the Orange Pi 5b uses 
> combphy0_ps
>     for the WiFi.
>   - The Orange Pi 5 with the M.2 socket has a regulator defined hooked 
> to
>     "GPIO0_C5" (i.e. PCIE_PWREN_H) whereas the Orange Pi 5B has 
> GPIO0_C5
>     hooked to BT_WAKE_HOST.
>   - builtin eMMC storage
>   - no SPI NOR flash (u-boot, preboot etc. initiates
>       from within the eMMC
>       storage)
>   - ap6275p Wifi module (like the Orange Pi 5 Plus)
>   - builtin BlueTooth module
> 
> Signed-off-by: Cenk Uluisik <cenk.uluisik@googlemail.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3588s-orangepi-5.dts  | 798 +-----------------
>  ...orangepi-5.dts => rk3588s-orangepi-5.dtsi} |  36 +-
>  .../boot/dts/rockchip/rk3588s-orangepi-5b.dts |  27 +
>  4 files changed, 73 insertions(+), 789 deletions(-)

Please see my patch [1] that presents use of a set of git-diff(1)
parameters that could also, possibly, reduce the size of this patch
significantly and increase its readability.

[1] 
https://lore.kernel.org/linux-rockchip/f3d789c14fe34a53327cac03cd3837e530e21f5c.1728937091.git.dsimic@manjaro.org/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
