Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01614E77188
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Dec 2024 19:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=nUfCKBZ5YcZuWubfj9TUdZdFcCu7kMT78Hi5L/P2cbw=; b=A8suovOfZ6lmBm
	5C0zYcM1yi4a2VB162h0WfOk/kqQAt6f+QxMTu1EKOaFaSL7v1zTp6TqLmXgxGNHDnrON5zb09bQ6
	QDIoEPZQPP8iGLlxpzLBIGq+65gjgv/3d49cYNTyw6bl59E+PiwU3jOFROxDgcYbAYB1eKAMF0pgm
	gJ6l5Aak34IOcO5luFWe/CNm8LZlSgm4PyiVMB6OCUkqWC2LyJAPz29vqpoBEUTljo5ESmMGyk0IL
	Ug1Lfi8QOYcMS6+DJCvjed3e23rwr64SflkUM7Jk09JHoLfCd9EauyzXIp32402AU8LskvSefKLLL
	5fTtpcSSDz4D5gsEd5jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSLJS-00000005jlQ-18DF;
	Mon, 30 Dec 2024 19:20:26 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tSLIH-00000005jeN-0jAv;
	Mon, 30 Dec 2024 19:19:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id AF8A6A40F2A;
	Mon, 30 Dec 2024 19:17:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 413F2C4CED0;
	Mon, 30 Dec 2024 19:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735586351;
	bh=X0EYxHXdyVdmOPGxViBjSU30WP05CYZbb75sYLlIZak=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=kfp+sQw+92xxFfPP5xyPzMvbLdqPXLOBdfm2btiHhnRSOn0NYolCFg2fwL3XgQKAn
	 xOicRxgCm/GJGDPPlA1icF7IXRfYE3/nsC96+2jqRnp0hGqo/2o8XSdbIH8kkhZ+33
	 U1CoYnr/nl19EduvPnO71DJYp0UQXyjA9EBs6V4jlbqZy0OPscozdhA1+EY+Ga0x6b
	 WYGDj60Nbj+wHpFf4LJVXkjQJ6xuTHhNAoUcn6kMqhgAtq4wWxVhi89CWGlv9RjWY/
	 eP6dAw6YUK2CzEUT5rGbij5l0zqVspX8PEGFSmy7GEeo4znW1yORMYIQQzn0bxg/Sr
	 v79iM6hEOHZsQ==
Date: Mon, 30 Dec 2024 13:19:08 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Damien Le Moal <dlemoal@kernel.org>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] PCI: dw-rockchip: Enumerate endpoints based on
 dll_link_up irq in the combined sys irq
Message-ID: <20241230191908.GA3962801@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241127145041.3531400-2-cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241230_111913_278746_5A8810C8 
X-CRM114-Status: GOOD (  16.67  )
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

On Wed, Nov 27, 2024 at 03:50:42PM +0100, Niklas Cassel wrote:
> Most boards using the pcie-dw-rockchip PCIe controller lack standard
> hotplug support.
> 
> Thus, when an endpoint is attached to the SoC, users have to rescan the bus
> manually to enumerate the device. This can be avoided by using the
> 'dll_link_up' interrupt in the combined system interrupt 'sys'.
> 
> Once the 'dll_link_up' irq is received, the bus underneath the host bridge
> is scanned to enumerate PCIe endpoint devices.
> 
> This commit implements the same functionality that was implemented in the
> DWC based pcie-qcom driver in commit 4581403f6792 ("PCI: qcom: Enumerate
> endpoints based on Link up event in 'global_irq' interrupt").
> 
> The Root Complex specific device tree binding for pcie-dw-rockchip already
> has the 'sys' interrupt marked as required, so there is no need to update
> the device tree binding. This also means that we can request the 'sys' IRQ
> unconditionally.

Thanks for doing this!

> @@ -436,7 +481,16 @@ static int rockchip_pcie_configure_rc(struct rockchip_pcie *rockchip)
>  	pp = &rockchip->pci.pp;
>  	pp->ops = &rockchip_pcie_host_ops;
>  
> -	return dw_pcie_host_init(pp);
> +	ret = dw_pcie_host_init(pp);
> +	if (ret) {
> +		dev_err(dev, "failed to initialize host\n");
> +		return ret;
> +	}
> +
> +	/* unmask DLL up/down indicator */
> +	rockchip_pcie_writel_apb(rockchip, 0x20000, PCIE_CLIENT_INTR_MASK_MISC);

I know we already had a bare 0x60000 in rockchip_pcie_configure_ep(),
but can we add #defines for both of these PCIE_CLIENT_INTR_MASK_MISC
bits?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
