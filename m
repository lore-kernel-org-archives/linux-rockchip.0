Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E580FC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Apr 2022 14:18:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=klGsgwDisJK9nfoA/oA5y1crV0W+qq+9YzfdcM0mpvQ=; b=pcmd0WPc8zxo7r
	j9kBmS+toDw+x7/RalHcLM7bkiOLCV5lJEN5KdpSjJxWQp1q5UaCu8GkaBq3aVFsckWF8Q1E6iSMD
	aRoaDXm5Pdvd/4oeFSmRiOD+Lp1CVNO429/QUPA72HtcY+lADZiDR4Uqjyu7MPW8TkTABciUxyAC6
	klvclToECrb99ha2MaV6OL3opkkykE0SWEcvqkLYAjKMkIkvGpXm7ZemxLlpmEuK49LCSNSXHhPxJ
	UNlrMJ1Sv/eQ+AqHadxH5d7K+yG5dCKQ5z+4ee0ZS4oTZg0bHsXJENEuXv7jsioMEpMWphqjbMoZo
	8EGDMlE52fioXbdstxzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncpRD-00HYnP-Cj; Fri, 08 Apr 2022 14:18:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncpRB-00HYlk-0L
 for linux-rockchip@lists.infradead.org; Fri, 08 Apr 2022 14:18:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 565E2113E;
 Fri,  8 Apr 2022 07:18:07 -0700 (PDT)
Received: from lpieralisi (unknown [10.57.11.200])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EED3C3F73B;
 Fri,  8 Apr 2022 07:18:05 -0700 (PDT)
Date: Fri, 8 Apr 2022 15:18:09 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Punit Agrawal <punitagrawal@gmail.com>, shawn.lin@rock-chips.com,
 Heiko Stuebner <heiko@sntech.de>
Cc: bhelgaas@google.com, robh@kernel.org, kw@linux.com,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] PCI: rockchip: Enable the phy driver when controller is
 enabled
Message-ID: <YlBEIfMl3BbeUNAV@lpieralisi>
References: <20211019120215.793794-1-punitagrawal@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211019120215.793794-1-punitagrawal@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220408_071809_126364_75AC82A7 
X-CRM114-Status: GOOD (  20.24  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Tue, Oct 19, 2021 at 09:02:15PM +0900, Punit Agrawal wrote:
> The PCI controller on rk3399 requires the phy to correctly initialise
> the PCIE phy. Without phy initialisation the host and end-point
> controllers cannot be used.
> 
> To prevent building an unusable PCIe driver on rk3399, enable the phy
> driver when the host or end-point driver is enabled.
> 
> Signed-off-by: Punit Agrawal <punitagrawal@gmail.com>
> ---
> Hi,
> 
> I've been caught out many times when booting off of PCI and finding
> that the kernel cannot find rootfs due to the missing phy driver. The
> patch should prevents this by fixing the Kconfig dependency
> enablement. 
> 
> Thanks,
> Punit
> 
>  drivers/pci/controller/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)

Shawn, Heiko,

can I go ahead with this patch please ?

Thanks,
Lorenzo

> diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kconfig
> index 326f7d13024f..1965df38c4a3 100644
> --- a/drivers/pci/controller/Kconfig
> +++ b/drivers/pci/controller/Kconfig
> @@ -214,6 +214,7 @@ config PCIE_ROCKCHIP_HOST
>  	depends on PCI_MSI_IRQ_DOMAIN
>  	select MFD_SYSCON
>  	select PCIE_ROCKCHIP
> +	select PHY_ROCKCHIP_PCIE
>  	help
>  	  Say Y here if you want internal PCI support on Rockchip SoC.
>  	  There is 1 internal PCIe port available to support GEN2 with
> @@ -226,6 +227,7 @@ config PCIE_ROCKCHIP_EP
>  	depends on PCI_ENDPOINT
>  	select MFD_SYSCON
>  	select PCIE_ROCKCHIP
> +	select PHY_ROCKCHIP_PCIE
>  	help
>  	  Say Y here if you want to support Rockchip PCIe controller in
>  	  endpoint mode on Rockchip SoC. There is 1 internal PCIe port
> -- 
> 2.33.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
