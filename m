Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9301BCF258E
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Oct 2024 20:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UcsW8noKuSgXEpAgV/N3ctKnSbw1/Ji+SLsBKcP4wNI=; b=Jj4Kkp+Xznvrxa
	rfZ9CfxVhJH1xYkBV1LTqCSt82/jgmx9IKk6f4stIDLMcc05oMzymWILoE9NelH8gdMAKTf6A7bqQ
	NitWfmgAx3ZS9/lywjHIDXQG6HHAaWW7YxZTYReHXJ8Up/782hOiWlyPZObH3lxypcPJ0CRQx/DlL
	2JfMZznjLNbxKa569HfAkxfUzft35Txl3FzPhcHCnHX5Exjzl6sWhXG50ZV9gBqn2XYoZt3YXq0/v
	fYYDQUpA7nESUkq7hMSzDV2bPEPfojcrC+YP9jRd7DRUtae7E1Hgo3Y7r9d2CsfjcdSj/RIujy+xn
	4QKBzkWBVhQk9aSXRaYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t05DG-00000003Bog-0qZx;
	Sun, 13 Oct 2024 20:29:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t05Br-00000003BdG-2Fil;
	Sun, 13 Oct 2024 20:27:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=QrBSdPL+PTvkNQLckrp23vyrqP/UgjfKLUytwWKGKho=; b=JPGZWtCsTMq3gEqBJj9Ed6XPaF
	O/Mx9hNnb4alm+ViB/ARZTLca7ji8OJ5szNaH5Itwcg+eHXtYUI8ToRVkPjWGqpIKUDo2bOOdjJmN
	dGaHoKmUzC5Y157E2hWFK/j0C6BtelRJSC6vD13dhcSJ65qnpZML39fGw6rsLrdzx8G6AQCN9/R6J
	HqMLzAOheY1kKJmuXleyaD6qs91RKee+xlQ5HRPjWb0tNgOSfA+rsS0TXHXW5Gqo4wM4VOJZ+jRDD
	C0ryetmMDOG2Nd79YBn+oiS1yyyVWDrs178iy7cKHx4mckcf3cu8q1EAMyK2zi9FWGA4noPq2o+6k
	HuH0WY9A==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t05Bj-0001Q6-WF; Sun, 13 Oct 2024 22:27:40 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 0/5] Binding and driver for gated-fixed-clocks
Date: Sun, 13 Oct 2024 22:27:39 +0200
Message-ID: <2342287.ElGaqSPkdT@diego>
In-Reply-To: <3dd94272e827703c2a2a390fcbd9ff5b@manjaro.org>
References: <20240906082511.2963890-1-heiko@sntech.de>
 <3dd94272e827703c2a2a390fcbd9ff5b@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241013_132747_633363_CBC25DA1 
X-CRM114-Status: GOOD (  28.83  )
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

Am Sonntag, 13. Oktober 2024, 21:58:41 CEST schrieb Dragan Simic:
> Hello Heiko,
> 
> On 2024-09-06 10:25, Heiko Stuebner wrote:
> > Rockchip boards with PCIe3 controllers inside the soc (rk3568, rk3588) 
> > have
> > external oscillators on the board to generate the needed 100MHz 
> > reference
> > clock the PCIe3 controller needs.
> > 
> > Often these clock generators need supplies to be enabled to run.
> > 
> > Modelling this clock has taken a number of shapes:
> > - The rk3568 Rock-3a modelled the generator-regulator as "phy-supply" 
> > [0]
> >   &pcie30phy {
> >   	phy-supply = <&vcc3v3_pi6c_03>;
> >   	status = "okay";
> >   };
> >   which is of course not part of the binding
> > 
> > - On the Rock-5-ITX the supply of the clock generator is controlled by
> >   the same gpio as the regulator supplying the the port connected to 
> > the
> >   pcie30x4 controller, so if this controller probes first, both
> >   controllers will just run. But if the pcie30x2 controller probes 
> > first
> >   (which has a different supply), the controller will stall at the 
> > first
> >   dbi read.
> > 
> > There are other types too, where an 25MHz oscillator supplies a PLL
> > chip like the diodes,pi6c557 used on Theobroma Jaguar and Tiger boards.
> > 
> > As we established in v1 [1], these are essentially different types, so
> > this series attempts to solve the first case of "voltage controlled
> > oscillators" as Stephen called them.
> > 
> > With the discussion in v2, gated-fixed-clock was deemed one possible
> > nice naming, so I did go with that.
> 
> Thanks, I find "gated-fixed-clock" a much better choice.
> 
> > Stephen also suggested reusing more of clk-gpio to not re-implement the
> > gpio handling wrt. sleeping and non-sleeping gpios.
> > 
> > Though instead of exporting masses of structs and ops, 
> > gated-fixed-clock
> > is quite close to the other gpio-clocks, so I've put it into the 
> > clk-gpio
> > file.
> 
> Just checking, what's the current state of this patch series?
> Would another review help with getting it accepted?

I guess me needing to ping Stephen to look at it now that the
merge window is done ;-) .

In the previous version he sounded ok with the naming, so hopefully
it'll just need a tiny ping.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
