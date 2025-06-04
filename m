Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 601FCC5B552
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Jun 2025 19:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=fthJpCY+wiYf8oaVhW+SqyRolIeOmKBi5C7w6iRWwBc=; b=QrrwEbEq1oE1f0
	KTHuNktTYOiQiMFB47zRCO+NtEbdJEmnVmKZqOG06XCj3kTkRFTMdBdLQkYbYlU6nu+zYy5luRrLP
	vsFYpsQkTXma37cqaAtPrsiTqITHqXTZpSjkdgw7z/D8meUd7a3jk3hvxGX/0XXlI6rdCffar1goW
	CkvfTL6P8LZq6x9G1NLubwPm/ZdFUQYXz6I9kVhsuY22/roH+Su1d6D26p84aDW9w5Qrin2AkBo+O
	m6AT92Fb5qXUM0OysSXShc8McHSi9PadRAjQqZTOS90m/K6JrGsTIvI5B0+qsXOLDxK5vpS/xVuir
	i5YQci9MT7Vpy5XE2+1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMuG0-0000000E8fH-4Aig;
	Wed, 04 Jun 2025 19:58:40 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMt6W-0000000E2iB-24oe;
	Wed, 04 Jun 2025 18:44:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9A6355C656E;
	Wed,  4 Jun 2025 18:42:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DFED0C4CEE4;
	Wed,  4 Jun 2025 18:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749062687;
	bh=EcqIEu76v+ExmEM3HZKzLHuCykcVPoooykubp6BZ/ZE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=AjzuDRyFDhGTPH+X9h2Ta/0pCqmctmhSUIprVyPMBEqgy2MQOwKw2j2ZEindiLvD+
	 6uoQoM5wj74hm3gdfCVATatJnv9j0I9bgM2ukVJFU7csL83JjCmxfkI+ayLPjTPm8v
	 qX+egtay6PWa1zCxMmpcHbCThv51rh9XGZhDm5g6nAkJA0/RVlVR71BoOvmTvDArec
	 tYu58pfh+sVFLTjfT21fHfcTRwslgv6bnol52OOE93VhUpuFkc6pd6vGmICW6rRhhy
	 jqN9X1GGhlCakLtpheFNDOlAIrtM8MS+O/e8Ntxl2yVPJMJi+3xxHJmGO5EOIrZ4Q6
	 kz92/sUS4lnhg==
Date: Wed, 4 Jun 2025 13:44:45 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Niklas Cassel <cassel@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Hans Zhang <18255117159@163.com>,
	Laszlo Fiat <laszlo.fiat@proton.me>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/4] PCI: dw-rockchip: Do not enumerate bus before
 endpoint devices are ready
Message-ID: <20250604184445.GA567382@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <rrtrcwajj4vjvbqzosskdnroqnijzaafncgckoh2dlk3c4njvs@twop3vyidmh7>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_114448_626432_3FA38373 
X-CRM114-Status: GOOD (  28.98  )
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

On Wed, Jun 04, 2025 at 10:40:09PM +0530, Manivannan Sadhasivam wrote:
> On Wed, Jun 04, 2025 at 01:40:52PM +0200, Niklas Cassel wrote:
> > On Tue, Jun 03, 2025 at 01:12:50PM -0500, Bjorn Helgaas wrote:
> > > 
> > > Hmmm, sorry, I misinterpreted both 1/4 and 2/4.  I read them as "add
> > > this delay so the PLEXTOR device works", but in fact, I think in both
> > > cases, the delay is actually to enforce the PCIe r6.0, sec 6.6.1,
> > > requirement for software to wait 100ms before issuing a config
> > > request, and the fact that it makes PLEXTOR work is a side effect of
> > > that.
> > 
> > Well, the Plextor NVMe drive used to work with previous kernels,
> > but regressed.
> > 
> > But yes, the delay was added to enforce "PCIe r6.0, sec 6.6.1"
> > requirement for software to wait 100ms, which once again makes
> > the Plextor NVMe drive work.
> > 
> > > The beginning of that 100ms delay is "exit from Conventional Reset"
> > > (ports that support <= 5.0 GT/s) or "link training completes" (ports
> > > that support > 5.0 GT/s).
> > > 
> > > I think we lack that 100ms delay in dwc drivers in general.  The only
> > > generic dwc delay is in dw_pcie_host_init() via the LINK_WAIT_SLEEP_MS
> > > in dw_pcie_wait_for_link(), but that doesn't count because it's
> > > *before* the link comes up.  We have to wait 100ms *after* exiting
> > > Conventional Reset or completing link training.
> > 
> > In dw_pcie_wait_for_link(), in the first iteration of the loop, the link
> > will never be up (because the link was just started),
> > dw_pcie_wait_for_link() will then sleep for LINK_WAIT_SLEEP_MS (90 ms),
> > before trying again.
> > 
> > Most likely the link training took way less than 100 ms, so most of those
> > 90 ms will probably be after link training has completed.
> > 
> > That is most likely why Plextor worked on older kernels (which does not
> > use the link up IRQ).

Definitely seems plausible.

> > If we add a 100 ms sleep after wait_for_link(), then I suggest that we
> > also reduce LINK_WAIT_SLEEP_MS to something shorter.
> 
> No. The 900ms sleep is to make sure that we wait 1s before erroring out
> assuming that the device is not present. This is mandated by the spec. So
> irrespective of the delay we add *after* link up, we should try to detect the
> link up for ~1s.

I think it would be sensible for dw_pcie_wait_for_link() to check for
link up more frequently, i.e., reduce LINK_WAIT_SLEEP_MS and increase
LINK_WAIT_MAX_RETRIES.

If LINK_WAIT_SLEEP_MS * LINK_WAIT_MAX_RETRIES is for the 1.0s
mentioned in sec 6.6.1, seems like maybe we should make a generic
#define for it so we could include the spec reference and use it
across all drivers.  And resolve the question of 900ms vs 1000ms.

Bjorn

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
