Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B003FC88E5A
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Sep 2026 11:34:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yGFXyC4y1IuTztxNhCuXHOJihwCxVGoWqD8Ph0ngIH4=; b=uOEy4i+3V1OePbIwEOo/9rf6V2
	n6QQJOH8J/4RE4mGnRaH44bhAS0ujWRHD+k83C0L11SSH5Mo6d/e92ZRTuV7kn6CT1+qnHV9Kq2UD
	+jgpFUhCNEZ2JLkcArSU38SDEo3efrcqEzqkf9q05Pr0L5Wf04LHVcvJGy4RrURswwgjWt27Uqty5
	UWGUsrZCRuK4xUrmzPwVZiGin8DjgNtJ+Hm2PFDVBXw0IlKZMNDFJQ+QqyfgY4IHp+5WmJwm+2gR9
	MF1WgE+mgp5jdKc1kNCpgHn4Hfx2NT+0SG6TzvdPEbjZNARV9CZIQmsAeN4+hELBbm7mC0Qn6BjtP
	G08ymu2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5iTc-00000001ccb-1IfU;
	Sun, 13 Sep 2026 11:34:28 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5iTa-00000001cc9-0nKE;
	Sun, 13 Sep 2026 11:34:26 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BBEC844855;
	Sun, 13 Sep 2026 11:34:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8237E1F000FF;
	Sun, 13 Sep 2026 11:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789299263;
	bh=eqmYMNWXm2PS32PWATDXedLh2UIRpr7LtOC/6nDcHj4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=aRVLq5JFfmgQKaElgN9hARd2PubXgi6NeRv/TslJWttkklDgADNXdjSt9xm2uuuY7
	 81s3CAWyI4DwWKC3npVWoo+KgwQvw/sGscw9tR8i8v+We5Z3vWgYjJaRzd45KXI24D
	 Dvf7AXCH9Y8ZSObDY061Tbk7f+Y3xtY0AfQ385ilASDCaaWuyGHyr1qWOxbDVD5CQp
	 pc1A8Ut9y2SgUWJYsBdtl+Ew6pK2SWyJ4QxomjdPpDsv6kAXBt6h2xNh1ayyzbJIHv
	 0BbaaqFN9QuGlkmsh3tMHpI0Vpa8lCUf8LLQHd4fj4ij52IVzjfSx6hJGLSYJjq44J
	 SoMhGNHysk4qw==
Received: by traversing.sirena.org.uk (Postfix, from userid 1000)
	id EF057E0EC90; Sun, 13 Sep 2026 12:34:20 +0100 (BST)
Date: Sun, 13 Sep 2026 12:34:20 +0100
From: Mark Brown <broonie@kernel.org>
To: Myeonghun Pak <mhun512@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Ijae Kim <ae878000@gmail.com>
Subject: Re: [PATCH v2] spi: rockchip-sfc: skip DMA cleanup in PIO mode
Message-ID: <aqaKPEFt7fQe8QQp@sirena.org.uk>
References: <aqRM17TZ0-5pd6Y0@sirena.org.uk>
 <20260912190056.42192-1-mhun512@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260912190056.42192-1-mhun512@gmail.com>
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
Content-Type: multipart/mixed; boundary="===============0349963701581783054=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0349963701581783054==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BYqHUzUgRwUKZNts"
Content-Disposition: inline


--BYqHUzUgRwUKZNts
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Sep 12, 2026 at 03:00:56PM -0400, Myeonghun Pak wrote:
> With rockchip,sfc-no-dma, probe skips allocating and mapping the transfer
> buffer. However, controller registration failure and driver removal still
> call dma_unmap_single() for that nonexistent mapping.

Please don't send new patches in reply to old patches or serieses, this
makes it harder for both people and tools to understand what is going
on - it can bury things in mailboxes and make it difficult to keep track
of what current patches are, both for the new patches and the old ones.

--BYqHUzUgRwUKZNts
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmqmijUACgkQJNaLcl1U
h9CwIwf6A+Mv5erq9BOAGamYCRiq0f2YOtNdxCsprU4hUbNYwPzZgQCAmGAZhjr/
ORtTTFeMpKTizo2EekSAvp83S2VL9dxe1BhUaQoerKnG4MIqirlduo003OZ/gKtM
89/BUKPy6WqkW3A+nQ81bAglYptFyX8qo5FQzTb/cyyf+uzdxd5+xh5n98k0WS5s
SNR89mnwLzTyi0pmvALL7VmFl806G0KpMKPnowxT7PbjK54tboXHqO2BtCJEYk31
9Obbw0U7ogp3P+iV8nlQ30ZrZfb+MRCip9C4g27hJxcj69T3a4GbXySG9rJw7qid
YPCNkqKMNPhB6SoN6x0xYTwx4pg7cQ==
=X0/3
-----END PGP SIGNATURE-----

--BYqHUzUgRwUKZNts--


--===============0349963701581783054==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0349963701581783054==--

