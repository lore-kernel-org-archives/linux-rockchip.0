Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9064DD116E2
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Nov 2025 23:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=aa3KSm0G+R1WdFD7QhNUsnbSSPA62+zzKJOyyJawS6s=; b=J2vHm+YOYl9vUV
	lNY8M3RRDMniS+FBnjl2j9rFduTXqJfzf50N5gfulyEHWOoPSNuhjfsSYIIA2RcN3SIbiBNyLolgR
	8kbh5NYB90Clvpe+sH09hV/fLS+82R1GmkzYGiiFyUBMnjXGa1cseSzANcmhr0e0FsIWbl1iOD+R+
	IuTFHeazG5BJarIasmKI/+O5kIlfDkT5gYpInRcr6WF0gORJTwKh2i2upFVsBgpMnZTSVciyaPu50
	ns7UfZKgh1GaS+qh0qoxMtElRGp7Q/8zvguOTZmGdamXyDiWeIPmBymxxGYzDjwjI9y8s8RUJRPoX
	gIY2WYO+6GqoXmYdnNLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOPLJ-0000000FmRZ-40pJ;
	Wed, 26 Nov 2025 23:54:37 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOPLG-0000000FmQy-3mFr;
	Wed, 26 Nov 2025 23:54:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 027DE4197D;
	Wed, 26 Nov 2025 23:54:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5A68C4CEF7;
	Wed, 26 Nov 2025 23:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764201273;
	bh=g9nM4cO2Nu/TJJjgqtJ77MJB0fTDSxhxd0RQ+LzrMi4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=RQCfpfeZnsMlL2sUCsmFtjvqUATIhGbpQyu2dIi70gm8+BkN4dpSOM8JiXvAM5ZkP
	 BoBfquJLzroZc5wGIAhoeSIkCUnY0qS/5icO4JnicFJ0PPsD5DfEBBC7hBmvplQj5F
	 ri2lDTXygjlNAnWYiAyrbQd22ZR9ML4QDBiPfJIqcB9nPwDfqKnpAU2yVmhPKxrPRg
	 2EumjNk/YuuXvFGVk84zVWHzVu4QY6ZGevOp5ULfj/A+7wtKaM0W8Gbch+y00woMe/
	 yBcP4f8YtTSAWZMVLl6ZP0I+y/MtkKXo+hfPfxFy9bKI4FmbV42CSLYgrYvTEV6ahp
	 pmVD44qu7aO0w==
Date: Wed, 26 Nov 2025 17:54:32 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Hans Zhang <18255117159@163.com>
Cc: lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com,
	heiko@sntech.de, mani@kernel.org, yue.wang@amlogic.com,
	pali@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
	jingoohan1@gmail.com, khilman@baylibre.com, jbrunet@baylibre.com,
	martin.blumenstingl@googlemail.com, cassel@kernel.org,
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v6 1/2] PCI: Configure Root Port MPS during host probing
Message-ID: <20251126235432.GA2726707@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251104165125.174168-2-18255117159@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251126_155434_983171_AC023225 
X-CRM114-Status: GOOD (  22.11  )
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

On Wed, Nov 05, 2025 at 12:51:24AM +0800, Hans Zhang wrote:
> Current PCIe initialization logic may leave Root Ports (root bridges)
> operating with non-optimal Maximum Payload Size (MPS) settings. Existing
> code in pci_configure_mps() returns early for devices without an upstream
> bridge (!bridge) which includes Root Ports, so their MPS values remain
> at firmware/hardware defaults. This fails to utilize the controller's full
> capabilities, leading to suboptimal data transfer efficiency across the
> PCIe hierarchy.
> 
> With this patch, during the host controller probing phase:
> - When PCIe bus tuning is enabled (not PCIE_BUS_TUNE_OFF), and
> - The device is a Root Port without an upstream bridge (!bridge),
> The Root Port's MPS is set to its hardware-supported maximum value
> (128 << dev->pcie_mpss).
> 
> Note that this initial maximum MPS setting may be reduced later, during
> downstream device enumeration, if any downstream device does not suppor
> the Root Port's maximum MPS.
> 
> This change ensures Root Ports are properly initialized before downstream
> devices negotiate MPS, while maintaining backward compatibility via the
> PCIE_BUS_TUNE_OFF check.

"Properly" is sort of a junk word for me because all it really says is
we were stupid before, and we're smarter now, but it doesn't explain
exactly *what* was wrong and why this new thing is "proper."

It's obvious that the Max_Payload_Size power-on default (128 bytes) is
suboptimal in some situations, so you don't even need to say that.
And I think 128 bytes *is* optimal in the PCIE_BUS_PEER2PEER case.

s/Root Ports (root bridges)/Root Ports/
s/bridge (!bridge)/bridge/     # a couple times
s/hardware-supported//         # unnecessary
s/(128 << dev->pcie_mpss)//    # we can read the spec
s/suppor/support/

> Suggested-by: Niklas Cassel <cassel@kernel.org>
> Suggested-by: Manivannan Sadhasivam <mani@kernel.org>
> Signed-off-by: Hans Zhang <18255117159@163.com>
> ---
>  drivers/pci/probe.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/pci/probe.c b/drivers/pci/probe.c
> index 0ce98e18b5a8..2459def3af9b 100644
> --- a/drivers/pci/probe.c
> +++ b/drivers/pci/probe.c
> @@ -2196,6 +2196,18 @@ static void pci_configure_mps(struct pci_dev *dev)
>  		return;
>  	}
>  
> +	/*
> +	 * Unless MPS strategy is PCIE_BUS_TUNE_OFF (don't touch MPS at all),
> +	 * start off by setting Root Ports' MPS to MPSS. This only applies to
> +	 * Root Ports without an upstream bridge (root bridges), as other Root
> +	 * Ports will have downstream bridges.

I can't parse this sentence.  *No* Root Port has an upstream bridge.
So I don't know what "other Root Ports" would be or why they would
have downstream bridges (any Root Port is likely to have downstream
endpoints or bridges).

> +	   ... Depending on the MPS strategy
> +	 * and MPSS of downstream devices, the Root Port's MPS may be
> +	 * overridden later.
> +	 */
> +	if (!bridge && pci_pcie_type(dev) == PCI_EXP_TYPE_ROOT_PORT &&
> +	    pcie_bus_config != PCIE_BUS_TUNE_OFF)
> +		pcie_set_mps(dev, 128 << dev->pcie_mpss);
> +
>  	if (!bridge || !pci_is_pcie(bridge))
>  		return;
>  
> -- 
> 2.34.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
