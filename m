Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03ED6C4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Apr 2024 21:26:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=Gn9lt6C3u7xx25yPC/jtcikDl3WPIX7lABHG0dvly7o=; b=KXwnqx1JuupgSE
	m6dxLZrqL2dKrRygvsCjctgDj9++NfrKSSDiXEN6eNjIg4MyBPyq9hndmbceQUSF4oFhSfcogripB
	L4VRMhBEANnty7ZkSdmODURHZHGbAlcSraXRbbVZPUu6pkubk9aPMWkBJULjtu11gGNJ+/tHFv0UG
	P+3rNho330DSUVYFbmqrQoyd9wVO0gwVzCemRAfmVtS+HW1hSBRjpx2wTIkqSaz2VHAzQVHJuNHUz
	PdP6q1FwhlYDxiJoTuLu45b5g2NMoOYUrBnGxtGRiSjZB1fOm+hIuVpRXtvNCFGWTZVoSSycmZiPV
	olAZ/Vw2BaTTjfDqHNyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvOPg-00000001N8S-1XDI;
	Fri, 12 Apr 2024 21:26:24 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvOPd-00000001N7b-07uX;
	Fri, 12 Apr 2024 21:26:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2729E61B5F;
	Fri, 12 Apr 2024 21:26:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 535DEC2BD10;
	Fri, 12 Apr 2024 21:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712957179;
	bh=6TxUy+yg2L9ECoMhj9r75VOWYOG0ZXDC5XiozrxgnMU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=E9hLWH926Sd6eTq/YruMgxgY6SgqRJK1OeCAP0V8Y2dYjbUju31DnLqpmwK3Te8qP
	 BvFpvgexdIvsz4QMf1d3KYxNMtafq0PYcN3AT2eyKFLvuOsSCANSL+lVnAc9NdGzVp
	 EvwGfZM7fIJt4SyHQMpGT1eZBKnB6GpXbpsMP6EctZZFO91DLs4fes1x8/HGI/oL1w
	 2zWQWcyzrn4/pN+hoRx/cV8B7xxiH5LtOAcfEu0aymBLKkQIoS51FuXK4dGXGEctJY
	 JkvCtuZUqtxxzvzPS+b/jLK7tf0a2C+Kw8aFksrGCj5NC6q/GXGv8wJ5JnntadsrIy
	 LoepQ2VBs59UA==
Date: Fri, 12 Apr 2024 16:26:17 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 1/2] PCI: rockchip-host: Fix
 rockchip_pcie_host_init_port() PERST# handling
Message-ID: <20240412212617.GA18670@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240412023721.1049303-2-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_142621_223430_60A7A489 
X-CRM114-Status: GOOD (  16.21  )
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

On Fri, Apr 12, 2024 at 11:37:20AM +0900, Damien Le Moal wrote:
> The PCIe specifications (PCI Express Electromechanical Specification rev
> 2.0, section 2.6.2) mandate that the PERST# signal must remain asserted

"PCIe CEM r5.1, sec 2.9.2"

> for at least 100 usec (Tperst-clk) after the PCIe reference clock
> becomes stable (if a reference clock is supplied), and for at least
> 100 msec after the power is stable (Tpvperl, defined by the macro
> PCIE_T_PVPERL_MS).
> 
> Modify rockchip_pcie_host_init_port() to satisfy these constraints by
> adding a sleep period before bringing back PESRT# signal to high using

s/PESRT#/PERST#/
s/bringing back PERST# to high/deasserting PERST#/

Whoever applies this can probably fix these up for you.

> the ep_gpio GPIO. Since Tperst-clk is the shorter wait time, add an
> msleep() call for the longer PCIE_T_PVPERL_MS milliseconds to handle
> both timing requirements.
> 
> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
> ---
>  drivers/pci/controller/pcie-rockchip-host.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
> index 300b9dc85ecc..fc868251e570 100644
> --- a/drivers/pci/controller/pcie-rockchip-host.c
> +++ b/drivers/pci/controller/pcie-rockchip-host.c
> @@ -322,6 +322,7 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
>  	rockchip_pcie_write(rockchip, PCIE_CLIENT_LINK_TRAIN_ENABLE,
>  			    PCIE_CLIENT_CONFIG);
>  
> +	msleep(PCIE_T_PVPERL_MS);

Looks good, thanks!

>  	gpiod_set_value_cansleep(rockchip->ep_gpio, 1);
>  
>  	/* 500ms timeout value should be enough for Gen1/2 training */
> -- 
> 2.44.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
