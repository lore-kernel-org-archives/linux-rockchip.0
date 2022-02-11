Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0C68C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Feb 2022 11:50:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/LMwXXtsm0WcLoghshwJuYMYWrM6d8/+ZpCiIAlYO2s=; b=ITWstOLU+n9RGS1bpGAbOE8tJ8
	mzMtulkB+61pHsj7U6ffVA9dd1BVxBFO1IQgInBUdmFg1lOY/sPbnK89xPfmrAph/VOb6Sxb7KY0s
	7s5Gnauo+a7IQUJqqfxD8zxDl9H0mz2nlP2aWD/TOV3pDwtzW9Dd+BVtyOeqIXzuBREkUUIq+WWAE
	vG1Z+K3nFjDfTdR1y711kGBIweNRGMu8BdErTbpwG3P+f+rfLBfzhssO/SCjx3ZHQTjxqRTlvqt8W
	YbsWdUWI6oUGr9/Z3ksa41jrLGebKN/IPWaxLImYOGCYP71qSLPmcIcwlMax63u0CgrEkLnp7sK0e
	TjJHiJuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIURK-006xVX-KI; Fri, 11 Feb 2022 11:50:14 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIUR3-006xO2-1b; Fri, 11 Feb 2022 11:49:59 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 96CE661A66;
 Fri, 11 Feb 2022 11:49:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 900A6C340E9;
 Fri, 11 Feb 2022 11:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644580196;
 bh=EF0Nj0+jfw+hmL60rlX3GPZQeAvFkdT57GJorcn2C+s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LJCK6YWtNBNPRCD5sV0Op6gm0WA/QbXpDupWki3+RxrW2M8pZErR3e5KIw8E6FBYm
 E8krep5rmvS5LG9N5ZWfqUKW9vaZq5DrY1G3D9WVHfdBHbDmxjJDUN2uyErX8alN/w
 wdC5AZPCgKR103Ob+eWEzbx0OFReLdASIbflGdTRNXxVrB3EEGqx8n5WZ09YKB7j1O
 GP5kCxaeBySmp3zvTyCxVK8d0nEdPIEPnyv4HWX/RUlkaW6nnfl3RKRItty9p//ze7
 Jj3Zx87t8lxJBTsInBN4aZ5Nvc+XJipYWQ2BWCwiJZPWfPgrm77UD8kO9I8foNJyg4
 Pnj0WWTDqJE2Q==
Date: Fri, 11 Feb 2022 11:49:51 +0000
From: Mark Brown <broonie@kernel.org>
To: Jon Lin <jon.lin@rock-chips.com>
Cc: heiko@sntech.de, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 5/6] spi: rockchip: terminate dma transmission when slave
 abort
Message-ID: <YgZNX4ZuSumZ/Yie@sirena.org.uk>
References: <20220211034344.4130-1-jon.lin@rock-chips.com>
 <20220211034344.4130-6-jon.lin@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20220211034344.4130-6-jon.lin@rock-chips.com>
X-Cookie: do {
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_034957_180005_8AF52684 
X-CRM114-Status: GOOD (  13.04  )
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
Content-Type: multipart/mixed; boundary="===============7585347775642378091=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7585347775642378091==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rmnoW3paj3umB6SM"
Content-Disposition: inline


--rmnoW3paj3umB6SM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 11, 2022 at 11:43:42AM +0800, Jon Lin wrote:

> After slave abort, all DMA should be stopped, or it will affect the
> next transmission:

Again, this is a fix and should be at the start of the series.

>=20
> [   31.693877] Unable to handle kernel paging request at virtual address =
ffffff8105a2a7c0
> [   31.694643] Mem abort info:
> [   31.694898]   ESR =3D 0x96000045
> [   31.695179]   EC =3D 0x25: DABT (current EL), IL =3D 32 bits
> [   31.695653]   SET =3D 0, FnV =3D 0
> [   31.695931]   EA =3D 0, S1PTW =3D 0

Please think hard before including complete backtraces in upstream
reports, they are very large and contain almost no useful information
relative to their size so often obscure the relevant content in your
message. If part of the backtrace is usefully illustrative (it often is
for search engines if nothing else) then it's usually better to pull out
the relevant sections.

--rmnoW3paj3umB6SM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmIGTV4ACgkQJNaLcl1U
h9C1KQf9GVPQqLpAYXPnTVXWv2GgFuiO3xWPa4fGn6NFNruqsC9kG0ILuIzo96nt
Rt7bz7N2dqWB0CuQHZnyAPMmIe97An8dmUZkb1o4DzJVrQyQteZ1X6YQekbpvpSO
kYS7IBZTqmQckxR0xKm9Wj9Sb6N+eZ3evbKgF+rGU1eIOeC0Qvaqd6QyNbddWEfB
PuU4UpH42zkWR/tzrTM2sdZy82aylHomTEHRn1f+/bhOrPna9bn6PbV2nuJ5nOeN
g4ARZsoRuFPYXn9dBvptd/YNinUyxuOLYgqyYl+r/XDgR7CPSH44s81EnsKNYO3N
9zmtydE+XHf6scVEtKuzSoilb26imw==
=5FlO
-----END PGP SIGNATURE-----

--rmnoW3paj3umB6SM--


--===============7585347775642378091==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7585347775642378091==--

