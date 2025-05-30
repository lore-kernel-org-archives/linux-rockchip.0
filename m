Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79512C5B555
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 May 2025 19:46:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=irxwsIfeUOCKRpUNr42SYUrcuysGZds7XvrJjYyW2AQ=; b=3gxPvTApEhVzxc
	9YwVnHShCJFIsc4x/VrUV9qLJWkVrT5mclGqJbo5+fXZQ30y2arKyRhJVvC7QLutGFof7n9OEnbhr
	ghMvKQFrfUgMuO9fQXlij2PzJ/jm/wgh8Hs9MNJlbsYfjG1fEfHaR65lCX6Vz6RzFTaYaA1V4eSye
	FCHefKOvuEx5hDwM440Ja+3U3ltx2+1SNsXv+9ev5JJRCui51fUUG8RbyFb92SXRuZq8QNp2+1iGj
	4g6I1LacTCzGnLka2n0dVe4JPPC7DNmViXcFsDcg/dgLM71cISZvRJbCUy3dvG4ZKvwsiN5ydYjaZ
	wx2NnQBvsZD/x4gpLgSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uL5g5-00000001eFc-0nBQ;
	Fri, 30 May 2025 19:46:05 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uL5du-00000001dY8-13Pj;
	Fri, 30 May 2025 19:43:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 5C95CA4F9B1;
	Fri, 30 May 2025 19:43:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0552C4CEE9;
	Fri, 30 May 2025 19:43:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748634229;
	bh=0vCexfz0/m7ZSD9o27mnf/i5aE11GNqR8VJ8Kkd2bi8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=EcB+90+TQdOtwEYbs7sd/EeKSL6M6QyvefVoPK/JHZpMYN0ikHItMS+OWqCs5XbPO
	 gza2uSRSWP5zQmS7q5bdlQPx+ERA87keGhtm92VyjgJiKzGoQxbcgSMZqa49Dog996
	 UB573dqxmB/nMK6RiIRwP3N7RjfM0+WghCSGR2qTgF8RFTgeFIhztOEyb+8wAY4vak
	 3spFVglzPoM65fLLmuvFZ1cXtq3uDB5wSfpavP4YOO7pDB7KsxJcqXhDJij5Q6O+PN
	 pwHdPG1iL1OHqMBMFBQFwiQ0lmkbkA5KMeiePRbI/+OPb41FxT0G9J+6GhNAkLK+BA
	 0doHfzZaLM8dQ==
Date: Fri, 30 May 2025 14:43:47 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
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
Message-ID: <20250530194347.GA217284@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <76F22449-6A2D-4F64-BF23-DF733E6B9165@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250530_124350_361488_982B0E44 
X-CRM114-Status: GOOD (  11.98  )
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

On Fri, May 30, 2025 at 07:24:53PM +0200, Niklas Cassel wrote:
> On 30 May 2025 19:19:37 CEST, Bjorn Helgaas <helgaas@kernel.org> wrote:
> >
> >I think all drivers should wait PCIE_T_RRS_READY_MS (100ms) after exit
> >from Conventional Reset (if port only supports <= 5.0 GT/s) or after
> >link training completes (if port supports > 5.0 GT/s).
> >
> >> So I don't think this is a device specific issue but rather
> >> controller specific.  And this makes the Qcom patch that I dropped a
> >> valid one (ofc with change in description).
> >
> >URL?
> 
> PATCH 4/4 of this series.

If you mean
https://lore.kernel.org/r/20250506073934.433176-10-cassel@kernel.org,
that patch merely replaces "100" with PCIE_T_PVPERL_MS, which doesn't
fix anything and is valid regardless of this Plextor-related patch
("PCI: dw-rockchip: Do not enumerate bus before endpoint devices are
ready").

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
