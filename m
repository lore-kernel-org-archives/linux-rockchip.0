Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BC6CCD11DD
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Mar 2024 12:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=mDEKFmyPCbDh0ThGvC2jDHoQp9xqeIR9OxwDdUFRjMM=; b=mF/O7Wtrb6IlNZ
	T/2GQBnsEU9JOhRumhc35hYevzQKY60UsuPNNquW9li6OmxV9Xg95mbcTw4muepVqsBbD/uC+41to
	hNktNN0xbInBOi7ieZCWR8QkvppY1rK4q2DF5TIyyP/bzXQsQJ15NmIAHSo2eMAmHTl/oxpMa7j4U
	tHiaL5KVcTCMwdkSB877zipWZDrM7Dd/EAexVnaRiHESDnPG4vAS/vDmBuIzwlewGdgzauh72/Kjq
	LOy7yhKnLIiJB9EFbdOpWtoU859rDV3/ynbk/9YqI3nti6edioGY7pMN25fLa6+EpWyExCStoV9WM
	OT0nlbkqQ7OdA/Lz5FuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBeP-00000000T3a-0mAT;
	Fri, 29 Mar 2024 12:48:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBcs-00000000S9L-2MxP
	for linux-rockchip@bombadil.infradead.org;
	Fri, 29 Mar 2024 12:46:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:References;
	bh=REazeanVN5h8u0NMpwtIuD0OFcngi4QSHgVHxDGIdCE=; b=VwTplxTQzgSsx3t6mYODqxwj8D
	Fmkainvn51ilIw80QJ7F/Wy+isfvVFWhEQiGYOku9xH5QW/yKa3RcJlmgyWqnR2if4N2JOkgU7RpP
	TWgLqZ7zBN6f2oDUHMzdWGnwM5od+lSGnX7+oSvZdfX6zocAft//5u3O7FkBw2iFCsiqgnq97fq2a
	4QI+LO03+EuntgWnKKzylsBBeav24E9MQ353VyWNrgP50i1o73DtvQPzlJeW27hRfzJS5hzWovC5n
	U12/VZjL/9rRgCcQSSPsghB8R+JyYbUHMonIxhj1WZ1nskmFXkGOC3KVy5zo9eYdaskrAQHJLa2Mm
	PwukE+MA==;
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBcp-00000001ZY0-0oHB
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Mar 2024 12:46:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E311FCE2F9D;
	Fri, 29 Mar 2024 12:46:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7862C433C7;
	Fri, 29 Mar 2024 12:46:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711716379;
	bh=IpjMDZLzrUytvFtsKWmfYOw5lDbAvGoJhWYr2bVnGpc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=j9vNiMrVrVkbuOfgrlcVxKPWa9zHaNMEDlIBqXWbPnsW26ZD+z0m99Rk2YIDumo3W
	 lTr9IieOTlGERGgtldy4nZdUkoqoVY1ub6sK0oxCiFb1RzC/uXy6HLvi7769X5lCXE
	 nVZOexqdd3XgiW2XqLl3wKhTeqzutx8JBeP7zZf3yQ7zxI93bEwtG/AwRhO0RmOJW1
	 MQySlPUcMdptxdXpkIvoJ/CjfRj93DJcdfoozEUO4cQV/08Utk9ofuxp9H5NlncMct
	 fZiSTWEZiqiFVzeyfw7yo1DUReFOW8Lp6FOTy2TJocEd18pKZwv3vipD6OgjuclNsh
	 lVaLG9X53OVyQ==
Date: Fri, 29 Mar 2024 07:46:16 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] PCI: rockchip-host: Fix rockchip_pcie_host_init_port()
 PERST handling
Message-ID: <20240329124616.GA1639231@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240329084407.1050307-1-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_124627_714511_3D1BC490 
X-CRM114-Status: GOOD (  16.98  )
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

Observing the timing is the important thing here, if you can wedge
that into the subject somehow.

On Fri, Mar 29, 2024 at 05:44:07PM +0900, Damien Le Moal wrote:
> The PCI specifications mandate that PERST be asserted for at least
> 100ms. Make sure that is done in rockchip_pcie_host_init_port() by
> adding a 100ms sleep before bringing back PESRT signal to high using the
> ep_gpio GPIO. Comments are also added to clarify this behavior.

"PERST#" in spec, and to make the "assert" and "set value to 0" all
match up.

s/PESRT/PERST#/

> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
> ---
>  drivers/pci/controller/pcie-rockchip-host.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
> index 300b9dc85ecc..d526b9d26c18 100644
> --- a/drivers/pci/controller/pcie-rockchip-host.c
> +++ b/drivers/pci/controller/pcie-rockchip-host.c
> @@ -294,6 +294,7 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
>  	int err, i = MAX_LANE_NUM;
>  	u32 status;
>  
> +	/* Assert PERST */
>  	gpiod_set_value_cansleep(rockchip->ep_gpio, 0);
>  
>  	err = rockchip_pcie_init_port(rockchip);
> @@ -322,6 +323,11 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
>  	rockchip_pcie_write(rockchip, PCIE_CLIENT_LINK_TRAIN_ENABLE,
>  			    PCIE_CLIENT_CONFIG);
>  
> +	/*
> +	 * PCIe specifications mandate that PERST be asserted for at
> +	 * least 100ms.
> +	 */
> +	msleep(100);

Specific rev, section citation?  And a name for the parameter if there
is one (T_PVPERL, etc).  And hopefully a macro along the lines of
PCIE_T_PVPERL_MS since this isn't rockchip-specific.

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
