Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4F46CCFA1C
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 22:58:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=anwddCzQ3b7vqImIOyposYMYfE2mv6azq4B3Vpr3hTY=; b=QO9b/1yGSQC0Y1
	PxaXX1vq0xNzh9fiYU6xuRzC0VCJcitnY5Bw2Ob3xbE4f4hnHRxEJL1Jgz5o6tp/1avfRyTVnGtMc
	5bRoYrQ8rhdPYH58vVkCrJHeqmj11E6lPXvCPxtcMdvyKdC06fjgZ2/6S/2RupnMTEh2nTjLGWdSq
	Eb8NdSF5qbcr9ZGzLSCHzAbvqIZQKJvSuOVleNe6qRxjhi3cIq/FSoTkyOmxxynSwGadY/R8uNoqx
	umRZNK7ZavAAIAUn39HuAji0Fyf01U527k0GG96f2DyS965L5A5OOF+k9lsZzWcWWR1h2SptYGSeW
	kTDM7z8yaItTmT4qWJvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH8wG-0000000GL9Z-0fSB;
	Thu, 06 Nov 2025 22:58:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH8wD-0000000GL7I-3RuQ
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Nov 2025 22:58:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=KoeG9AXwwcsEMQbfSio+I+YA+zz4hxk6DjfUXKTZUjQ=; b=qSgUEdPHNZ3rdGWIlwVkU23MkE
	S4Se7+BdqC/eOMy4Pi4SjkvtGsXdYlZUuTBUJEjscvBK86P9thkQtPDzsESywn6e2f6ne6ereXgPt
	tAqnTwzFSD7+nfow3EiNcEsvrgMmbDo9qQRHBVj7Ynx+ssn6cQ/6XAU4roAZ1mleX1mRCBNPDzcMI
	lIbiorChe1umHk2WUrUDt63KNreY5buf/w512c8OIDnAQaxhb37B4LNyRdr7poT2gljKSx0wg/9aO
	azvPnEtdUlZIb5TEzwtWQxV5Mbfdv6U9z/2iW2iAgozWukyd30PkaxjT58t5JYeo8z0DcrS5kxGDd
	1zd9eMFQ==;
Received: from i53875bac.versanet.de ([83.135.91.172] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vH8wA-0001pr-Lr; Thu, 06 Nov 2025 23:58:38 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	damon.ding@rock-chips.com,
	jbx6244@gmail.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: (subset) [PATCH 0/5] Indiedroid Nova Devicetree Updates
Date: Thu,  6 Nov 2025 23:58:33 +0100
Message-ID: <176246989728.210200.8559295634693488639.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251105205708.732125-1-macroalpha82@gmail.com>
References: <20251105205708.732125-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_145841_876627_DE04E385 
X-CRM114-Status: GOOD (  12.73  )
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


On Wed, 05 Nov 2025 14:57:03 -0600, Chris Morgan wrote:
> This series fixes up a few remaining issues with the devicetree for the
> Indiedroid Nova. Namely it adds or updates a few pinctrl definitions,
> it removes a few workarounds that no longer appear to be necessary for
> eMMC and bluetooth, it adds support for the NPU, and it sets the device
> type as embedded.
> 
> Chris Morgan (5):
>   arm64: dts: rockchip: Add device type for Indiedroid Nova.
>   arm64: dts: rockchip: Add Additional pinctrl defs for Indiedroid Nova
>   arm64: dts: rockchip: enable NPU on Indiedroid Nova
>   arm64: dts: rockchip: Enable HS400 for Indiedroid Nova
>   arm64: dts: rockchip: Fix DMA for Indiedroid Nova Bluetooth
> 
> [...]

Applied, thanks!

[1/5] arm64: dts: rockchip: Add device type for Indiedroid Nova.
      commit: 318bc4b5ad229435abbb7b9a7c8b1876fae311e7
[3/5] arm64: dts: rockchip: enable NPU on Indiedroid Nova
      commit: dfa4f7f5cb2c66fac5a17d63e5fcf1bf50ea7344
[4/5] arm64: dts: rockchip: Enable HS400 for Indiedroid Nova
      commit: cce837b7a3599dc83cd9c08afc07b076f127354b
[5/5] arm64: dts: rockchip: Fix DMA for Indiedroid Nova Bluetooth
      commit: c6c76445c30bb73fd4cfba8f4742e642dcfe90f5

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
