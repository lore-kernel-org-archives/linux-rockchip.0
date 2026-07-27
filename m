Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DF44C531FC
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jul 2026 15:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s8scOhpT/wJxzlDjwltt8wV4jtJzDfdfJqqa7sK3V98=; b=vJvFk75RqRXp1X4R0JOyJiv5ve
	uC/Vw2DObF4LjOMciQ3lubNii8vdkrb6zXo8+/z9CAOKoGbgDhINjufMXIWTeIynYyB3ybcBzp80V
	TKxJ/t6H5qjMdi/GjDrtDPoTYIuqb+Bystw3MWzoTFMUXoM6TsMEx4qfUp5bLB7RdUEHtrgz58h8L
	yf6lU2/Sw9wEK70Vm5Pi4MZqiV7L9BT1LRpQT0h5ay2zo4K4aEuBL+D9JusJtfY3y/Hv9sUs//QDN
	LBfBWWRnU3ZcK1RB05FLXhvIZ7SxRD05Qb6XhIlru0dyvFHEz33MZkip4NEYAr/C3bnXkoMgdhk2c
	rgPyHWHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woNP3-00000003CcN-0yXJ;
	Mon, 27 Jul 2026 15:38:05 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woNP2-00000003Cbb-0MYa;
	Mon, 27 Jul 2026 15:38:04 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C963E43D84;
	Mon, 27 Jul 2026 15:38:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 264D41F000E9;
	Mon, 27 Jul 2026 15:38:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785166683;
	bh=dZTU8f78XKfrQAJqzTXDY/jHOk9+LGMfSKNZj6xU1i8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=iPDR7GRno/9OYTullUViMPOPShdS+gQiJ27iPNLgSsqiRhya/kaL/XuEy/RVidn58
	 +ffRb9s3m8xCGe+KSlFYxNyYmvLAgt5A7B46xQ3mQ9mstv1Zo5SVZjnSUG1astFr1l
	 nHZpfJBlDolUyCIkksDzN5ztHY5bXDO4U6H4a80JVsBTmX5pk3b8wfRO+fo6sKjA1d
	 YurgbkzzIG9W2JO/HROKnvaZ9wTsC4ZQ+jsd41ChtvlYPk5X+7raC9HgXrdnEyYEMw
	 c6564zCvw9FWYCy/LVNIzxp9T2OTtA7zjHduub+x9sXqwsL6zmeijUCmtnW1yKQ/Ep
	 I4duo/f5qBL8A==
Date: Mon, 27 Jul 2026 17:38:01 +0200
From: Thierry Reding <thierry.reding@kernel.org>
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: Andrew Lunn <andrew@lunn.ch>, 
	Gregory Clement <gregory.clement@bootlin.com>, Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Brian Masney <bmasney@redhat.com>, Bjorn Andersson <andersson@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Heiko Stuebner <heiko@sntech.de>, 
	Prashant Gaikwad <pgaikwad@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Tero Kristo <kristo@kernel.org>, linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org, linux-omap@vger.kernel.org
Subject: Re: [PATCH v2 7/7] clk: ti: clean-up simple provider misuse of the
 consumer API
Message-ID: <amd7U863RajvO4U6@orome>
References: <20260724-clk-provider-simple-clean-v2-0-56f306156d25@baylibre.com>
 <20260724-clk-provider-simple-clean-v2-7-56f306156d25@baylibre.com>
MIME-Version: 1.0
In-Reply-To: <20260724-clk-provider-simple-clean-v2-7-56f306156d25@baylibre.com>
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
Content-Type: multipart/mixed; boundary="===============5269851088617298619=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5269851088617298619==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3reqvjdwort4ovfu"
Content-Disposition: inline


--3reqvjdwort4ovfu
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 7/7] clk: ti: clean-up simple provider misuse of the
 consumer API
MIME-Version: 1.0

On Fri, Jul 24, 2026 at 11:03:58AM +0200, Jerome Brunet wrote:
> Clock provider should not be using the consumer interface.
> In other words, a provider should not be dealing with struct clk.
>=20
> This change targets occurrences for which the provider uses the
> consumer interface and corresponding clk_hw interface exist.
>=20
> Reviewed-by: Brian Masney <bmasney@redhat.com>
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
> ---
>  drivers/clk/ti/clockdomain.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Thierry Reding <treding@nvidia.com>

--3reqvjdwort4ovfu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmpne1kACgkQ3SOs138+
s6FOnRAAwacIQTHIdHeEEUATDJCerZeNvvPBnOLDDipxB7UftE/n0cclBK0p7nnW
71cEMyZzL7zva3Tu7J+G7m/Qv79N0NtzjoEOqY3Sbz/DyyCIvD44eJUU9lOfl5Vy
BFemJIHSFTfWtNIegSN4gbSmMY/zhJBVSF4WOdTcx3qjg4Q6Gtsxy54yKSMreAL1
xU0ty4QhONCOUvnq0BpZojJeHfNd+Y2Ldh6CsO6I9xD+njbEAPkCthXeNszUkRdq
FGgk6Vb+VybZMP+Tk/ynhV2AvlBNDcpjiWWztz53GHwba69t1Uhf3ClnW4NqRlt3
nAWKL0CoDSSYrmXg6R448ULsKG9C2ih5QkQOa7bF5ZIFqne4GoCnYoEv0Nf8s43H
Bzlk9PW+qVC1uvZlPX0iQBvo+k4J9esar8UGMDTN8CmN2kFJFO2Ea3VlE/EmQkla
rF/ucopeezhMRlPJpjpgN7ySxWkwiUgtsj1jVu43laahJBvw9kICApaAJkmpeUy7
AfG3HJRjtiutI1OMOdxbgDexQ8bVu4FeI/ApVvBZ0IOqHg0MyuCBu5P5++4b3H42
qPey3bLg0lHX3Kf0W4iSxrcxFepjpRNY20Jt3AO2JV3InzUt3Vl5f6J80Jse8YFu
a9NkjxEQX0kRR68CSiSHn2Ii7wUO9K3/kFhd5fcrsfyBDlNtBCc=
=tCp7
-----END PGP SIGNATURE-----

--3reqvjdwort4ovfu--


--===============5269851088617298619==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5269851088617298619==--

