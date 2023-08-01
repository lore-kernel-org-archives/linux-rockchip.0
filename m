Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84D57C001DF
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Aug 2023 17:50:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Yuk++b20A3MkomZmyS6oDB/WX7eIyrbWkOqOb7JNg+8=; b=hlBy804XbSs6tRbrKpZH0yQHHh
	zXcDwAsV5algzmUXiGgkl4AM5s/jpfMigg5jUnc5mLB+Ovp9ozCul+ynPHdLImX9f9Ivfc6ZEGicU
	nGQ+OvJSesE54/FUTzC3eCh9pjH4mRlpgdJhNEOeEpojoHW0ybfj/w5q41vNzXSNyPsfA4l3t3zAT
	PD/YmcS9GiWn8I31W0h7VndUryrMdJV1c8pwtmeM7yCGUTrGVBnp3tkTgSMsBYu7JP3vmI5FbZrHO
	MApQisNXQ4sMX+UmRT7vbYcGRdyagZ0pDXGXOcuJ6zNqiUqkFiDWl4efwtT5/mmqXTp83Rrllpg36
	Y91KqSpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQtVd-002xsO-0T;
	Tue, 01 Aug 2023 17:50:13 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQtVa-002xs0-2C
	for linux-rockchip@lists.infradead.org;
	Tue, 01 Aug 2023 17:50:12 +0000
Received: from mercury (dyndsl-091-248-215-079.ewe-ip-backbone.de [91.248.215.79])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 63D1F6606EEE;
	Tue,  1 Aug 2023 18:50:09 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1690912209;
	bh=7Hg0E1etExajNXwd23tOTZp+kdpf7HoQD1TpFyCl8ZA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oYsQyNsQw97XKN6vimxBDDLHXBUprgotAZq6Nbq9F+vr+9zeRfac7xeQ44i54km34
	 +FsiZSVlJjvSMBnCYHuVzWuCavLDxbitm+tFNXhMxckTFhQ1Vdt3oE2GCm+AgrQO8A
	 57EfGuw/PBdXTXaJ4+bG2D/M5lL6wJJn0RoU5OX2CRE4wmVqptglWUul5Kya9Hmfi0
	 voeEnCfn8OCvvU76ofmKlmJ50KR4PJsNbRYjnhKT+EEbNH8YZJjG+iCMHgEcRE5aOK
	 7gSk5TFJpfv6nJfPwdgERvJTcT/DvvgCF9TNvIslbkAfdo0YKu/WXhUGE1Iq0Xh2FG
	 BvP0HcOsqYflw==
Received: by mercury (Postfix, from userid 1000)
	id 2864C10660D0; Tue,  1 Aug 2023 19:50:07 +0200 (CEST)
Date: Tue, 1 Aug 2023 19:50:07 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, kever.yang@rock-chips.com,
	heiko@sntech.de, linux-clk@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	huangtao@rock-chips.com
Subject: Re: [RESEND PATCH v2 0/3] clk: rockchip: add GATE_LINK
Message-ID: <20230801175007.kd5j3c6ygjyn5wh5@mercury.elektranox.org>
References: <20230801074357.10770-1-zhangqing@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20230801074357.10770-1-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230801_105010_873571_7A6657B4 
X-CRM114-Status: GOOD (  14.33  )
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
Content-Type: multipart/mixed; boundary="===============8177741717748328993=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8177741717748328993==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xlamvs4rdr7wg6vz"
Content-Disposition: inline


--xlamvs4rdr7wg6vz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Aug 01, 2023 at 03:43:54PM +0800, Elaine Zhang wrote:
> Recent Rockchip SoCs have a new hardware block called Native Interface
> Unit (NIU), which gates clocks to devices behind them. These effectively
> need two parent clocks.
> Use GATE_LINK to handle this.
>=20
> change in V2:
> [PATCH v2 1/3]: fix reported warnings
> [PATCH v2 2/3]: Bindings submit independent patches
> [PATCH v2 3/3]: fix reported warnings
>=20
> Elaine Zhang (3):
>   clk: rockchip: add support for gate link
>   dt-bindings: clock: rk3588: export PCLK_VO1GRF clk id
>   clk: rockchip: rk3588: Adjust the GATE_LINK parameter
>=20
>  drivers/clk/rockchip/Makefile                 |   1 +
>  drivers/clk/rockchip/clk-gate-link.c          | 189 ++++++++++++++++++
>  drivers/clk/rockchip/clk-rk3588.c             | 110 +++++-----
>  drivers/clk/rockchip/clk.c                    |   7 +
>  drivers/clk/rockchip/clk.h                    |  22 ++
>  .../dt-bindings/clock/rockchip,rk3588-cru.h   |   3 +-
>  6 files changed, 280 insertions(+), 52 deletions(-)
>  create mode 100644 drivers/clk/rockchip/clk-gate-link.c

The series is

Tested-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

--xlamvs4rdr7wg6vz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmTJRc4ACgkQ2O7X88g7
+ppnUg//YPiJxGhC4x6wnm2repGisqmL17AG/28MMxHdEQ0NWJyPMw1gaa0dpAR3
2sA9RYmfGWRE/PqgArXsrdkdByEubVlLkMDoBEjJr6ZVJ5IS8qvPR9GEzIHtjW5D
o9BdjDqsOyRmiQXBlPV+mW7PQU0OI4mYWem2MewzmYs8gXPpP6iYX0IxPR4w0MSo
c4XEqorPXMGmf2+kIR5pOlEbtkWlQ8mdJga5Zlw/t9Z6AQ2gT1Q097ZeocKgmDPN
OiIN+P7YOlJZqqa+nzG9lhKD2c1KozfQR33eDNqqDX0XoiBJ1SzK0Qm2LLCDh3Cq
yRQGJzD5sl7LaqE/vqq9/2udyvHaZOUYP4SWHTzsEGP5dIm+WjgAo/RrTmKQkihi
HThdmDq5kXgWUIX5ywAZmcbCufjTOVcGxQUf60S8FV9lV96QJvEydhd1s6UPEhqZ
ISzRKuzgxQFLIqZjIDvELHR/4nTngukouV2v0TNydMB7UNvwMoFVw3Zt8krLHCwm
yXFjgKLsrWDwqTzjpuCIonbVl5OfCR11wT+ACeOLKStdxpHUzraWv0piw2X0+dzP
VtFH9Y5TdTann0CxeV4mEeCOD2iw5aGYm49sYillNBPLwr1FQqeTH987FKKwQthF
/p2WWpmK56pA2C+HFrPb57QV/3UnAOzj18JmEAQoXXDzKUmGxWE=
=Utsw
-----END PGP SIGNATURE-----

--xlamvs4rdr7wg6vz--


--===============8177741717748328993==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8177741717748328993==--

