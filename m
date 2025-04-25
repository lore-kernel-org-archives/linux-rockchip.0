Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9C29C369C2
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Apr 2025 12:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4vjCY9q8GchQggraqZpdZyhlwTiEjOUu0UABFfQWzl8=; b=pzBtOegXqMgwGG
	TKfsPfyFdzt/chTn2kngs0i8wpkqeeH5P17HrnmmIN1UPTyRcBRXmfKxbeYVs0i+J/HzjsRjQ5wrB
	cxerqwdnBWhSvJ/1sKDugcWAn+3Df9qCHEItBu40k19wv5qAZpIpkv35i7sI0sBBsoOccW5N2SNM7
	8zbbNUO4Tdm70HgDe8ad04ACrPiljXDO+bvkK/I+0uXtSlDBGoL24Jql5WBgDUwZWFk6SWc4Z8XgX
	dx1IhWOdkXOBppW9+ioXqFVCqx5i7CHw28Zk7nFYqXXV59gHWMbQaRuhxCROeNhhs4C40x03YkxzI
	+S+N3ZeUj4LO+kHTQtJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8HtY-0000000H4b8-3pMM;
	Fri, 25 Apr 2025 12:11:04 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8GDG-0000000GilD-2z4G;
	Fri, 25 Apr 2025 10:23:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A97044A936;
	Fri, 25 Apr 2025 10:23:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E63DC4CEE4;
	Fri, 25 Apr 2025 10:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745576598;
	bh=gADYdVRlTedtCvztmIJXcTmZi2Paf3CILRLCGSYZMlg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rH84NfFdudOaN325xEfK5AzM51x1HjdnMFP4ugILf+mRs51A40wGY1q0K5ZiBJNjq
	 HYX5nWAbLLY7t0ctfyuMRalpk81pv5iAWNe0bQfuEsgeC+7t2oQQxvv24ehUFtmGZS
	 kxPrVZ1OFGciFAGfv4dqQeo6285b1Y6R/IZf7ed9MkUD9oFOBealWK4B5iIMIlMP7h
	 bRITLkwoCfrBj9ENyMXtrsXQPxFY3YZQdrkgQRxUAQHBsLNvZ9tbsw2c16h7pR/3gS
	 dVSm8Uifhaa4x2FBCxxE+V9ND5wTMudCTn7HnPdj+D9MRXyGWJR7diOUonJds9bJR3
	 oOkSnVeLy46eg==
Date: Fri, 25 Apr 2025 12:23:12 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Hans Zhang <18255117159@163.com>
Cc: lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com,
	heiko@sntech.de, thomas.petazzoni@bootlin.com,
	manivannan.sadhasivam@linaro.org, yue.wang@amlogic.com,
	pali@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
	jingoohan1@gmail.com, khilman@baylibre.com, jbrunet@baylibre.com,
	martin.blumenstingl@googlemail.com, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/2] PCI: Configure root port MPS to hardware maximum
 during host probing
Message-ID: <aAtikPOYlGeJCsiA@ryzen>
References: <20250425095708.32662-1-18255117159@163.com>
 <20250425095708.32662-2-18255117159@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250425095708.32662-2-18255117159@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250425_032318_795334_62483E73 
X-CRM114-Status: GOOD (  20.00  )
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

On Fri, Apr 25, 2025 at 05:57:07PM +0800, Hans Zhang wrote:
> Current PCIe initialization logic may leave root ports operating with
> non-optimal Maximum Payload Size (MPS) settings. While downstream device
> configuration is handled during bus enumeration, root port MPS values
> inherited from firmware or hardware defaults might not utilize the full
> capabilities supported by the controller hardware. This can result in
> suboptimal data transfer efficiency across the PCIe hierarchy.
> 
> During host controller probing phase, when PCIe bus tuning is enabled,
> the implementation now configures root port MPS settings to their
> hardware-supported maximum values. By iterating through bridge devices
> under the root bus and identifying PCIe root ports, each port's MPS is set
> to 128 << pcie_mpss to match the device's maximum supported payload size.
> The Max Read Request Size (MRRS) is subsequently adjusted through existing
> companion logic to maintain compatibility with PCIe specifications.
> 
> Explicit initialization at host probing stage ensures consistent PCIe
> topology configuration before downstream devices perform their own MPS
> negotiations. This proactive approach addresses platform-specific
> requirements where controller drivers depend on properly initialized root
> port settings, while maintaining backward compatibility through
> PCIE_BUS_TUNE_OFF conditional checks. Hardware capabilities are fully
> utilized without altering existing device negotiation behaviors.
> 
> Signed-off-by: Hans Zhang <18255117159@163.com>

Perhaps Mani deserves a Suggested-by tag?


> ---
>  drivers/pci/probe.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/pci/probe.c b/drivers/pci/probe.c
> index 364fa2a514f8..3973c593fdcf 100644
> --- a/drivers/pci/probe.c
> +++ b/drivers/pci/probe.c
> @@ -3206,6 +3206,7 @@ EXPORT_SYMBOL_GPL(pci_create_root_bus);
>  int pci_host_probe(struct pci_host_bridge *bridge)
>  {
>  	struct pci_bus *bus, *child;
> +	struct pci_dev *dev;
>  	int ret;
>  
>  	pci_lock_rescan_remove();
> @@ -3228,6 +3229,17 @@ int pci_host_probe(struct pci_host_bridge *bridge)
>  	 */
>  	pci_assign_unassigned_root_bus_resources(bus);
>  
> +	if (pcie_bus_config != PCIE_BUS_TUNE_OFF) {
> +		/* Configure root ports MPS to be MPSS by default */
> +		for_each_pci_bridge(dev, bus) {
> +			if (pci_pcie_type(dev) != PCI_EXP_TYPE_ROOT_PORT)
> +				continue;
> +
> +			pcie_write_mps(dev, 128 << dev->pcie_mpss);
> +			pcie_write_mrrs(dev);

The comment says configure MPS, but the code also calls pcie_write_mrrs().

Should we update the comment or should we remove the call to pcie_write_mrrs()?

Note that even when calling pcie_write_mrrs(), it will not update MRRS for the
common case (pcie_bus_config == PCIE_BUS_DEFAULT).


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
