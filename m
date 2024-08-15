Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9682FC52D7C
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Aug 2024 16:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bv7dOaOyuvF1PwDLZZ3/ikosdocI2Btx8lqaM4zhmD4=; b=G1j5ds1KqySN1V
	rwUqHjGzJ/PoBlI1PNNPpw2QOnDNFey2sHVoPXCKAW9DOL4F6WsGTReRtIpGFqHp4eP0TDQ13hwXH
	CHZTCt7NJNl1v+NS4XU+vfb4NrTNT3wCpDy2Jir8sh+6JtkPdywmwSBiQOTsBl9TU/Saz5YZ/joCV
	4n4L/lWI2AkgaxnhZaIehX0TrfGDuFZWYFhNzqhFHEbXf460bbwNwCIpr7RXOctP3FS7/bNrQvZ40
	8kutj2OdxB3H1DqyXcTReFp5zZxmWgD1v3aabl8ajCI21pabLTftXxtKNHTi9ncWj+OEpraS5zm7T
	8Ayw2sJ0GsNZZ96o/eLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sedbX-0000000AYTC-47nv;
	Thu, 15 Aug 2024 16:45:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sedan-0000000AYLB-2BZK;
	Thu, 15 Aug 2024 16:44:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=O/AN0hyG3LGc7JIYcAxYKaWwQIKmaBs8HS6fRiUxTG0=; b=L/X8ZNhzTUSQ5vGLG/6LpS5m7S
	6m+BfWP9NusJN88xdz6lVLmegCxgtQ3Prr+jAoUSBq9ITJcn2IYNP9/YEbBoV5AjZlyycJPiif362
	/m1JsZex/hm1Y5/NziwRt0ITlstaqVjZl+xhao55KtALelqA2ZCE4Dm0qt1SnQAjwd6Hczmy4hDN4
	rGMPUwoMFSz1GIx9WfX+Lz9s+5X/+41YHAmcWdijqPHP44y4HLsluI0O7ariH/MN6QF9PNAJDkteY
	VYK+dW1rShG6HfsnwzVPK7zcfC9b0e0u7n9DE/KGgEIp9msAEDra4wRiCBBmmrQbdWNsQ7SNgLwQ1
	MyN8uPZQ==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sedaY-0005Ys-5O; Thu, 15 Aug 2024 18:44:38 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Yao Zi <ziyao@disroot.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Chris Morgan <macromorgan@hotmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>,
 Andy Yan <andyshrk@163.com>, Muhammed Efe Cetin <efectn@protonmail.com>,
 Jagan Teki <jagan@edgeble.ai>, Dragan Simic <dsimic@manjaro.org>,
 Ondrej Jirman <megi@xff.cz>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add base DT for rk3528 SoC
Date: Thu, 15 Aug 2024 18:44:36 +0200
Message-ID: <2548443.Ac65pObt5d@diego>
In-Reply-To: <6320e4f3-e737-4787-8a72-7bd314ba883c@kernel.org>
References: <20240803125510.4699-2-ziyao@disroot.org>
 <b967ab05-dd0e-4fc5-bee6-ad7639e47bfb@kernel.org>
 <6320e4f3-e737-4787-8a72-7bd314ba883c@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_094453_594067_45A468B8 
X-CRM114-Status: GOOD (  17.67  )
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

Am Dienstag, 13. August 2024, 18:38:58 CEST schrieb Krzysztof Kozlowski:
> On 04/08/2024 16:05, Krzysztof Kozlowski wrote:
> > On 04/08/2024 15:20, Yao Zi wrote:
> >>>
> >>>> +		compatible = "fixed-clock";
> >>>> +		#clock-cells = <0>;
> >>>> +		clock-frequency = <24000000>;
> >>>> +		clock-output-names = "xin24m";
> >>>> +	};
> >>>> +
> >>>> +	gic: interrupt-controller@fed01000 {
> >>>
> >>> Why this all is outside of SoC?
> >>
> >> Just as Heiko says, device tree for all other Rockchip SoCs don't have
> >> a "soc" node. I didn't know why before but just follow the style.
> >>
> >> If you prefer add a soc node, I am willing to.
> > 
> > Surprising as usually we expect MMIO nodes being part of SoC to be under
> > soc@, but if that's Rockchip preference then fine.
> 
> One more comment, I forgot we actually have it documented long time ago:
> 
> https://elixir.bootlin.com/linux/v6.11-rc1/source/Documentation/devicetree/bindings/writing-bindings.rst#L90

I guess that piece of documentation should move to the dts style
guide though? Because it's not about writing bindings but how
to structure a dts/dtsi.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
