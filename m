Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2E7ECED63D
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Nov 2025 18:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=ksLQ7TLNn8W2Onqddwi3Qp6LTj/3MBnXP6HKzNvm/S8=; b=ob4EvfW06Rxj4C
	FyaHe9hpSmvHUYocNFgtyzZaKLI2ASTe+nJbcN9gT9X3Xzbui2YgQZMavgUT+zfzDyFUmb0ZlX1nl
	RAcfCsUg2+sv8eTwKSNI6KjnK6TbukXAkc5O5LiWkg0MymUt2cyOdAwL62GQuvWnhqAJGEuD/ej3Y
	Occl5eVQasJWSQNxF1DMVeqe0TGOm088LJTYu0flXlZXuKnxLfmOnqcsZYZSvIfH0z2YbSo7wmwft
	0Rdqp6HkYZduDs48x6dnbLhRd4dxN0n4lUU8B47U+8EhWhhQMsEmUlAvyKd7PBmUQojhaAzoZIDxc
	PxtLLfESsQutz7XA0vaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLQvC-00000000zax-37Dm;
	Tue, 18 Nov 2025 18:59:22 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLQvB-00000000zZq-0BAa;
	Tue, 18 Nov 2025 18:59:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 264EF60129;
	Tue, 18 Nov 2025 18:59:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DFA5C116B1;
	Tue, 18 Nov 2025 18:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763492359;
	bh=NbYnGS0Gvtjj0O/ATTHE0hLak4XPDCCvFVuevEBXAKo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=gRLVw75DZQRIC199NZP0+fLbXt5NziqDfA46T2DPhbBdDCtPYCBZfyyWW7UyRsEPw
	 GVhheTS/RHFWMtANriPle8VTPUpebveAg/3fb4u/2eR7YIwxG0U6BENqJKIkLqshnI
	 dmwF4WRPdFYFg7+thS2DyveG++gO2YeKAqNLmknGP/GdluG6MgbL7QMpK7s6eSXXys
	 uoIUgoUiOpcFIOAGpfEWAeed4vMD1w+KY64OBxXUMmhj8wVcIuJhrVz7SqwJ+64A/z
	 IvTrkxaPYm6ZcvxJMyP+tmwp2NOWXkblLJ2u0AzGcqDPslPXW7NukPPm1uFlTmPpR3
	 9XKOpyQpf81Xw==
Date: Tue, 18 Nov 2025 12:59:17 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	Kever Yang <kever.yang@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, Damien Le Moal <dlemoal@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>, FUKAUMI Naoki <naoki@radxa.com>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Richard Zhu <hongxing.zhu@nxp.com>, Frank Li <Frank.li@nxp.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Conor Dooley <conor@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Hans Zhang <hans.zhang@cixtech.com>, linux-tegra@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@pengutronix.de,
	Bjorn Helgaas <bhelgaas@google.com>
Subject: Re: [PATCH 2/4] PCI: tegra194: Remove unnecessary L1SS disable code
Message-ID: <20251118185917.GA2583698@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aRRFYEgBigYDlfQh@ryzen>
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

On Wed, Nov 12, 2025 at 09:29:20AM +0100, Niklas Cassel wrote:
> On Tue, Nov 11, 2025 at 04:16:09PM -0600, Bjorn Helgaas wrote:
> > From: Bjorn Helgaas <bhelgaas@google.com>
> > 
> > The DWC core clears the L1 Substates Supported bits unless the driver sets
> > the "dw_pcie.l1ss_support" flag.
> > 
> > The tegra194 init_host_aspm() sets "dw_pcie.l1ss_support" if the platform
> > has the "supports-clkreq" DT property.  If "supports-clkreq" is absent,
> > "dw_pcie.l1ss_support" is not set, and the DWC core will clear the L1
> > Substates Supported bits.
> > 
> > The tegra194 code to clear the L1 Substates Supported bits is unnecessary,
> > so remove it.
> > 
> > Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
> > ---
> 
> Since init_host_aspm() is now the only place using struct tegra_pcie_dw
> struct member cfg_link_cap_l1sub, I think that you can remove this struct
> member, and instead make this a local variable in init_host_aspm().

It looks like tegra_pcie_ep_irq_thread() also uses it, although I'm
dubious about that.

It's odd that software would be responsible for sending LTR messages,
but I guess this only happens for tegra194_pcie_dw_ep_of_data, and
apparently it's fixed (".has_ltr_req_fix" for tegra234.

And odd that we would read the capability register on every interrupt
even though this driver is the only thing that can change it, so we
should be able to cache the value in init_host_aspm().

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
