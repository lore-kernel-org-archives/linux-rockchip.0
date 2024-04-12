Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A8DFC4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Apr 2024 21:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=aa1Arg/tdwmKiW1HWHZv9OmBe9DbFR4Eqmg5BsepQ1g=; b=4aIN84EgxUjTAq
	cgRFYpgdABVPgqm3IvW4CIMykNcMUu/fKKQCm17kGxW9ZBxzqcExIuy2xmaDiTnP5Khvs29ebaze1
	0SXk+6gubgyCsiFEzbTbkP/hNT5HPfmyAT9waYioahVMHq7sUG6mafmzPjW2YdXCOoNVCKEP7Licb
	vNFwpQ6HrSABMrPHL9vBubd8+GczD4zaJNAknJx249CuzLqrZzTiRpQbZkv7hkCsmGzm1dmYm7Grt
	boBNVXk1sTD1dc3b3BWQgqYq9M/mdyjL524kqkyCsnlRyrB4e8bxGMcoaEg5YdqxYXSs3Sbwb/Fyy
	xVmuHQlExGK6BhhjG8Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvOSi-00000001O4e-0diq;
	Fri, 12 Apr 2024 21:29:32 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvOSb-00000001O0m-17CQ;
	Fri, 12 Apr 2024 21:29:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2892661BBD;
	Fri, 12 Apr 2024 21:29:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B569C113CC;
	Fri, 12 Apr 2024 21:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712957363;
	bh=5XnegERMQKroUQ2lJJ9YEwEr8cwIYfsZ4h8Q9CAPgn0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=R47GTcAFmPX7i/WqLJ6onAHbVQ95/Z9AmnxYk3Ngy85X1zUqPA8bHHOian+lyqUiD
	 SuY2N9BPk3SbCaJr6gQZZ6NndJPO9d0vulqjxpaah4LIURZ19zx0uDPwslcr8ffkLM
	 JxusHgEyswQWKwQ0+Aar7HSnLFyKiFYZ3093p6OwEGThP46XJa4ju1lUxL18V8Mplz
	 mAXtoVOTMjHAbgJj5U3kssR6HwVuEKi3T7mqBIectnAzSIcx1dTVwMwtc5HfwNKs44
	 iE2qCH00niD8QzCVLJYu2a6qeQnzvnQ+/3kvGN/Jduh6+6grGQMbdMkjQuIoS4ySW3
	 iXQgUiT1b83OA==
Date: Fri, 12 Apr 2024 16:29:16 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 2/2] PCI: rockchip-host: Wait 100ms after reset before
 starting configuration
Message-ID: <20240412212916.GA18789@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240412023721.1049303-3-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_142925_599486_3A09D488 
X-CRM114-Status: GOOD (  19.83  )
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

On Fri, Apr 12, 2024 at 11:37:21AM +0900, Damien Le Moal wrote:
> The PCI Express Base Specification r6.0, section 6.6.1, states that the
> host should wait for at least 100 msec from the end of a conventional
> reset (PERST# is de-asserted) before sending a configuration request to
> ensure that the device is able to respond with a "Request Retry Status"
> completion.
> 
> Add the PCIE_T_RRS_READY_MS macro to define this wait time and modify
> rockchip_pcie_host_init_port() to add this 100ms sleep after bringing
> back PESRT# signal to high using the ep_gpio GPIO.

s/PESRT#/PERST#/
s/bringing back PERST# signal to high/deasserting PERST#/

> Suggested-by: Bjorn Helgaas <helgaas@kernel.org>
> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
> ---
>  drivers/pci/controller/pcie-rockchip-host.c | 2 ++
>  drivers/pci/pci.h                           | 7 +++++++
>  2 files changed, 9 insertions(+)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
> index fc868251e570..cbec71114825 100644
> --- a/drivers/pci/controller/pcie-rockchip-host.c
> +++ b/drivers/pci/controller/pcie-rockchip-host.c
> @@ -325,6 +325,8 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
>  	msleep(PCIE_T_PVPERL_MS);
>  	gpiod_set_value_cansleep(rockchip->ep_gpio, 1);
>  
> +	msleep(PCIE_T_RRS_READY_MS);
> +
>  	/* 500ms timeout value should be enough for Gen1/2 training */
>  	err = readl_poll_timeout(rockchip->apb_base + PCIE_CLIENT_BASIC_STATUS1,
>  				 status, PCIE_LINK_UP(status), 20,
> diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
> index 17fed1846847..c93ffc5e6e1f 100644
> --- a/drivers/pci/pci.h
> +++ b/drivers/pci/pci.h
> @@ -16,6 +16,13 @@
>  /* Power stable to PERST# inactive from PCIe card Electromechanical Spec */
>  #define PCIE_T_PVPERL_MS		100
>  
> +/*
> + * End of conventional reset (PERST# de-asserted) to first configuration
> + * request (device able to respond with a "Request Retry Status" completion),
> + * from PCI Express Base Specification r6.0, section 6.6.1.

"PCIe r6.0, sec 6.6.1" to match typical style, e.g., the reference
just below.

Whoever applies this can take care of this.

> +#define PCIE_T_RRS_READY_MS	100

Thanks a lot for doing this; there are many similar places we can
update to use this #define.

>  /*
>   * PCIe r6.0, sec 5.3.3.2.1 <PME Synchronization>
>   * Recommends 1ms to 10ms timeout to check L2 ready.
> -- 
> 2.44.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
