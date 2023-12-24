Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE42DC46CD2
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Dec 2023 19:00:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HucsJLt6v+fedifTPa5OxQXOd7jC1JSqAvfDxCHFZnk=; b=SEE71vm1FBs4uB
	JFtW//0QDeW+pJthWs6zZR5IiEjkmExaPT3kQeJEhZemZR0wDsdMYSGrv2WQoJP6HKIT9hCKetNkY
	Opzlw+z5oCNBspYJ/53w0sg1W9zbm7Zuii9yUMuThK+KXtUoaovWiwVzJ8ypoaiALl+MsJniT794C
	7KJ5JrOHqJi0yFkrCEP4cm+Q9Jtw5XDuH9puJ/T68NM6EmFxkZ8PAmdrVSr91y6O4OOKkgrxZ3ccH
	w8opYuLqTWtRG2713JpKCgwDadMjNWG872VTiW6MXiXu2l4AY9jl/1EW44Y9d7GkDtB/ZqxDznTc2
	fX4s1OeB3GSSmoNW9wtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHThd-009mDV-1X;
	Sun, 24 Dec 2023 18:59:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHThZ-009mCg-2E;
	Sun, 24 Dec 2023 18:59:55 +0000
Received: from i5e86193c.versanet.de ([94.134.25.60] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rHThJ-0005pM-Gb; Sun, 24 Dec 2023 19:59:37 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Trevor Woerner <twoerner@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: rockchip: dts: rk3328-rock-pi-e: enable GbE eth
Date: Sun, 24 Dec 2023 19:59:36 +0100
Message-ID: <2404910.8hb0ThOEGa@diego>
In-Reply-To: <20231221062244.11871-1-twoerner@gmail.com>
References: <20231221062244.11871-1-twoerner@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231224_105953_752034_4D550FAF 
X-CRM114-Status: GOOD (  15.62  )
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

Hi Trevor,

Am Donnerstag, 21. Dezember 2023, 07:22:43 CET schrieb Trevor Woerner:
> Adjust the device-tree to get the GbE interface working using a patch found
> on the Radxa forum.
> 
> Link: https://forum.radxa.com/t/rock-pi-e-board-version-1-21-ethhernet-not-working-in-armbian/15061/3
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---

> @@ -165,15 +165,17 @@ mdio {
>  		#address-cells = <1>;
>  		#size-cells = <0>;
>  
> -		rtl8211e: ethernet-phy@1 {
> +		rtl8211f: ethernet-phy@1 {
> +			compatible = "ethernet-phy-id001c.c916", "ethernet-phy-ieee802.3-c22";

skipping through that thread, it looks like there are variants of the
board with one of the rtl8211e _or_ rtl8211f phys.

So while the "ethernet-phy-ieee802.3-c22" compatible would work for both,
the "ethernet-phy-id001c.c916" compat effectively disables phy- probing.
So applying this patch would effectively disable ethernet support on those
older rock-pi-e boards?

In a similar context concerning boards using different phys, it was
suggested [0] that the bootloader should modify the dt it passes to the
kernel to provide the correct phy id.


>  			reg = <1>;
>  			pinctrl-0 = <&eth_phy_int_pin>, <&eth_phy_reset_pin>;
>  			pinctrl-names = "default";
>  			interrupt-parent = <&gpio1>;
>  			interrupts = <24 IRQ_TYPE_LEVEL_LOW>;
> -			reset-assert-us = <10000>;
> -			reset-deassert-us = <50000>;
> +			reset-assert-us = <20000>;
> +			reset-deassert-us = <100000>;

I guess for those we can consolidate onto the "slower" ones in the kernel though.


>  			reset-gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
> +			max-speed = <1000>;
>  		};
>  	};
>  };
> 


Heiko

[0] https://lore.kernel.org/all/ecbdcfb7-32ab-45cc-991a-982c52bf4b14@gmail.com/




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
