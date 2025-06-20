Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FACAC71155
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Jun 2025 12:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Tv7gwihWuCglVVzhLnu78xbPH0lPSvXz9H6kaHS8RM=; b=HDa3mm9J656Rye
	CxGBX2ebYa8sLXPUrmPlpaCIf/uK8qHnB28nle+ho1CkEHiv+m3p+g2qgZpdcrTfqyQmkMJziHJo+
	2K7CHDEctrCjzTmUaEy4nywRGZeSuWIBG0h7CYrbSTrWuIM/HtYsd3+k85qdBcZJdx5oGiAJzRN30
	gu05INfhoz+uk7kiZjLGWjWchRsSDOXd4ZUGhW4kr97Kgxzjh+Cu+fZcZiivpfZCU+MZe3QEyOzIY
	gwg5HFLSldbKt6HyoT4c+4tVKOfaO7s2Wi6xukOU+mFiHG3UGITdiroDqRLTDjxYYYu0emu3JuZMS
	0RCD93zj19SyB/qBp3Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSbK2-0000000FcnJ-0uMw;
	Fri, 20 Jun 2025 12:58:22 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSavm-0000000Fa45-1Nyy;
	Fri, 20 Jun 2025 12:33:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8096116F2;
	Fri, 20 Jun 2025 05:32:57 -0700 (PDT)
Received: from [10.57.27.59] (unknown [10.57.27.59])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F05803F58B;
	Fri, 20 Jun 2025 05:33:13 -0700 (PDT)
Message-ID: <562662d4-69ca-4d0e-ad0d-fd8cece417e0@arm.com>
Date: Fri, 20 Jun 2025 13:33:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v5 2/4] PCI: rockchip: Set Target Link Speed before
 retraining
To: Geraldo Nascimento <geraldogabriel@gmail.com>,
 linux-rockchip@lists.infradead.org
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rick wertenbroek <rick.wertenbroek@gmail.com>,
 linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <cover.1749833986.git.geraldogabriel@gmail.com>
 <1966f8ddc4a81426b4f1f48c22bea9b4a6e6297c.1749833987.git.geraldogabriel@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <1966f8ddc4a81426b4f1f48c22bea9b4a6e6297c.1749833987.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_053318_422130_C9DAC820 
X-CRM114-Status: GOOD (  12.43  )
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

On 2025-06-13 6:03 pm, Geraldo Nascimento wrote:
> Current code may fail Gen2 retraining if Target Link Speed
> is set to 2.5 GT/s in Link Control and Status Register 2.
> Set it to 5.0 GT/s accordingly.

I have max-link-speed overridden to 2 in my local DTB, and indeed this 
seems to make my NVMe report a 5.0 GT/s link where previously it was 
still downgrading to 2.5, so:

Tested-by: Robin Murphy <robin.murphy@arm.com>

> Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
> ---
>   drivers/pci/controller/pcie-rockchip-host.c | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
> index 8489d51e01ca..467e3fc377f7 100644
> --- a/drivers/pci/controller/pcie-rockchip-host.c
> +++ b/drivers/pci/controller/pcie-rockchip-host.c
> @@ -341,6 +341,10 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
>   		 * Enable retrain for gen2. This should be configured only after
>   		 * gen1 finished.
>   		 */
> +		status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL2);
> +		status &= ~PCI_EXP_LNKCTL2_TLS;
> +		status |= PCI_EXP_LNKCTL2_TLS_5_0GT;
> +		rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL2);
>   		rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL2);
>   		status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL);
>   		status |= PCI_EXP_LNKCTL_RL;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
