Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13676C3ABC5
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 May 2025 08:35:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oGVOEIQnecTABnUdK0oNB+Ao57Oy4orr2ol+r1u0Xw0=; b=wMJf3N/Lw+4DJI
	seaYKT8S4HQpMivmbWn8gdfa2IaEcyGd0elDQwuVyYaj++6b+UAVeARZ3/3uYiI+JtZ7hV56lHQxX
	bMzXWKqRkufwU/2qxjyiZTCef2Cpn8la9XyPf1EPNrcMv2vKOWb35AWQ10K4V/0dDVZT2wyqZnwp0
	miYiugAQWNdj39k65otAWqi+NHx4rrDVlMvsMQLduJcLnAcxslY2oXCqggvxTFXdBt4rz6xB6Fwbv
	6xDfIy77J1WiD4+ZOCLf2IDjh8x8R2F+HNL9yiEgHQeaRwz2P9i55G1UqB58dEOFoOD1Vm5IM+fNK
	6UuJLPFs4wH1IS2aSEGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCaF2-0000000ElRm-2i3U;
	Wed, 07 May 2025 08:35:00 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCZM2-0000000EYuw-2CTB;
	Wed, 07 May 2025 07:38:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 57B9D4A670;
	Wed,  7 May 2025 07:38:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB7A2C4CEE7;
	Wed,  7 May 2025 07:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746603489;
	bh=u+94YTkIK1yodzp++T2HMB+oePCPOpIrqtliTXH6QBg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jyVJurjeBVyWd0G4t6kNsd8et1PSYUrBGqs3MV3TTtICVDqAPr1gZrx094VjLWDPk
	 S1RHk810ExOMe3Plnpi/9lAoeGTwFcSOqjzcfHXAJmJ7VvllQ4kRLt6V5lDIhirnCG
	 ayPbPG5iFPwEFPD/0sbOGcniB0tkc3uJURu1rXFsnN0jYdEooMQHvgIdL/BPdNCJzS
	 zUCCV72YUsIzuaSVGk1+1RGJ2M85dEfzB/HVz72Hm0RC4pYgQtYszjDkqRI9TL5usf
	 qYo0Gdh/ulmD9cwhOOIvH1+8pwt6FhazSFU6pwVosm3T1ltDep5tY6IRvhxDDiaP1I
	 W5upt/sdhcU9g==
Date: Wed, 7 May 2025 09:38:03 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Hans Zhang <18255117159@163.com>
Cc: lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com,
	heiko@sntech.de, manivannan.sadhasivam@linaro.org,
	yue.wang@amlogic.com, pali@kernel.org, neil.armstrong@linaro.org,
	robh@kernel.org, jingoohan1@gmail.com, khilman@baylibre.com,
	jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 1/3] PCI: Configure root port MPS during host probing
Message-ID: <aBsN2_YG0RsH4RPA@ryzen>
References: <20250506173439.292460-1-18255117159@163.com>
 <20250506173439.292460-2-18255117159@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250506173439.292460-2-18255117159@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_003810_579839_E9B836AB 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
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

On Wed, May 07, 2025 at 01:34:37AM +0800, Hans Zhang wrote:

(snip)

>  static void pci_configure_mps(struct pci_dev *dev)
>  {
>  	struct pci_dev *bridge = pci_upstream_bridge(dev);
> @@ -2178,6 +2209,10 @@ static void pci_configure_mps(struct pci_dev *dev)
>  		return;
>  	}

We should probably add a comment explaining why we are doing this here.

Perhaps something like:

/*
 * Unless MPS strategy is PCIE_BUS_TUNE_OFF (don't touch MPS at all),
 * start off by setting root ports' MPS to MPSS. Depending on the MPS
 * strategy, and the MPSS of the devices below the root port, the MPS
 * of the root port might get overriden later.
 */


> +	if (pci_pcie_type(dev) == PCI_EXP_TYPE_ROOT_PORT &&
> +	    pcie_bus_config != PCIE_BUS_TUNE_OFF)
> +		pcie_write_mps(dev, 128 << dev->pcie_mpss);
> +
>  	if (!bridge || !pci_is_pcie(bridge))
>  		return;
>  


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
