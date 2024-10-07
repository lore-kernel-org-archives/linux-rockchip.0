Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EDE8CFB440
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 10:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h0GcF99xJc+UO8MnyxOQvSCF3LxSt7x/XdAJgrT04FQ=; b=KbMPb0VNMEiUb9
	zIoNkx3HRKKampZwdHcKxux5BWzOqPaCGlD8Vk4dgfgjTCYqOXFOOfPfLsQs8tvst5REzNhbfnPfO
	LQFOBsLFmknjwMw+QFxD8o67ao2Uojrh4cLS3NWeES8RsfYok/57BFuZ8ph77bnulsGKcDcMBERvG
	73JDq6Px/IkeEt13VZoLYr1ycc1iOUZ4Q5LZy0SiFpvyl6nIPQiiU+W0jlhYCCSKQ6S4YnvAtqBD5
	JB9YD0qMpdDcTq895U2jv24t9vWwxLW5W3HOC+wvg4O4iIbavtkVdjTESYKOrTps0hzK5MHGyKIv/
	xlzUeyAPuyI8RoYXdO0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxkZQ-00000001zNA-254Z;
	Mon, 07 Oct 2024 10:02:28 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxkZN-00000001zKx-1iNj
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Oct 2024 10:02:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 620765C5B9B;
	Mon,  7 Oct 2024 10:02:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02A76C4CECD;
	Mon,  7 Oct 2024 10:02:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728295344;
	bh=gC8kwKS4o4dn68X8nIgu0t96ZK6t8rNnQHjcCJTC4vk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ciazen3US+Hkutv+NLfNYb0iyvcKICwKcuw1Z3QvDhL7d0pkJ6BTWLDCDP9UjVRr/
	 R0CfmKOdjWNqskRkxybJLmI59yPGg76XVDMaZDAW+bZ3rVNj6CwQInUbflJbfjtDmA
	 9Nn2PyxayDcyJqWYsQjg2lU9NN8ROTvefXs1Ye8gJ/WrMxpcRJzZtv5rOVG6qvcTZm
	 +XKl7sLScmzNWSfCPiKF090mJKZheUnGFP32YKKc/ReefYTfgZySZLFJIsikj1slYN
	 5ntWTyJDA5Imt7NU4cD/MH1NTf8WCtx2QxN2ogOaFzX0Thx2HTyEC1+YG02DirxURk
	 7wIktFyWtEvEw==
Date: Mon, 7 Oct 2024 12:02:18 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>
Subject: Re: [PATCH v3 00/12]
Message-ID: <ZwOxqvzBG4i_UGKc@ryzen>
References: <20241007041218.157516-1-dlemoal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241007041218.157516-1-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_030225_565307_B8853C3D 
X-CRM114-Status: GOOD (  20.59  )
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

On Mon, Oct 07, 2024 at 01:12:06PM +0900, Damien Le Moal wrote:
> This patch series is the second part of the former version 2 of the
> patch series "Improve PCI memory mapping API". This second part is split
> out as it deals solely with the rockchip/rk3399 PCI endpoint controller
> driver.

Since this series depends on:
[1] https://lore.kernel.org/linux-pci/20241007040319.157412-1-dlemoal@kernel.org/

I think that you should have added a link to that series in this cover letter,
and more clearly state that this series depends on [1].

(Right now, someone might think that this series could be applied standalone.)


Kind regards,
Niklas


> 
> This series is organized as follows:
>  - Patch 1 fixes the rockchip ATU programming
>  - Patch 2, 3 and 4 introduce small code improvments
>  - Patch 5 implements the .map_align() operation to make the rk3399
>    endpoint controller driver fully functional
>  - Patch 6, 7 and 8 refactor the driver code to make it more readable
>  - Patch 9 introduces the .stop() endpoint controller operation to
>    correctly disable the endpopint controller after use
>  - Patch 10 improves link training
>  - Patch 11 and 12 implement handling of the #PERST signal
> 
> Changes from v2:
>  - Split the patch series
>  - Corrected patch 11 to add the missing "maxItem"
> 
> Changes from v1:
>  - Changed pci_epc_check_func() to pci_epc_function_is_valid() in patch
>    1.
>  - Removed patch "PCI: endpoint: Improve pci_epc_mem_alloc_addr()"
>    (former patch 2 of v1)
>  - Various typos cleanups all over. Also fixed some blank space
>    indentation.
>  - Added review tags
> 
> Damien Le Moal (11):
>   PCI: rockchip-ep: Fix address translation unit programming
>   PCI: rockchip-ep: Use a macro to define EP controller .align feature
>   PCI: rockchip-ep: Improve rockchip_pcie_ep_unmap_addr()
>   PCI: rockchip-ep: Improve rockchip_pcie_ep_map_addr()
>   PCI: rockchip-ep: Implement the .map_align() controller operation
>   PCI: rockchip-ep: Refactor rockchip_pcie_ep_probe() memory allocations
>   PCI: rockchip-ep: Refactor rockchip_pcie_ep_probe() MSI-X hiding
>   PCI: rockchip-ep: Refactor endpoint link training enable
>   PCI: rockship-ep: Introduce rockchip_pcie_ep_stop()
>   PCI: rockchip-ep: Improve link training
>   PCI: rockchip-ep: Handle PERST# signal in endpoint mode
> 
> Wilfred Mallawa (1):
>   dt-bindings: pci: rockchip,rk3399-pcie-ep: Add ep-gpios property
> 
>  .../bindings/pci/rockchip,rk3399-pcie-ep.yaml |   4 +
>  drivers/pci/controller/pcie-rockchip-ep.c     | 392 +++++++++++++++---
>  drivers/pci/controller/pcie-rockchip.c        |  17 +-
>  drivers/pci/controller/pcie-rockchip.h        |  22 +
>  4 files changed, 358 insertions(+), 77 deletions(-)
> 
> -- 
> 2.46.2
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
