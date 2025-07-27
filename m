Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 026FFC87FCC
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Jul 2025 19:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E20IBCPtlF57W48LA48VE2mJ3xuRVXgBGLR4sX8EL2I=; b=dse4cZeEhu8XgP
	Zh1ZyLNaELbRK+b6mNTzwmTnrRADJ4fWfvYV2WYGyf8Q+qoWa6T9M0NK01PRh6jA/+b+ogV7cbleL
	kPpV8vr0YCO307haQGNqEh/ipYkEjl+52kWlnjl5w9ld8Ulyf6JcGk5AA9xMOFOS8nhrsi0cwKBdx
	8g6xxNq8oZ44xWEeDjFo5DFykxZfzdw4LeGp4IizsoS1wiEUQoRxxHnj72pGWKNyNVKUv6M17miXy
	xkoyz4/NnXGlX4s/ztFB6Ly7FwupI91dsWDnD22w9Vl94svgEfBmZMwXt/0VW9jsw0FPeOO9ErITM
	EHl4sphsh/K3ipLY7qdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ug6lC-0000000D8Gy-12A1;
	Sun, 27 Jul 2025 19:10:14 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ug6l9-0000000D8GQ-2NYa;
	Sun, 27 Jul 2025 19:10:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=G6fAFR76cmo7RpsyFJQzRERhtJ7iBzJqeyQVBeXy91o=; b=hLV+glJqUEzoc844ck/FZXvYMD
	PhOs8Bnrf0ylD+a/wULEdJfDI4lHzXVYin5qpBLjnGkk9Hl3bvNuxqyvoLW0rSAaLya6SMpdMsKkA
	jNOg2JPnsZduh2Eyq4ZiHIwdt+JST/R54FqdZGk2Zn36lUbfT74AESIwlm8Bg63jRmyk=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1ug6ku-0031NN-T5; Sun, 27 Jul 2025 21:09:56 +0200
Date: Sun, 27 Jul 2025 21:09:56 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Alvin =?utf-8?Q?=C5=A0ipraga?= <alsi@bang-olufsen.dk>,
	Vladimir Oltean <olteanv@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Yao Zi <ziyao@disroot.org>, Chukun Pan <amadeus@jmu.edu.cn>,
	Heiko Stuebner <heiko@sntech.de>, netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH net-next 2/3] net: dsa: realtek: Add support for use of
 an optional mdio node
Message-ID: <2504b605-24e7-4573-bec0-78f55688a482@lunn.ch>
References: <20250727180305.381483-1-jonas@kwiboo.se>
 <20250727180305.381483-3-jonas@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250727180305.381483-3-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250727_121011_612083_CB54500A 
X-CRM114-Status: GOOD (  12.17  )
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

On Sun, Jul 27, 2025 at 06:02:59PM +0000, Jonas Karlman wrote:
> The dt-bindings schema for Realtek switches for unmanaged switches
> contains a restriction on use of a mdio child OF node for MDIO-connected
> switches, i.e.:
> 
>   if:
>     required:
>       - reg
>   then:
>     not:
>       required:
>         - mdio
>     properties:
>       mdio: false
> 
> However, the driver currently requires the existence of a mdio child OF
> node to successfully probe and properly function.
> 
> Relax the requirement of a mdio child OF node and assign the dsa_switch
> user_mii_bus to allow a MDIO-connected switch to probe and function
> when a mdio child OF node is missing.
 
I could be getting this wrong.... Maybe Linus knows more.

It could be the switch does not have its own separate MDIO bus just
for its internal PHYs. They just appear on the parent mdio bus. So
you represent this with:

&mdio0 {
	reset-delay-us = <25000>;
	reset-gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_LOW>;
	reset-post-delay-us = <100000>;

	phy0: ethernet-phy@0 {
		reg = <0>;
	};

	phy1: ethernet-phy@1 {
		reg = <0>;
	};


        ethernet-switch@1d {
               compatible = "realtek,rtl8365mb";
               reg = <0x1d>;
               pinctrl-names = "default";
               pinctrl-0 = <&rtl8367rb_eint>;

               ethernet-ports {
                       #address-cells = <1>;
                       #size-cells = <0>;

                       ethernet-port@0 {
                               reg = <0>;
                               label = "wan";
			       phy-handle = <phy0>;
                       };

                       ethernet-port@1 {
                               reg = <1>;
                               label = "lan1";
			       phy-handle = <phy1>;
                       };

If this is correct, you should not need any driver or DT binding
changes.

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
