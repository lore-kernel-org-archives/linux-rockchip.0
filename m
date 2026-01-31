Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 862B3E7C6E8
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Jan 2026 20:29:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YhROjzbifiyQP69iV+pNxsujvpWjWBo0T6IeJVivHI4=; b=Wv6Ibg77MSP+2nba2PZs9YZsah
	URbM3XWdMA8/QLT/GLQtkecQDvGFHcIp+pGWCvMitokTndmI9jCE9+fnka+zb4Sme3qn2FHw00/hH
	42qSxISOD5I4qhGGBJWK4HzLTcPoIq269GZHHkpXnuP8DjUi67JX/e++90zRo0pM33e0nCJ7JzzUh
	qAzqFijLbX+nlT2D0Gfi80WvxZlcYoXvxarOZMBbu7pbP8xS/Zwt5xEmPvk9rMGUA8xByDPQal4D/
	7z9KXxrtgfxwwE8XnuIPgVcv1U8RXNuqrTyvC+j+c98yr5zvMvp4+OusxUF2Ofgi8TtbW6Xs/rA/g
	DqQDja3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmHbO-00000002z1C-1XLI;
	Sat, 31 Jan 2026 20:29:54 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmHbN-00000002z0d-0ynI;
	Sat, 31 Jan 2026 20:29:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A3F2560200;
	Sat, 31 Jan 2026 20:29:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5859EC4CEF1;
	Sat, 31 Jan 2026 20:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769891392;
	bh=Lewz4qnNVbNBEvCRmfUiMH3/a7XAklebuCMfi3/B71U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=A+/glb7SxXHll2OjKMpVry4y2VAPyP9Zh4Zj9NGOgNfILSO8EBeVKGGmKjyg1wcWa
	 jNrFnxuQTFqFBNSrdifbAvRpw73PzbDRA0ER+U9zTJulHVKRNrYCNJFFZRs/pHMN81
	 n20mfJ+RHy6hqzzkDwRRW0Q8JxZq6XHfTfIzsTOOi7+Wde2ajIcz3jfjYHssgWmi9h
	 v8iVle5+j2ehHAzA7y/iI626DREajXEgdb873inxifNAS/vWz3fx0RYKolWGS2iM3M
	 xBrHqpuunZUyCCdFFPEuMT80SQ5rSOxmEcFEtmJmTrf7FjdZRpXidxjA56OZEx46CY
	 w7ov3U7wA2uHw==
Date: Sat, 31 Jan 2026 20:29:48 +0000
From: Conor Dooley <conor@kernel.org>
To: Jun Yan <jerrysteve1101@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	alchark@gmail.com, dsimic@manjaro.org
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Shenzhen OneThing
 Technologies Co., Ltd.
Message-ID: <20260131-emporium-patrol-38135e9019e5@spud>
References: <20260131153106.31723-1-jerrysteve1101@gmail.com>
 <20260131153106.31723-2-jerrysteve1101@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260131153106.31723-2-jerrysteve1101@gmail.com>
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
Content-Type: multipart/mixed; boundary="===============7551726151459443889=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7551726151459443889==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fgWpgL+R6/i0XvEy"
Content-Disposition: inline


--fgWpgL+R6/i0XvEy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--fgWpgL+R6/i0XvEy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaX5mPAAKCRB4tDGHoIJi
0kYAAQDtM2AA3Ol/gkSLPBdaQzEsJRgqBnNmMB2vb6l4284bvwD+PKrio30dLdp4
ONTBmhcEIAw9kWhh/+0N8dFt2igtLgg=
=drnZ
-----END PGP SIGNATURE-----

--fgWpgL+R6/i0XvEy--


--===============7551726151459443889==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7551726151459443889==--

