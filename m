Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94C72C67861
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Apr 2024 16:16:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=oJioMLGC8FsLzezkS0eqEDiXZNSGQB/HokHceNxU2Z4=; b=DjvIKl3OH4MwgK
	aPa8lSogCO9iklf20Mu73qAWJOMtNPQs6nLTLaJMl4+m+HqEuir5Ek3KFk/I2VhyZ5UDxHddzpgh3
	SmiE1fgGA4Ug0jhPAxjeDvOWsmKtvA6HQz03Z/tfz33Ne6fOQiRbuCZv9TEJeRPwSiVEAcHfJ2+af
	HTslLbUSXdIFzEEeAeQvV7K3xeyi9msJc2HQe8fCh9f8FZLGImzeTDOyxDlMcYtzOZqtXuOZQfmID
	l+BItVnBGch2AIWZONi+/Puo+69rG77bSD3ZSuMCsFq+bc+2LB44eTtbTY9Lzx792JXC4k+gvudnp
	GP8DDLSh6Ts+0dVUVWQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruE8l-00000002tgX-1awD;
	Tue, 09 Apr 2024 16:16:07 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruE8g-00000002tdj-1asi;
	Tue, 09 Apr 2024 16:16:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id CD59461864;
	Tue,  9 Apr 2024 16:16:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A3B2C433C7;
	Tue,  9 Apr 2024 16:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712679360;
	bh=AcZ3QNcbgLEVSP63LdF8sRSKm3cjsDvhlKbu7sqN0Yo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=GdMlwBtcEN+nL3PndlKHfnpn7S2v8i0VjbL2Y5fZGNLIH1sCdMJCHFXZXCzBRaEiS
	 UGX79JT9mtiJMtVrqDdXfHlOyzzvJ5EwhU/Hk75K9oYD7ipMhOBf9ymwAxh4kvq67W
	 wgP23CfzTlaJC7+sElyjX6YjYPrQuq0fuYKRwuBsRosHZIvPVuxvWlDO6ykYWhAYsi
	 FpXQdxtvatLrXSXzF9SMlPx0tiAthIX9v+1SAmPgQMtkGVihqrXmCIqxtMEcOMZiJ2
	 fgWYrow5+abWnUEOC/rKc18PyQpzSWN3x+T6tEemb1Hrv8sWuE2qh07AV+QLs7s6AQ
	 um8lMK8z1qn+w==
Date: Tue, 9 Apr 2024 11:15:58 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] PCI: rockchip-host: Fix
 rockchip_pcie_host_init_port() PERST# handling
Message-ID: <20240409161558.GA2077808@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240330035043.1546087-1-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_091602_622664_9CC21796 
X-CRM114-Status: GOOD (  25.17  )
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

On Sat, Mar 30, 2024 at 12:50:43PM +0900, Damien Le Moal wrote:
> The PCIe specifications (PCI Express Electromechanical Specification rev
> 2.0, section 2.6.2) mandate that the PERST# signal must remain asserted
> for at least 100 usec (Tperst-clk) after the PCIe reference clock
> becomes stable (if a reference clock is supplied), for at least 100 msec
> after the power is stable (Tpvperl).

Reference current spec, e.g., "PCIe CEM r5.1, sec 2.9.2" and a note
about why you mention two parameters here but the code change only
uses one of them.

> In addition, the PCI Express Base SPecification Rev 2.0, section 6.6.1
> state that the host should wait for at least 100 msec from the end of a
> conventional reset (PERST# is de-asserted) before accessing the
> configuration space of the attached device.

Current spec, e.g., "PCIe r6.0, sec 6.6.1".

> Modify rockchip_pcie_host_init_port() by adding two 100ms sleep, one
> before and after bringing back PESRT signal to high using the ep_gpio
> GPIO. Comments are also added to clarify this behavior.

s/PESRT/PERST#/

This is two separate changes that really would be better as separate
patches.

> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
> ---
> 
> Changes from v1:
>  - Add more specification details to the commit message.
>  - Add missing msleep(100) after PERST# is deasserted.
> 
>  drivers/pci/controller/pcie-rockchip-host.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
> index 300b9dc85ecc..ff2fa27bd883 100644
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
> @@ -322,8 +323,19 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
>  	rockchip_pcie_write(rockchip, PCIE_CLIENT_LINK_TRAIN_ENABLE,
>  			    PCIE_CLIENT_CONFIG);
>  
> +	/*
> +	 * PCIe CME specifications mandate that PERST be asserted for at
> +	 * least 100ms after power is stable.
> +	 */

Remove comment completely (given use of PCIE_T_PVPERL_MS below).

> +	msleep(100);

s/100/PCIE_T_PVPERL_MS/

>  	gpiod_set_value_cansleep(rockchip->ep_gpio, 1);
>  
> +	/*
> +	 * PCIe base specifications rev 2.0 mandate that the host wait for
> +	 * 100ms after completion of a conventional reset.
> +	 */
> +	msleep(100);

Please add a #define for this since it's generic across all PCIe, not
just Rockchip.

I don't think the PCIe spec actually names this parameter.  It's
similar to T_rhfa (Conventional PCI r3.0, sec 4.3.2), although I think
devices must be ready to accept config cycles after T_rhfa.

This delay is a little different because IIUC, a PCIe device doesn't
have to be "Configuration Ready"; after 100ms, it only has to be able
to respond with a "Request Retry Status" completion if it isn't
Configuration Ready yet.

So I think we should add something like

  #define PCIE_T_RRS_READY_MS   100

to drivers/pci/pci.h for this case.

>  	/* 500ms timeout value should be enough for Gen1/2 training */
>  	err = readl_poll_timeout(rockchip->apb_base + PCIE_CLIENT_BASIC_STATUS1,
>  				 status, PCIE_LINK_UP(status), 20,
> -- 
> 2.44.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
