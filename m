Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 074D9C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Nov 2023 12:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l87SPCDOWbvNJHP1Wxm/IdA5OquGk93WGyVyJu1YfT4=; b=KQu/WbEZfWRmDGofPYdXILWI0Z
	/p/sxN/awEQs/XILxpAHjFxFTj9Kb//m3bDlccOuptUXd2hfZjmws8lvMNXItitW0ib8RH+lq47up
	qT3K1ZDU6/L3iDykDj8hJO7X3xDecdRbc1n1Jy57Iw0zce5bvpaTaYTYfk2InTxgTDsKtiDJxdAzt
	o34334Y5tTJ5ys5xDrPOb/0F39vwqqOgCjvWNXZMmB/Hk4UBeFzEydkY6rEswrv3iI5ya5psbJS+y
	KEmiIpjjPVoMjW1GE2QbXv7WKXHlyXAhpqeSqt2jKUWHLipOs98K+iNgFRKZZEoh8/y0iFebK2bSW
	HJKr3wlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0hFw-003jtt-1O;
	Wed, 08 Nov 2023 12:02:00 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0hFt-003jtL-1V;
	Wed, 08 Nov 2023 12:01:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BDC1361074;
	Wed,  8 Nov 2023 12:01:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E3C1C433C7;
	Wed,  8 Nov 2023 12:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699444916;
	bh=kutHs17/gbiKysQ/W1InFavUEoGmwsEhseHr6fk22qQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FsWY3mQRJ//puz3e1Jo4bv+2xsysMMdkCggHX8mUQ/8RD88aMWeocjGRnLbTw2sg2
	 gS7IMEa6Gbl8M62fvq7nZpelfVky5GKL6AIgtYFYjdlp5majhoG8+5q5hSYw+nz4Un
	 PTX4A0sW0kE0ARqhLbo/jt0KOni6CB5bpEIU6PMeOWLhEIxkzTlkTqZyUHZpcNsdsH
	 vsq+gFptzmBxathMBXguyFSq8hav8hPEgl9e1rlVOXhjcH0XslAAMYNrrWWzqVbSab
	 1zl+NxgwQRqxgyH1ghE4CRGwosUgX7Yq+q8631ryj+PFxvAhp8tWeS2CShK2pgTB7L
	 v2BkLCMphNZ9A==
Date: Wed, 8 Nov 2023 12:01:51 +0000
From: Conor Dooley <conor@kernel.org>
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, kever.yang@rock-chips.com,
	heiko@sntech.de, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, huangtao@rock-chips.com,
	andy.yan@rock-chips.com
Subject: Re: [PATCH v5 3/4] dt-bindings: clock: rk3588: export PCLK_VO1GRF
 clk id
Message-ID: <20231108-donation-uncertain-c4d0f560c420@spud>
References: <20231108061822.4871-1-zhangqing@rock-chips.com>
 <20231108061822.4871-4-zhangqing@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20231108061822.4871-4-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231108_040157_548218_EC740142 
X-CRM114-Status: GOOD (  16.16  )
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
Content-Type: multipart/mixed; boundary="===============7695571185221776114=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7695571185221776114==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="iMx7EvP7YSPnohIE"
Content-Disposition: inline


--iMx7EvP7YSPnohIE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 08, 2023 at 02:18:21PM +0800, Elaine Zhang wrote:
> export PCLK_VO1GRF for DT.
>=20
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> ---
>  include/dt-bindings/clock/rockchip,rk3588-cru.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/include/dt-bindings/clock/rockchip,rk3588-cru.h b/include/dt=
-bindings/clock/rockchip,rk3588-cru.h
> index 5790b1391201..50ba72980190 100644
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

This definition is part of the ABI, if it is safe to change it, then it
is safe to delete it.

> =20
>  /* scmi-clocks indices */
> =20
> --=20
> 2.17.1
>=20
>=20

--iMx7EvP7YSPnohIE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZUt4rwAKCRB4tDGHoIJi
0qX4AQCiaZUvu8Hjo9g0xzPpB6/puP40C/jatJp8HVIooO70JgD+NnBufAYVlNOR
UzY9jxnud216SsWfIFVq8L7Lq+cjEQA=
=rTEt
-----END PGP SIGNATURE-----

--iMx7EvP7YSPnohIE--


--===============7695571185221776114==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7695571185221776114==--

