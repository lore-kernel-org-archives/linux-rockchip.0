Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10FD0C369C2
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Apr 2025 11:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tSmplO3+oAshH/GGUw95dnEjaRV4qe/pw4nXfLm6rPY=; b=1xVtFzjNiG71QQ
	UswFWVL7Ub/25gHlfGVQrwTepDZD0G22z/MfV7IA9NMnmitCXlqTMkpRaaacRGNN5pIm2LndLTCCg
	N04GR7O+mnWKpPT2rcHjx+b1UVVqWQaOY3bIKKLd59AGBqlv0und30+qpGcIMyllLlCbXFwq7kEZ7
	hO4EJSw/iHVGSSWvP55cbMNAFJ7VlNccxQ6rda9jGVSJJI/mGSUgexwCcKDcCxkhOWK7Qei3HsIzp
	OkkiSGVTclt+LLnChskbRWeXOGyPeuD8Bt8b1sQx3od5ImdhLQT4gkswqEhYAOWrxmybOvlMRAjJZ
	IK2PjrUi1BcVb4Sdd28Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5N9i-0000000CkCO-0ZWk;
	Thu, 17 Apr 2025 11:11:42 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5Mq0-0000000Ch9c-2gcM
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Apr 2025 10:51:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E23A144D58;
	Thu, 17 Apr 2025 10:51:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 755DBC4CEE4;
	Thu, 17 Apr 2025 10:51:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744887079;
	bh=w2+g1NX7wWlo9CSoPsjKyOrgEH+RDOELr9+ZARryBwk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=isynGMiGn9RmDZubA0lSht3/BYsxom4Voy5egIQVnM9nsx5IEo5VclimHVHqjwz6V
	 4KRg9E/2hsTQ/4+zY5v0WkIeViFSvkZWvw0z/W55W4je2XhWLMv6JzTTGrp/Tvl+Kn
	 CqGz1P1c15huRSG4kqEyRjfyM2BvD9WPqTMKgHXawpknAQxLDvSUVMH4YfUuYV/Sxb
	 B9rcIt42RYPoEW+bUuLz2Whsh0Q/GztHfHgmPvMqxNFfv01Qw7NFqW90hSiGNkTDAk
	 C82u4pMfcJnHZkdezRgB7tyKqeVgbztlUgm7wVGonvXpheQK9QJ9OlEOBK7IjCdxhu
	 ftE/1M0ysA4Tw==
Date: Thu, 17 Apr 2025 12:51:15 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] PCI: dw-rockchip: Add system PM support
Message-ID: <aADdI7ByEImYy3Pq@ryzen>
References: <1744352048-178994-1-git-send-email-shawn.lin@rock-chips.com>
 <Z_5aib0WGKfIANj_@ryzen>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Z_5aib0WGKfIANj_@ryzen>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250417_035120_699144_D6759F07 
X-CRM114-Status: GOOD (  12.89  )
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

On Tue, Apr 15, 2025 at 03:09:29PM +0200, Niklas Cassel wrote:
> On Fri, Apr 11, 2025 at 02:14:08PM +0800, Shawn Lin wrote:

(snip)

> > +
> > +	rockchip_pcie_ltssm_enable_control_mode(rockchip, PCIE_CLIENT_RC_MODE);
> 
> Here you are setting PCIE_CLIENT_RC_MODE unconditionally.
> 
> I really don't think that you have tested these callbacks with EP mode.
> 
> If we look at pcie-qcom.c and pcie-qcom-ep.c, dev_pm_ops is defined in
> pcie-qcom.c, but not in pcie-qcom-ep.c.
> 
> Perhaps it is starting to be time to have two separate drivers also for
> rockchip?

Hmm.. looking at pcie-tegra194.c, they do still have both RC and EP in the
same file, but they simply return -ENOTSUPP in the EP case:
https://github.com/torvalds/linux/blob/v6.15-rc2/drivers/pci/controller/dwc/pcie-tegra194.c#L2381-L2384

Perhaps you could do something similar?


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
