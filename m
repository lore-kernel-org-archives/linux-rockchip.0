Return-Path: <SRS0=VpfD=G4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1FFC433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jan 2021 05:48:55 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2B89D22C9F
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jan 2021 05:48:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2B89D22C9F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LQXKrfc0fhsC+dX6OEgiqeHMCnx+6594gxv4a1niaIQ=; b=wiRqrDJl63m9Qu0cTNxuqVs4p
	0NG+X98S0Xujdc7usd65ID6q1kluVYRQ8zuMSbM+ZvgsnSSTGgMRdU8KFZwYamJSUYCvO7PopIFF0
	iiVfQkfIB6xx08c3fcouoCM1RitmhmgU33Fo/A7UbevGOuYIQAqThujlFY/RRUdU7K1iOgTEA5KTp
	IaE9FXOILsZYy+/g7ux8YsIFFTWq7lx+Pp25M1PZKP+jQ9Rr03Uj02M8+aMGUYwN35hQnIH47y1hg
	HBgJbv1URMD4Ysb/mANwDbpoMfdJ6ewctXpPzhLl85Y7VCHB16RBaOLefXXqMjRooHaZvJ8VV/arN
	su2x4IRpg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l3uk1-0007OW-W7; Mon, 25 Jan 2021 05:48:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l3ujy-0007OB-FC
 for linux-rockchip@lists.infradead.org; Mon, 25 Jan 2021 05:48:44 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id C3286229C5;
 Mon, 25 Jan 2021 05:48:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611553720;
 bh=WqX9z3Tyf51Y7O4Bji4gtz4U4/COk472fTyBc1SfjnE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EjSgU2aBv0w53xT6zWv59X/rSO/b2sq80H1mBu6ELwEEBPeiq319gpar4ZApCBVHG
 +ggCDUOJ4iJun6T6wtehl4rHQ0hRKGH1h99cHN7YHlLgleLgHaOjUlEJzrYfpc3t2Q
 XVELFCmSNSA53wxtoZlna/LGurFYfTPTGX3PVWoH0snsCrnDu5gqGTPgdcHN42+xnZ
 PAQ/Cg8bna6FGavfqqFoV4YCSvi5W/6c5s8PAFrtogLXMjEQbMIb5QlOApXQYz1Kh3
 n8gIB5up1G/zd7Canu1ohM82ttOmC+xFiB+KCxDi/y1LCysU1osjIrJNzsXT99CuZY
 F8I0Kiav157qg==
Date: Mon, 25 Jan 2021 07:48:36 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Simon Xue <xxm@rock-chips.com>
Subject: Re: [PATCH v3 2/2] PCI: rockchip: add DesignWare based PCIe controller
Message-ID: <20210125054836.GB579511@unreal>
References: <20210125024824.634583-1-xxm@rock-chips.com>
 <20210125024927.634634-1-xxm@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210125024927.634634-1-xxm@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210125_004842_639901_0474C627 
X-CRM114-Status: GOOD (  21.83  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 Johan Jonker <jbx6244@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Jan 25, 2021 at 10:49:27AM +0800, Simon Xue wrote:
> pcie-dw-rockchip is based on DWC IP. But pcie-rockchip-host
> is Rockchip designed IP which is only used for RK3399. So all the following
> non-RK3399 SoCs should use this driver.
>
> Signed-off-by: Simon Xue <xxm@rock-chips.com>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
>  drivers/pci/controller/dwc/Kconfig            |   9 +
>  drivers/pci/controller/dwc/Makefile           |   1 +
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 286 ++++++++++++++++++
>  3 files changed, 296 insertions(+)
>  create mode 100644 drivers/pci/controller/dwc/pcie-dw-rockchip.c
>
> diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
> index 22c5529e9a65..aee408fe9283 100644
> --- a/drivers/pci/controller/dwc/Kconfig
> +++ b/drivers/pci/controller/dwc/Kconfig
> @@ -214,6 +214,15 @@ config PCIE_ARTPEC6_EP
>  	  Enables support for the PCIe controller in the ARTPEC-6 SoC to work in
>  	  endpoint mode. This uses the DesignWare core.
>
> +config PCIE_ROCKCHIP_DW_HOST
> +	bool "Rockchip DesignWare PCIe controller"
> +	select PCIE_DW
> +	select PCIE_DW_HOST
> +	depends on ARCH_ROCKCHIP || COMPILE_TEST
> +	depends on OF
> +	help
> +	  Enables support for the DW PCIe controller in the Rockchip SoC.
> +
>  config PCIE_INTEL_GW
>  	bool "Intel Gateway PCIe host controller support"
>  	depends on OF && (X86 || COMPILE_TEST)
> diff --git a/drivers/pci/controller/dwc/Makefile b/drivers/pci/controller/dwc/Makefile
> index a751553fa0db..30eef8e9ee8a 100644
> --- a/drivers/pci/controller/dwc/Makefile
> +++ b/drivers/pci/controller/dwc/Makefile
> @@ -13,6 +13,7 @@ obj-$(CONFIG_PCI_LAYERSCAPE_EP) += pci-layerscape-ep.o
>  obj-$(CONFIG_PCIE_QCOM) += pcie-qcom.o
>  obj-$(CONFIG_PCIE_ARMADA_8K) += pcie-armada8k.o
>  obj-$(CONFIG_PCIE_ARTPEC6) += pcie-artpec6.o
> +obj-$(CONFIG_PCIE_ROCKCHIP_DW_HOST) += pcie-dw-rockchip.o
>  obj-$(CONFIG_PCIE_INTEL_GW) += pcie-intel-gw.o
>  obj-$(CONFIG_PCIE_KIRIN) += pcie-kirin.o
>  obj-$(CONFIG_PCIE_HISI_STB) += pcie-histb.o
> diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> new file mode 100644
> index 000000000000..07f6d1cd5853
> --- /dev/null
> +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> @@ -0,0 +1,286 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * PCIe host controller driver for Rockchip SoCs
> + *
> + * Copyright (C) 2021 Rockchip Electronics Co., Ltd.
> + *		http://www.rock-chips.com
> + *
> + * Author: Simon Xue <xxm@rock-chips.com>
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/module.h>
> +#include <linux/of_device.h>
> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +#include <linux/reset.h>
> +
> +#include "pcie-designware.h"
> +
> +/*
> + * The upper 16 bits of PCIE_CLIENT_CONFIG are a write
> + * mask for the lower 16 bits.  This allows atomic updates
> + * of the register without locking.
> + */

This is correct only for the variables that naturally aligned, I imagine
that this is the case here and in the Linux, but better do not write comments
in the code that are not accurate.

Thanks

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
