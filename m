Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFCF1C5AD49
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 May 2025 16:23:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x0UOVnicyV7xPSDJoJasYb4noLjfQB0eIp/XaHboAx4=; b=FGxBCcxXlLkDTS
	kP7fO4ZqbfLn5ZD4Lq6T+3CfPYcrQxJ0CmtVjzXO2Ilg5Zn+mlrtU089kNEUKC6WVmHojAspnhz7L
	EFvopF2UFMSAKSDu6Aob9Y2KpjWE68R38bbV+8n4CoM3GmFXwjjJgwc5rtJgN1MhnR6jcpFSGJTEV
	nNZ8TBeKMFYDZS/NCA36WIDgdUjaapoEBz4hujsDrmmHytnhVQTDwN8/tKLJ4FaXM4pVv6To6Or2E
	fArOQ4jENcvnHAS3VdFiBnQbp/yFnfZnH44hQttew783vuUOwonwhETbMYHxYjUWs8y4hWXkOFsOU
	5QFf3DzUk7ndNr6+hjIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJx5D-0000000B9Ti-1sGA;
	Tue, 27 May 2025 16:23:19 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJx0m-0000000B8nY-4Adj;
	Tue, 27 May 2025 16:18:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=9rNlK/XBcvxaY6HC+BzHK/m/yi4kBfY4FGCOEbvM3Jk=; b=cUegHvYd7VyL7dPW+3g+aWWXae
	g4mkfYFK+DZFozxxITith4TlCR4ZCaeMCzSs/CoC3VY6rf8iHdzZ6SuF2cqWR9sBAAz4CbGi7eRC4
	yZUYo5+J3eJh73/1irhNoqcOwip0Fv7a0ULF1Hb0aL6GL5INzpHQtGMXbF0gcCa7Dqk8=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1uJx0g-00E5r4-I7; Tue, 27 May 2025 18:18:38 +0200
Date: Tue, 27 May 2025 18:18:38 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Jakob Unterwurzacher <jakobunt@gmail.com>
Cc: foss+kernel@0leil.net, conor+dt@kernel.org, devicetree@vger.kernel.org,
	heiko@sntech.de, jakob.unterwurzacher@cherry.de, krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, quentin.schulz@cherry.de,
	robh@kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: support Ethernet Switch adapter
 for RK3588 Jaguar
Message-ID: <35e0a925-4cba-41de-8fe4-4dd10e8816f1@lunn.ch>
References: <20250523-jaguar-mezz-eth-switch-v2-1-aced8bf6612d@cherry.de>
 <20250527131142.1100673-1-jakob.unterwurzacher@cherry.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250527131142.1100673-1-jakob.unterwurzacher@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_091845_031105_327A31D3 
X-CRM114-Status: GOOD (  12.14  )
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

On Tue, May 27, 2025 at 03:11:42PM +0200, Jakob Unterwurzacher wrote:
> > @Jakob, is this something you could check? devmem2 0xfd58c31c w 0x3c0000
> > should do the trick to disable the circuitry according to the TRM?
> 
> I measured TXCLK vs TXD3 on an oscilloscope on gmac1:
> 
> 	Setting	Decimal	Actual TXCLK delay (ps)
> 	00	0	47
> 	0a	10	283
> 	10	16	440
> 	20	32	893
> 	30	48	1385
> 	40	64	1913
> 	50	80	2514
> 	60	96	3077
> 	70	112	3565
> 	7f	127	4009
> 
> 	off	x	-315
> 
> Setting = tx_delay (hex)
> Decimal = tx_delay (dec)
> Actual TXCLK delay (ps) = Measurement from oscilloscope
> 
> Plotting this we can deduce that one tx_delay unit is about 31ps.

Nice to see somebody actually do the measurements. Based on this, it
would be good to implement:

        tx-internal-delay-ps:
          description:
            RGMII Transmit Clock Delay defined in pico seconds. This is used for
            controllers that have configurable TX internal delays. If this
            property is present then the MAC applies the TX delay.

For the moment, please limit it to just the device you measured it on.

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
