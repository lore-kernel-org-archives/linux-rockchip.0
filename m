Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1B61C369A1
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Apr 2025 08:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b7mxPq3HflD5gKcutfIu3BAN+MWy71+h/hcYSRr+KM4=; b=2e6sJA98jonygd
	IPdWSqrJ8AhC/SwT05wL/sNmMeZlfbQK4/yoZqx8BKd2rK8bzwXVRPlX33TFp9Kg8RQZfKhIBGZBO
	6u+p2xrJc0nIioQcRXNy1rOJ96qZVq++mQnYgIZsAaYr2o1PxrCGU8w7Pb05QoiZ5U1oqrUtgTu56
	03En+XT/346kqZ9XM+TeIzAKnaZixBkCwLe4atQN6Hnn0zJISrtu5H4aATfi/uwnp883yi6rbGhPl
	groDHJKnTrsQqTCB4tAsdiUT688ZIH1WbqAxYC+oxOXD9O8eB6DbPG+/S1d44LnVAALsIEzt0F2Af
	l7kZbB+Xk7qn6lVrzTYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2Qql-00000006agi-2urV;
	Wed, 09 Apr 2025 08:31:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2Qpm-00000006aUA-1IkB
	for linux-rockchip@bombadil.infradead.org;
	Wed, 09 Apr 2025 08:30:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=mK8cRoWDE/T6RUkbz5aGGTrXToyrI6K7E0+Ye8T+yWE=; b=ROwc5CW9AuYgyHzZVQNxHNeRNg
	1nvSm0OkxptYeavQv2YBZw2NrHqmYcabMumRCzM+WripIZwmAU2NHLCods/zTjhhCwzhChMqEF0H4
	amxpy1RZP8Rl7wDjYRM9LN/FjOSmydzPknqU3PxOlrrXUx1aIe5qKP1zXMRjAXaKsS+bFVTj8DYg8
	pnSAHnl0XtWFsNCeVHxIS8EWiCR7kp+K3bkum4qMnJjqV4csJfzCYi85M3AvJNvwj9mwB80BridiS
	NiZi5g3cqL0hK9DYw2VpA7ury7Ut125cSS6TdCZ0EHzsaE0KMpXUwaDGJ0qWm03Wy8Y5FopZB33zO
	tzwpt8tQ==;
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u2Qpj-00000008Y9U-056f
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Apr 2025 08:30:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id EF34844D94;
	Wed,  9 Apr 2025 08:30:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2ABC3C4CEE7;
	Wed,  9 Apr 2025 08:30:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744187450;
	bh=Nt8L99Z8ytx6X4EkS6apmyPr6cHk3uAN7Xqv53IQRqo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TyIxab97LYhRoLtWKwPMnV5grink2bdfUqN1pIVGi6hX1BQ1LObQ2dHlZypmeWzJ5
	 Qykjg/kJ3K+maK1wRX+NDDLz6BnX+Zpb+6qBrMrc9ypKCwu1DXQfTH0VODXsuTShcC
	 cGKQDoFoHcskgv64ZzCwy1CYR7ivQGi+Dmsbe5EYxGY6zUnisSZy2gp6xWQkEupc6a
	 a7U6SE9pNg3dMZM8A/XphF7yXFPcAjZdssF5KYvHCdXOinfTNGCcxyustuKpVZVXlo
	 XRDUbobEgMDSroi1IajFdmwu1tU253/i/mLMa/Ml7YCMEDV5rQYrt0S36jh5SUtL/j
	 sFgC6TkndhwKg==
Date: Wed, 9 Apr 2025 10:30:46 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] PCI: dw-rockchip: Remove PCIE_L0S_ENTRY check from
 rockchip_pcie_link_up()
Message-ID: <Z_YwNt6WUuijKTjt@ryzen>
References: <1744180833-68472-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1744180833-68472-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_093055_344417_A480DCD1 
X-CRM114-Status: GOOD (  18.74  )
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

On Wed, Apr 09, 2025 at 02:40:33PM +0800, Shawn Lin wrote:
> Two mistakes here:
> 1. 0x11 is L0 not L0S, so the naming is wrong from the very beginning.
> 2. It's totally broken if enabling ASPM as rockchip_pcie_link_up() treat other
> states, for instance, L0S or L1 as link down which is obvioult wrong.
> 
> Remove the check.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> index c624b7e..21dc99c 100644
> --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> @@ -44,7 +44,6 @@
>  #define PCIE_LINKUP			(PCIE_SMLH_LINKUP | PCIE_RDLH_LINKUP)
>  #define PCIE_RDLH_LINK_UP_CHGED		BIT(1)
>  #define PCIE_LINK_REQ_RST_NOT_INT	BIT(2)
> -#define PCIE_L0S_ENTRY			0x11
>  #define PCIE_CLIENT_GENERAL_CONTROL	0x0
>  #define PCIE_CLIENT_INTR_STATUS_LEGACY	0x8
>  #define PCIE_CLIENT_INTR_MASK_LEGACY	0x1c
> @@ -177,8 +176,7 @@ static int rockchip_pcie_link_up(struct dw_pcie *pci)
>  	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
>  	u32 val = rockchip_pcie_get_ltssm(rockchip);
>  
> -	if ((val & PCIE_LINKUP) == PCIE_LINKUP &&
> -	    (val & PCIE_LTSSM_STATUS_MASK) == PCIE_L0S_ENTRY)
> +	if ((val & PCIE_LINKUP) == PCIE_LINKUP)
>  		return 1;
>  
>  	return 0;
> -- 
> 2.7.4
> 

You should probably also add:
Fixes: 0e898eb8df4e ("PCI: rockchip-dwc: Add Rockchip RK356X host controller driver")


Considering that dw_pcie_link_up() looks like this:
https://github.com/torvalds/linux/blob/v6.15-rc1/drivers/pci/controller/dwc/pcie-designware.c#L714-L725

Why not simply remove the rockchip_pcie_link_up() callback completely?

Is there any advantage of using a rockchip specific way to read link up,
rather than just reading link up via the DWC PCIE_PORT_DEBUG1 register?


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
