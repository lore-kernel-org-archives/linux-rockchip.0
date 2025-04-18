Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2430C369AB
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Apr 2025 17:28:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=fXQbMb1aLIFErElE6iHL6lo69DqFX7SPSiLlFbxAx+I=; b=t4SX55pVup4aQG
	dG+DqSd5XsSlZzbmnLOl1V39pj/9uRGhdhTPLFIlG/XOR8GzqjUM9ezSn/+CEcLVh2oIwuJb/QKCM
	wEKpbfR6RMJFvbPk2nkKQoIR60mEWgUWbbMnu8vTXnCLV+08EGJ8dTDTDG4wM0ambQQgYorxTLpte
	svG6hYutm4vMAKFNFgKmj4lkNJdN5i3ARleeEVneOXv9FLF/IQDTHCORebSFut5y1W7bkYlQN9Q3t
	67hyL6Dxtl01Ui0xMwiCWyslKVx3vM/6qG2WKmdvUoKkwIAPhY3ej1igQ8DtmttTz3RditSTt45FE
	/WtmR/1Wj1cBZxcMzf+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5pW7-0000000HF1h-2MYh;
	Fri, 18 Apr 2025 17:28:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5oSv-0000000GuFm-1qIm;
	Fri, 18 Apr 2025 16:21:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7378A5C58AD;
	Fri, 18 Apr 2025 16:19:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01BD5C4CEE2;
	Fri, 18 Apr 2025 16:21:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744993280;
	bh=TQ/708/coALojgpWmh+0t6Mj6T+sMBImBICy+uR2XLU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=IgpLl52kf7whl27FA+ydUhbR8qEmPOQvu6RMxO7oNvjpWuvfTSMEDm/eI/9tCQrAd
	 HnmsyCRKAmHWI80cBIfaEO0xfC23uAIwE6UVZhVZX+4JzvNDxHp8DRRYPrx6KCii27
	 sCm35sgDpch7kfBa/K1aJu6AfA8rxfL3KPn9yhBcjBf3qe2A98lzjHaM/PL/Ddu5VI
	 6mlj1oli4S9Ed9IxYZs7QL/kUXVF1xS+PIVM3CgstBfMrfWPR4UUArTnyFM5vaEKpD
	 aOn40n1fbMtG1TFm9Vz1mjhA/vKXeTCi5ZaW/1pTGayyutHmfIKKWMpfZUhMrc0/cR
	 ozGKYIPF0e0jQ==
Date: Fri, 18 Apr 2025 11:21:18 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Hans Zhang <18255117159@163.com>, Shawn Lin <shawn.lin@rock-chips.com>,
	lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com,
	heiko@sntech.de, manivannan.sadhasivam@linaro.org, robh@kernel.org,
	jingoohan1@gmail.com, thomas.richard@bootlin.com,
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] PCI: dw-rockchip: Configure max payload size on host init
Message-ID: <20250418162118.GA157636@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <225CC628-432C-4E88-AF2B-17C948B3790B@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250418_092121_523605_7FB340D1 
X-CRM114-Status: GOOD (  22.22  )
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

On Fri, Apr 18, 2025 at 04:55:13PM +0200, Niklas Cassel wrote:
> On 18 April 2025 14:33:08 CEST, Hans Zhang <18255117159@163.com> wrote:
> >Thanks your for reply. Niklas and I attempted to modify the
> >relevant logic in drivers/pci/probe.c and found that there was a
> >lot of code judging the global variable pcie_bus_config. At
> >present, there is no good method. I will keep trying.
> >
> >I wonder if you have any good suggestions? It seems that the code
> >logic regarding pcie_bus_config is a little complicated and cannot
> >be modified for the time being?
> 
> If:
> 
> diff --git a/drivers/pci/probe.c b/drivers/pci/probe.c
> index 364fa2a514f8..2e1c92fdd577 100644
> --- a/drivers/pci/probe.c
> +++ b/drivers/pci/probe.c
> @@ -2983,6 +2983,13 @@ void pcie_bus_configure_settings(struct pci_bus *bus)
>          if (!pci_is_pcie(bus->self))
>                  return;
>   +       /*
> +        * Start off with DevCtl.MPS == DevCap.MPS, unless PCIE_BUS_TUNE_OFF.
> +        * This might get overriden by a MPS strategy below.
> +        */
> +       if (pcie_bus_config != PCIE_BUS_TUNE_OFF)
> +               smpss = pcie_get_mps(bus->self);
> +
>          /*
>           * FIXME - Peer to peer DMA is possible, though the endpoint would need
>           * to be aware of the MPS of the destination.  To work around this,
> 
> 
> 
> does not work, can't you modify the code slightly so that it works?
> 
> I haven't tried myself, but considering that it works when walking
> the bus, it seems that it should be possible to get something
> working.

Thanks, Niklas, this seems like a reasonable place to start.
Hopefully we can drop the controller-specific quirks since there's
nothing controller-specific about them.

Bjorn

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
