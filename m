Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACC58EB64DC
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Jul 2023 09:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=peLMnl/Q55YbdcC8BVqrWqnbf50t4UhiGd+olcUToK4=; b=cMPd33deDGsJIn
	i09DlWgwTrFetKumPmDdV5H/L3FONrgZAszS3es7WQAWJZp7X76j5k9PhTOm+DAjm7rALxF0WNHIO
	YLW8NiypcGDzuHHqamtgMIRyGZyrAUMpdKEI/XCS6LVagRTbqyb82iAvcAnTVSXt1AiljhihOPGo/
	kEu9bb8qeogFSnEwxI+j4/g37Pn2EWo3ROgODCZAhnvW+KiP4UDhH1qVt9E/prqsGEMDx6cQXA91q
	7mnH4S7pNHr+mcXkNwnBvNkbQ6zMI1b82m27v2565OBdHpqBLe8jb5Kcs7a3/67GwGVMt/hDoNwl7
	AvXkrMnLufUHEJvCD88g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGFZl-009sOZ-0B;
	Mon, 03 Jul 2023 09:10:29 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGFZh-009sN9-2K;
	Mon, 03 Jul 2023 09:10:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8B36160E88;
	Mon,  3 Jul 2023 09:10:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 803E7C433C8;
	Mon,  3 Jul 2023 09:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688375424;
	bh=dmZviKKLtRIO7Cf3ns+OALgiuOuzMG2UrVkETB/AT1c=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=EFtvaIZaLiuPBlbeeVBIeXguD2PXeAZIXK0yG8C8tQ2qJajT9CfUhpJbopnVm5NiC
	 s0gX1d4tvTyZwgVoGtr/8FID1ZNEHXfAku4/khdu3yAg59ymVPeo0u1+oRcCY2L4V4
	 iV7kzIf2nvTLL709du7uGrG+OY4WopinDHuuo42QwJJ3weQTc28fTEVbpaK1YcsiiP
	 mJi4Yx5vlLr3QAdydnupf63Rzh3873ehn8j9j4NkZgD817aD5OPX2uOCKUJeIlx5j8
	 GPvS4tRn4GWKUHVxVJrBfOfjO2/EtTZwEf9vXttvRels+S+XRybNh87V30dtKI8Mba
	 hdQBF+q0HPk2Q==
Message-ID: <64367911-21d1-d688-0994-4fd557b0a307@kernel.org>
Date: Mon, 3 Jul 2023 18:10:21 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2] PCI: rockchip: Use 64-bit mask on MSI 64-bit PCI
 address
Content-Language: en-US
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>, alberto.dassatti@heig-vd.ch
Cc: Dan Carpenter <dan.carpenter@linaro.org>, stable@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20230703085845.2052008-1-rick.wertenbroek@gmail.com>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20230703085845.2052008-1-rick.wertenbroek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230703_021025_846112_4F14554E 
X-CRM114-Status: GOOD (  16.63  )
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

On 7/3/23 17:58, Rick Wertenbroek wrote:
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

Looks good to me.

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>

> ---
>  drivers/pci/controller/pcie-rockchip.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
> index fe0333778fd9..627d08b34827 100644
> --- a/drivers/pci/controller/pcie-rockchip.h
> +++ b/drivers/pci/controller/pcie-rockchip.h
> @@ -158,7 +158,9 @@
>  #define PCIE_RC_CONFIG_THP_CAP		(PCIE_RC_CONFIG_BASE + 0x274)
>  #define   PCIE_RC_CONFIG_THP_CAP_NEXT_MASK	GENMASK(31, 20)
>  
> -#define PCIE_ADDR_MASK			0xffffff00
> +#define MAX_AXI_IB_ROOTPORT_REGION_NUM		3
> +#define MIN_AXI_ADDR_BITS_PASSED		8
> +#define PCIE_ADDR_MASK			GENMASK(63, MIN_AXI_ADDR_BITS_PASSED)
>  #define PCIE_CORE_AXI_CONF_BASE		0xc00000
>  #define PCIE_CORE_OB_REGION_ADDR0	(PCIE_CORE_AXI_CONF_BASE + 0x0)
>  #define   PCIE_CORE_OB_REGION_ADDR0_NUM_BITS	0x3f
> @@ -185,8 +187,6 @@
>  #define AXI_WRAPPER_TYPE1_CFG			0xb
>  #define AXI_WRAPPER_NOR_MSG			0xc
>  
> -#define MAX_AXI_IB_ROOTPORT_REGION_NUM		3
> -#define MIN_AXI_ADDR_BITS_PASSED		8
>  #define PCIE_RC_SEND_PME_OFF			0x11960
>  #define ROCKCHIP_VENDOR_ID			0x1d87
>  #define PCIE_LINK_IS_L2(x) \

-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
