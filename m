Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9DBEC531FC
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jul 2026 15:35:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/QIMOoLsM6Gl9FADRQSI0oeYFs/MC1oB5Soi27jE7i4=; b=KBncYoXe3JAsolzyHmSHU+GixY
	tB7sCr5hY3kWb695iLm7sno4J6CuN1TLrKeGsJ8+atUUvc6jhMMo951bAOWEjuHEVpRVR7nnh7/f+
	8+6C8cfw0LR10zUZOr3Hd4uqRlooP9sN0Pui5YHWvN8RJi3AsbYgibu1XvHuP2MrmcG4Zfo9+llX1
	awL+ZKa+1tYLjT01UMmrE+96Tg9qdpTFhYPKUEDsOUnGwWtgxiUA+3RXJcz2PAwJkhYWMcW5vCQU7
	81dnZLXkz84u9zmqUZ8T0onwzOJ72Bz4TgfzgOsAHK0BORTswChZ6WlvqPZyKTOs/t1lLA1qFsODB
	SbVBEMSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woNMg-00000003Bjq-2L50;
	Mon, 27 Jul 2026 15:35:38 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woNMf-00000003Bj7-04sT;
	Mon, 27 Jul 2026 15:35:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 533674070E;
	Mon, 27 Jul 2026 15:35:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A53C21F000E9;
	Mon, 27 Jul 2026 15:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785166536;
	bh=6pimLA8PXpe/KB2O0/HbQ+QwyvJSF7KITGTCYTL5PK8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=kPGyshABvDxW3Ih+0CYOdp7ZetMFxAj2p4xEAoU4nrm+vWZ44ccOoqz64YO5hUEEG
	 QvHaF3VO65kWPjOh2uqE1OaZIMSaFqAu3K9HnsjbqXYyuqX5n8xaapj4qeHA/5wr+4
	 92YRfeMwxNcWOCMZr921uKVmanLykM2B8wSC+vT45+s6HjCs+MOT/P4ytTm/yhm1nB
	 mBYgbIvIorqVh8Iqh/Z60kRsAA4NObO39857pZVg5SmgqnrOHER9MrVKuDU2FJuO3Y
	 3rt3l1Z/Hni31UcWyk/3RJbV88Q9trPXsexJgI2uyXEDHzVwhEul1+RiSgFf6KyOEI
	 R4zKa6Bw3KdsQ==
Date: Mon, 27 Jul 2026 17:35:33 +0200
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
Subject: Re: [PATCH v2 2/7] clk: qcom: clean-up simple provider misuse of the
 consumer API
Message-ID: <amd6vhL9bX0YmjE3@orome>
References: <20260724-clk-provider-simple-clean-v2-0-56f306156d25@baylibre.com>
 <20260724-clk-provider-simple-clean-v2-2-56f306156d25@baylibre.com>
MIME-Version: 1.0
In-Reply-To: <20260724-clk-provider-simple-clean-v2-2-56f306156d25@baylibre.com>
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
Content-Type: multipart/mixed; boundary="===============4665579592708447539=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4665579592708447539==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zq5ldklgurjwxspu"
Content-Disposition: inline


--zq5ldklgurjwxspu
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 2/7] clk: qcom: clean-up simple provider misuse of the
 consumer API
MIME-Version: 1.0

On Fri, Jul 24, 2026 at 11:03:53AM +0200, Jerome Brunet wrote:
> Clock provider should not be using the consumer interface.
> In other words, a provider should not be dealing with struct clk.
>=20
> This change targets occurrences for which the provider uses the
> consumer interface and corresponding clk_hw interface exist.
>=20
> Reviewed-by: Brian Masney <bmasney@redhat.com>
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
> ---
>  drivers/clk/qcom/clk-hfpll.c | 4 ++--
>  drivers/clk/qcom/clk-krait.c | 2 +-
>  drivers/clk/qcom/clk-rcg.c   | 4 ++--
>  drivers/clk/qcom/clk-rcg2.c  | 2 +-
>  4 files changed, 6 insertions(+), 6 deletions(-)

Reviewed-by: Thierry Reding <treding@nvidia.com>

--zq5ldklgurjwxspu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmpnesUACgkQ3SOs138+
s6EEqxAAlCFaxoVTCA1CfgRp8dzwZafYmIYgEsE0ClMOdVhcykkwkw+zzREQzNWw
zrNc8zItDXLD59chu4jB1t5x3EUCI0fm0ykDZzAvFdWGIam/VRhf+5fFE0LlKMLC
b3C/IFiDNgi4b+iSQYBVAxsPIxXXTiCtua/+8Hfkc049kvL5g+q0Z+snYb6nWRvt
+It5/oxa3V/Gbb02LDDOyoJudwBB2AuMyBWQIgpLly214d7YySjLH75z5RIjzklN
XeD+uB6bfmKllsYQzn8Gg3IXQS0JDQMaAUGWMQV828p5fiDPRZFo/fHXN+2wkLk9
wDdJTU4u6WcZ7s//S/KMekniPws8XtvC2Qf/X0JC5WeZbKW5cPn5KGIZfEjaZfGv
MVVB7C6coPw4pK8S4enaKy+iEvCsbWSTqa9D1Zlj5yo+7X0gghxJ02FFeahPb2pH
QS6xzkZZkIWaihgjvJ93QmV01HmV8YIY5c2gPayBfjHacGtT+VeY4CqQrhpH8q3Q
wR2akmStfmHdp4RUHXCUKHwG3hVi0BOJtFxYjl2yTQPPesgNk7MP8tmObDyK0wRD
3ObUnCOiWqqQV8JbpMo3d9cbrdcnN0S5fTEb7ETSaVVTzwn4YXQpjSPWeiGLQKVE
RxiLGS6vCX5VSLCFMhFxQwB2bcol+N4e+sibrz68qhc99kNk1aU=
=kezw
-----END PGP SIGNATURE-----

--zq5ldklgurjwxspu--


--===============4665579592708447539==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4665579592708447539==--

