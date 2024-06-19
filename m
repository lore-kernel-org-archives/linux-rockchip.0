Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FD63C27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jun 2024 19:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3VF92Zml5g7D4HRGcQtr3B85i9gHsMAaGJTZij0BiAY=; b=Tth4QGdR0oYRVb
	OcLmK6/orprGyplGnNqR/NJ8Qw2ufJS3uBDEtk4ttjTCXVxuyoeL5ZOrHl0950LXTkgd6ueHeRQRx
	KgiVO/aLmxBOAFvneg2DnLiZQcUphrF5nO8Nvq1QWAf5eAGO3GtRqHasZWTDckIvGS7TruVLS8HHI
	Y2gOqVUbi6LxenyRBWSCTpEHdgLoRqWKxE3WaDdfhMmMAKcEY9MH/GVDo2rLs5ReeMQhZKUFpixLp
	8Y8tc76tF6kxSy4dyK0U/1CDbYslx72fNcEZbkRGqCIHpdV0cblp2Qrz4tJEEcFqC0OuvLrVOjeyg
	855Vzpirxs8QVcqwzxtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK17s-00000002Y6s-0RuE;
	Wed, 19 Jun 2024 19:37:48 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK17m-00000002Y4Z-0H0U;
	Wed, 19 Jun 2024 19:37:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 514DC61EEF;
	Wed, 19 Jun 2024 19:37:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3346BC4AF08;
	Wed, 19 Jun 2024 19:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718825855;
	bh=7ZPs3tYloFOklfomR6gjf1ojP8TvvwuSW5jDnGW2zVo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PTQvHTYxmZaU2tGTprqeMPMiyLd9eVQRh9F/JtEkTDM3KCOzWqPzVwpgtEvMYXOhL
	 8PXC2331ipOw8EV9+yH8zlLUQLHArm/ZDnNXcQpsKoyivoqlXO2dk6EDqtfI1x3ZgT
	 1+9Ifgkrkydy7OrxejBVVNx9/o5Xr2U8RNgodhyBVMIpgYXVbpUncJ3jDZtMFQXF+y
	 MMfeAcfsyCiBWjaOMTwjoBAhmPtmwLkWILG4BoHVX5qU3syB3A/bzlwA+bolHMEz/p
	 6Ff8BArQY2/a/pYgzRrVuzx8Nzhj8H7TGog6/BjHapCMoY39XeP4LJOA3WGiOXDL0E
	 8n4pb/xyMArug==
Date: Wed, 19 Jun 2024 20:37:30 +0100
From: Simon Horman <horms@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, davem@davemloft.net, edumazet@google.com,
	kuba@kernel.org, pabeni@redhat.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/3] net: ethernet: arc: remove emac_arc driver
Message-ID: <20240619193730.GW690967@kernel.org>
References: <0b889b87-5442-4fd4-b26f-8d5d67695c77@gmail.com>
 <10d8576f-a5da-4445-b841-98ceb338da0d@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <10d8576f-a5da-4445-b841-98ceb338da0d@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_123743_826098_D9E97A7F 
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

On Tue, Jun 18, 2024 at 06:14:14PM +0200, Johan Jonker wrote:
> The last real user nSIM_700 of the "snps,arc-emac" compatible string in
> a driver was removed in 2019. The use of this string in the combined DT of
> rk3066a/rk3188 as place holder has also been replaced, so
> remove emac_arc.c to clean up some code.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Reviewed-by: Simon Horman <horms@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
