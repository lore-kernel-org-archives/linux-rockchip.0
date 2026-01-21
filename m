Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36D65C44525
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jan 2026 13:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y6TsIry5DFJickuvfVJnjf9GKMwc//Q/9gQpx3bz3w0=; b=Q7whSap9SxTBEj
	trEBnZH+kRZph5G7dTzhGvGPs+3zBDkxWX60ZudQ9QZTtkINUHfo7k+M746SVvg2Bbj24tkX8GhnO
	qvzVgon2t0NSVYa0JcpaVYJDm01AZpZa++kdsMdspv2+YDEtRJ6rjnCid3rDtb/h/bB7+EcFapvqn
	BoIRDL5TGBLKJMlPQ6mhXWTLHQpY5bIp36rcVcCu7CsoVNwFfPAHHvjJl3ZJW4nwQOB6KFPM2jKGx
	WpAnizByuOVkEPQXGaDLjF8tRhpiuLYgHBTj+vRuxqRGs9/Mpjhk8djKqwvmDO9Q3G/x6Assm3ii6
	WbiR435v3a5+yVi9ynOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viXqh-00000005T9V-3ipg;
	Wed, 21 Jan 2026 13:02:15 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viXqe-00000005T8t-2KBk;
	Wed, 21 Jan 2026 13:02:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=BT3tP66rH0wvEE2LeIJW9H044jCQJ8M0rzFx3qQjFpM=; b=rwF2PpK8kkYNSkY8nXq0fTW/oU
	swOsCkeyGZroMRAOR8yhC/brflVXBoH+IATMTlTeFD2UZs3JrhbJ9DDrXYiJ8iIl+AvL+9tT9qLCK
	b3RMMmTUZ243cE1wxmI5b5lNQo6Tiii4XeGgngnE/qeeAlO5RQax4fgvnNJkpwqG9tFo=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1viXqT-003or3-4m; Wed, 21 Jan 2026 14:02:01 +0100
Date: Wed, 21 Jan 2026 14:02:01 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Chaoyi Chen <kernel@airkyi.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alexey Charkov <alchark@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Stephen Chen <stephen@radxa.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] arm64: dts: rockchip: Change gmac phy-mode to
 rgmii-id for rk3576 board
Message-ID: <87589c3a-4888-4774-8743-770dbebb290d@lunn.ch>
References: <20260121031548.402-1-kernel@airkyi.com>
 <aXBlBHZIPQ6xhykE@venus>
 <15a3e449-25e5-4387-963d-0dbda7be90f5@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <15a3e449-25e5-4387-963d-0dbda7be90f5@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_050212_595241_D1A1FEF6 
X-CRM114-Status: GOOD (  17.69  )
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

> > That allows using standard properties in DT instead of vendor
> > specific "rx_delay"/"tx_delay". This results in a much better board
> > description and shows how far boards derive from the the standard
> > 2ns (which can use rgmii-id without any extra delay specification).
> > 
> 
> Oh, your approach was also my initial thought.
> 
> I first asked whether it would be more appropriate to implement this
> in the PHY or in the GMAC, and Andrew told me it should preferably be 
> done in the PHY. But I'm not sure whether all PHYs support this
> operation.
> 
> Andrew, would it be possible to implement this in the GMAC for cases
> where the PHY does not support it? Thanks.

As i commented to one of the patches, the PHY will be adding 2ns by
default when 'rgmii-id' is used. If you read the RGMII standard, you
also see there is quite a wide tolerance for these delays. So unless
there is a badly designed PCB which needs something well away from
2ns, i don't think it is necessary.

     Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
