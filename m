Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34AB6C282D1
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 20:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=178WQQqEfw/m7dpWUX4SzCmu96HU1YrHpZU9GInAky4=; b=dk8tZ3mQPWnZxd
	IZ4SwLRQKTvHJech6NSij7oZw91mNIYIQx61gAtgMJZPuO7kPENloa58pOS4qjz2zWx+fmjWU5iut
	/VjN0iauJu/p88BVBiumS2GulE3nF9oKBdHHq53Hl+ZXI7Jrce0Gu8jfktHnLiEUK+Caviz0eJ6Bb
	uQXxNOpvIeh0ub0KvIPqrrM1ahvcry/r8qjgsBEFFiW3Mgx1p6FNjDGW1t2IzLHMO2/OlJhy1FIFa
	NIX9sSvSWTBrsLj6QGIV62Gyh+3vrLxgeuZzDU52gFUpA/TyWaVZI/Qqr25fXD0yYlmtansCs5GMj
	gItt3+2cc7K9BqAy9DZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1to6xL-0000000CbMT-3cVx;
	Fri, 28 Feb 2025 20:27:35 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1to6lY-0000000CXyA-0h4J
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Feb 2025 20:15:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EAA955C64B3;
	Fri, 28 Feb 2025 20:13:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E1E7C4CED6;
	Fri, 28 Feb 2025 20:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740773722;
	bh=c8FPeGSP6yNbq4Iymm89F9EMYWrWSKialrTbBJJWFSs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=j9i6iPqSvQ+0eYWoznOC0s+nNhNdhs1FOSWSpMR3ykEQB5EkCKQ2gn30v9cykSZVQ
	 tUBrG9y+NvM4xhxyhTNpXcOqbKMVDV8qEvxj0zStGD7Th5Iwc8sZ+NJ380zSIYhyRb
	 8kcPp3xNKC16Nw5MaaCibtfFpgk72xN2hcIvD55MYAt4Yj2qqcfptu5hSN6AtpvV26
	 b7leJ6LtINjHA6MscOqjo9zu55KLBij+CLvXIrbiTnKmhXDc+9Wf4NPbyt5vizptWy
	 dABUyHTzIg5sKgdLYqESWk8ERUDjWkSx108PiJh2xZnw17fabtLocPt26Y6k/wIyW4
	 Gzl3Si/3GBHEw==
Date: Fri, 28 Feb 2025 14:15:20 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: Jisheng Zhang <jszhang@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, heiko@sntech.de
Subject: Re: [PATCH v3 02/15] dt-bindings: mmc: Add support for rk3562 eMMC
Message-ID: <174077372022.3568137.13331273937640122917.robh@kernel.org>
References: <20250227111913.2344207-1-kever.yang@rock-chips.com>
 <20250227111913.2344207-3-kever.yang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250227111913.2344207-3-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_121524_245714_582CB3E5 
X-CRM114-Status: GOOD (  11.47  )
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


On Thu, 27 Feb 2025 19:19:00 +0800, Kever Yang wrote:
> The eMMC core on Rockchip's RK3562 is the same as the one already
> included in RK3588. Extend the binding accordingly to allow
> 
> 	compatible = "rockchip,rk3562-dwcmshc", "rockchip,rk3588-dwcmshc";
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
> 
> Changes in v3:
> - Updae to fix dt_binding_check fail
> 
> Changes in v2: None
> 
>  Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
