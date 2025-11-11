Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F4CBCCFA1A
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Nov 2025 13:08:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=penLoCz8PIbcp+S3Cz68wmuyg7RYFlEgdlMHFUkSgvY=; b=NcKIZGOFv5N45X
	p0ZK1sFZn5pOi//KxwGiR1lcFj7spBoor8oD7LuQOFFls1uGcZdgybmPjQufyvfexF2oHcgBTkPWK
	WxGM4tgYcVZ7h20P7DtxF6E9Gmw7eMbO8/5OQWovi2GI3STkJtsA0HdNWwKFM+woFLvDLuJ6GZdGi
	jNR99n7ZQof3C8r2TGidvZyDnRi9vd8hI6ju9A10scJn/EH+7pAYDhIawMCp/NDPTCgWhSVgi860V
	5P8xJox2/F609npv+wZQXoglVg5ySa9cwZb8ResLhxHrA5F7h5klpFyRXyuDCY8TCNfJLyK2AK1ki
	KYJ9GtokU5t8qEoRFlKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIo73-00000007EBP-19h7;
	Tue, 11 Nov 2025 13:08:45 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIo71-00000007EAV-0HzB;
	Tue, 11 Nov 2025 13:08:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id EDA2D42B14;
	Tue, 11 Nov 2025 13:08:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 472EEC4CEF5;
	Tue, 11 Nov 2025 13:08:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762866521;
	bh=Tp3gcQQfBfQNBKzN1UdG/86ORq+6tXRnDDKFCyIy/yo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PdguOn6Y7p97pcSKlNYot9c318d1xeoVX3dwqWe1LwmAhshP0bklXid1uKvEInbx8
	 1YkndRyAxdqAN4NWHZ48ym2kJRChMwL9Y+AFSHEuJBuzcE9vRxDG+VRn4iOBxtsKdh
	 oks49Sr2HlbGukTFbLZlS79tfCraRAcPKYr2dsmZcQ67QfC4nXnEOrm5x8y3pyE1Ia
	 ynPY25osmuzJ/6INIRdQPU5Tnaq3ZpzrxxG2FkjclBgOrIkkPsyO8bMWHRlkEVtM1H
	 M0tpid4lJqOvYmCbAZ1zIUaPsfR9Jd9hLA1xTvu+Ubjkf8Vww3xBVdKv7y1xWMVGCb
	 l16WnzpsTgGzQ==
Date: Tue, 11 Nov 2025 14:08:36 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
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
Message-ID: <aRM1VOodnSpaob3P@ryzen>
References: <20251017163252.598812-2-cassel@kernel.org>
 <176101411705.9573.17573145190800888773.b4-ty@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <176101411705.9573.17573145190800888773.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_050843_148373_45B6DADD 
X-CRM114-Status: GOOD (  20.24  )
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

On Tue, Oct 21, 2025 at 08:05:17AM +0530, Manivannan Sadhasivam wrote:
> 
> On Fri, 17 Oct 2025 18:32:53 +0200, Niklas Cassel wrote:
> > The L1 substates support requires additional steps to work, namely:
> > -Proper handling of the CLKREQ# sideband signal. (It is mostly handled by
> >  hardware, but software still needs to set the clkreq fields in the
> >  PCIE_CLIENT_POWER_CON register to match the hardware implementation.)
> > -Program the frequency of the aux clock into the
> >  DSP_PCIE_PL_AUX_CLK_FREQ_OFF register. (During L1 substates the core_clk
> >  is turned off and the aux_clk is used instead.)
> > 
> > [...]
> 
> Applied, thanks!
> 
> [1/1] PCI: dw-rockchip: Prevent advertising L1 Substates support
>       commit: 40331c63e7901a2cc75ce6b5d24d50601efb833d

Last update in this thread was "Applied, thanks!"

and the patch was applied to pci/controller/dw-rockchip

since then it seems to have been demoted to pci/controller/dw-rockchip-pend

I'm simply curious, what is the plan for this patch?

I know that Shawn was working on a series that adds support for L1ss for
this driver, but it seems to have stagnated, so it seems far from certain
that it will be ready in time to make it for the v6.19 merge window.

Right now, pci/next branch seems to merge pci/controller/dw-rockchip rather
than pci/controller/dw-rockchip-pend.

If the L1ss does not make it in time, then this patch will not have had any
time in linux-next, which might not make Linus happy.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
