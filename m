Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62956C282D0
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 20:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M1fsE8ef0tf3h3Kus+yYGIHEZU1FwEtRz7XD5j1PUJs=; b=nMiheA6LDl/GFV
	I7cq46P+HbZX/LpU8TSZl18FUeMUHRZPUe2ecLLJ0E2e6u/1J/HPmK5nFN0w8QD5B6L2GnL2uqniF
	rpZi0HH8h9q0Bq7KgzOZM8x37Gq9jpNz/aYEc/aE560MiAf3+4ffnJO5xwhKVBg6VShASupP2iWCQ
	mdoUMAo8MPX9lqLqm/7V6Z/Fq/KDQEfnMHf3lokoU/7NyzLT0OzWRrcm4K2MAmVBKQK1wbgsgAgpE
	pPX1n865ntTPHGrgmYS9BYeaNEs65D2x+LVnrFMAqVr5sF6E4zNjfSTBn9tik2GfVTVNAa5Gl3oq7
	Il0QqOEThD1Cgty8Ku1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1to6xL-0000000CbME-2B0N;
	Fri, 28 Feb 2025 20:27:35 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1to6iB-0000000CWYG-1JCn;
	Fri, 28 Feb 2025 20:11:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E34225C102A;
	Fri, 28 Feb 2025 20:09:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42051C4CED6;
	Fri, 28 Feb 2025 20:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740773514;
	bh=LQsJDstkxtElAiCGOGeiQuO6nIrsIZNsGdbOQX7SOh8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DGSJVYQep/MefGALVYWjcRJDSFo/1tqOlYoo7cQ37ROrU4OauDU5cFyZnhLQcljdH
	 HCEVU5JwN4Okst/HU6FZhZRPwviOmTFMNDLVvu/4/zpdbDwwwXoMIWoo79rzVBRyxO
	 TyBI/+o4BaK9IMx/kridDvL+CRzBcTJ72JHXR23+M3po2BJ47guvqDQe4k6KjJ9Y9y
	 YmJvZDfvcogBcU8Vy8uTH0eJE0PrzxS0EODpaUONylhjNY2s0jLoJ8M8w9//mMXZLt
	 Zpn/upccseshhGN4Ch0o4YqNIRM7SGD7kaUqW/P7YNmTWst28V2Qp2hEafneY0k3lj
	 oE15PcY4Rndrg==
Date: Fri, 28 Feb 2025 14:11:52 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>,
	linux-arm-kernel@lists.infradead.org,
	Simon Xue <xxm@rock-chips.com>, devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>, heiko@sntech.de,
	linux-pci@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v3 01/15] dt-bindings: PCI: dwc: rockchip: Add rk3562
 support
Message-ID: <174077351138.3532182.7064020347463101186.robh@kernel.org>
References: <20250227111913.2344207-1-kever.yang@rock-chips.com>
 <20250227111913.2344207-2-kever.yang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250227111913.2344207-2-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_121155_395697_67F700F1 
X-CRM114-Status: GOOD (  10.03  )
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


On Thu, 27 Feb 2025 19:18:59 +0800, Kever Yang wrote:
> rk3562 is using the same dwc controller as rk3576.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
> 
> Changes in v3:
> - Rebase the change base on rk3576 pcie patches
> 
> Changes in v2: None
> 
>  .../devicetree/bindings/pci/rockchip-dw-pcie.yaml        | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
