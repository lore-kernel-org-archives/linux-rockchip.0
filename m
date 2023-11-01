Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59AC1C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Nov 2023 22:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=CUxtlF1FqCPULnrf8OC6ILMbBwjoIbJBqAlNNVHOePc=; b=g53QAIcaUGpE0y
	dKCPPudzSMh/Gz5TkzJg7ZTCRXoNleHcfw9wh3Q6IPcGW6pQiEn5BQcUPnmkbmrDQMopMVwKC3VQe
	yT1UG0V2d4AWVHaFFZSG767daYFcTsaWV+yVREJ4HQ9h9rDN37higcBssR9V0zbIA9z9BL/9KXH3v
	LRt9xEtGTVjdXr4FPON9UPS2SDrcoJqGoNbQJAR1+VAtHRAslPYD3q2iAmTMTgd4d7ZjtxsrZV5yT
	d+JnoTDUgQLLdJTvHORe10w8GqQIqv3bskz+EXBxxDmeN5sGtdNfjAwPzB0XGOIzVo5iVnPbxbshE
	EKXcqnrX5+4aqyq0eoNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qyJch-008CtD-1N;
	Wed, 01 Nov 2023 22:23:39 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qyJcd-008Cs3-0p;
	Wed, 01 Nov 2023 22:23:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 4788BB81AAA;
	Wed,  1 Nov 2023 22:23:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B768C433C8;
	Wed,  1 Nov 2023 22:23:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698877410;
	bh=PiNESkCwicT3kj8jbpckjD4qQNgjxA4dxrb2+kC3aw0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=o5hbScwEhJfIvM2KJMCZ/nYYeWBEH8IaEVzX11nTIGg70kMdMyUrApl84214GVCcx
	 g49c338k38KiKmSqmKCDEi6618JqnfXItWX0IMGrtAUp5NuPtbY7Jj1hBj78bsgNDB
	 feywTViURQG3Yw229eI031CJStFayMlPJNnLAZPdL8G4w8eiRrDqu4LwpKVNjEIm/M
	 UjOIZKHMuBWhHAa24+RPc3Z/yzGYFZh21prAxW18Jo/0sLnnzrTPqiAXrCRH4kin4J
	 LXHFEwiAs7oWp1NiCYi0yg23nFr9xFHy/v+2VMDPoIJKlQqPCZh+CtYzBw5n/zcByg
	 RgYxx90tF806g==
Date: Wed, 1 Nov 2023 17:23:28 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Niklas Cassel <Niklas.Cassel@wdc.com>
Cc: Serge Semin <fancer.lancer@gmail.com>, Niklas Cassel <nks@flawful.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, Damien Le Moal <dlemoal@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v3 2/6] dt-bindings: PCI: dwc: rockchip: Add optional dma
 interrupts
Message-ID: <20231101222328.GA101333@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZUEiY5i7DUWThhNX@x1-carbon>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231101_152335_455527_4736DB52 
X-CRM114-Status: GOOD (  15.77  )
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

On Tue, Oct 31, 2023 at 03:51:03PM +0000, Niklas Cassel wrote:
> On Tue, Oct 31, 2023 at 04:10:17AM +0300, Serge Semin wrote:
> > On Fri, Oct 27, 2023 at 05:51:14PM +0200, Niklas Cassel wrote:
> > > However, e.g. rk3568 only has one channel for reads and one for writes.
> > > (Now this SoC doesn't have dedicated IRQs for the eDMA, but let's pretend
> > > that it did.)
> > > 
> > > So for rk3568, it would then instead be:
> > > dma0: wr0
> > > dma1: rd0
> > > dma2: <unused>
> > > dma3: <unused>
> > 
> > rk3568 doesn't have IRQs supplied in a normal way, as separate
> > signals.  Instead they are combined in the 'sys' IRQ. So you should
> > define the IRQs constraint being device-specific by using for example
> > the "allOf: if-else" pattern.
> 
> Thank you for your review comment.
> 
> I agree. Will fix this in next version.

When you do, would you mind capitalizing "ATU", "DMA", etc in your
subject lines, commit logs, comments, etc?  Then it'll be more obvious
that these aren't ordinary English words.

Bjorn

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
