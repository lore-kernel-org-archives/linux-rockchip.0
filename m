Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED7D0CCF9E3
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Nov 2025 12:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=87dYBGnEe4MZ8S1fdtGoUTNpbABJ7HfN65ad9WJoZkI=; b=yfmobI/nbvVHTc
	FandpAfdKyE1krKz/hzSY1eCzxElDfpPNGhUhUscsRhn6VtfPq15Mo2HECch5/pDlNVCr+NhRDriT
	5C87VhDMsyShrVSlfggWnw9+ZqyxY0Lvn3k9+aRVSfXMEhaPYAtUPTM7Q3blDlairpqxicCVKYJQW
	+KHwzVeFFN1u8ggQS/0lO5ZGe4OJKNdnRrsX59GEEuYLBu4SLM6+djFxtkqWTIU1pGJZ39O2K8ze1
	DZziwgWtnTw+NV6a2EEWwkYWB0vcpdJy8Rav2HEYl3VTlFwxyIUvboB4JZrqgKsyebN3t5xNHQO9p
	r9zqP/H55D9jjvsexqYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGGBK-0000000BmtO-0Ol1;
	Tue, 04 Nov 2025 12:30:38 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGGBI-0000000Bmso-0T5x;
	Tue, 04 Nov 2025 12:30:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 88E71601EC;
	Tue,  4 Nov 2025 12:30:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7CB33C4CEF7;
	Tue,  4 Nov 2025 12:30:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762259435;
	bh=FSpG5YsbzDPakXOv7zcHt6Bb8WRjzWGwnycLNiPNIws=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fNaXCyHmH2JWtxXKdCRrOaKgCy6dFh9Tf8n9Pz4ygElOxC42vTsmmQLq2WOYqVDf3
	 I09YelFRLWNEihcMjgnwpphg6vjCR+vhwxYZJYU7IVSeB/sDkponxhJL9t7acnsGEJ
	 UZm3rusrz7hj9+nE3dORF531A4gqGnZkyV6HrXn10qC1Gq1BEn4ZYaTUFgmkJRgLPc
	 ROKurA28vLp4yqqifk/345Pbj2NKVLi5B+xNAQNkzuoXFKVuoskw90P31nO7p9N+s7
	 sku/hjVKyVt35LVarrN9ElmDsLdwcHd0/MOLiefy2+rgXkjtfc5f0n+n1LVbdlsX06
	 T2y7oUZS6kSGQ==
Date: Tue, 4 Nov 2025 13:30:28 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, Damien Le Moal <dlemoal@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>, FUKAUMI Naoki <naoki@radxa.com>,
	Diederik de Haas <diederik@cknow-tech.com>, stable@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3] PCI: dw-rockchip: Prevent advertising L1 Substates
 support
Message-ID: <aQnx5KZSQuBniEv-@ryzen>
References: <20251017164558.GA1034609@bhelgaas>
 <54FD6159-AE45-432B-8F0E-4654721D16A6@kernel.org>
 <aaug44bngs5amid7un4plotcjpbc6ym44cztnhet7z44ybywgc@apzhg6enhxgy>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aaug44bngs5amid7un4plotcjpbc6ym44cztnhet7z44ybywgc@apzhg6enhxgy>
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

Hello Mani,

On Tue, Oct 21, 2025 at 08:02:01AM +0530, Manivannan Sadhasivam wrote:
> On Sat, Oct 18, 2025 at 07:07:35AM +0200, Niklas Cassel wrote:
> > On 17 October 2025 18:45:58 CEST, Bjorn Helgaas <helgaas@kernel.org> wrote:
> > 
> > (snip)
> > 
> > >> 
> > >> Thus, prevent advertising L1 Substates support until proper driver support
> > >> is added.
> > >
> > >I think Mani is planning a change so we don't try to enable L1
> > >Substates by default, which should avoid the regression even without a
> > >patch like this.
> > 
> > Sounds good, I suggested the same:
> > https://lore.kernel.org/linux-pci/aO9tWjgHnkATroNa@ryzen/
> > 
> > 
> > >
> > >That will still leave the existing CONFIG_PCIEASPM_POWER_SUPERSAVE=y
> > >and sysfs l1_1_aspm problems.
> > 
> > Indeed, which is why I think that this patch is v6.18 material.
> > 
> 
> Not strictly a 6.18 material as the Kconfig/sysfs/cmdline issues existed even
> before we enabled the ASPM states by default in v6.18-rc1.

I don't agree that "strictly 6.18 material" means "only fixes for bugs
introduced in the 6.18 merge window".

Normally, for a strict bug fix, the fix is merged during the current
kernel release cycle (rather than waiting for the next merge window),
even if the bug was introduced in an earlier kernel version.

E.g. a fix for a bug introduced during the 6.17 release cycle is
definitely 6.18 material, IMO.

Sure, if the bug is extremely old, that probably means that it is okay
to wait until the next merge window.

In this case, the Fixes tag is a commit first introduced in kernel v5.15,
released Sun Oct 31 13:53:10 2021.

Having that said, I'm perfectly fine with delaying.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
