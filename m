Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A450C7EE2F
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jun 2023 16:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=Yn0h4rAYgYwVuHS9GXZ7KA8GlRj0pIg5Eyr+yljObDk=; b=SMbi6fpbmOcpZN
	Kos41OmkIpPdoArVR1ZZ+YywalRooyQr4B4D68w21r10KbgbYPnmEZdFHjRkLeA8uF7euywEL003M
	VWE5VJrrQZNQjBFkimevfgVTeQC/CePcOqRz/ex/GQ+KWBAsYDXvYAaEKyFYpVUPKK0Mnqou479GX
	pd4xY85uYN4LgGNMr3h/pRkamcbh3Epoa2a9rURtI3ib+b7+c4RdXudmmegyeF8OUXo26kpzNC452
	61tXTIPc1597q6kaqsJ3oLz1yzOEJgeOMb7pn2PZ6BCFCevLAmluMj3+RWqO6hhcop7xfIMupWqg8
	LRxcgtuIJKtrwuTtxwNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8kGU-004bi0-0F;
	Mon, 12 Jun 2023 16:19:34 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8kGQ-004bgx-2B;
	Mon, 12 Jun 2023 16:19:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B73E562B70;
	Mon, 12 Jun 2023 16:19:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 369B1C4339B;
	Mon, 12 Jun 2023 16:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686586769;
	bh=OTJAkzUB/kHEz+zDpGNc9vDTw+iMQ7TJ/wo3kRt6WNE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=CCG/J7Hk7a7Pqayi8Dhv4V5Lo1gKzDd2gONXFYj9dZ3ZlZsjrC3VfeL99tkG8oXFv
	 xWdp4qVMK0MopWl4sfLAXlJg2OrAm/XFsPasvOIh6LQCGt7aa7bQd7zpD1TFNkbIU9
	 L1jxyebl9sLVd2W9lZZTRnLyhkOJYK3XZGm6jEO0rnjypc3oze2wFCaSBtLsKc83Gs
	 PboYwpcQKg6IbNC1xzF3lx3VIfAVL0Aa9/tP4w7+I/dUsDNefxPJmfYtREE5tTIKk7
	 Jn1iBRGaC/y9DoMdE+4K1As0RtgR13AwOkAC0v2pyyRAfvbyFCrNiHrhaE2JHkncKF
	 OwBnmjtJoxSCQ==
Date: Mon, 12 Jun 2023 11:19:27 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>
Cc: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Joyce Ooi <joyce.ooi@intel.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Jim Quinlan <jim2101024@gmail.com>,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tom Joseph <tjoseph@cadence.com>, Shawn Guo <shawn.guo@linaro.org>,
	Rahul Tanwar <rtanwar@maxlinear.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Serge Semin <Sergey.Semin@baikalelectronics.ru>,
	Vidya Sagar <vidyas@nvidia.com>, Jisheng Zhang <jszhang@kernel.org>,
	Miaoqian Lin <linmq006@gmail.com>, Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Toan Le <toan@os.amperecomputing.com>,
	Rob Herring <robh@kernel.org>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	linux-rpi-kernel@lists.infradead.org, kernel@pengutronix.de,
	linux-arm-msm@vger.kernel.org, linux-tegra@vger.kernel.org,
	linux-mediatek@lists.infradead.org, linux-omap@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH 00/15] PCI: Convert to platform remove callback returning
 void
Message-ID: <20230612161927.GA1335109@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230611132423.milnj2pnvjqzwino@pali>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_091930_810203_69248005 
X-CRM114-Status: GOOD (  24.41  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sun, Jun 11, 2023 at 03:24:23PM +0200, Pali Roh=E1r wrote:
> On Friday 02 June 2023 16:37:34 Bjorn Helgaas wrote:
> > On Tue, May 30, 2023 at 04:07:42PM +0200, Uwe Kleine-K=F6nig wrote:
> > > On Tue, Mar 21, 2023 at 08:31:53PM +0100, Uwe Kleine-K=F6nig wrote:
> > > > this series adapts the platform drivers below drivers/pci to
> > > > use the .remove_new() callback. Compared to the traditional
> > > > .remove() callback .remove_new() returns no value. This is a
> > > > good thing because the driver core doesn't (and cannot) cope
> > > > for errors during remove. The only effect of a non-zero return
> > > > value in .remove() is that the driver core emits a warning.
> > > > The device is removed anyhow and an early return from
> > > > .remove() usually yields a resource leak.
> ...

> Hello Bjorn, it should be expected that other changes for PCIe drivers
> sent by other people which were sent to the list before this patch
> series and are still waiting for the review (because are without
> comments), would be processed before and patches sent later.

I don't think it's necessary to delay simple, easily-reviewed changes
behind more complicated ones.

> Also I would like to point out that in past I have sent fixes for PCIe
> mvebu driver, which is currently in the broken state. And this is also
> on waiting on the list.

Thanks for this reminder.  Would you mind reposting them?  I poked
around in patchwork and I must be doing something wrong because I
can't find *any* patches from you, though obviously there are many.

If you repost them at least we'll know unambiguously what is on the
table.

Bjorn

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
