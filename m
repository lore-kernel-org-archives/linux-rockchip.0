Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C88DBCCFA1A
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Nov 2025 08:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5hTPDN65UBH/OaNwf85jsgCcgwYE6NhxW1G76g5taDM=; b=KZHT/7prHwyrd1
	CwE3hmzCPakkp2bBdDLyYFVx2UUrtksFz7JoQKtghLb9n8VaEKy6NQDVT6WXTRDInr1VYnR0/CUE8
	yVznWTBzQYN+97yNJFedw68Iq42ffu+0gmDF+Vzd0Z9wCTmVJx3bLC/fALSG/8/WFaTZAdCgrpuyq
	klX/3PUIy06K9ROgKnj3sM/w1AWTZWkk9WWVBdx8gOfghNH+OIKYDZlrl9U1cZxBFvIj4Ox85BraB
	XMQ+M5KMLhpPboVwCjqUHHHQnZQFX4rRwg1cmOWw9OwN59PkNiMtIw/Ue0EwJ+RorkIuAC3eNqbLx
	ba4kH5aViLV+snmRRk9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ6Om-00000008N3s-2Ai7;
	Wed, 12 Nov 2025 08:40:16 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ6Oj-00000008N3C-2xYr;
	Wed, 12 Nov 2025 08:40:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E22E9443C4;
	Wed, 12 Nov 2025 08:40:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F370CC19421;
	Wed, 12 Nov 2025 08:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762936812;
	bh=24AR814wLA55Qc7z3MU0tNwo9drr/C1xImdNGy5q2O0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UvaW3kwlNSnW6HuOEIaJ/EsL2sNWRr/khWI8ueFg+45xLnNr6VEwJKymoqQcdxYcb
	 NsrjK5c9QT0AJOITRlsKoSbw18w5uVEUKGPXCprJZylbKbkMPMHptIGkY/ru10J8o4
	 AiogQZmLOHr0aOrDBK7NErbcj0SPg+I0w/rL/3ppYId+x0lIqyJPipebEW/xFYlWoI
	 v9BKwVOWhQt1k6y8Eu1joGAUX28fQkfz3uNK4V3sHJpVJXL5fQuC3nB2WtfbVqt248
	 gKp2uhiU1xgu7T6lyq8ayY/7rMCOkP8JMRq1cWbQcheQxa6WP+YYcPeOg9+ikgHm/Q
	 QgqAGbyUxTCJA==
Date: Wed, 12 Nov 2025 09:40:06 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
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
Message-ID: <aRRH5i2oq1FBSs_7@ryzen>
References: <aRM1VOodnSpaob3P@ryzen>
 <20251111214336.GA2190667@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251111214336.GA2190667@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_004013_784028_62EA2D3B 
X-CRM114-Status: GOOD (  20.89  )
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

On Tue, Nov 11, 2025 at 03:43:36PM -0600, Bjorn Helgaas wrote:
> On Tue, Nov 11, 2025 at 02:08:36PM +0100, Niklas Cassel wrote:
> > On Tue, Oct 21, 2025 at 08:05:17AM +0530, Manivannan Sadhasivam wrote:
> > > On Fri, 17 Oct 2025 18:32:53 +0200, Niklas Cassel wrote:
> > > > The L1 substates support requires additional steps to work, namely:
> > > > -Proper handling of the CLKREQ# sideband signal. (It is mostly handled by
> > > >  hardware, but software still needs to set the clkreq fields in the
> > > >  PCIE_CLIENT_POWER_CON register to match the hardware implementation.)
> > > > -Program the frequency of the aux clock into the
> > > >  DSP_PCIE_PL_AUX_CLK_FREQ_OFF register. (During L1 substates the core_clk
> > > >  is turned off and the aux_clk is used instead.)
> > > > 
> > > > [...]
> > > 
> > > Applied, thanks!
> > > 
> > > [1/1] PCI: dw-rockchip: Prevent advertising L1 Substates support
> > >       commit: 40331c63e7901a2cc75ce6b5d24d50601efb833d
> > 
> > Last update in this thread was "Applied, thanks!"
> >
> > and the patch was applied to pci/controller/dw-rockchip
> > 
> > since then it seems to have been demoted to
> > pci/controller/dw-rockchip-pend
> 
> That was Oct 20, and we had some conversation about a more generic
> approach after that, so I moved it to dw-rockchip-pend while we worked
> that out.
> 
> I fleshed it out the generic approach and will post it soon.

Ok, thank you!


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
