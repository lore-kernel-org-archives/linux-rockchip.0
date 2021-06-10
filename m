Return-Path: <SRS0=8ktI=LE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 505D9C48BD1
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jun 2021 21:59:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D459F613F1
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jun 2021 21:59:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D459F613F1
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zuFEL3psEwqZqq8d6yibMvrVeBXjdB7Kd33qy4FEF44=; b=X6m8hg4sSk5jWw
	deFNTLAZ48r5XmAIAyYx/w5K/meLoievbKz2pPJYjX+CmL3ebl1RTL3oah9Dhi0tUnM/IfZXD6KdC
	Yp1C0fAs9adkzNmT4Sg5MnhRjP3MF18Z0r6mze/jbGUZLUvqdyTQiFs1J6uh/rIV5In+wgJmnPn8o
	sSrNjjDb5hxYunO/bNMQDDLOamddHAVGUeImxaygrNtja8GNxzg4Jd1OSEXzJbzxbPjnGZ72PpJLy
	6975K8ZbMGv2mhcr8XTgDc6FHkGsJzrrp/Aty/kBPoMbsPG3s4oo3xLofkh2rdepq9Sp6fCLWV7ez
	mya0W7CBlFhQlUiHwRRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrShc-002gqR-HO; Thu, 10 Jun 2021 21:59:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrSZZ-002cTf-3j; Thu, 10 Jun 2021 21:50:46 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lrSZV-0006lk-N8; Thu, 10 Jun 2021 23:50:41 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: helgaas@kernel.org, robh+dt@kernel.org,
 Punit Agrawal <punitagrawal@gmail.com>
Cc: Punit Agrawal <punitagrawal@gmail.com>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, alexandru.elisei@arm.com, wqu@suse.com,
 robin.murphy@arm.com, pgwipeout@gmail.com, ardb@kernel.org,
 briannorris@chromium.org, shawn.lin@rock-chips.com
Subject: Re: [PATCH v3 4/4] arm64: dts: rockchip: Update PCI host bridge
 window to 32-bit address memory
Date: Thu, 10 Jun 2021 23:50:40 +0200
Message-ID: <3105233.izSxrag8PF@diego>
In-Reply-To: <20210607112856.3499682-5-punitagrawal@gmail.com>
References: <20210607112856.3499682-1-punitagrawal@gmail.com>
 <20210607112856.3499682-5-punitagrawal@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210610_145045_213214_BECD9D01 
X-CRM114-Status: GOOD (  21.78  )
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

Hi,

Am Montag, 7. Juni 2021, 13:28:56 CEST schrieb Punit Agrawal:
> The PCIe host bridge on RK3399 advertises a single 64-bit memory
> address range even though it lies entirely below 4GB.
> 
> Previously the OF PCI range parser treated 64-bit ranges more
> leniently (i.e., as 32-bit), but since commit 9d57e61bf723 ("of/pci:
> Add IORESOURCE_MEM_64 to resource flags for 64-bit memory addresses")
> the code takes a stricter view and treats the ranges as advertised in
> the device tree (i.e, as 64-bit).
> 
> The change in behaviour causes failure when allocating bus addresses
> to devices connected behind a PCI-to-PCI bridge that require
> non-prefetchable memory ranges. The allocation failure was observed
> for certain Samsung NVMe drives connected to RockPro64 boards.
> 
> Update the host bridge window attributes to treat it as 32-bit address
> memory. This fixes the allocation failure observed since commit
> 9d57e61bf723.
> 
> Reported-by: Alexandru Elisei <alexandru.elisei@arm.com>
> Link: https://lore.kernel.org/r/7a1e2ebc-f7d8-8431-d844-41a9c36a8911@arm.com
> Suggested-by: Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Punit Agrawal <punitagrawal@gmail.com>
> Tested-by: Alexandru Elisei <alexandru.elisei@arm.com>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: Rob Herring <robh+dt@kernel.org>

just for clarity, should I just pick this patch separately for 5.13-rc to
make it easy for people using current kernel devicetrees, or should
this wait for the update mentioned in the cover-letter response
and should go all together through the PCI tree?

If so, I can provide an
Acked-by: Heiko Stuebner <heiko@sntech.de>



> ---
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 634a91af8e83..4b854eb21f72 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -227,7 +227,7 @@ pcie0: pcie@f8000000 {
>  		       <&pcie_phy 2>, <&pcie_phy 3>;
>  		phy-names = "pcie-phy-0", "pcie-phy-1",
>  			    "pcie-phy-2", "pcie-phy-3";
> -		ranges = <0x83000000 0x0 0xfa000000 0x0 0xfa000000 0x0 0x1e00000>,
> +		ranges = <0x82000000 0x0 0xfa000000 0x0 0xfa000000 0x0 0x1e00000>,
>  			 <0x81000000 0x0 0xfbe00000 0x0 0xfbe00000 0x0 0x100000>;
>  		resets = <&cru SRST_PCIE_CORE>, <&cru SRST_PCIE_MGMT>,
>  			 <&cru SRST_PCIE_MGMT_STICKY>, <&cru SRST_PCIE_PIPE>,
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
