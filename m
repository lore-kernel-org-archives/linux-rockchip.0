Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05990C25B75
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 May 2024 20:56:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=+8GfU8tvU2RcM2rhJ7dVJ5fTTLV7SwIs5owafJptAtk=; b=TnaV/73b7EPncz
	uYmWvbbafChsHqPI9nAlImYrCam0Zlzyvi21GjQnEsDrKomzaOWysjCq8Mi0mvxWghS6fo/oJPPP9
	67JYjacslmmLk8ITKeYIrnSN3TlSmoqOpULg0e24rb5bHXYaze4nyrykYxYa63A7qme2sASdCOzv0
	FjshEfal68VKVyhrJRIgBZC38Pk99y4M2AxzsvPZZUiKwkj7GmZGNKwT2iIASy/D67d0Xbvh9irUy
	nKqp1tNgyXNMlP6fPmXDc4h3PHPIsb3TH4265RIh+qkteaXRcerqd2ak8yjBqb5TUmOErKK7luAVe
	Psw/PMWsLLcR1fQdzToQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7LfG-00000002qvq-1G8a;
	Wed, 15 May 2024 20:55:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7LfC-00000002qv4-1WGU;
	Wed, 15 May 2024 20:55:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C66366151E;
	Wed, 15 May 2024 20:55:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A379C116B1;
	Wed, 15 May 2024 20:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715806549;
	bh=AAeXwwHWMP0eHtZAb20qWMKLq5n94EYBqJos5Y7FBEA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=d/U46up4/1F7xAwdTRSJTYMeQ0ft+y0RZ8yEnDsVnOWx+XUXmNLq2ZaTcS0PwJi21
	 Is92bD6XPKbod2xd710vZHuXroJBdnqCE0oG33ui/DUsPLCbd4c4Cp9PWNZl/nUcrj
	 xm0WCopuH4JLUcRkkbgoymeB+Nh2zNH8zj0zXBRIyFtVutNG5YpWo/a4L+m1OHjdnp
	 0t7bGloxDN3jh2OUCoQOjD+rKKaVlksAjgQH2/psvco2L3HLNQSqgCS8Wq87rUXFyI
	 gN03XVNbAohU4I6fVzPVuWD1LJnR8QiZAITxgfqIXKJB1mPC6+y4j6dGIYyej7/+re
	 GSDrse3kZS56g==
Date: Wed, 15 May 2024 15:55:47 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Cc: rick.wertenbroek@heig-vd.ch, dlemoal@kernel.org, stable@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] PCI: rockchip-ep: Remove wrong mask on subsys_vendor_id
Message-ID: <20240515205547.GA2137633@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240403144508.489835-1-rick.wertenbroek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_135550_463273_0A45FA71 
X-CRM114-Status: GOOD (  19.98  )
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

On Wed, Apr 03, 2024 at 04:45:08PM +0200, Rick Wertenbroek wrote:
> Remove wrong mask on subsys_vendor_id. Both the Vendor ID and Subsystem
> Vendor ID are u16 variables and are written to a u32 register of the
> controller. The Subsystem Vendor ID was always 0 because the u16 value
> was masked incorrectly with GENMASK(31,16) resulting in all lower 16
> bits being set to 0 prior to the shift.
> 
> Remove both masks as they are unnecessary and set the register correctly
> i.e., the lower 16-bits are the Vendor ID and the upper 16-bits are the
> Subsystem Vendor ID.
> 
> This is documented in the RK3399 TRM section 17.6.7.1.17
> 
> Fixes: cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
> Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
> Cc: stable@vger.kernel.org

Applied to pci/controller/rockchip by Krzysztof, but his outgoing mail
queue got stuck.  I added Damien's Reviewed-by.  Trying to squeeze
into v6.9.

> ---
>  drivers/pci/controller/pcie-rockchip-ep.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
> index c9046e97a1d2..37d4bcb8bd5b 100644
> --- a/drivers/pci/controller/pcie-rockchip-ep.c
> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> @@ -98,10 +98,9 @@ static int rockchip_pcie_ep_write_header(struct pci_epc *epc, u8 fn, u8 vfn,
>  
>  	/* All functions share the same vendor ID with function 0 */
>  	if (fn == 0) {
> -		u32 vid_regs = (hdr->vendorid & GENMASK(15, 0)) |
> -			       (hdr->subsys_vendor_id & GENMASK(31, 16)) << 16;
> -
> -		rockchip_pcie_write(rockchip, vid_regs,
> +		rockchip_pcie_write(rockchip,
> +				    hdr->vendorid |
> +				    hdr->subsys_vendor_id << 16,
>  				    PCIE_CORE_CONFIG_VENDOR);
>  	}
>  
> -- 
> 2.25.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
