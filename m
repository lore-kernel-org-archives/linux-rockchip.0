Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57408C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 10:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UzSFGLzO8a89MVvwmhq8Kiram5ckupIRtd9t+FPb8Uc=; b=NUA+7T+U3j1H6u
	A5VOpJ0YaoJ4yhsfh6tdweDIEUnU4lrnjI7muI3CHG6S9Ba4pTwHG1mJNshaWCKPPWV1/5rzh4suG
	61jxPIUCRD1Rmavxr+Uy2mhCNfEhWzcLX3P18f6/PKzEuP/xS7ccWdIMdT4OSJAkcumgx43K0D47W
	hxBbuYoi2ABosX0Y6/cX4HivIa1XPUWnPXZ//GnCdS+lz1TwoEOlY+JOwtGOXvvuOn8xcXw+3wKoL
	eZUH9CScndRXZtalEI+IdOQOP2kR/9BynC0+QXcWMA+yMRjWzzcJ35aQO2TJf05Z9OchzmQylGmCP
	cmF9J52RlxmctyN2B/zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7ZCA-0028jG-28;
	Mon, 27 Nov 2023 10:50:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7ZC7-0028iK-1Q;
	Mon, 27 Nov 2023 10:50:28 +0000
Received: from i53875bf8.versanet.de ([83.135.91.248] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r7ZBv-0000i7-II; Mon, 27 Nov 2023 11:50:15 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Tim Lunn <tim@feathertop.org>, Jagan Teki <jagan@edgeble.ai>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 4/9] ARM: dts: rockchip: rv1126: Add i2c2 nodes
Date: Mon, 27 Nov 2023 11:50:14 +0100
Message-ID: <4234862.3Lj2Plt8kZ@diego>
In-Reply-To: <4bd0ce0f496646209eb8b220dfdd80bd@manjaro.org>
References: <20231122122232.952696-1-tim@feathertop.org> <4065853.CrzyxZ31qj@diego>
 <4bd0ce0f496646209eb8b220dfdd80bd@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_025027_483670_BF7AE34F 
X-CRM114-Status: GOOD (  17.06  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Montag, 27. November 2023, 11:43:05 CET schrieb Dragan Simic:
> On 2023-11-27 11:29, Heiko St=FCbner wrote:
> > Am Montag, 27. November 2023, 10:58:43 CET schrieb Tim Lunn:
> >> On 11/27/23 20:45, Heiko St=FCbner wrote:
> >>> It's different for mmc, where this naming scheme isn't normally used,
> >>> so we (mostly?) migrated to them being in the board-specific alias =

> >>> section.
> >> =

> >> What about the ethernet alias, the MAC is part of the SoC, should this
> >> stay as it is in patch 6 from this series, or move to board dtsi?
> > =

> > I think judging from everything above (and the other modern boards
> > like all rk3588 ones) the ethernet0 alias should move to the board =

> > dts(i).
> > =

> > The gmac generally does not have this numbering scheme like i2c or =

> > uarts.
> =

> Please note there's already an Ethernet alias defined in rk3399.dtsi, =

> even despite not all RK3399-based devices using the GMAC, for example =

> the Pinebook Pro.  Perhaps that's something to be fixed as well.

possibly :-)

I guess for starters we shouldn't introduce new instances for it.

All the newer SoCs already have their ethernet alias in the board dts
(rk356x, rk3568) which came after we also moved the mmc aliases.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
