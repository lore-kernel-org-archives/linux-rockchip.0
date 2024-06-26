Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F5C7C3064D
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jun 2024 18:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/JpObSKm0yr6eJPxEXrVaVzxee0TgisNP7Va6d6sUSM=; b=Ptk2AwPQKJEi3h
	pPveXR6zYJuWEKcyPHqfbmM4FuJVRd1BgL+hIbDnhz2eNgdmWwgvCvkP5FdK4S16uZjVEvAq32OKY
	zbMAifYpf6Bm2z9M67bp8oI3uIDoH5I8a0P8ieFzcKKRkx8Eyd0UgvVDzMG0h/znzorUVOZfPo5Sc
	V8xL9Z7XEFPxcwc5EPOEZk3qm2WWGBtIqy1z6WVkop8PUbmdz1lvqeOyQdqb8RfkftSA/AnVPMKLQ
	QiKG5F/jl1p0lVpFNcFj7w24f0NNjQ8W8cT5yCfo7FjKjFwJHvCjLBI6i6n5shRLzwj9+w9uJtiKT
	I1bBSvspT0ikmAWuODMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMX9j-00000007sY8-3QEg;
	Wed, 26 Jun 2024 18:14:07 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMX9h-00000007sX7-2RkO
	for linux-rockchip@lists.infradead.org;
	Wed, 26 Jun 2024 18:14:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 278B961CCB;
	Wed, 26 Jun 2024 18:14:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24E47C32789;
	Wed, 26 Jun 2024 18:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719425643;
	bh=rnYZvmGyDNq8xfBi6C7Yxb+Ot23j2bg3S2904FoWIz8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ezj+YOU8QS9xtM8Dxi7avmcuTdWtrh7flAeUkWzTLDDrt14PzQ4HSjKuhahZenZqr
	 IhOCN5GEigHuSGrqZ8eY1RFSJaF7GxDVZ+yRA9ohklwP0cLhe0XzmZ1jG9vz2p6qLl
	 cuygSPKlJvwzxooZBlPvrWJtfYotHtwR4lS/00Q6GDnwV4oXZ7O79mPkGkvRGcTQ/m
	 M9xlUMjH+sTKqiiAQgIDrqcbORNzPqroZ76lRdhi0sW5u+iMun+xBXWpQY35qWsaVi
	 ONTrTeyWBxgpBiOZ9Zxwm2jt1+Se3Qkglf3cdWpH5945mnoVg0xZ16IHEowB68HFg7
	 Tcb27QsF3RN1g==
Date: Wed, 26 Jun 2024 20:13:50 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Simon Xue <xxm@rock-chips.com>, Shawn Lin <shawn.lin@rock-chips.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
	linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v5 00/13] PCI: dw-rockchip: Add endpoint mode
 support
Message-ID: <ZnxaXuWaQgDr0p8e@ryzen.lan>
References: <20240607-rockchip-pcie-ep-v1-v5-0-0a042d6b0049@kernel.org>
 <171941553475.921128.9467465539299233735.b4-ty@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <171941553475.921128.9467465539299233735.b4-ty@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240626_111405_713340_CACE95AE 
X-CRM114-Status: GOOD (  18.31  )
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

On Wed, Jun 26, 2024 at 05:32:49PM +0200, Heiko Stuebner wrote:
> On Fri, 07 Jun 2024 13:14:20 +0200, Niklas Cassel wrote:
> > This series adds PCIe endpoint mode support for the rockchip rk3588 and
> > rk3568 SoCs.
> > 
> > This series is based on: pci/next
> > (git://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git)
> > 
> > This series can also be found in git:
> > https://github.com/floatious/linux/commits/rockchip-pcie-ep-v5
> > 
> > [...]
> 
> Applied, thanks!
> 
> [12/13] arm64: dts: rockchip: Add PCIe endpoint mode support
>         commit: 2fe9fe4e54f5763b8b681478dda9ac61fd42ecaf
> [13/13] arm64: dts: rockchip: Add rock5b overlays for PCIe endpoint mode
>         commit: 41367db58cbf51ecb89ca017b7473688345caa7b
> 
> I've dropped the overlay-symbol-enablement for now.
> As this creates massive size increases there have actually
> been concerns of things like TF-A getting overwhelmed by
> the size if I remember correctly.
> 
> In any case, right now we don't have an established way on
> how to handle overlay symbold for Rockchip boards.
> 
> For example broadcom enables symbols for all DTs, Nvidia and TI do
> it for select boards only, while for example Mediatek and Freescale
> do not handle symbols at all right now.
> 
> So I'll just postpone that decision for a bit.

Okay, I see your argument.


Thank you for applying, I just realized that rk3588.dtsi has been renamed to
rk3588-extra.dtsi, so I was about to rebase and resend these two patches.
The conflict was trivial, and it looks correct in your tree, so thanks a lot
for fixing this up!


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
