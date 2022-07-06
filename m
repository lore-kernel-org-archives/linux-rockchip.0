Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30D0CC43334
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jul 2022 19:34:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V0dV50TP11uDlDA1zxu5ebMk5NlCx2/kE8vSSuxpPk0=; b=ilUx7qehznknLHqfSWi0hi+qHU
	Q6S0xDc4V69hgOlQqiXsLLFehXb+7ccI0lPGr8E/S7OjUOizaIaWj69OruM85uGw08AHRQvDQ4Ngk
	kChpdNCmhRvmNuHgyJIC8FBmI5/m4S0bg8JqSlxHXtbVMfyKEE3BtF+2lM7IhQOyBZivPtFccxLDa
	LSwCXPqSNzLtTdJogArjDxW7QvFQlklqwgL1qu50JVraxfOzegMPVIT8hIwwP4EwY1JJzCuDOyLgf
	1ZsQcw8ZCtji6YGwAkLwy99Ui5LWmHNS6y+RR59LzeGmNn/eVxKSSYUbYIhyz2JX0RTXp3psscLzZ
	m03uRfPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Amt-00CDW8-Cn; Wed, 06 Jul 2022 19:34:15 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Amq-00CDVC-Ro
	for linux-rockchip@lists.infradead.org; Wed, 06 Jul 2022 19:34:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 47FC8B81E50;
	Wed,  6 Jul 2022 19:34:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40DF4C3411C;
	Wed,  6 Jul 2022 19:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657136050;
	bh=Lc9Jtxr6bDh1AkEa/bqDJMUiPw2aZdu0IbhKtcXXdI8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eaQDJmx6+VBKcGT5zmT9gIJqcW2st61A9wKBlljjA5HHKiVGhY/gZrrBz0HuYD4iQ
	 tdNXQMBHCWviExLbW2FNt0/FzHC9uyc/lF6baCDfK5YW+khJtxMW0IDGwVgHt4OB9i
	 7coiLW6xxxubluDE4WAa7LxJpwbW+bhuRJXF0fzdsFoBrgO2KGZSv0kwxFLsvnJbDK
	 W3sWLNmLueR9y1SFYj5qN+KrSpoxRjn8Y1bTCqRQXWAaxpwQJqjYlLhtHkgh5JYeIO
	 q3cXqp/YieNQH/YpDuuA2Q46ASuEGidnE5WNOC2amHQnKcPgobXhvaV6QjbamCwayV
	 Ssh0oPzQif2+A==
Date: Wed, 6 Jul 2022 21:34:05 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-i2c@vger.kernel.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH 1/1] dt-bindings: i2c: i2c-rk3x: add rk3588 compatible
Message-ID: <YsXjrUVbGIObUroU@shikoro>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-i2c@vger.kernel.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	kernel@collabora.com
References: <20220623163136.246404-1-sebastian.reichel@collabora.com>
 <2664d6a7-ee4b-9cfa-800e-e97522e3986c@linaro.org>
MIME-Version: 1.0
In-Reply-To: <2664d6a7-ee4b-9cfa-800e-e97522e3986c@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_123413_086729_BC9A60D7 
X-CRM114-Status: GOOD (  14.65  )
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
Content-Type: multipart/mixed; boundary="===============6167440321529787232=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6167440321529787232==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yrcvWxnffJQLM1lM"
Content-Disposition: inline


--yrcvWxnffJQLM1lM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jun 26, 2022 at 10:22:09PM +0200, Krzysztof Kozlowski wrote:
> On 23/06/2022 18:31, Sebastian Reichel wrote:
> > Just like RK356x, RK3588 is compatible to the existing rk3399 binding.
> >=20
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > ---
> >  Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml | 1 +
> >  1 file changed, 1 insertion(+)
>=20
> That's still some old tree you are based on...

What do you mean by that?


--yrcvWxnffJQLM1lM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmLF460ACgkQFA3kzBSg
KbacmQ/9F97K+u7lxzj+N15bKY8tT6XwlYdmyDUyAt7ZvamCPpmpGwf+r/mGi4DK
OIptUkAkheShb2e8NH475CQM+og3EQXu8DWD2aq5bkVslmndWGmXXKfsFraA20Lv
gKwQr/uWPWmv+1de/iOkTAnr83UmbSEFfBUjZhsKTBaH2ikp5cMC3ugGeA0WaULH
49VveqT395CU+pgHsSEsdx1830GN3UaVpaEviHiEp1ofZJBZB8mz5XZeM1KNuee0
d+JZY3sajEHA+XFWnDH9x88UuqG3PH9Qche8FxuyENgQUBjV+aPaJyCy4oFxkIEX
NLwrRUjMaAG9g21x+bnDcvpgt5tIzpk/EYdN6C84lrj0H8Oe4GCqKxxB7qQAqDvw
Z6lmioUC3Q28/MnbIQqkgLov53ECYp1wlDgLHoZrLKbcbBzfgDBeSSb8YNqtFHGo
3rE5e0O8j4QITfo6CvLzSDy5dwfk+T1/duo2LGkonWFWNCXf2s4QUkmQVyKrtbPE
d6tjj0rIR4/8B779a5MG8KtNWabAIYHCDAo2d2w12r5yQM0qmrKbKaXCxK5qka+Z
WdwYJQbvXh0j9fN7/g1lViiWHL6JI6vyq6iGUByR/duUbrPME1tG9LyZ+0bq/vjU
npSKQrGotMl2GVVpET1/3W9TcJG8cOYqcHJAMHKlFw+jDjikklU=
=gEdT
-----END PGP SIGNATURE-----

--yrcvWxnffJQLM1lM--


--===============6167440321529787232==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6167440321529787232==--

