Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73425CA0FF2
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Aug 2025 15:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i5EysDOJbd4rTLb4Y3fy/s13bWKAsZnIH4OnsJMM/0M=; b=zhkE0VTYpHbznK
	Mbkumnl/ZPji6CaVpisX8HaC6usRLV5iR/1LuSPNSz1IsRaplzsN8/0CaA27VgSjwbucHU5yiAnOd
	+0yVfGHLtXDNlZr6Ce96x5xxZhBsI7zud9X8+Qw9sj1xrzrTxhQwHlTeiGjJWOqWseEXBPBu3NuLY
	ZxbObPnqL6WHaFVQvL1as2S2CyvgPcZjXvGGrH0E/xEAKd/V0VUC+F8PSWjQmyUfABmKGEofF1bHE
	9Q/sXjpoddu77c1J2qY7ODe9TCpaNAnwmYOHRf3zXrvWBprp7yOAafHkXuPrAkvyVoQXKJh8NYQ+D
	V9RnU/Yd+uFPaHuP4bMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uskPh-0000000ANZ6-1GPU;
	Sun, 31 Aug 2025 15:56:17 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uskN0-0000000ANMj-2IAM;
	Sun, 31 Aug 2025 15:53:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=F52FsdXBtjVD7gBDMsOQu9CZMDE9RzgfYGXIBbgXfvw=; b=Y9NpNLkIpY/JJnerFJzA02cAzP
	fEpCaFismg3ukiozQIpKbzpCW1R9TD9vxapeQzD+6vO1pgLjjEnWSwtqvI2OkHw0xwCFOvV1HgGUI
	wSVzK0m/4FXrAtZiyw4WOF3pY9FJMzTlQAvb18Nj4BoFpFA8fSlLFbS865K2sbyDhZsI=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1uskMp-006erF-6O; Sun, 31 Aug 2025 17:53:19 +0200
Date: Sun, 31 Aug 2025 17:53:19 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Erik Beck <xunil@tahomasoft.com>
Cc: Chukun Pan <amadeus@jmu.edu.cn>, Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add HINLINK H68K
Message-ID: <6238650e-7a3c-4dd9-adad-cd2a5e925500@lunn.ch>
References: <021c2e76-cbde-4a2e-a165-a61223cdff93@lunn.ch>
 <5285B176-5178-4F6F-8FB6-B898AC0EC939@tahomasoft.com>
 <20250831104839.7b71f2fc.xunil@tahomasoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250831104839.7b71f2fc.xunil@tahomasoft.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250831_085330_584438_B1E7EB49 
X-CRM114-Status: GOOD (  14.20  )
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

> > > Rockchip by default do bad things with RGMII delays.
> > > 
> > >  tx_delay:
> > >    description: Delay value for TXD timing.
> > >    $ref: /schemas/types.yaml#/definitions/uint32
> > >    minimum: 0
> > >    maximum: 0x7F
> > >    default: 0x30
> > > 
> > >  rx_delay:
> > >    description: Delay value for RXD timing.
> > >    $ref: /schemas/types.yaml#/definitions/uint32
> > >    minimum: 0
> > >    maximum: 0x7F
> > >    default: 0x10
> > > 
> > > Try setting both of these to 0. And then use 'rgmii-id'.
> > > 
> > >    Andrew  
> Setting both gmac0 and gmac1 to phy-mode=rgmii-id with tx/rx delay set to
> <0x0> yields about a 7x improvement from ~6 Mbs (with phy-mode=rgmii-id and
> tx/rx delay unset) to about 43 Mbps, which is still well below the ~950 Mbs
> with phy-mode=rgmii and tx/rx delay unset.

You need to split the problem into two. Rx delays and Tx delays. Use
something like iperf in UDP mode, to send a stream of UDP packets, or
receive a stream of UDP packets. TCP is bad for this sort of testing
because Rx and Tx are interconnected due to flow control and
retransmissions.

Try small values of rx_delay to see if you can improve the Rx
performance. Try small values to tx_delay, to see if you can improve
the Tx performance.

One problem we have with rx_delay and tx_delay is that they are
magic. We have no idea what they mean. The RGMII standard says there
should be a 2ns delay between data and clock. A poorly designed board
could mean the MAC/PHY pair needs to insert say 1.8ns or 2.2ns, not
2ns as defined by the RGMiI standard. Rockchip also seem to encourage
using rx_delay and tx_delay, so i would not be surprised to find
Rockchip boards are often poorly designed and don't follow the RGMII
standard.

rx_delay/tx_delay can probably insert 0.2ns of delay, but it probably
cannot insert -0.2ns of delay. So it could be, you cannot improve
it. If that is the case, we need to consider another solution.

   Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
