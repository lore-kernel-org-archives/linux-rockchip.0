Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19A0AC001DF
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jul 2023 19:31:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZmANNd//e8GgTsFYc0zYD9BSp513LvuepqBzGrsDCik=; b=C68y0CfmxxlcRJXXfwpIBZnVds
	UmCjA17YDYJSZBoX3/+ZJBklkb98BRDMg/YjSuz78tTgLoPqTY08OaRRO4Q6R1exy6KFSHtk2Tahw
	/BAFGzbhjzb1BCd7gRvUcTOCrkQgOcLGpbuMJBvhiO9NloN2XEz71946Itlvd0V3Q7katdAI4nIXv
	X97BjlvAgAacUmdFw3osA9DeuYfb0CXnOmw10YlWe+2u0uafnIymMDmBKnniI/8Q8fVEwih9zvSs3
	xzoiiWjMHpj/xymARisozBmlDWFEM9eYC4E+eCO+6U46A/F3L0FNmOhZQ209HPboEawkSLvHK0649
	LOwWMqQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qONkK-008LfO-1q;
	Tue, 25 Jul 2023 19:31:00 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qONkH-008Les-1E;
	Tue, 25 Jul 2023 19:30:58 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D7C4261787;
	Tue, 25 Jul 2023 19:30:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C09EC433C7;
	Tue, 25 Jul 2023 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690313456;
	bh=cSoVzaXL/Fs6an9grHNYTptMHglao78l58IxAdtohxA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Z49gSj/rgKrKHNHcyT8AXzy91LhjCBNazZP3ccVSQWYcYsCRyBjM95CjWyI7QSImR
	 SJvbWYGC2kVybNd4Rjtnu3ETf7wX4hdI5aoHz49GnoEKwKncQJhp203nIIbrjpXO9l
	 W+RaTaG7zTPh5YAcA9nZOz/UqzXXIzOUDoUDacM1UmcU499q4LxY9QQP5xYCNrKCK5
	 w4/FKaP1Bqi6AB2iB0rZAB08I33uaLdp8i6ASsDxIjDhlNklVXftRcbfV3w7A2BWY4
	 GCILZP2CnhdRu87A9CIC0HvsHCRvppQ6WOLvs2loEiSIfRFLLNj3NpdUgVovBVfDC4
	 amjI4bdkFDFZQ==
Date: Tue, 25 Jul 2023 20:30:51 +0100
From: Conor Dooley <conor@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Eugen Hristev <eugen.hristev@collabora.com>,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	netdev@vger.kernel.org, david.wu@rock-chips.com, heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org, kernel@collabora.com
Subject: Re: [PATCH] dt-bindings: net: rockchip-dwmac: fix {tx|rx}-delay
 defaults in schema
Message-ID: <20230725-sulphuric-syndrome-3eaace57ef43@spud>
References: <20230725155254.664361-1-eugen.hristev@collabora.com>
 <20230725161156.22uscijrot7gbnvj@mercury.elektranox.org>
MIME-Version: 1.0
In-Reply-To: <20230725161156.22uscijrot7gbnvj@mercury.elektranox.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230725_123057_481283_EC166B9F 
X-CRM114-Status: GOOD (  16.13  )
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
Content-Type: multipart/mixed; boundary="===============8469609865422846527=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8469609865422846527==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hNlqjw351EVDd4gT"
Content-Disposition: inline


--hNlqjw351EVDd4gT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 25, 2023 at 06:11:56PM +0200, Sebastian Reichel wrote:
> Hi,
>=20
> On Tue, Jul 25, 2023 at 06:52:54PM +0300, Eugen Hristev wrote:
> > The defaults are specified in the description instead of being specified
> > in the schema.
> > Fix it by adding the default value in the `default` field.
> >=20
> > Fixes: b331b8ef86f0 ("dt-bindings: net: convert rockchip-dwmac to json-=
schema")
> > Signed-off-by: Eugen Hristev <eugen.hristev@collabora.com>
> > ---
>=20
> Maybe also fix the allowed range while at it? I.e.
>=20
> minimum: 0x00
> maximum: 0x7F

Beat me to it! Please do.

--hNlqjw351EVDd4gT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZMAi6wAKCRB4tDGHoIJi
0vL5AQD8BuidIynoyj33cY6xqSwkDbogVJO15KjdNiTQNkRSVQEA74iQMUfeoN34
jQtR5vFXPxgj7VEzcVIMqN35ErvrCQI=
=ORDo
-----END PGP SIGNATURE-----

--hNlqjw351EVDd4gT--


--===============8469609865422846527==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8469609865422846527==--

