Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C3D7CA1016
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Sep 2025 04:36:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AquIi0XpPdacq5lOtfK+6Wbq8kf3zW8UHswQHWClrZc=; b=rKunfVOEOXq1WW
	GkXpEhTph23tL0EFTHIr15AItpQw6dtyDe2p4+lvA0IQQiB6qhL2SO2OqFwX7o1CXDOiK85ySbUUY
	v1ayfuUo5C80KOEfbX3kGgHLD3IVl7QmzqU1/uQ6iM9fWx59IWx0vCe+ek4FaXRpdgHVLl1q7pjsO
	D7osXS2WF5/cnVFQE9kSV4XodBuOqnadDpus3Z7afbV7BbtCCxLFwoquQws4oylRRsUjUrZVoa+1R
	y4UZSJKtlACvtGDYQMbOCnWGNpedIni9jhlLyupUbGOZwL2Bu7TpqVOO2t82itg1oebCYK/Jj8C85
	cdN3sgKky5HFvdPFPZlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwZ2l-00000000pnP-2TOp;
	Thu, 11 Sep 2025 04:36:23 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwZ2k-00000000pml-0gju;
	Thu, 11 Sep 2025 04:36:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C34236013D;
	Thu, 11 Sep 2025 04:36:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BCAB8C4CEF1;
	Thu, 11 Sep 2025 04:36:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757565380;
	bh=ZgftlexC7m0f7G9tB59+CtBtIlpZM1B//E5L2IXaVTY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oRkcekVRHWqQcu29cLjnza7mjmFYeioVBFoZ4C2HaBoRqNuyBVZbDyqt4Mtp98RIi
	 yg5PkRkr3lcW9/XzDtiK4FKRSu6RzVuD7U5bu6XXZ72WbqkejhRlEiJKcts1oHeGjn
	 PO0zVs+Kn7Q2MGgubGvhhlaQDoLNrsHGaM/WGjooetq54WOyoY01TXI2daU4dPDCfx
	 +7ps5yf4qQncVWIrZ8cwSFiI0xwtm+LKFU1h7XiW9QeBQeCD+n77uzahLq8zk1pgi+
	 +5V1fJ3tA6NUaU9HLKMyeVGYPvPXRdg31VxdpMhkD9GmrTSGa7Lt2AREADvZZHKvY5
	 AUSqnBPIrc+AA==
Date: Thu, 11 Sep 2025 10:06:16 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Kever Yang <kever.yang@rock-chips.com>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Collabora Kernel Team <kernel@collabora.com>,
	Michael Riesch <michael.riesch@collabora.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, stable@kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH v4 0/7] phy: rockchip:
 phy-rockchip-inno-csidphy: add support for rk3588 variant
Message-ID: <aMJRwENKCuNQKbYC@vaman>
References: <20250616-rk3588-csi-dphy-v4-0-a4f340a7f0cf@collabora.com>
 <175752285211.484319.18097786132863236205.b4-ty@kernel.org>
 <2070639.PIDvDuAF1L@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2070639.PIDvDuAF1L@diego>
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


Hi Heiko,

On 10-09-25, 21:21, Heiko St=FCbner wrote:
> Hi Vinod,
> =

> Am Mittwoch, 10. September 2025, 18:47:32 Mitteleurop=E4ische Sommerzeit =
schrieb Vinod Koul:
> > =

> > On Wed, 03 Sep 2025 19:04:48 +0200, Michael Riesch wrote:
> > > Habidere,
> > > =

> > > The Rockchip RK3588 features two MIPI CSI-2 DPHYs (not to be confused=
 with
> > > the two combo MIPI DSI/CSI CPHY/DPHY blocks). The CSI-2 DPHYs can be
> > > supported using the existing phy-rockchip-inno-csidphy driver, the no=
table
> > > differences being
> > >  - the control bits in the GRF
> > >  - the additional reset line
> > > This patch series adds support for this variant.
> > > =

> > > [...]
> > =

> > Applied, thanks!
> > =

> > [2/7] dt-bindings: phy: rockchip-inno-csi-dphy: make power-domains non-=
required
> >       commit: c254815b02673cc77a84103c4c0d6197bd90c0ef
> > [3/7] dt-bindings: phy: rockchip-inno-csi-dphy: add rk3588 variant
> >       commit: 5072b8e98eef4685a5a9a8bae56072cb65a2ef69
> > [4/7] phy: rockchip: phy-rockchip-inno-csidphy: allow writes to grf reg=
ister 0
> >       commit: 8c7c19466c854fa86b82d2148eaa9bf0e6531423
> > [5/7] phy: rockchip: phy-rockchip-inno-csidphy: allow for different res=
et lines
> >       commit: 260435153c90c8e90553e456ec43578834a14a71
> =

> question, what happened to patch 6?
>   [PATCH v4 6/7] phy: rockchip: phy-rockchip-inno-csidphy: add support fo=
r rk3588 variant
> =

> or is it just missing from this mail?

Looks like I missed, picked now

-- =

~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
