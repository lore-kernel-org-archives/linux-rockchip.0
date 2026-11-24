Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8CA0606A31E
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 15:49:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=dMF1quGW;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=bG5+oEaY
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=C7/eWOMjS73M0ZPijCkCLR9L0KUIkXRuWqRyJBOxyyM=; b=dMF1quGWsJvo+GY5ZQWpMTUK3m
	Htxg7tR7JlxOfcwW886RQSOQEtwOMTrps9Bf5F+/fQs2eM/hp9v4uxvPTOzZinBUqRZbewnU0pGQg
	u09NdDcIiW049rDEmPrS3BAmauFILFw0MfykgSKNSbVOusvS2qvZIi4rVQumji/tECKCOn2hC8mIT
	GR9lssFMdRZ4UFyhwhnepfzxi/BZmKzhEG+dHWCRJG9hOX0+TLZTxFUlyGoMGpSluCa34cr56JORP
	x1MKn9dVd2LgAJi16WsQ57NzXIH+FBYAJuz95Pp8SF+oRR7nifR1FMcQ2IRw9qYei+lVDB7pPqyNX
	uHfty7Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVslW-00000006xVh-3NWr;
	Tue, 24 Nov 2026 15:49:06 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVslV-00000006xVF-1jpi;
	Tue, 24 Nov 2026 15:49:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id EF57E4010C;
	Tue, 24 Nov 2026 15:49:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2542E1F000E0;
	Tue, 24 Nov 2026 15:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795535344;
	bh=nBapz3a18fBdBoF8M1EqG41RsBxBURR+NkgFnQrbNM0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=bG5+oEaYVu5ew8mfDug3+KSAB02KGpKVM3amCHum8Md3GAqxmDeheNzercKTq9JCF
	 RZBXlZnXPmgMHO0xzX2WGY70oWof1zYnc6cjosCMSFgjJBC8K181V9+P6Yp8Y2Md6w
	 0cGE9b5IbTTaqMUiRhs3DrKqKfOBUHwvAOd02MFa+Fj1ouUSKtxh4IocDLBaOoh8T0
	 ob/Ei5RzJdY8NvV7rAClqnbP4hco7vskqs2hJ1msXF5uY3GOF/lrSpNgbe1SMBRX8q
	 4e1+OhJsrrlAyUTMyqu53U5VIEpLo7ea9EJfuL8FUFynYplSNenxw3kHX+UJEw5fHc
	 j7L6EJ3eDmJiA==
Date: Tue, 24 Nov 2026 15:48:59 +0000
From: Mark Brown <broonie@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: ZhuXiangyu <1194781887@qq.com>, Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: spi: rockchip-sfc: add RK3506 support
Message-ID: <31eb592d-2524-4fbc-96a2-be4db40b532f@sirena.org.uk>
References: <20261121073246.1233736-1-1194781887@qq.com>
 <tencent_E24973E955D1A26CF5A4F983929F8F8B0006@qq.com>
 <3bdaa592-7bbe-462d-a012-da6296251b33@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
In-Reply-To: <3bdaa592-7bbe-462d-a012-da6296251b33@kernel.org>
X-Cookie: Real Users never use the Help key.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5848661844533698430=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


--===============5848661844533698430==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="NjOoTaQMc5fFJElZ"
Content-Disposition: inline


--NjOoTaQMc5fFJElZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 24, 2026 at 04:41:53PM +0100, Krzysztof Kozlowski wrote:
> On 21/11/2026 08:32, ZhuXiangyu wrote:
> > Document the RK3506 FSPI compatible with the generic SFC fallback, and
> > the rockchip,grf and rockchip,max-dll properties used for the
> > power-good handshake and DLL training.
> >=20
> > Signed-off-by: ZhuXiangyu <1194781887@qq.com>

> I will mark everything you as changes requested. This is all half
> broken, b4 review cannot even fetch for review.

FWIW it was perfectly happy to ingest it for me, might be some
network issue?

--NjOoTaQMc5fFJElZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmsFseoACgkQJNaLcl1U
h9AlHQf+I/y8j6jW93+PG/bA8TL/xoGLUhYY70EWw7VAf/WEw7tQjmDtvNiPTB73
jD9HqV9fAsJExYtfiL91KLKLRijZA2TbwDeF69neDrQfJyg5wzUcf0BnXErha2eW
x3+qA3xhcJFOYCTTC2aYBEHfVmSdi/aT37fjWEU0KZxY3Po5mq+za03rCozBmzvJ
FQYuIZNTdYDnTxJR1R0BK/oXVPzBG7E6/N0o3v+HtZUYa9p62YRv6R8Wx7NC6OqC
rdHOSxV3Dcr12JcRq0HQRZoXNV+WDj3HCaIwHZRgDYdVP0EG18kKUbgb5lTA64SM
XdbGSMve5EigtLsChJB5Uk38SRvngw==
=zAK6
-----END PGP SIGNATURE-----

--NjOoTaQMc5fFJElZ--


--===============5848661844533698430==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5848661844533698430==--

