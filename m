Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD0B5EB64DC
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Jul 2023 10:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=apPEORT6hnWNcs0v0Xj6z/K7qs3gt+1ZIKB3IPIOEWo=; b=hS9tCnosDC3ege
	y4NdishEJP3zTufV4EcVe2FPPwEE1W02NFI8PstQgGNquv1GIfhFzJB4xLCS9ticDOmg+/49cVoeU
	0Ee3nwf9Hzj1N6SxN/UwUkSZcllgWbABb1ZNnjSqgZvA9aDhph9A/RjFhkPMKnPdmxjZZsPEvKVUR
	Tx5aIbdl6vtZ+QTeSrYdtKGOrUEYcfprjljTbicXZGdB1qhNNs18HKCKKSaKrmTl6Oht5n2HZPFw3
	WbJ4fNgyxxMFtk7js8bg8+wph+xTlYckWuVCb6yww6tvefrbTwDr2J5P+NVZdSrgV5+oedbOwvX4c
	wduLo9dSVS+b3dnoLihQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGGe7-00A7uI-1g;
	Mon, 03 Jul 2023 10:19:03 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGGe3-00A7q1-37;
	Mon, 03 Jul 2023 10:19:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0DF572F4;
	Mon,  3 Jul 2023 03:19:40 -0700 (PDT)
Received: from [10.57.38.117] (unknown [10.57.38.117])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 429EE3F762;
	Mon,  3 Jul 2023 03:18:53 -0700 (PDT)
Message-ID: <997819c6-0798-e2f9-b94b-fedfbab7fdd8@arm.com>
Date: Mon, 3 Jul 2023 11:18:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2] PCI: rockchip: Use 64-bit mask on MSI 64-bit PCI
 address
Content-Language: en-GB
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>, alberto.dassatti@heig-vd.ch
Cc: dlemoal@kernel.org, Dan Carpenter <dan.carpenter@linaro.org>,
 stable@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20230703085845.2052008-1-rick.wertenbroek@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20230703085845.2052008-1-rick.wertenbroek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230703_031900_075964_D27D25E4 
X-CRM114-Status: GOOD (  14.00  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2023-07-03 09:58, Rick Wertenbroek wrote:
> A 32-bit mask was used on the 64-bit PCI address used for mapping MSIs.
> This would result in the upper 32 bits being unintentionally zeroed and
> MSIs getting mapped to incorrect PCI addresses if the address had any
> of the upper bits set.
> 
> Replace 32-bit mask by appropriate 64-bit mask.
> 
> Fixes: dc73ed0f1b8b ("PCI: rockchip: Fix window mapping and address translation for endpoint")
> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> Closes: https://lore.kernel.org/linux-pci/8d19e5b7-8fa0-44a4-90e2-9bb06f5eb694@moroto.mountain/
> Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
> Cc: stable@vger.kernel.org
> ---
>   drivers/pci/controller/pcie-rockchip.h | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
> index fe0333778fd9..627d08b34827 100644
> --- a/drivers/pci/controller/pcie-rockchip.h
> +++ b/drivers/pci/controller/pcie-rockchip.h
> @@ -158,7 +158,9 @@
>   #define PCIE_RC_CONFIG_THP_CAP		(PCIE_RC_CONFIG_BASE + 0x274)
>   #define   PCIE_RC_CONFIG_THP_CAP_NEXT_MASK	GENMASK(31, 20)
>   
> -#define PCIE_ADDR_MASK			0xffffff00
> +#define MAX_AXI_IB_ROOTPORT_REGION_NUM		3
> +#define MIN_AXI_ADDR_BITS_PASSED		8
> +#define PCIE_ADDR_MASK			GENMASK(63, MIN_AXI_ADDR_BITS_PASSED)

Nit: this probably wants to be GENMASK_ULL(), otherwise it might throw a 
warning if compile-tested for 32-bit.

Thanks,
Robin.

>   #define PCIE_CORE_AXI_CONF_BASE		0xc00000
>   #define PCIE_CORE_OB_REGION_ADDR0	(PCIE_CORE_AXI_CONF_BASE + 0x0)
>   #define   PCIE_CORE_OB_REGION_ADDR0_NUM_BITS	0x3f
> @@ -185,8 +187,6 @@
>   #define AXI_WRAPPER_TYPE1_CFG			0xb
>   #define AXI_WRAPPER_NOR_MSG			0xc
>   
> -#define MAX_AXI_IB_ROOTPORT_REGION_NUM		3
> -#define MIN_AXI_ADDR_BITS_PASSED		8
>   #define PCIE_RC_SEND_PME_OFF			0x11960
>   #define ROCKCHIP_VENDOR_ID			0x1d87
>   #define PCIE_LINK_IS_L2(x) \

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
