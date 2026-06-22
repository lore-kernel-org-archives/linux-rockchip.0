Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B46F5CD98F2
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Jun 2026 17:14:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=v0uHEPVvjyiZ6rrN2gEL+Fa2lvkTs2CVtrgBtHQsa2o=; b=HJXnPXwey8tbrz
	UFjmEejZqtHme+gperNXem9g9zjJ1lv+mC7bZEVa/rmCFZkJC+bXkJLUw3D6Y5uqucLcVJqSd3m8S
	GGYSate9ycRqw2mDvBqQYlNdQpyv+Bfk1zp6MnaJpvMiK3i/S4OSy8/oxDSam5Br8SeYDoQraVA8Q
	zoiOwazILAEt6WNU7UQ5qWIlypR5hi6bPPfCWoUuM6tZfUVOgB7kWHkvNcI5GUW3QSErItDetlD5X
	RU6ceT0IaKAsn7yMUw/DHT1YAxZZsywUeURH4YbKprdrXBDyt8m1q26zc4t6AUu3r9tWW/+F6OpSp
	MUVJ2NX8As3VtVko+y5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbiEW-00000005FQw-0l02;
	Mon, 22 Jun 2026 17:14:52 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbiEU-00000005FQN-2PF0;
	Mon, 22 Jun 2026 17:14:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E147B601F3;
	Mon, 22 Jun 2026 17:14:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C7771F000E9;
	Mon, 22 Jun 2026 17:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782148489;
	bh=qjzQ4WwEP4S9tC3oy8nVsiVMsWH0bk2/jHATvq8YN7g=;
	h=Date:From:To:Cc:Subject:In-Reply-To;
	b=T3jVb1nMf3BVbMVzJIa3+l8FyxOasvux+i+g5elRWyUJ3tKyCOVRbENnhNuQwA6G0
	 FaCXRZLUMsP7g3wqBRZyeXRqk4SRnQygKqCA44f5/gxdv+1xK/Vck+IP3MsWtA25OA
	 rJp/w7XbBoo+T8vxg2tIJ/F/KWFVM+RSjRSNvMv9kIk9a2jTGK7P3KIo9sqfSu+6FN
	 ZFyN+bVCG2aKNadAlcX+gXiN1ZMIjucS486ERjyxJIA0O5BmVKvcVF018PKmYwbOHi
	 39raliXBg05jeLL/fiXWcGJYzFqGfnepGprhNMbAwiue7GLqLTOuQUERN18GpEWh2Z
	 WiLWFooYByexQ==
Date: Mon, 22 Jun 2026 12:14:48 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Hans Zhang <18255117159@163.com>
Cc: bhelgaas@google.com, Manivannan Sadhasivam <mani@kernel.org>,
	lpieralisi@kernel.org, kwilczynski@kernel.org, heiko@sntech.de,
	yue.wang@amlogic.com, pali@kernel.org, neil.armstrong@linaro.org,
	robh@kernel.org, jingoohan1@gmail.com, khilman@baylibre.com,
	jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
	cassel@kernel.org, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v7 0/2] PCI: Configure Root Port MPS during host probing
Message-ID: <20260622171448.GA678675@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dae17d36-c7d2-467b-a621-3c55e08a67a8@163.com>
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

On Fri, Jun 19, 2026 at 11:29:39PM +0800, Hans Zhang wrote:
> On 5/6/26 22:00, Manivannan Sadhasivam wrote:
> > On Fri, Nov 28, 2025 at 01:09:06AM +0800, Hans Zhang wrote:
> > > Current PCIe initialization exhibits a key optimization gap: Root Ports
> > > may operate with non-optimal Maximum Payload Size (MPS) settings. While
> > > downstream device configuration is handled during bus enumeration, Root
> > > Port MPS values inherited from firmware or hardware defaults often fail
> > > to utilize the full capabilities supported by controller hardware. This
> > > results in suboptimal data transfer efficiency throughout the PCIe
> > > hierarchy.
> > > 
> > > This patch series addresses this by:
> > > 
> > > 1. Core PCI enhancement (Patch 1):
> > > - Proactively configures Root Port MPS during host controller probing
> > > - Sets initial MPS to hardware maximum (128 << dev->pcie_mpss)
> > > - Conditional on PCIe bus tuning being enabled (PCIE_BUS_TUNE_OFF unset)
> > >    and not in PCIE_BUS_PEER2PEER mode (which requires default 128 bytes)
> > > - Maintains backward compatibility via PCIE_BUS_TUNE_OFF check
> > > - Preserves standard MPS negotiation during downstream enumeration
> > > 
> > > 2. Driver cleanup (Patch 2):
> > > - Removes redundant MPS configuration from Meson PCIe controller driver
> > > - Functionality is now centralized in PCI core
> > > - Simplifies driver maintenance long-term
> > > 
> > 
> > For the series,
> > 
> > Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
> > 
> > Bjorn: Could you please take a look? This series has been floating for a
> > while...
> 
> Hello Bjorn,
> 
> Any chance for this series to be applied?

It's too late for v7.2; we're already more than halfway through the
merge window.  We can look again for v7.3 after v7.2-rc1.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
