Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B100C44501
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jan 2026 10:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EDhhimO/HJDeO5hcWJjYbof3S1X1ijdR6J/K1BqlW3Q=; b=tN3VvperqOv8jD
	F1BpqyF/5SXLJz3ksTX8kqv4fuUhGgnX4boD/carVhXsyw2/cqMQOHV+qxmLCFbSI/Va4ghH20vJL
	fV0aJOBZxx4uHr/kw45fpYFGW/JoHcuPvF5FMSn0T/tFSx0ck6AMi1iyY4jADgj3+40JxmAh1q7/k
	Sgjce/c+Cv4gUZDs45EMxqtKIjtCn7O+fiy3zv9iOGG8H3/Gm99th1ONMz632vCi5k7yI+ftn5uMm
	l5yrAZLN5iTkXGzklW1nFbGKZy39YG7J2YGjVPPLj5qivloTSbF8K4qyPeP5A/jv8emsT/C2OpaUq
	kSJsBX3cszMJ5Cf082vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viVDE-00000005FMz-112Q;
	Wed, 21 Jan 2026 10:13:20 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viVDC-00000005FMT-2emQ
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Jan 2026 10:13:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 49B0243DBB;
	Wed, 21 Jan 2026 10:13:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFB45C116D0;
	Wed, 21 Jan 2026 10:13:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768990397;
	bh=ww/A3r+fSI3VAGDS9V/iZEiW76yABU7WPE7tQHQsZng=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hF+cUy+2KpyttqywgJgLGrO1uqdoRCFkRxEfBbxvVZ8pm0vVVVxuf1nVwYgTyn+dV
	 6fQfQHb0/m3m9WljBSxoKFc7DXwP0ho9YYEowhXMd+jMi31oYIpDKP2fvLQ9RyoYYj
	 AKeeixMeVCPRQkiFV4feGXGIgJ9LWv6xNA5jV7GyadesMV7lyuE+u5iDQmWti73+po
	 bAbpqQS+C9yr9AJA5k+jVH1cfD4PKC9F/rRJve2ZQE7TLI7Bd+9mJy3+yZH2FWd7IS
	 mFtqPUGk3E78DUVrBZnLJMiB+tq/z2RIzsldb6SCAQfI8HS05VVTyd+4xkFQuTAs83
	 658kvYYcrOt5Q==
Date: Wed, 21 Jan 2026 11:13:12 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>,
	Manivannan Sadhasivam <mani@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] PCI: dwc: Remove duplicate
 dw_pcie_ep_hide_ext_capability() function
Message-ID: <aXCmuFA8JwmRofis@ryzen>
References: <20251224-remove_dw_pcie_ep_hide_ext_capability-v1-1-4302c9cdc316@oss.qualcomm.com>
 <aVPgL2AuAMpx76pI@ryzen>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aVPgL2AuAMpx76pI@ryzen>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_021318_693988_EED4025D 
X-CRM114-Status: GOOD (  13.15  )
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

On Tue, Dec 30, 2025 at 03:22:39PM +0100, Niklas Cassel wrote:
> Hello Qiang Yu,
> 
> On Wed, Dec 24, 2025 at 02:10:46AM -0800, Qiang Yu wrote:
> > Remove dw_pcie_ep_hide_ext_capability() and replace its usage with
> > dw_pcie_remove_ext_capability(). Both functions serve the same purpose
> > of hiding PCIe extended capabilities, but dw_pcie_remove_ext_capability()
> > provides a cleaner API that doesn't require the caller to specify the
> > previous capability ID.
> > 
> > Compile-tested only. Runtime testing on RK3588 hardware would be
> > appreciated.
> 
> This patch does not appy on top of pci/controller/dwc
> 
> Anyway, I applied it manually, and tested, thus:
> Tested-by: Niklas Cassel <cassel@kernel.org>

I just tried to apply this patch for pci/controller/dwc and right now,
this patch does apply.

Mani, any chance to get this picked up?


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
