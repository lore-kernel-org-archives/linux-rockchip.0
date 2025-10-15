Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30B1DCCD185
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Oct 2025 15:23:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JB3xujSL/IjQ83Q1OlwBpwOnP6KorvugUTWqaz2SVUM=; b=kWBxSKzpIsMiCI
	n1YVZ7cJd5/vOFdur805bVS2mG/YEgMG0JH1+H7FAaVFvo+eFjR2Cwejf/2J/XcdtP7WNYx+EMkfT
	WvxECI/elQL6LTRSEL5JL/vRhCUYY0g0SOaFTJdy2KdcdZMEkSZmYS8aWe5p1BU6kmDI7Ydldh8Mu
	fYzkfUviXmO9tWIalhHdM4G/gzO/IcrFQ6B0x+qHgzYBpi8A67w7ktzDncC5HnFd4dVSwrGWpGizg
	0NCTq8UwN73loheZKC4xMe+2Flhy/PRTbHru7GhTvTzogxEfgTy3bOlZ18RpN3lHnIb7ntFQqdhsd
	3Woh3XDAi7Z9PTd60hgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v93Lf-000000024s3-0PGi;
	Wed, 15 Oct 2025 15:23:31 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v93Ld-000000024re-1qsp
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Oct 2025 15:23:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D631760294;
	Wed, 15 Oct 2025 15:23:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3BA51C4CEF8;
	Wed, 15 Oct 2025 15:23:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760541808;
	bh=l6kPATXhIfK9tJGsY5Si9o4/LJ8jrOYvZVE72ylEkQ4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=m56r7RMKJqSqhNWNldofgC9LBpvSoO9uy0ccsWg+V9BC3NJhuu5N5FVlHjHi02vl9
	 Q5O4dn1PUTlgoJnAecjyynFt18RZenLAQ2F7bD3F3+M8lNYItYO1HUd19ZGZvFMBFd
	 NfAuH8olcN61gpWJJtHkNB3/hgCPuYMHDXC5f0KJuoVsHjPFKAB1E9STJg08bkiggE
	 /KBhLX6YoJGe8EgODNQm8rtxNndVVYLUJrkvN/GQt9X+yzunFmfzPf+18jliilGcgK
	 AN8YKNhxnYZ34QJFDaECcPJ5MCNMwagbbYW56rcau3UGCLGmVpEVj+2ML23MhbDB2q
	 w31CY1wFk0vQw==
Date: Wed, 15 Oct 2025 17:23:21 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <helgaas@kernel.org>,
	manivannan.sadhasivam@oss.qualcomm.com,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	"David E. Box" <david.e.box@linux.intel.com>,
	Kai-Heng Feng <kai.heng.feng@canonical.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Chia-Lin Kao <acelan.kao@canonical.com>,
	Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org, regressions@lists.linux.dev,
	FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH v2 1/2] PCI/ASPM: Override the ASPM and Clock PM states
 set by BIOS for devicetree platforms
Message-ID: <aO-8aeJdvApesEqi@ryzen>
References: <22594781424C5C98+22cb5d61-19b1-4353-9818-3bb2b311da0b@radxa.com>
 <20251014184905.GA896847@bhelgaas>
 <5ivvb3wctn65obgqvnajpxzifhndza65rsoiqgracfxl7iiimt@oym345d723o2>
 <823262AB21C8D981+8c1b9d50-5897-432b-972e-b7bb25746ba5@radxa.com>
 <7ugvxl3g5szxhc5ebxnlfllp46lhprjvcg5xp75mobsa44c6jv@h2j3dvm5a4lq>
 <a9ca7843-b780-45aa-9f62-3f443ae06eee@rock-chips.com>
 <aO9tWjgHnkATroNa@ryzen>
 <ud72uxkobylkwy5q5gtgoyzf24ewm7mveszfxr3o7tortwrvw5@kc3pfjr3dtaj>
 <aO-Q3QsxPBXbFieG@ryzen>
 <7df0bf91-8ab1-4e76-83fa-841a4059c634@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7df0bf91-8ab1-4e76-83fa-841a4059c634@rock-chips.com>
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

On Wed, Oct 15, 2025 at 09:00:41PM +0800, Shawn Lin wrote:
> For now, this is a acceptable option if default ASPM policy enable L1ss
> w/o checking if the HW could supports it... But how about adding
> supports-clkreq stuff to upstream host driver directly? That would help
> folks enable L1ss if the HW is ready and they just need adding property
> to the DT.

I like your idea, if you have time, please send a patch.

However, adding (working) support for L1 substates (via 'supports-clkreq')
is new code, and should thus be queued for next release instead of v6.18.

For now, pcie-dw-rockchip.c is broken for a lot of PCIe devices, so the
fix should be minimal and target v6.18, i.e. something like:
https://lore.kernel.org/linux-pci/20251015123142.392274-2-cassel@kernel.org/

Support for L1 substates via 'supports-clkreq' can be added on top of that
patch (while targeting v6.19).


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
