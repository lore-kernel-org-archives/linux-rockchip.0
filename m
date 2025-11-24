Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAB8DCFD35B
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Nov 2025 21:19:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=w0dHJ3f3ZCtpOYuFhH7JzwQ64vDjUF/dgWJFUM6Lzdw=; b=B40HFP+PbgI4Y5
	lZ83/YL+TtfnnLriBesNXyX0aveGwxfzL9/pTZ1jRohJSHmPU8mp4yQ5/4ITNwl/YJb5wSW3e3QnL
	fzSsFlB/M1MJoWmWNcKLa5KHQwrEA+cZ4P4aUToxTqbz5Eb51RH247FyxocTBhKnD1zZJ52wVOmmx
	4X0cyNCGrVtxgAGMxsZsWpNRtDPANhSzzZ9suEEDs7kGvIcQY40u686qCF2ozz6ADQzRj5qNdVtjC
	voNonjyb2XWzT48ZNJCDv2W6PKClHSKtKkbKp0KkWo4TItelZXzcmdQPDiQBgRfKqnAOBlXuBqN7x
	I5CrlYdGY8uTI0KyZ30w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNdxj-0000000CKV3-3usi;
	Mon, 24 Nov 2025 21:19:07 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNdxi-0000000CKUb-12IS;
	Mon, 24 Nov 2025 21:19:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 1FAC46016B;
	Mon, 24 Nov 2025 21:19:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9DA9AC4CEFB;
	Mon, 24 Nov 2025 21:19:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764019144;
	bh=DiDxFX94NXXIUzvxcS2+Fvuf/2KCTsklF/QbVLxONjU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=DNAG9tPd/4nqTFtv4FYVdApqANdOMIrVWr3lJDe2sCqX42/Zeq4glUcUMsPhjiD+Q
	 t2m7XFOTFBJhBOnUXsp47g2HExxgWWc/M14S26V+yUlO67lCX508xmAuCm2EQWMZw2
	 A9g6zO4z1WS9mllO+NiBHFuu7ogogLgoi+xlWZDuE4PeOTvPRBLrlW+QIX+D4AnHiu
	 ExwSSAnfYbD2Et6LgjBwH1OESwSoyPlL+5t+B8e6G+n+xmDrNVq0ILqfngMEvVR86r
	 a9TEkRX0ihIQi0Sja/eRtaJCbzbtDFER07VnFSBlrlpyMt1OtS6hK1uMjACv6wF2FN
	 5QMXNSJwunAtg==
Date: Mon, 24 Nov 2025 15:19:03 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Niklas Cassel <cassel@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
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
Subject: Re: [PATCH v2 1/4] PCI: dwc: Advertise L1 PM Substates only if
 driver requests it
Message-ID: <20251124211903.GA2712341@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <wja7vxtg7bqq2udepl5r3mvgg5swvuqtuzk6cnimgcbw2aegqs@hru6yzg4xx3o>
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

On Thu, Nov 20, 2025 at 01:10:56PM +0530, Manivannan Sadhasivam wrote:
> On Tue, Nov 18, 2025 at 03:42:15PM -0600, Bjorn Helgaas wrote:
> > From: Bjorn Helgaas <bhelgaas@google.com>
> > 
> > L1 PM Substates require the CLKREQ# signal and may also require
> > device-specific support.  If CLKREQ# is not supported or driver support is
> > lacking, enabling L1.1 or L1.2 may cause errors when accessing devices,
> > e.g.,
> > 
> >   nvme nvme0: controller is down; will reset: CSTS=0xffffffff, PCI_STATUS=0x10
> > 
> > If the kernel is built with CONFIG_PCIEASPM_POWER_SUPERSAVE=y or users
> > enable L1.x via sysfs, users may trip over these errors even if L1
> > Substates haven't been enabled by firmware or the driver.
> > 
> > To prevent such errors, disable advertising the L1 PM Substates unless the
> > driver sets "dw_pcie.l1ss_support" to indicate that it knows CLKREQ# is
> > present and any device-specific configuration has been done.
> 
> Going by this reasoning, why can't we enable L1 PM Substates for
> these platforms by default?

I think we can, in a separate series.  I don't have time to deal with
this before the v6.19 merge window, but you can certainly do that.

Bjorn

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
