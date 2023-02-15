Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0BF6C05027
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Feb 2023 01:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YRHx6CHbXlzZXZBZ64KJmItLsSU/oXA+HyUOY+tlld8=; b=nZn6dghJxJ9DN8
	SYcB6w3eOjSKuweMySYJLqrRMAo2vKUAYGC678EUaipHAqh/Kw+niceLM+/gntXJljNpqjRMRSlsT
	Aznil6Rsmj0PRdpijC29Tl43CEHzQaMBR36in4jrfTti7NdwcEeqk/sQZRniA2lQYyr3hUucuuY7o
	H5ScnrZr+O9h0muiBAtCRtKFqBLUgpJW2RWL2C1eKhXWawjne1geTuimamQ4zeO9zaEYEUCJTWF7C
	d/Fj36WmA7F9Cm+t/L8/dc7ywTujRzUGnNUJwWLaUiqpSctNBN0bR0FkFvwquJnRThl/E2RoWJqYi
	NMTjjMSLDP8r+o37Yqwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pS6hE-004HdQ-ET; Wed, 15 Feb 2023 01:34:56 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pS6h1-004HYO-Jm
	for linux-rockchip@lists.infradead.org; Wed, 15 Feb 2023 01:34:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1676424883; x=1707960883;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=924sFE1g2peLp9NKsKxgM5DmB2kwoPIL6ZPhHqjTmPs=;
  b=Ci0rXTlK6ZVMy53VT5Sm4Nk4SRitwbhFD67WY+9Hs3Rb6euY3AP8j6Ou
   BVKQT6zZWyNY5Jo7JHRL4UMUzUpUZ+SqxwhsSSL9hpc6oEXzroBYmW950
   xO4YOwCXOvnttWSepvHsl6fqXg6k+amPI/vc/oWqmjnh8bf0IqtOKr1EZ
   fhr+2F4sJlElaqaAa9+TKWRDnGMaqwDf0cpDxnQC2vI8wb53XP71hD669
   s+lIDF/AASmIClgYNqaGWdbvZpgZ7ko88ciWvFk19B2Ebx1VLrpyA2fsv
   +yI3idx+Vp3+VuMiZltFLcJ0Mba7QsZM27+pg5m56fVKv0XwSwHsITOhf
   g==;
X-IronPort-AV: E=Sophos;i="5.97,298,1669046400"; 
   d="scan'208";a="223117706"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 15 Feb 2023 09:34:35 +0800
IronPort-SDR: GFCLCPiVnwTFGS8rT3HDdhm3XjF9Oiuy8UeUHRSaXZ5crRvZqfdgz9vidUTlu7MYiBZFGYJ3sG
 ukWMRg3duxWI35IjYrfLsXeAO0x0bVfueEBVQLpvRik6V10mwJAOx922rdUZJoMEtJ09WlWsMM
 Q5xm9D3G26DX8NxX63KJY2PuBqLLQQ69N2uRPhj7BL1UMByrkQsQ00m751/OLVmzV6K2+d0gYZ
 Ibycm5EC7T8RnhlFlbeg2xvQt7QCvTL7BR2SAldkiIW2VOZTkMZ5GrHZh59jO3xD1avqw9Xojq
 TNI=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Feb 2023 16:45:57 -0800
IronPort-SDR: /NkUlZ599AEbTOl0YqZMJ4f2CgdMlg2nOmtCcFHFFUhe8hbEO4EEm+vc4sMGIMzStW3ZX1SHPt
 KA7WX6v5E0EcTGUh2NzOj13J7jKWLz854xHR7b4AW50bLs+i9P/7CPbC9Qn6VR8vaO9u0ePTQD
 cCXX/UmJ2K5Jn3OfiwaPGJA7KmpB8y7Yom5JzcsvuDR0nc4AEd9bIIYOjHel87awnN1wOvxAuD
 JDqmrBiQL0Oyce3UPW9XaZk8L7g6RNz24kdpBHZTCYfNl7ENkvu/6yQIx7YjWdvGCNdPJhptRg
 I+g=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Feb 2023 17:34:35 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PGgbt5K27z1RWxq
	for <linux-rockchip@lists.infradead.org>; Tue, 14 Feb 2023 17:34:34 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
	reason="pass (just generated, assumed good)"
	header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
	opensource.wdc.com; h=content-transfer-encoding:content-type
	:in-reply-to:organization:from:references:to:content-language
	:subject:user-agent:mime-version:date:message-id; s=dkim; t=
	1676424873; x=1679016874; bh=924sFE1g2peLp9NKsKxgM5DmB2kwoPIL6ZP
	hHqjTmPs=; b=ijswNdQtEpnSj3rZ7vW8jwqI2i0ajTwkqJ8RRkCo5E3CBgPoEwu
	44cpXVamtM19QJuNsgxKE4HyUh5WdOTFTVQHjGU29E5xifdfLdPciyzMQ6ijGDt7
	/VgzVJc+fKdETixifpMU2X7R7MhrJw74aTHjwtyMvPs9LYWtW/Ay84ROojq34DDl
	rCbkDXPwbvGfx9G40KYK4/IE5TCuvACfppMJns8SbnZv6qQZ/xjJTiVaTyUqplET
	9zpCYpaEShHr5D+zvqXhvujcAGurgcZz5fV/Slcyjgu5H+nalFrHki9Udmq4nXUY
	82Ct92oTgvFj7jP9EXnfuL9/+a9LudX+cOw==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
	by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id PegvZj5J-poW for <linux-rockchip@lists.infradead.org>;
	Tue, 14 Feb 2023 17:34:33 -0800 (PST)
Received: from [10.225.163.116] (unknown [10.225.163.116])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PGgbn6kStz1RvLy;
	Tue, 14 Feb 2023 17:34:29 -0800 (PST)
Message-ID: <0fa5cef4-7096-7f59-422a-98011d01437c@opensource.wdc.com>
Date: Wed, 15 Feb 2023 10:34:28 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 8/9] PCI: rockchip: Use u32 variable to access 32-bit
 registers
Content-Language: en-US
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>, alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com, rick.wertenbroek@heig-vd.ch, stable@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Jani Nikula <jani.nikula@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mikko Kovanen <mikko.kovanen@aavamobile.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
 <20230214140858.1133292-9-rick.wertenbroek@gmail.com>
From: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20230214140858.1133292-9-rick.wertenbroek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230214_173443_684519_FE3232F3 
X-CRM114-Status: GOOD (  23.51  )
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

On 2/14/23 23:08, Rick Wertenbroek wrote:
> Previously u16 variables were used to access 32-bit registers, this
> resulted in not all of the data being read from the registers. Also
> the left shift of more than 16-bits would result in moving data out
> of the variable. Use u32 variables to access 32-bit registers
> 
> Fixes: cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
> Cc: stable@vger.kernel.org
> Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
> ---
>  drivers/pci/controller/pcie-rockchip-ep.c | 10 +++++-----
>  drivers/pci/controller/pcie-rockchip.h    |  1 +
>  2 files changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
> index ca5b363ba..b7865a94e 100644
> --- a/drivers/pci/controller/pcie-rockchip-ep.c
> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> @@ -292,15 +292,15 @@ static int rockchip_pcie_ep_set_msi(struct pci_epc *epc, u8 fn, u8 vfn,
>  {
>  	struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
>  	struct rockchip_pcie *rockchip = &ep->rockchip;
> -	u16 flags;
> +	u32 flags;
>  
>  	flags = rockchip_pcie_read(rockchip,
>  				   ROCKCHIP_PCIE_EP_FUNC_BASE(fn) +
>  				   ROCKCHIP_PCIE_EP_MSI_CTRL_REG);
>  	flags &= ~ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_MASK;
>  	flags |=
> -	   ((multi_msg_cap << 1) <<  ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_OFFSET) |
> -	   PCI_MSI_FLAGS_64BIT;
> +	   (multi_msg_cap << ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_OFFSET) |

ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_OFFSET is 17 and multi_msg_cap is a u8...
Not nice.

Locally, I added the local variable:

u32 mmc = multi_msg_cap;

And use mmc instead of multi_msg_cap to avoid issues. Also,

> +	   (PCI_MSI_FLAGS_64BIT << ROCKCHIP_PCIE_EP_MSI_FLAGS_OFFSET);
>  	flags &= ~ROCKCHIP_PCIE_EP_MSI_CTRL_MASK_MSI_CAP;
>  	rockchip_pcie_write(rockchip, flags,
>  			    ROCKCHIP_PCIE_EP_FUNC_BASE(fn) +
> @@ -312,7 +312,7 @@ static int rockchip_pcie_ep_get_msi(struct pci_epc *epc, u8 fn, u8 vfn)
>  {
>  	struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
>  	struct rockchip_pcie *rockchip = &ep->rockchip;
> -	u16 flags;
> +	u32 flags;
>  
>  	flags = rockchip_pcie_read(rockchip,
>  				   ROCKCHIP_PCIE_EP_FUNC_BASE(fn) +
> @@ -374,7 +374,7 @@ static int rockchip_pcie_ep_send_msi_irq(struct rockchip_pcie_ep *ep, u8 fn,
>  					 u8 interrupt_num)
>  {
>  	struct rockchip_pcie *rockchip = &ep->rockchip;
> -	u16 flags, mme, data, data_mask;
> +	u32 flags, mme, data, data_mask;
>  	u8 msi_count;
>  	u64 pci_addr, pci_addr_mask = 0xff;
>  	u32 r;
> diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
> index e90c2a2b8..11dbf53cd 100644
> --- a/drivers/pci/controller/pcie-rockchip.h
> +++ b/drivers/pci/controller/pcie-rockchip.h
> @@ -227,6 +227,7 @@
>  #define ROCKCHIP_PCIE_EP_CMD_STATUS			0x4
>  #define   ROCKCHIP_PCIE_EP_CMD_STATUS_IS		BIT(19)
>  #define ROCKCHIP_PCIE_EP_MSI_CTRL_REG			0x90
> +#define   ROCKCHIP_PCIE_EP_MSI_FLAGS_OFFSET			16

You are not using this macro anywhere. The name is also not very
descriptive. Better have it as:

#define   ROCKCHIP_PCIE_EP_MSI_CTRL_ME		BIT(16)

to match the TRM name and be clear that the bit indicates if MSI is
enabled or not.

>  #define   ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_OFFSET		17
>  #define   ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_MASK		GENMASK(19, 17)
>  #define   ROCKCHIP_PCIE_EP_MSI_CTRL_MME_OFFSET		20

-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
