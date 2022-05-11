Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12CE1C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 May 2022 15:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OduImTMEHWKL7eH7ZqzdwEUPSi9YVIOU5mkAZ5HpVYU=; b=K7lNFWki3MKb1u
	HHbD7aqEJgPdT3UthBxIOIBhVPpAnC3WFr7e1ef7Pdj54Dilr9cWKbCbL0ovim2tNHQvGuKKh1zxa
	L8z+ShiGCAggWmcnz2mrPLV9kF+1S3jRSj9KDovYVOBNY3EZh77OFrTCacQh3qvgRNjorVxNFYHiM
	28B8+wQhsu0v5O83kt8Lnb7/ULbxRPku0pdRUln3cd6iChPDVDE9dYdi/Y6cSxe6LBTbmXlDJNKGi
	KniC9SX3a2hmu1IsxgN9+RJlzTCt7AGgL7RrSbXYsWfLFz4MHGu58lT6Ei8OVAiSNG8NPUk3EP1/z
	HQmWyiDEHo4FpBAuOGUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noo5G-007UUQ-8x; Wed, 11 May 2022 15:17:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1noo49-007U1n-WE; Wed, 11 May 2022 15:15:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E06D6ED1;
 Wed, 11 May 2022 08:15:52 -0700 (PDT)
Received: from e123427-lin.arm.com (unknown [10.57.1.148])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5255D3F66F;
 Wed, 11 May 2022 08:15:51 -0700 (PDT)
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: linux-rockchip@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Peter Geis <pgwipeout@gmail.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Marc Zyngier <maz@kernel.org>, linux-pci@vger.kernel.org, heiko@sntech.de,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v9 0/5] Enable rk356x PCIe controller
Date: Wed, 11 May 2022 16:15:44 +0100
Message-Id: <165228194780.18099.431001983386428849.b4-ty@arm.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20220429123832.2376381-1-pgwipeout@gmail.com>
References: <20220429123832.2376381-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_081554_122629_1FC7561C 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Fri, 29 Apr 2022 08:38:26 -0400, Peter Geis wrote:
> This series enables the DesignWare based PCIe controller on the rk356x
> series of chips. We drop the fallback to the core driver due to
> compatibility issues. We reset the PCIe controller at driver probe to
> prevent issues in the future when firmware / kexec leaves the controller
> in an unknown state. We add support for legacy interrupts for cards that
> lack MSI support (which is partially broken currently). We then add the
> device tree nodes to enable PCIe on the Quartz64 Model A.
> 
> [...]

Applied to pci/dwc, thanks!

[1/5] dt-bindings: PCI: Remove fallback from Rockchip DesignWare binding
      https://git.kernel.org/lpieralisi/pci/c/931262e646
[2/5] PCI: rockchip-dwc: Reset core at driver probe
      https://git.kernel.org/lpieralisi/pci/c/431e7d2eec
[3/5] PCI: rockchip-dwc: Add legacy interrupt support
      https://git.kernel.org/lpieralisi/pci/c/e8aae154df

Thanks,
Lorenzo

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
