Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0562FC02180
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jan 2025 20:23:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=oE1Ui7BZsQIFNmLeY6M42mhFPo1wWonGSGiaWzCHnOI=; b=cod7rTM6+G1knX
	frrgL9w40R1/s+s72zWLvQao8QtEUSAZFV7fZfQQDC875OMJB8GglSHgcR34iM95pwNQgT95rd8dK
	Y1+9vlDA6il9PS12KsfnjwMzh2F33nqkUdbdSGXNTKisIGoVkJScyuKHk2F2bISYyPiD++ZW1ATq1
	MnpBqNSjcHZjEebVuw55pxaZwZmjLrbtvPLneuN1oRTzVRk/0UIwM9ix9pZhbXuw3zmZalkAprfoz
	dYHSfq7OwkJ5NH/DzI7gjcjv4jQGOaQRrfOlMh6vLrDVYX8cyCwCI5hpxpLQX9OgG5G4zg+mxSAZX
	f2KwXJ8YyalM7wj/+i5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXQyR-00000006Xx6-150P;
	Mon, 13 Jan 2025 20:23:47 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXQxC-00000006Xpj-1Iz3;
	Mon, 13 Jan 2025 20:22:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 3A2E3A4101D;
	Mon, 13 Jan 2025 20:20:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE748C4CED6;
	Mon, 13 Jan 2025 20:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736799749;
	bh=4XBsIsziAr422cRjy/WKCVKgVG1YXMwN58TxJtr6+5c=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=AHWuHhHnfKQrdFZTiZDwYEjqgFR6aq6ew0yAp3HDahpOWJMmbsvyso/AZlw4SrZph
	 hKRufIBPagMUNxFbWZ9Qjvo3+DFt5ufFZHxAhaU6Y0+sDfJhDbfVCiZnPKuR8Nk0TC
	 4bSigVWPsRMlrYwWC9BvWbcm2VIcGF0SL03eO37EqIM1/3nByWnMrnCBp51ZGv3BqI
	 UyWRmxz375UMEUqN68pVzZKeBa6JFZ/bDglBmsL/TsUjm8qqLdOMJsCWobg7LE4oLF
	 jyd2EEMUPKNcxZgZFJGrKsPfolj8ob7uCNb+xlqaNFGIo3P6Aw3wslqZOA0sns9r1G
	 ghu4BfDWwF6qA==
Date: Mon, 13 Jan 2025 14:22:26 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Damien Le Moal <dlemoal@kernel.org>,
	Anand Moon <linux.amoon@gmail.com>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] PCI: dw-rockchip: Skip waiting for link up
Message-ID: <20250113202226.GA420041@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250113-rockchip-no-wait-v1-1-25417f37b92f@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_122230_418560_80E8CE0F 
X-CRM114-Status: GOOD (  18.75  )
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

On Mon, Jan 13, 2025 at 11:59:34AM +0100, Niklas Cassel wrote:
> The Root Complex specific device tree binding for pcie-dw-rockchip has the
> 'sys' interrupt marked as required.
> 
> The driver requests the 'sys' IRQ unconditionally, and errors out if not
> provided.
> 
> Thus, we can unconditionally set use_linkup_irq before calling
> dw_pcie_host_init().
> 
> This will skip the wait for link up (since the bus will be enumerated once
> the link up IRQ is triggered), which reduces the bootup time.
> 
> Signed-off-by: Niklas Cassel <cassel@kernel.org>

Applied to pci/controller/dwc for v6.14, thanks!

> ---
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> index 1170e1107508bd793b610949b0afe98516c177a4..62034affb95fbb965aad3cebc613a83e31c90aee 100644
> --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> @@ -435,6 +435,7 @@ static int rockchip_pcie_configure_rc(struct rockchip_pcie *rockchip)
>  
>  	pp = &rockchip->pci.pp;
>  	pp->ops = &rockchip_pcie_host_ops;
> +	pp->use_linkup_irq = true;
>  
>  	return dw_pcie_host_init(pp);
>  }
> 
> ---
> base-commit: 2adda4102931b152f35d054055497631ed97fe73
> change-id: 20250113-rockchip-no-wait-403ffbc42313
> 
> Best regards,
> -- 
> Niklas Cassel <cassel@kernel.org>
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
