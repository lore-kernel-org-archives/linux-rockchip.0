Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74365C001DB
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Aug 2023 15:38:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WxKVDYv4SlElgm9hOYmOZeVnJi8e3o3z8lE6OFODL/c=; b=S6bQT9BvLlNWrx1J4ucbZ7ILWf
	jIZvUz+Py49vOaaNZuzdDzvEgOHioF5Gk6kbZRJZWJbf/4Ro3kaJhiSKEj44bWqbXSDhDO1mMI9xV
	8Np74YlCZKEjlB02+HbC4dmk26xumRWlJYcGC6wUmOVeV447v4nX0BAuYezSSopkoegVPwUKjGmRU
	DKbud8gFTmuLd/VB3Ic3lmo8t3nZQDjuUeBNDBrIY2YsPb31L4sGqisjNc01wfwnmtRp/xEYffW7h
	6wKGTEQWx8uwjxVJIpJkL+1Dv3stRW3O6q1wQkk3PCHt2DhiU+cvaimPYvN3ev8+pE3noYqBuQbhA
	RDcITY0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRwsd-00CiwH-2u;
	Fri, 04 Aug 2023 15:38:19 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRwsb-00CivR-15;
	Fri, 04 Aug 2023 15:38:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 7126762089;
	Fri,  4 Aug 2023 15:38:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B15AC433C8;
	Fri,  4 Aug 2023 15:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691163495;
	bh=t4F+m0azHkadYsutPkh75iCV6olf/pJ7y0Pbspodwio=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s3LWYBXP0DQCJ8gWTRlGS+DLuDNG91JnVUqj6fIwyYQ+K/ZrE+Mf+5akzN9HDNSsM
	 AlrELznaKCwhcSAZJBIdBxmoyVZYYz+BqXgKziIikEOcaTShqV9YhIuU/Qw+4xwOhV
	 dP3KswXwcY3JV6Xpd9idcxJLE/sHQJye5zPAIqwIVMW1uMYllspZXdh6XBYwjVzvQa
	 v3W9wiRmou7leVNioc8L1c1r+yrjoFid7gIEH7u+TptlFC4hBp+SU+dn4e4bBn5YX0
	 P4y/DADmXFXhRTNNa5dDHRmSzILx1OsbjX62EzkrsdGyGqtNb3dHbc0A7OMRJGHpzH
	 j6D+8RkWlFHtA==
Date: Fri, 4 Aug 2023 16:38:10 +0100
From: Conor Dooley <conor@kernel.org>
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, kever.yang@rock-chips.com,
	heiko@sntech.de, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, huangtao@rock-chips.com
Subject: Re: [RESEND PATCH v3 3/4] dt-bindings: clock: rk3588: export
 PCLK_VO1GRF clk id
Message-ID: <20230804-colonial-balsamic-c97491ebec12@spud>
References: <20230804025101.28438-1-zhangqing@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20230804025101.28438-1-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230804_083817_416636_599282C9 
X-CRM114-Status: GOOD (  16.46  )
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
Content-Type: multipart/mixed; boundary="===============5773691367480551335=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5773691367480551335==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lK93WBiQtkbGzRv8"
Content-Disposition: inline


--lK93WBiQtkbGzRv8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 04, 2023 at 10:51:01AM +0800, Elaine Zhang wrote:
> add PCLK_VO1GRF clk id.
>=20
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> ---
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

I only got this patch & not the rest of the series, so no idea what's
going in those patches, but since CLK_NR_CLKS was put in a dt-binding
header, is that value not now part of the ABI?

Thanks,
Conor.

> =20
>  /* scmi-clocks indices */
> =20
> --=20
> 2.17.1
>=20

--lK93WBiQtkbGzRv8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZM0bYgAKCRB4tDGHoIJi
0ivZAQCx292j0WpUPtQm1NKlAx/CxxoK2bk0EqWwWc0QshsvGwD/aj8I8l6Qv8Xn
VBq+pNEmZJBYuho1YQFAV5jlcDIbmAM=
=eTnE
-----END PGP SIGNATURE-----

--lK93WBiQtkbGzRv8--


--===============5773691367480551335==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5773691367480551335==--

