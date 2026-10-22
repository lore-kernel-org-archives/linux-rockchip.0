Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60340606A324
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Oct 2026 10:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=kz5ktbXv;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=HZ7O7g+x
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=hEBdpVRndy5qUkIEtEtJ+XWRIfs08rhSJyPk4ZR/OPQ=; b=kz5ktbXv85O3AZOUlAEHhfQXkT
	HvNhaFc9QSFbxKuDk6o3UyBvBOTWDhZGZZACHKLZTAz9EF+qtumvmLG5EQ0AnG+zkRF4PbUmz2pqs
	4wrbcWhQ0OJ7MWl6S02O4xtbZCtE4xE3eu//NsgNiCves0kDQGSCxRU4wObzbJtXQ2YsKHBIq5FiD
	BTQa56qL/dxibp+zXWSQVA5qBPJvY0vgzEg4C5POvaZRfxooSVPfN7m6ZcrixF/aCw3e5L62/pHri
	FXIGvsZ/xmugrJcwKipYrvioKZjPn5fGTVDTrfnW4muNWPZWf1vIQWlnq/4PUrGgdzvfF4+ml/Wdp
	PCAKNKKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJprJ-0000000DuzE-3KYn;
	Thu, 22 Oct 2026 10:17:17 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJprI-0000000Duyp-0kXs
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Oct 2026 10:17:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 24C4A40324;
	Thu, 22 Oct 2026 10:17:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F48E1F000C2;
	Thu, 22 Oct 2026 10:17:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792664234;
	bh=Ou2d6JrHWje3qmQuucjDNW9hnVMBNvCFOnYdEcVU8uM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=HZ7O7g+x9EgxZqnoP86fD5Zqurnf0JaLvWRZVC8gWcpiJMGhiLbCSpgicwvKDwxax
	 Rm1pORO1egBQHZio7fTZWOwbCKcxwiSAxL6GrXawDqV/MXwgT2eYtsNat6HmnL5S5X
	 IZzuuy+AIio/veF6G1fKQEfuaVGRRr27VT746zfvfSyDYvzKtV5C2xvBix/VDEOB5e
	 aRwXvsGgU3DwSw6TRPxBkF5zGwxjDVmulaQicjoABG4sY/Vsv5Os3FJirw1lc3WOJL
	 a69PJCVY0uzyHldj063o8WUxjFLQNURzjrc66BDY2Nst67U+2dEFrQrXsKVdqzL94L
	 Lt7dUD+vkH9LQ==
Date: Thu, 22 Oct 2026 12:17:11 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Patrick Barsanti <patrick.barsanti@amarulasolutions.com>
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linux-amarula@amarulasolutions.com, michael@amarulasolutions.com, 
	dario.binacchi@amarulasolutions.com
Subject: Re: [PATCH v2 2/3] dt-bindings: arm: rockchip: Add Axelera Embedded
 111c
Message-ID: <20261022-accurate-beige-spaniel-c9b461@quoll>
References: <20261020113717.189082-1-patrick.barsanti@amarulasolutions.com>
 <20261020113717.189082-3-patrick.barsanti@amarulasolutions.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261020113717.189082-3-patrick.barsanti@amarulasolutions.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Tue, Oct 20, 2026 at 01:37:16PM +0200, Patrick Barsanti wrote:
> The Axelera Embedded 111c is an SBC based on the Rockchip RK3588
> SoC.
> 
> Specification:
> - Rockchip RK3588
> - 16GB LPDDR4
> - Axelera AI Metis AIPU, 4GB/16GB LPDDR4X
> - 64GB eMMC
> - uSD slot
> - 2x SATA ports
> - 2x Gigabit LAN
> - 1x M.2 E key
> - 1x M.2 B key
> - 1x HDMI2.0
> - 1x USB-C with DP
> - 4x USB3.1
> 
> Link: https://axelera.ai/axelera-products/embedded/111c
> Signed-off-by: Patrick Barsanti <patrick.barsanti@amarulasolutions.com>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
