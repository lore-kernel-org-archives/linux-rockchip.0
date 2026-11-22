Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D781C606A335
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Nov 2026 15:47:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=XsdenkwI;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256 header.s=20171124 header.b=FWAlQpvl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=gJgn6JsBkw9SeuCDXKYN2f73dEKEIBYsrNoi0xfbFzo=; b=XsdenkwIzj6fjLWpaTz3CwIhsa
	u3mxICb0xapVyLoSQ/zvwECKKAeRta88aOvpB8D2LEId0ihKGply4bQ5u/QFhynst0HKCIWa2MmZ4
	uMfUDGhrEBRqpRNuOwtTLU9ajcTItPNpgzF9ZoLzrrlNmlYkNQYYYuy/cTtjtNaJ6pZoqhGj2+pEe
	RpjrTC/zGwz3suSBRLyTMnZ3nEgN/witySZR3H1fs4DuNGlaST9n76hhD1sZ44RTZphQirqQAE88s
	+D4HefSQjSYnIQ9cbMLkYei327oq1daktHp/f34fEmKKkWnQOwx0vUeT19q//wzPEFtJQ7a+wDtbK
	q8uQumYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV9mJ-00000001IKz-0UZI;
	Sun, 22 Nov 2026 15:46:55 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV9mH-00000001IKb-1AYC;
	Sun, 22 Nov 2026 15:46:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=yoDV+prWsX7guq+90WivZjKbCtQ+ft9UJtNUNcoppyw=; b=FWAlQpvl9OScDr7zh1eXy10phf
	2k/eaxwZpN3S1rognH3ERyRNfvilejPDFDKo/iib74CPp4Cg+G2yEcaADYM383sGV/b1B1dDUsbrX
	MAEm8LbHu+rIi4ix0YXUiKlHY/ULurJJRs64W1Ws2wAVrabjm0Ci2F5X8633lGtDqNp0=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1xV9m6-000aVN-A8; Sun, 22 Nov 2026 16:46:42 +0100
Date: Sun, 22 Nov 2026 16:46:42 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Richard Cochran <richardcochran@gmail.com>,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org
Subject: Re: [PATCH v2 2/8] ARM: dts: rockchip: Add support for RK3506
Message-ID: <86007bdd-6c10-46ba-aac6-197939934c73@lunn.ch>
References: <20261122060114.773624-1-jonas@kwiboo.se>
 <20261122060114.773624-3-jonas@kwiboo.se>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261122060114.773624-3-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261122_074653_319068_BDD946C0 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

> diff --git a/arch/arm/boot/dts/rockchip/rk3506.dtsi b/arch/arm/boot/dts/rockchip/rk3506.dtsi

> +		gmac0: ethernet@ff4c8000 {
> +			compatible = "rockchip,rk3506-gmac", "snps,dwmac-4.20a";
> +			reg = <0xff4c8000 0x2000>;
> +			clocks = <&cru CLK_MAC0>, <&cru CLK_MAC0_PTP>,
> +				 <&cru PCLK_MAC0>, <&cru ACLK_MAC0>;
> +			clock-names = "stmmaceth", "ptp_ref",
> +				      "pclk_mac", "aclk_mac";
> +			interrupts = <GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "macirq", "eth_wake_irq";
> +			phy-mode = "rmii";

Sorry, missed this on the first pass of the patchset.

phy-mode is generally a board/PCB property, not a SoC property. It
would only be a SoC property when the SoC cannot do anything other
than RMII. But given this is snps,dwmac, i expect it can do other phy
modes.

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
