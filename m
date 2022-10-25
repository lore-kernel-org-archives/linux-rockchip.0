Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 583F3FA373E
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Oct 2022 20:04:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PrrU/ggaxfs1SiowXeonl9uZVkQtQ9uy3k07rtBMVUI=; b=ZoZpc3g70zL5AN
	/BAtXyfCtyTb9WZu9/WrX7M3IB8JpgEeSpRbsdeArJR/yN+/hUzA6ZgUEADTr5x0/MdbGPWpERzRa
	EMG+M2segaDfCW3xxL8QKb0dZman2Q/t1x96DOsqLS7RzR4josQlsBZ0KmfASHYnEZHoo9xqhluuh
	2oowW1fsikvMIYgXiv28P0rcPSymD+aOSNoPuJlBz+281KuXbFP6s2mZkg+o6kdM3l6QqA3g9AUbv
	eG8IbrpzPwEm3IDw3KRh3WFCggr/bIcFPKqL40XzeC5I7babp2CYY5+rsUc1VQZ+tIdQIdktPCqz4
	VNmv4oTbwBCCklTupb/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onQ9m-0071ws-6L; Tue, 25 Oct 2022 20:04:14 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onQ9Z-0071uY-T7; Tue, 25 Oct 2022 20:04:03 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1F69C61B05;
	Tue, 25 Oct 2022 20:04:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 759C5C433C1;
	Tue, 25 Oct 2022 20:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666728240;
	bh=ydeW7eA2NXW+5grO0NpeP3U1RnuzRINX/JYx6xdDNJk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c/y6sBxBC/QTm/bKfHGdyAV72PYZcPBZjPPeJPC7JSSYsRIjZCNo2ukddtCYzfZml
	 RIvad+xpLP5OBp9B3fYDudUrVHUKGB++0Oa2cbVaDxjmuyPKd/YD9uPpL/4CQ8c5hz
	 LtM8I5yiXL9LiL/oSCQ0CR8OHRzsYuUaStw0syC6FreC6/LWMqdkVKbR1ZCObTolcF
	 n2IGOIXEUcWyDh1ACd3NiOdJvEhFLvUB2BTUjOwCOlzVW36lUw9G8/sCj0dc1/Khj9
	 RgRm3swgc8EeOs/68mD/Gvai5JagAmhmgd2Yk7c0TT/FcLAr9SCnbaprwxj5LmB7hA
	 hj02jgP9H8LJw==
Date: Tue, 25 Oct 2022 21:03:51 +0100
From: Conor Dooley <conor@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Tom Joseph <tjoseph@cadence.com>, Rob Herring <robh@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Minghuan Lian <minghuan.Lian@nxp.com>,
	Mingkai Hu <mingkai.hu@nxp.com>, Roy Zang <roy.zang@nxp.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Toan Le <toan@os.amperecomputing.com>,
	Joyce Ooi <joyce.ooi@intel.com>, Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Bharat Kumar Gogada <bharat.kumar.gogada@amd.com>,
	Michal Simek <michal.simek@amd.com>,
	bcm-kernel-feedback-list@broadcom.com, linux-omap@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
	linux-tegra@vger.kernel.org, linux-riscv@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Bjorn Helgaas <bhelgaas@google.com>
Subject: Re: [PATCH v2 0/4] PCI: Remove unnecessary <linux/of_irq.h> includes
Message-ID: <Y1hBJ+b4xmBRtrvF@spud>
References: <20221025185147.665365-1-helgaas@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221025185147.665365-1-helgaas@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221025_130401_998421_DB5C380A 
X-CRM114-Status: GOOD (  13.37  )
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

On Tue, Oct 25, 2022 at 01:51:43PM -0500, Bjorn Helgaas wrote:
> From: Bjorn Helgaas <bhelgaas@google.com>
> 
> Many host controller drivers #include <linux/of_irq.h> even though they
> don't need it.  Remove the unnecessary #includes.
> 
> v1: https://lore.kernel.org/all/20221019195452.37606-1-helgaas@kernel.org/
> 
> Changes from v1 to v2:
>   - Include <linux/irqdomain.h> explicitly in altera-msi and microchip,
>     which don't need <linux/of_irq.h> itself, but relied on it to include
>     <linux/irqdomain.h>
>   - Include <linux/irqdomain.h> explicitly in mvebu, which needs both it
>     and <linux/of_irq.h>
> 
> Bjorn Helgaas (4):
>   PCI: altera-msi: Include <linux/irqdomain.h> explicitly
>   PCI: microchip: Include <linux/irqdomain.h> explicitly
>   PCI: mvebu: Include <linux/irqdomain.h> explicitly
>   PCI: Remove unnecessary <linux/of_irq.h> includes

>  drivers/pci/controller/pcie-microchip-host.c | 2 +-

Hey Bjorn, actually did the build this time rather than visually
inspecting... For the microchip bits:
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Thanks!


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
