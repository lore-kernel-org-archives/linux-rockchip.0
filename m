Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3523C25B4F
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 15:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W4qpiTXKiLcaxammRaXvyh2Pdo3up385myLgKtYmBp0=; b=sccjLtugxtDrUZ
	GMd353UU9FwXRI/+gBu0GL7hsVJdTOhdbU8n/Hy6vr4LW+8DSCwaNQ/OQENofHNvRB1oKKlcbDIw8
	OXC2eN81CM/sPXiow23TqReJkUu9NZGGfasb331VByRudhyg7QuDmg/uherHE3UR4FMALGJmpUNFS
	7TkzxnMfq0jOzwrA+XkfRXQEyFQCIDp/PRycDx00ZaOdDFWPZ9XAS/4JcOApVAbJpgazA1fy++3WH
	fvlmC7oTAgeMgZxEi7ffmM+dqK5W3U3ObFg1fTOgqbeZ6bQMSpWl1tjntXOyGrty6UmjZvI2bUgGo
	0g46sl3SJgCFogT84+jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4N4P-0000000Bo28-1wue;
	Tue, 07 May 2024 15:49:33 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4N4N-0000000Bo0w-1ljt
	for linux-rockchip@lists.infradead.org;
	Tue, 07 May 2024 15:49:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BD1146178E;
	Tue,  7 May 2024 15:49:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64EF0C4AF63;
	Tue,  7 May 2024 15:49:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715096970;
	bh=KDIJNxijUzjbFsJERLqaSytYfJ7yDDJ3cokD8Y4RusY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AJ/CJLHJAkdklO5snRDaDzohANmWZuZ9TGt+Rb+0gVkKXBtlYI6VxkeA7pdrSYORF
	 GNfI8a5PbhmbU58P2WVoys6rL+cUQkCd34umRbXhHnKIciyRsjVUQqbFf+OH/p1BlP
	 uZVb0txOh7ndFPn5AjpfdNS5w/UQO6ivC2iWM17mOrUix9w4nEnSnilufO63cl5CYx
	 IS6wDDAi9BuZNujBjevGIlWpRqNdBnfrLqUYlFNk8bhk3D7EjNS/Ul3IFpz7pvzZhF
	 Ozszh9Lve/isuW7cIdak2BjTjILhisZs4pKaPzL7AqFZZ/t21x0bQyvO/bpmS4FRNR
	 2wKy0cUgFxRIg==
Date: Tue, 7 May 2024 10:49:28 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Jon Lin <jon.lin@rock-chips.com>, Conor Dooley <conor+dt@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Simon Xue <xxm@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
	Damien Le Moal <dlemoal@kernel.org>, devicetree@vger.kernel.org,
	Jingoo Han <jingoohan1@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH v2 05/14] dt-bindings: PCI: rockchip-dw-pcie: Fix
 description of legacy irq
Message-ID: <171509696640.530353.4535122936200527416.robh@kernel.org>
References: <20240430-rockchip-pcie-ep-v1-v2-0-a0f5ee2a77b6@kernel.org>
 <20240430-rockchip-pcie-ep-v1-v2-5-a0f5ee2a77b6@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240430-rockchip-pcie-ep-v1-v2-5-a0f5ee2a77b6@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_084931_715097_1F234A79 
X-CRM114-Status: GOOD (  12.90  )
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


On Tue, 30 Apr 2024 14:01:02 +0200, Niklas Cassel wrote:
> The descriptions of the combined interrupt signals (level1) mention
> all the lower interrupt signals (level2) for each combined interrupt,
> regardless if the lower (level2) signal is RC or EP specific.
> 
> E.g. the description of "Combined system interrupt" includes rbar_update,
> which is EP specific, and the description of "Combined message interrupt"
> includes obff_idle, obff_obff, obff_cpu_active, which are all EP specific.
> 
> The only exception is the "Combined legacy interrupt", which for some
> reason does not provide an exhaustive list of the lower (level2) signals.
> 
> Add the missing lower interrupt signals: tx_inta, tx_intb, tx_intc, and
> tx_intd for the "Combined legacy interrupt", as per the rk3568 and rk3588
> Technical Reference Manuals, such that the descriptions of the combined
> interrupt signals are consistent.
> 
> Signed-off-by: Niklas Cassel <cassel@kernel.org>
> ---
>  Documentation/devicetree/bindings/pci/rockchip-dw-pcie-common.yaml | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
