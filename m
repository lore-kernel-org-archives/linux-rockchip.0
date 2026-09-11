Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F67DC88E53
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Sep 2026 18:48:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HGoPa4PDaBThZPMRLv3gPoaTomjriu59UlMOFPm03Qs=; b=GVssoXJ4uyOQRkPV52S+VehnuX
	YGq0Y6qm5qQ0zu9vFukZfjT5eYN1CxlpAeJlQvG7i4xB0+pAg64O4Yk0rqAQ6RReIgzviB6fZy7DC
	zrwUdmXKfiPI1Oyjd4wzDGG9VUmuUK0BaUxrk8K/Y6tD5gvt3hBj+waC8JQZ05Xod+w6a8cZlAZGr
	FyQfn2s9kb5/aD6zEAOr75FSwPOE8apwj392bFwMgN2PvQ2LvAg7AORWQNFPhHeHbdnTZCrxgDw43
	SmCbe8lCgEud9y6Gsqo2lep/nU7s/o5hTGEXr4OE00diKP+QQura8oX6auFxZkX4HqpLdai3R/a1m
	9IE4qDug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x56IB-0000000HTSA-1Zbq;
	Fri, 11 Sep 2026 18:48:07 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x56I9-0000000HTRb-48PW;
	Fri, 11 Sep 2026 18:48:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B8B1D404E8;
	Fri, 11 Sep 2026 18:48:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DF981F000FF;
	Fri, 11 Sep 2026 18:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789152485;
	bh=9ajwAaY0cVsvSHCyTqIKZnd53jar7upwfZE55GX+kls=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=NxhUj3uRiZdCUVnfy9OJ6JxZSwXTLbC2JDs2SOawDDUst15bOPObpauIjTa4/lYez
	 B2q/sRDfkck9M3N9IDoieUVemUV7eFXoyAZy8RRe5XD7vHLydhRCAb009rmiUlJRkP
	 2U/g9JZX05It1GjaJj3gNnMIxz7B5IkAOTjIn5QumtQDQDQroFA0maitbO2TjL8Haj
	 2TVt5zM1L6/P2aYau3PZzL1Mcbq4Akaz3GJtFm2kcSxWXjLtSkvjmpx4l2C9RwnwMd
	 9K+8X0o6DpC+LjytkD0lU3ZjnpkNkSDVkl5HNOtWyziqf4nw6L+dpGSXNEznk+Elep
	 XKjkkSjOf4dEw==
Received: by traversing.sirena.org.uk (Postfix, from userid 1000)
	id 6213ADAB022; Fri, 11 Sep 2026 19:47:51 +0100 (BST)
Date: Fri, 11 Sep 2026 19:47:51 +0100
From: Mark Brown <broonie@kernel.org>
To: Myeonghun Pak <mhun512@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Ijae Kim <ae878000@gmail.com>
Subject: Re: [PATCH] spi: rockchip-sfc: skip DMA cleanup in PIO mode
Message-ID: <aqRM17TZ0-5pd6Y0@sirena.org.uk>
References: <20260911172701.58177-1-mhun512@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260911172701.58177-1-mhun512@gmail.com>
X-Cookie: Orders subject to approval.
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
Content-Type: multipart/mixed; boundary="===============2938248632665801509=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2938248632665801509==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yXCBlsD+8N8P77Ma"
Content-Disposition: inline


--yXCBlsD+8N8P77Ma
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Sep 11, 2026 at 01:27:01PM -0400, Myeonghun Pak wrote:
> With rockchip,sfc-no-dma, probe skips allocating and mapping the transfer
> buffer. However, controller registration failure and driver removal still
> call dma_unmap_single() for that nonexistent mapping.

>  err_register:
> +	if (!sfc->use_dma)
> +		goto err_dma;
>  	dma_unmap_single(dev, sfc->dma_buffer, sfc->max_iosize,
>  			 DMA_BIDIRECTIONAL);

Rather than adding use of goto to skip aroud within the cleanup here you
could guard the calls that need guarding with if statements, that would
look a lot less scary than jumping around like this.

--yXCBlsD+8N8P77Ma
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmqkTNYACgkQJNaLcl1U
h9CWowf9FYhn4CUqLi778/DZdnlco03RF07n1WzzIV7B/q7VDMOeIelC+xtd9Ltq
7MDi3uvnr1X7i6KKjqeOD74R0Ty5sDH5nVjCtilRp+GZZ9E19CjA41jA9+Gb+Y/7
9g3bpHT1bykk+xr9VgZM42sZ7sl5m8tFtSnrvDckjqzb4eC5To5MbkHwJM3ZXE+W
UTQNnDachWQHnWxSQXCOYCpoQHfvy3BBsUP//ByXb/y/6M+7gvEhozDUJY5MEm06
AXWiqb4zlZwznGh0gPNZ8vDy8JU74GRhF+xGrwLRDsg1zTuZPQ+5GwXJs40WWMia
7jh1hekMc9VqDUbIG56TVwSaIk/7Gw==
=AA3J
-----END PGP SIGNATURE-----

--yXCBlsD+8N8P77Ma--


--===============2938248632665801509==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2938248632665801509==--

