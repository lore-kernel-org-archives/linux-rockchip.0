Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AA7EC87FCE
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Jul 2025 16:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CiY5YkXox9XaGoSbctrNhjQix2lxmyufceEaogN2eis=; b=inN2aBjwSRAKDO
	aftzA0VAP9aJP3rFfbthCaMvFyT9g4UL9hAJClbTxiu+D9bzXBGdd7mF0WaIDHFD23M15bGR9vF5O
	IlS6g1q3uSUq8zo9D/SE5nSZ4ujCaOG6ffc4aIrbKTs/YZpQqVixzo0KIMoH9R2QKj0ETrAWw+r/V
	n3pwdqpHiNLoTMfJefVauqb8WEZUpfoBXY0RhxuNMyBE0d9Ny25n4qu/DvJ5hisxEs3TawMllzpaN
	jst/PWthvd4TlHsDZWiHiPjpIWC4Xg2J2rU9PF9YsJVYTurTu80g8/jAZFSeLAvWhYakpZctol1FC
	Ek5LG5eQxRM2yoOK8LVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ug42R-0000000CuOi-3wjH;
	Sun, 27 Jul 2025 16:15:51 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ug42P-0000000CuOK-0jna;
	Sun, 27 Jul 2025 16:15:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=kW+ZOJQ+5A57SHI4wkNLifBLUPO0LzEY2L+nW9nNAMw=; b=IfLEU1z+PcoCX4MpyXlmxy8V8z
	5ZEHb7qQ1EDl5XZYu3Q8twiHPyYuZOg7dmawgozupzVJiZA4UYWK+ygeSs01hCOJeUvdE5N1aQK3v
	Qsb2nEFqHpAGmgMql3Pxdg92tcc8mX83ZKbaa7hNkLDFK2LsrkBjBRQfFRcGDV7IvNC8=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1ug42A-0030pL-Vc; Sun, 27 Jul 2025 18:15:34 +0200
Date: Sun, 27 Jul 2025 18:15:34 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add Radxa E24C
Message-ID: <72d979e8-005a-4d4d-b5d2-3f59e78574de@lunn.ch>
References: <20250727144409.327740-1-jonas@kwiboo.se>
 <20250727144409.327740-4-jonas@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250727144409.327740-4-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250727_091549_219286_1F3471CD 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
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

> +&gmac1 {
> +	clock_in_out = "output";
> +	phy-mode = "rgmii-id";
> +	phy-supply = <&avdd_rtl8367rb>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&rgmii_miim>, <&rgmii_tx_bus2>, <&rgmii_rx_bus2>,
> +		    <&rgmii_rgmii_clk>, <&rgmii_rgmii_bus>, <&gmac1_rstn_l>;
> +	status = "okay";
> +
> +	fixed-link {
> +		speed = <1000>;
> +		full-duplex;
> +	};

A fixed-link without an obvious reason gets me asking questions...

The schematic indicates there is a realtek 6387 switch on the other
end. rtl8365mb.c seems to support this. Is there a reason you did not
include this now?

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
