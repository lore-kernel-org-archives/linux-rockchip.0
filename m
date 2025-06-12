Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73FE8C61CE8
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jun 2025 21:43:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=zW0P4Lr9Qg72Lp/tk0BCjqu37A9J3w4yWuhNzeN6vng=; b=RQiFJqRar4hJ4n
	OK0pqEkS0Yz5uVLUr/xDeVAAP+lHHkfwzGGcfoCqbw1XmGpYWarl/VjpmGAY9b0im336bXcpGs+LV
	DsT9S0IplmD2qEebiZxNEsOsJeGs9gYT7JurA+ZxPeE0XBSUlhwHtgJkKGaFkDcxOODfBsJy1ooYg
	d8WZ9QFvbq7028c0GLW+7uo2nMGBtfFrNM5NhBctR13R0A4pvX5Vw1OMisn288LrGPjaijp7MzNvz
	OIZaqSaiJ0thob2Ql8JI1Jdc8xuMxZXYI9qy+sgO3F4TvkcPAPlMWDXiBzAXUdPBIxU9bMMKDhYgj
	B5PxZgAyRbov77x2HSDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPphY-0000000EfZL-3fej;
	Thu, 12 Jun 2025 21:43:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPpRM-0000000EePi-0mwg;
	Thu, 12 Jun 2025 21:26:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:References;
	bh=UWLA222vkvQRYzLbZtIgtM7Crrq4jS1IEZSm6StIyCc=; b=pFLlP9REW/N/KfP6kuBKjcw0Lz
	87Mvb+ENZkTMYdRLw+/+QkIAyDSc1KyxYicxINlnoTkQ5t8gnQaidIJyi19Ha1Ll0ylySHEzhefer
	7U78mIVmeYL5Eoasezp8xqBsrrqS4t9QNzcRVT2gnX874vC+B4epUtRwjxB4DBgv2SE1YDC4MZQnp
	+wPSMZ2nLAFb+Wy8fB+BMr76mH17uZiBZ4E2ZgXlB4eJKmHYzjRTaKZxiso8FrFE5Vy1mm+LuVw+8
	G4mwH5GFKnuTeHLnLAXrbZjT6CniomRVO2RLVyX+G82KQ3jT66v1IQK7sPAGF5IDWBdPUlRl/tv5/
	EgdDfLdw==;
Received: from sea.source.kernel.org ([172.234.252.31])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPpRE-00000002icg-1HFf;
	Thu, 12 Jun 2025 21:26:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2D8034A50A;
	Thu, 12 Jun 2025 21:26:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC57BC4CEEA;
	Thu, 12 Jun 2025 21:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749763574;
	bh=6LN6fAd/m/I9fNEg7TgOenHz2E9XCA7dKBTgHZOBjA8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=RBaMKN7q88dt2SCpxiQd0GEzWLoqZ3LCGCt9XYhCziHo3YTanavefSp3NTXwZoNYZ
	 m5de7yzQyI5k/vHv0PIBgllwvEpY/fsvmLgb0AI2ad+czensyPXFO8i1hT9JU3/cbT
	 X0zRj+iLUNTXEdGCgdRoW8aOo9FEx4b6KOZ9C1/WB92PFTWmrHWM04U3uBbibYYaUF
	 OY2LHGIBxnedMxi7F6cIK5ENto+BNsECzamLjIMVFZ/NSxxkHVkxUvQ2hKa4bvIWOC
	 lMQQ/y+Wu7gJgliZ7GfR2Z/cn7/rKnKvapr87pGvvL2zEw9078jcOjvCWL2meKHGrG
	 4T3R31JTy0F8A==
Date: Thu, 12 Jun 2025 16:26:12 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Geraldo Nascimento <geraldogabriel@gmail.com>
Cc: linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v2 1/4] PCI: pcie-rockchip: add Link Control and
 Status Register 2
Message-ID: <20250612212612.GA930681@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aEs9daeceXkePg7y@geday>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_222620_819836_63C7CD68 
X-CRM114-Status: GOOD (  16.38  )
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

On Thu, Jun 12, 2025 at 05:49:57PM -0300, Geraldo Nascimento wrote:
> On Wed, Jun 11, 2025 at 02:42:59PM -0500, Bjorn Helgaas wrote:
> > I would do a pure conversion patch of the existing #defines.  Then I
> > suspect you wouldn't need a patch to add the Link 2 registers at all
> > because you could just use the #defines from pci_regs.h.
> 
> Hi Bjorn,
> 
> I've hit roadblock, maybe you can help?
> 
> PCIE_RC_CONFIG_DCR_CSPL_LIMIT is defined as 0xff...
> 
> I'd like to kill that define too, since it will be
> orphaned.
> 
> But hardcoding 0xff seems like illegible solution.
> 
> Perhaps there is another standard define that
> maps to 0xff that I can use? Anyone comes
> to your mind?

Maybe FIELD_MAX(PCI_EXP_DEVCAP_PWR_VAL)?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
