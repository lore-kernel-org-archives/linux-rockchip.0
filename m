Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFA6FCF31AF
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 10:40:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CQ+KsbjifAHSAMqli2un37W/TXwUq+OpzBoS8L0cjrU=; b=2uPZ1qpEpo+1X6
	HEkdMJI2YwigXiIZQlKaqa9Ys826i4uwZ9nYOlokRSV3hj7z1TGApTs1p9nfarjE2bzmw1Ie6S5nH
	WYipgGiP+2s9hCwcEh2RprjKgGhDVrabuFDyzR7K0hql0SlheiJrEl3N6qNVPBcd9DxWKCEyG9nWQ
	F9nLXprOYBI4HDUtwfX5yMhnqfSRVYs4HbLdzwGyJ5GYO1gn7BPS9B6uFSbfslVVnokLU0UvPGiQ8
	w8NqwHcIgQ0z8j8qxMj0cTHulBo4ylKKTDGS/rtPdC7SbEkJFPxg/oGFB2GLcgi/+jgmKMmLo5h2Y
	iHhtqjQReB81YiIzOQDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svwmG-00000005WPb-27o3;
	Wed, 02 Oct 2024 10:40:16 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svwkW-00000005WBZ-0SNb;
	Wed, 02 Oct 2024 10:38:29 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 8CB9023CE1;
	Wed,  2 Oct 2024 12:38:26 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aGSuJFRni2Wp; Wed,  2 Oct 2024 12:38:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1727865505; bh=fJj7aRspLL8JY9ux4R5Q7WOeD6Y4JxxZWhSZzmD9p04=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Asfn2mkS4NC56d0DdKrCewv1WVSdM8WEUkTHnYdn/uTtWP8lwF20X2+EE5MDN4H92
	 BUVFZTDHfrrYwqcHZkp7UkusNwER7yf5+gZoMo9EH3I+ha/Gei23ORG6NNYTuhAVU4
	 lbro09eeXywtTRSGYFAikB7ZfDDvNJqojob9UGdDLhu/YptfP6UiBIHl2+C5/VqLql
	 9WfG34VBQQXI7pdRUOVfVoYUY+KkSbpZetuXbrYjXpZ06nX9w0ZN7wQxvu0rzC7HKQ
	 C2iiFlCB9/x0D5L21iHix+cPf9+y6cWPG2Th7igxXPLMQJ/NmOALnAkLELPQlmp8S5
	 lClL7cvvuAUiA==
Date: Wed, 2 Oct 2024 10:38:04 +0000
From: Yao Zi <ziyao@disroot.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Celeste Liu <CoelacanthusHex@gmail.com>
Subject: Re: [PATCH 6/8] clk: rockchip: Add clock controller driver for
 RK3528 SoC
Message-ID: <Zv0ijCB6GfJEEJID@pineapple>
References: <20241001042401.31903-2-ziyao@disroot.org>
 <20241001042401.31903-8-ziyao@disroot.org>
 <115216996.nniJfEyVGO@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <115216996.nniJfEyVGO@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_033828_443497_DF6B8C18 
X-CRM114-Status: GOOD (  23.43  )
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

On Wed, Oct 02, 2024 at 12:21:29PM +0200, Heiko St=FCbner wrote:
> Am Dienstag, 1. Oktober 2024, 06:24:00 CEST schrieb Yao Zi:
> > Add clock tree definition for RK3528. Similar to previous Rockchip
> > SoCs, clock controller shares MMIO region with reset controller and
> > they are probed together.
> > =

> > Signed-off-by: Yao Zi <ziyao@disroot.org>
> > ---
> =

> [...]
> =

> > +	GATE(ACLK_DDR_UPCTL, "aclk_ddr_upctl", "clk_ddrc_src", CLK_IS_CRITICA=
L,
> > +	     RK3528_CLKGATE_CON(45), 11, GFLAGS),
> > +	GATE(CLK_DDR_UPCTL, "clk_ddr_upctl", "clk_ddrc_src", CLK_IS_CRITICAL,
> > +	     RK3528_CLKGATE_CON(45), 12, GFLAGS),
> > +	GATE(CLK_DDRMON, "clk_ddrmon", "clk_ddrc_src", CLK_IS_CRITICAL,
> > +	     RK3528_CLKGATE_CON(45), 13, GFLAGS),
> > +	GATE(ACLK_DDR_SCRAMBLE, "aclk_ddr_scramble", "clk_ddrc_src",
> > +	     CLK_IS_CRITICAL, RK3528_CLKGATE_CON(45), 14, GFLAGS),
> > +	GATE(ACLK_SPLIT, "aclk_split", "clk_ddrc_src", CLK_IS_CRITICAL,
> > +	     RK3528_CLKGATE_CON(45), 15, GFLAGS),
> > +
> > +	/* gpu */
> > +	COMPOSITE_NODIV(ACLK_GPU_ROOT, "aclk_gpu_root",
> > +			mux_500m_300m_100m_24m_p, CLK_IS_CRITICAL,
> > +			RK3528_CLKSEL_CON(76), 0, 2, MFLAGS,
> > +			RK3528_CLKGATE_CON(34), 0, GFLAGS),
> =

> Please keep the styling intact for all branch definitions.
> (this one taken as an example, but applies to all)
> =

> I.e. if you look at the rk3588/rk3576/and everything else, you'll see
> subsequent lines getting indented by 3 tabs all the time. For a large
> set of definitions this makes it way easier to parse for the eye, than
> having ever shifting offsets, when things get aligned to opening
> parentheses.
> =

> Similarly, please also keep elements in their position, i.e. for the
> aclk_gpu_root above, this would mean moving parents and CLK_IS_CRITICAL
> up to the parent line.
> =

> (lines according to coding style are allowed up to 100 chars, and Rockchip
> clock drivers sometimes exceed even that, because it makes handling the
> clock drivers a lot easier)

I'm not sure whether it is okay so wrapped these lines. Thanks for
clarification.

> > +};
> > +
> > +static int __init clk_rk3528_probe(struct platform_device *pdev)
> > +{
> > +	struct rockchip_clk_provider *ctx;
> > +	struct device *dev =3D &pdev->dev;
> > +	struct device_node *np =3D dev->of_node;
> > +	unsigned long nr_branches =3D ARRAY_SIZE(rk3528_clk_branches);
> > +	unsigned long nr_clks;
> > +	void __iomem *reg_base;
> > +
> > +	nr_clks =3D rockchip_clk_find_max_clk_id(rk3528_clk_branches,
> > +					       nr_branches) + 1;
> > +
> > +	pr_warn("%s: nr_clks =3D %lu\n", __func__, nr_clks);
> > +
> > +	reg_base =3D devm_platform_ioremap_resource(pdev, 0);
> > +	if (IS_ERR(reg_base))
> > +		return dev_err_probe(dev, PTR_ERR(reg_base),
> > +				     "could not map cru region");
> > +
> > +	ctx =3D rockchip_clk_init(np, reg_base, nr_clks);
> > +	if (IS_ERR(ctx))
> > +		return dev_err_probe(dev, PTR_ERR(ctx),
> > +				     "rockchip clk init failed");
> > +
> > +	rockchip_clk_register_plls(ctx, rk3528_pll_clks,
> > +				   ARRAY_SIZE(rk3528_pll_clks),
> > +				   RK3528_GRF_SOC_STATUS0);
> > +	rockchip_clk_register_armclk(ctx, ARMCLK, "armclk",
> > +				     mux_armclk, ARRAY_SIZE(mux_armclk),
> > +				     &rk3528_cpuclk_data, rk3528_cpuclk_rates,
> > +				     ARRAY_SIZE(rk3528_cpuclk_rates));
> > +	rockchip_clk_register_branches(ctx, rk3528_clk_branches, nr_branches);
> > +
> > +	rockchip_register_softrst(np, 47, reg_base + RK3528_SOFTRST_CON(0),
> > +				  ROCKCHIP_SOFTRST_HIWORD_MASK);
> =

> here you'll like also want to check how rk3576 + rk3588 handle how the re=
set-ids
> are not matched to the register offsets anymore.
> (see rst-rk3588.c for example)

Have checked them when replying to the former mails. Reset code will be
largely refacted according to the recommended style in next revision.

Best regards,
Yao Zi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
