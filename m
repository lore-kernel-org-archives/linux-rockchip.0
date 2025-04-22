Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF5D0C369C2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Apr 2025 12:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ogt8zTdrKZWxRrMnksNyp9T0+Wj+8m5mt09kmuLe67s=; b=zPulTqQ+nNvPNd
	ubqBk/oXqCJA7GEh+4sv3VZ25r3Uvu+aul/E/9aby8HiGn106ALTptJmpIbi7du0pkw1k3AE77lZL
	hTR+Y32mYd/ylwk03bwCuYDzaceTZcDT8BOHhocGeuy4tuQJv01bl7IPXJ/hnVr8e5HrA9wA5VAZ1
	eYHmGjhiWgwhK6LBbMlxju53OkTzKE0RFMVsS4kzCE+x7Fx1pLNkc8z7nHMXLxI4pjMCktl4cpJZs
	LiM7MuDbSs5B8M/JDuZec9cMPVU1yKUvqedCNw4LOaIYIZYGB4nt3ZXofj3kQBc1u2neE4R8KJG6F
	OBxmcIZ2M+T3oLTAD9FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7Cxi-00000007AEK-3Mqu;
	Tue, 22 Apr 2025 12:42:54 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7Buu-00000006y2a-1Ss6;
	Tue, 22 Apr 2025 11:35:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 959FE4453A;
	Tue, 22 Apr 2025 11:35:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68025C4CEE9;
	Tue, 22 Apr 2025 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745321755;
	bh=G8k1yESAkAoC2QiiUqKx2xBykLNl2jvAEMR/XX9MlZA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=amsbijQi5FkfMwBmTqZPiKls6kIoI2HsDOXFFmiGBsXTj1a76q6E+akpUOlIFc9ap
	 42enWZHkH54MltECbR3/SsXKxa1Y3FBhkGE/eyTY5Q8VA/m+CRstiPD0XSEM4cBjWv
	 t/EKOoEaUKKflSsJ+/hx4kfN/WHbonw7rs4SkPlpRYoRev9MkgNUDciApX5BiAmC7e
	 zd4Ma6xmusV9ejKOM70Bt+GVk1MvvyNs3nTQf7pNAOW8IdxZT06+aV6TMh0kYvEiiX
	 cUt4Ni+NeLFVbCa6Qgh52U033cy2Zog7gHbYZPjAgvQ5P2ZTUSD7HD9I2h03jzc5pO
	 gpaGE98vrLEiA==
Date: Tue, 22 Apr 2025 13:35:50 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Hans Zhang <18255117159@163.com>
Cc: lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com,
	heiko@sntech.de, manivannan.sadhasivam@linaro.org, robh@kernel.org,
	jingoohan1@gmail.com, shawn.lin@rock-chips.com,
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/3] PCI: dw-rockchip: Remove unused
 PCIE_CLIENT_GENERAL_DEBUG
Message-ID: <aAd_FiWy5F-tK_2i@ryzen>
References: <20250422112830.204374-1-18255117159@163.com>
 <20250422112830.204374-2-18255117159@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250422112830.204374-2-18255117159@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_043556_406592_FE0F15DF 
X-CRM114-Status: GOOD (  15.80  )
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

On Tue, Apr 22, 2025 at 07:28:28PM +0800, Hans Zhang wrote:
> The PCIE_CLIENT_GENERAL_DEBUG register offset is defined but never
> used in the driver. Its presence adds noise to the register map and
> may mislead future developers.
> 
> Remove this redundant definition to keep the register list minimal
> and aligned with actual hardware usage.
> 
> Signed-off-by: Hans Zhang <18255117159@163.com>
> ---
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> index 0e0c09bafd63..fd5827bbfae3 100644
> --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> @@ -54,7 +54,6 @@
>  #define PCIE_CLIENT_GENERAL_CONTROL	0x0
>  #define PCIE_CLIENT_INTR_STATUS_LEGACY	0x8
>  #define PCIE_CLIENT_INTR_MASK_LEGACY	0x1c
> -#define PCIE_CLIENT_GENERAL_DEBUG	0x104
>  #define PCIE_CLIENT_HOT_RESET_CTRL	0x180
>  #define PCIE_CLIENT_LTSSM_STATUS	0x300
>  #define PCIE_LTSSM_ENABLE_ENHANCE	BIT(4)
> -- 
> 2.25.1
> 

Reviewed-by: Niklas Cassel <cassel@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
