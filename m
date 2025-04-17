Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9C37C369B2
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Apr 2025 06:11:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eaVGc6kXCA8v0o16ApRGOS6gN80ja9XznSlko6IZj8c=; b=lap46n3BY2zvRe
	AG0LfpQSCDwS82ppCH+1DN1bcUGdawz4xtL45o0Vs5qI9xk+o3o2XsT2O902xZVZMrU2WelpeS731
	OxwSq/zebNDyD77IqCrRHvSN/9OZAg855CdgMi1rYuZ4A9oP6BypcB5nnp1VDGOl2zF4SLMcLi2jn
	rxcZiCcAiVvvVqY+r3iHCWZy39aPLlrSt7irETYUsTMSMiM5v+7Lw8N2hEhD5jfSX9q6yAN7E0hbM
	UNOuoBtadzBvBoERyNNzT1Fj6pSn83+0V5rrRPZKgzFX5hNzjqPl07Bl+Hy5V8hjEXe9fLVwwDdYv
	a7CMnjR593XeBF6C/Bag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5ISp-0000000Brpx-1CGL;
	Thu, 17 Apr 2025 06:11:07 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5IPn-0000000BrEA-3MIj
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Apr 2025 06:08:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id BDC74A4B13D;
	Thu, 17 Apr 2025 06:02:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5EF15C4CEE4;
	Thu, 17 Apr 2025 06:07:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744870078;
	bh=OMu7tO35fvSf9J8kxaenGb0sj4L8jwiOy3D1lWxPt40=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BZ8CNBrGHNcho+tHZRAgQp07hL/utTImmqSoqG39q9fl/9EA2KRBmVAZHjsNR2v0m
	 NlgFZn0kHBD9IvP6cEuuloCUOZSpoZv8g2FJHF+ASGKUOhBFXDhMyu9oepD7NOGN2/
	 LZzx1AcFFTC8YrPjmMd+aZRUzZpuNj0REarTypEG+gz6ikZfQpJ8xigRYXnpmNLSRl
	 1rj9pZL07euG4eTFfas672ZXM83TmDFVCalxNsFrq7wTFoSqSWXamtQ0Yjl6Rn2tTw
	 beMdZU+IA52m6QyzTP2QhAua9RQcpmdEs9+4jgujQTEfxxjrPCYW5Eb2fbf1QiISMr
	 s1vP7vK5RIL2Q==
Date: Thu, 17 Apr 2025 08:07:54 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 1/3] PCI: dw-rockchip: Remove PCIE_L0S_ENTRY check
 from rockchip_pcie_link_up()
Message-ID: <aACaupQvmiiBE29l@ryzen>
References: <1744850111-236269-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1744850111-236269-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250416_230759_898853_E1D81E63 
X-CRM114-Status: UNSURE (   4.83  )
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

Hello Shawn,

I just see patch 1/2 and 2/3.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
