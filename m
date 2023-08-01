Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED56CC0015E
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Aug 2023 17:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mogytDr/Cg/tM8SfCSfxYRNjvCKpeT3EnyHKkUbysrM=; b=nSjfe7moJlgu9yUb/75vxP0keA
	vOFSYubK8Lx8fiT1NOO7tDmuSf251dKV0N0NJmjxKSaZUscXQ50TydnxAu7LAIrG+/009rtg6JVdy
	TwSrptDf29gj9PsY0R9ZZ5opZyc31iJA0LzbxyPlN65lYo49dJvQKGOdxfG5YozBKiPFKrcJfsA1f
	Us5NDswRGvkQS/JcUh/EFHpGJnh8TnIDiRvO0m3v3BARCQTWUdPbvtHFnd/PmKUUVww84rR3/EMpl
	0ayHz6sz8HUewEIGnKCLJwry1885A+0L54vmz8Pmxezr1s6PLXek5yWw/hzID38UxF7WIlLJcNCnE
	HqW8NjCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQt1d-002uHc-0Y;
	Tue, 01 Aug 2023 17:19:13 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQt1Z-002uGz-31
	for linux-rockchip@lists.infradead.org;
	Tue, 01 Aug 2023 17:19:11 +0000
Received: from mercury (dyndsl-091-248-215-079.ewe-ip-backbone.de [91.248.215.79])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D2CB96606F8A;
	Tue,  1 Aug 2023 18:19:04 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1690910344;
	bh=JmWNk3Diy87M33B8/qg48ijXK4ta3WZHyEplai7DYaI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bhbFZ5yL8U86M4NFvrGhbmG/G7SLYNMhhWqB+buyo+Z7H6/TtpCd5vtaL5JzrFKAd
	 Qa+vvP02GpJvICl9MWH6Q8FdEh9ZKgSNedTMYjYHmawl2ieWVxpayPmsSugU0/HZn0
	 fVH9GQVjBo0Yoyn0ENC03i9gNxL7E+zsrClKQb6VuAZM7AoRB5qb8REq+Eysd+EoRk
	 QDGZ6X00+h008iHhILOw4tLyK3kFPpXaLlEdBa7RDMVwfq5OxJBcwiO7KjAvL+GDzm
	 jA3Z6FmPl0WtDKCIwaS3wVFOXFzYImZZBfsNx5hjoIHKIXckiN8bjSTq8oWrnHnhHx
	 7AcGesXTi/0PA==
Received: by mercury (Postfix, from userid 1000)
	id BB3891062B88; Tue,  1 Aug 2023 19:19:02 +0200 (CEST)
Date: Tue, 1 Aug 2023 19:19:02 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, kever.yang@rock-chips.com,
	heiko@sntech.de, linux-clk@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	huangtao@rock-chips.com
Subject: Re: [PATCH v2 2/3] dt-bindings: clock: rk3588: export PCLK_VO1GRF
 clk id
Message-ID: <20230801171902.42zjwdarh7jma5pl@mercury.elektranox.org>
References: <20230801074357.10770-1-zhangqing@rock-chips.com>
 <20230801074357.10770-3-zhangqing@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20230801074357.10770-3-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230801_101910_143172_8B957D28 
X-CRM114-Status: GOOD (  15.79  )
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
Content-Type: multipart/mixed; boundary="===============7763078230068629981=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7763078230068629981==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lgnnwlnqehn6d4lc"
Content-Disposition: inline


--lgnnwlnqehn6d4lc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Aug 01, 2023 at 03:43:56PM +0800, Elaine Zhang wrote:
> add PCLK_VO1GRF clk id.
>=20
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> ---

Fixes: f204a60e545c ("dt-bindings: clock: add rk3588 clock definitions")
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

>  include/dt-bindings/clock/rockchip,rk3588-cru.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/include/dt-bindings/clock/rockchip,rk3588-cru.h b/include/dt=
-bindings/clock/rockchip,rk3588-cru.h
> index b5616bca7b44..864a321ab362 100644
> --- a/include/dt-bindings/clock/rockchip,rk3588-cru.h
> +++ b/include/dt-bindings/clock/rockchip,rk3588-cru.h
> @@ -733,8 +733,9 @@
>  #define ACLK_AV1_PRE			718
>  #define PCLK_AV1_PRE			719
>  #define HCLK_SDIO_PRE			720
> +#define PCLK_VO1GRF			721
> =20
> -#define CLK_NR_CLKS			(HCLK_SDIO_PRE + 1)
> +#define CLK_NR_CLKS			(PCLK_VO1GRF + 1)
> =20
>  /* scmi-clocks indices */
> =20
> --=20
> 2.17.1
>=20

--lgnnwlnqehn6d4lc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmTJPnkACgkQ2O7X88g7
+pq0SA/8D5BwNKYQ1zyMBMxEg78h9su6o0/i2eyr05sjGRQh+BcFOkA3fdpIZshu
q0o/RL5ygIOOHbh7sq7dZ9Gcfm+YOgb1jWFLti+XLRILBrmZaNNtKQhCI/rbe2Tx
88oFQInz6mg7Qfu+Ge11kk0xorFFmPHRiGwyN6c+c7R2bzV3SCGS0qCpwUI5KLdl
vOPySBx5Z/+tObdF2fQmro4XtLGDDrihN4No+NXVIFje5qOfs8JUk0uoEXJsC19N
IQeatwjy1Z2EY6ezi6h/iK4HFl23kdqgW+nIthlyDq6TXLblaTMOR5+jI7hnINV3
BSFNJWldBSp/V7p7PDnhfU8vluJEHRTlrKoVp47bK3NL3eq/fKh7Uf6Fs4BCgNzJ
S8zd5rL/oDGBOqESlTBOCh3jYOXDNsaNjfolw3nWEbSvZixBhxtMciAotOoxUQc0
5lmwYb8jtzI63HWpC0+jGmyp9TocGKXE9hRCofJgJzMGQfeX9edQyd1JyEK5jRIY
sfvRLXF0e+cKduBn36G91I0VPrBE4CEzCWq5aA9hyQICJQ/RuV4iKOHMQsr6s1A8
EliSWQNbmfeXzy4gDfrCjeZ1oLKRlOQL2qSW5uUQmCtDX9pzwmjoNt/AXL+jH05n
viXHqSX9mYtyh3h9Z5JwpbWyio0lQ0h8xKZFxtfNeSe5zthgHjk=
=nkHN
-----END PGP SIGNATURE-----

--lgnnwlnqehn6d4lc--


--===============7763078230068629981==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7763078230068629981==--

