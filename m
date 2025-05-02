Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16395C3ABAA
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 May 2025 21:54:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KHXbFcbmhBGRzD4DyrDh2gN6HomTG95GkPdxzLafaAk=; b=y/vxuZ2ctvs8KQ
	PiX73jRyIF10ajpA1pqODAIvDvLYnExxiISfMfwglur2dR8m/yLHIpteqxRcJJFnTQXoXy7pKIwCR
	kQykqT2SnCkvs3BKr7rNEzbrLWYIYHiHblfjsEi+GHQV0Ob7prMFxWYOYYwnHIX5zKt9o5cCty4sz
	QgQbOSx0XFl9RvecnvghglXRFNLeYlgNni/30Ms3g/jXW7vc+511xdAN/yrpJgHsdNDchZVI4GCFp
	A85ISjuBif2IEGS4gfJrTThqad428ueUKAJSPq48W+EOBOJ2FBkwZMLJjSddm1fQWUFnoSdy9C8wV
	NuuPyjsrGnDq0yXpip+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAyKh-000000036ct-2Cvu;
	Fri, 02 May 2025 21:54:11 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAyIj-000000036FE-2ydK;
	Fri, 02 May 2025 21:52:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=V9SjiiEJ5CBwLN0Flq395P6nvTylfhJws1GFCWFkO+w=; b=2bHeTLMWmrEKsZTabi9IKqJnaq
	5rTdIhkvQosr2AG6CUNGOchjzNLxWtTfUSeyet/qYES8qLELeboaz/c3+CU6/QbP7GRlXicop3JzL
	R5cK6DoVo14nhbpju3mvydkOucbj4eQXDN7yTIMoAB2kbX5m8rhQYpV8EO1g4zTPlEt8=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1uAyIZ-00BRxh-Ba; Fri, 02 May 2025 23:51:59 +0200
Date: Fri, 2 May 2025 23:51:59 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: John Clark <inindev@gmail.com>
Subject: Re: [PATCH v1 3/3] arm64: dts: rockchip: Add Luckfox Omni3576
 Carrier Board with Core3576 Module
Message-ID: <7c01712f-776d-4073-9829-f18a51df6d4c@lunn.ch>
References: <20250502205533.51744-1-inindev@gmail.com>
 <20250502205533.51744-4-inindev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250502205533.51744-4-inindev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250502_145209_745117_E920F487 
X-CRM114-Status: UNSURE (   8.17  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, heiko@sntech.de, detlev.casanova@collabora.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

> +&gmac1 {
> +	clock_in_out = "output";
> +	phy-handle = <&rgmii_phy1>;
> +	phy-mode = "rgmii-rxid";

This is unlikely to be correct. It probably works, but that does not
make it correct.

> +	pinctrl-names = "default";
> +	pinctrl-0 = <&eth1m0_miim
> +		     &eth1m0_tx_bus2
> +		     &eth1m0_rx_bus2
> +		     &eth1m0_rgmii_clk
> +		     &eth1m0_rgmii_bus
> +		     &ethm0_clk1_25m_out>;
> +	snps,reset-gpio = <&gpio2 RK_PB4 GPIO_ACTIVE_LOW>;
> +	snps,reset-active-low;
> +	snps,reset-delays-us = <0 20000 100000>;
> +	tx_delay = <0x20>;
> +	status = "disabled";
> +};

Please see the discussion about rgmii delays with other rockchip
boards from the last week, and

https://patchwork.kernel.org/project/netdevbpf/patch/20250430-v6-15-rc3-net-rgmii-delays-v2-1-099ae651d5e5@lunn.ch/

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
