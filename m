Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD581C28B30
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Mar 2025 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o00F0YcVmjmyFfiHausHlIgqDZSPWI7VbPKFKv4zzt8=; b=AQagdxRGiBx19g
	vW3kdva5LEeRJ/6nBqnRX5mzA1Jr+6dVNQDBbE+q5DPWRzV+VdglG6lJXX0db9JPM4SMspmvL3lTX
	lf9eYdOvXWidXJH9nYRxs237ZqjrCiSpPWx2OVscPoo8rhrizcfCICGNvfxQoJE0KXqMMNkTka4h0
	+7Yw1XvV6u8Nkh6/9tycsJQp/wZ1r4nYbwhWQ8wSlR3BXxskePap8ThcQfHbC/x11N8qMHH/2vuMz
	ZKGs478l1BW7SgSWyer8maQ8i5Vi1GZvDOvH7NyfG7hDTMm8yQHNIfRn547aRTaCVDMbFD9T8D2VN
	VS6TXs+q556i4l8fpCYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsOPs-00000008wlW-2bPM;
	Wed, 12 Mar 2025 15:54:44 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsON9-00000008wC0-03pj;
	Wed, 12 Mar 2025 15:51:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id F289AA44713;
	Wed, 12 Mar 2025 15:46:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD4DFC4CEDD;
	Wed, 12 Mar 2025 15:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741794713;
	bh=3rzunnVX6hlrPNBilZi0C8BivrdvDP3q03Wwh9Wyt7k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mwQIkEMSlYC8zaL+gV01SAJnS+lHGlbW96iDEHbJUB/4qygwLl2axB/WxqVgnEX5D
	 7AsNbJit+fpLMBpCf/vC5y+Z6R26OMKSTXd1vGrKr8DCpRfcZ611T8gbDCZG7NKiRv
	 A8E9HC1Sm9GKWlT5WCcIlbTzIsnjAOtqnIoqxx4iiaz9FKNeGP3W4vF3LCx8Z4GfVf
	 /E+CKw0f9ezIED3ffRUPab6p7WzTbiaHI+/9KrE/dxRlb4kCWgR4M/Al+/SkZsWR4Z
	 1KWLRV2T9SyNd9yVceJPt7v+M2/hPj6kf/st8D/ZNkFy0wZOqz0MNg3JQG4Wm/ZFb1
	 Cpe1iIKsqgXWQ==
Date: Wed, 12 Mar 2025 16:51:50 +0100
From: Vinod Koul <vkoul@kernel.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, quentin.schulz@cherry.de,
	sebastian.reichel@collabora.com, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	dse@thaumatec.com, Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH v6 2/2] phy: rockchip: Add Samsung MIPI D-/C-PHY driver
Message-ID: <Z9GtlvHwd8/blVKl@vaman>
References: <20250213210554.1645755-1-heiko@sntech.de>
 <20250213210554.1645755-3-heiko@sntech.de>
 <Z68zdiIl75k2Vv9i@vaman>
 <2030933.8hb0ThOEGa@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2030933.8hb0ThOEGa@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_085155_179569_6B276EEA 
X-CRM114-Status: GOOD (  24.11  )
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


Sorry this slipped thru...

On 19-02-25, 23:51, Heiko St=FCbner wrote:
> Hi Vinod,
> =

> thanks for the review.
> I've dropped all the parts that would've just gotten a "ok, changed" ;-)
> =

> Am Freitag, 14. Februar 2025, 13:13:42 MEZ schrieb Vinod Koul:
> > On 13-02-25, 22:05, Heiko Stuebner wrote:
> =

> > > +	{ 200,  7,   1,  0, 33,  9,  0, 26,  5,  0, 11},
> > > +	{ 190,  7,   1,  0, 32,  9,  0, 25,  5,  0, 11},
> > > +	{ 180,  6,   1,  0, 32,  8,  0, 25,  5,  0, 10},
> > > +	{ 170,  6,   0,  0, 32,  8,  0, 25,  5,  0, 10},
> > > +	{ 160,  5,   0,  0, 31,  8,  0, 24,  4,  0,  9},
> > > +	{ 150,  5,   0,  0, 31,  8,  0, 24,  5,  0,  9},
> > > +	{ 140,  5,   0,  0, 31,  8,  0, 24,  5,  0,  8},
> > > +	{ 130,  4,   0,  0, 30,  6,  0, 23,  3,  0,  8},
> > > +	{ 120,  4,   0,  0, 30,  6,  0, 23,  3,  0,  7},
> > > +	{ 110,  3,   0,  0, 30,  6,  0, 23,  3,  0,  7},
> > > +	{ 100,  3,   0,  0, 29,  5,  0, 22,  2,  0,  6},
> > > +	{  90,  3,   0,  0, 29,  5,  0, 22,  2,  0,  6},
> > > +	{  80,  2,   0,  0, 28,  5,  0, 22,  2,  0,  5},
> > > +};
> > =

> > any word on where this table came from, maybe worth documenting that
> > part
> =

> sadly not.
> =

> The table itself came from the vendor-kernel, and I would assume there

Maybe make a note that this is from vendor kernel

> it came from some super-secret additional documentation Rockchip
> got with the IP documentation.
> =

> It is sadly not part of the RK3588 manual.
> =

> =

> > > +
> > > +static void samsung_mipi_dcphy_bias_block_enable(struct samsung_mipi=
_dcphy *samsung)
> > > +{
> > > +	u32 bias_con2 =3D 0x3223;
> > =

> > magic value?
> =

> Converted over to some more meaningful constants.
> Did the same to bias_con0+1 below that one too.
> =

> =

> > > +static void samsung_mipi_dphy_lane_disable(struct samsung_mipi_dcphy=
 *samsung)
> > > +{
> > > +	regmap_update_bits(samsung->regmap, DPHY_MC_GNR_CON0, PHY_ENABLE, 0=
);
> > > +	regmap_update_bits(samsung->regmap, COMBO_MD0_GNR_CON0, PHY_ENABLE,=
 0);
> > > +	regmap_update_bits(samsung->regmap, COMBO_MD1_GNR_CON0, PHY_ENABLE,=
 0);
> > > +	regmap_update_bits(samsung->regmap, COMBO_MD2_GNR_CON0, PHY_ENABLE,=
 0);
> > > +	regmap_update_bits(samsung->regmap, DPHY_MD3_GNR_CON0, PHY_ENABLE, =
0);
> > =

> > Is writing to a register (mmio) faster than a switch case for checking
> > lane count and disabling specific lanes?
> =

> It might make sense to mimic the lane_enable way of doing things, even if
> just for things looking the same in both functions.
> =

> I guess disabling lanes does not really care about minimal speed differen=
ces
> a switch/case would cause :-)

ok

> =

> > =

> > > +static void samsung_mipi_dcphy_pll_configure(struct samsung_mipi_dcp=
hy *samsung)
> > > +{
> > > +	regmap_update_bits(samsung->regmap, PLL_CON0, S_MASK | P_MASK,
> > > +			   S(samsung->pll.scaler) | P(samsung->pll.prediv));
> > > +
> > > +	if (samsung->pll.dsm < 0) {
> > > +		u16 dsm_tmp;
> > > +
> > > +		/* Using opposite number subtraction to find complement */
> > > +		dsm_tmp =3D abs(samsung->pll.dsm);
> > > +		dsm_tmp =3D dsm_tmp - 1;
> > > +		dsm_tmp ^=3D 0xffff;
> > > +		regmap_write(samsung->regmap, PLL_CON1, dsm_tmp);
> > > +	} else {
> > > +		regmap_write(samsung->regmap, PLL_CON1, samsung->pll.dsm);
> > > +	}
> > > +
> > > +	regmap_update_bits(samsung->regmap, PLL_CON2,
> > > +			   M_MASK, M(samsung->pll.fbdiv));
> > > +
> > > +	if (samsung->pll.ssc_en) {
> > > +		regmap_write(samsung->regmap, PLL_CON3,
> > > +			     MRR(samsung->pll.mrr) | MFR(samsung->pll.mfr));
> > > +		regmap_update_bits(samsung->regmap, PLL_CON4, SSCG_EN, SSCG_EN);
> > > +	}
> > > +
> > > +	regmap_write(samsung->regmap, PLL_CON5, RESET_N_SEL | PLL_ENABLE_SE=
L);
> > > +	regmap_write(samsung->regmap, PLL_CON7, PLL_LOCK_CNT(0xf000));
> > > +	regmap_write(samsung->regmap, PLL_CON8, PLL_STB_CNT(0xf000));
> > =

> > I guess you are writing to upper nibble, maybe define that, if we can
> =

> Nope ... the value is defined as bits [15:0] and both being pll lock and
> stabilization timing control registers. Sadly yet again, their usage deta=
il
> is not documented, the manual even does not supply a unit for the =

> register value :-(

:-(


-- =

~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
