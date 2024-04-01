Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD2BBCD1292
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Apr 2024 11:47:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QYHuaAlAurMpsuAPtU0Nx8yYY5pJUEW/sHoa/okBvdM=; b=fxTliPbO57lQB6DRDQ9vXK6PpY
	WqUiF7U2vck5TqvXLvNms5bbyKwlD8NcfFL4nKuL4MFMo3nZfDxmF3ajnwkMyIXQzEjVE4XnH8nrC
	1JtJ3g1/fYwpqBQEar9rSQNF0v4IqrELJqPiJcZSQJiGfynzFGieKD0kHP3NAL7WGE/Ao9N/r5uDk
	3F8RGCY7zAbXm8gxZSY6IRy+BkWJWnHy8S1jRWL7vzIJ439uiv1lGfUezSyN7S8mxVPmWs9vfNy0+
	Y6u991TqRTfPN7ycf6IgRDBkSHtnDpcLytvGQLuTVOGQTUKuVooS3xSvR0BPVnFq6e0exh9hZcEST
	bZbJjGnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrG7j-00000007aJf-2a8q;
	Mon, 01 Apr 2024 11:46:47 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrFBR-00000007UoX-37Fb;
	Mon, 01 Apr 2024 10:46:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EB17960BBC;
	Mon,  1 Apr 2024 10:46:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4AE5C433F1;
	Mon,  1 Apr 2024 10:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711968389;
	bh=a2WtB0xmwYiuyFKbZJQ/GO/AdCnqXgqBpGtmMe1gRPI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jQfWYBBFzaLYXE7DeTkiqLBkfo6HAHbqV8fN5MJuFoZ4tnCOly8RDrQiXqJ4lFW72
	 2vH/i3MuU3ixylhRKBQGXBeEvxQfb3HzqfIfi7ypEWB5kG672tXR6S0JXIcAg4bJ+X
	 doVzlxVhgryHJFaLGN/XoypfjZ5retg+l3Rq4Yk2jY3sPvovt0qZyZdv6HGHfJRY1u
	 v4uX1xrLmvV6PQo+FW6+EqsNF5tyyal5gDaaDxkUnsjEgFqoMAgqyVoF80fY21X3p3
	 Z2p3uW1MG561hLNqZ+zwVJ5HxUWvtj8KkdptvVRNkPNEUV8KP/AkO46mnO3N2iLCIN
	 ubCI4hNhZB0Xg==
Date: Mon, 1 Apr 2024 11:46:24 +0100
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: PCI: rockchip,rk3399-pcie: add missing
 maxItems to ep-gpios
Message-ID: <20240401-sarcastic-polka-81ca81834df9@spud>
References: <20240401100058.15749-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20240401100058.15749-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240401_034633_848551_13E3EC6E 
X-CRM114-Status: GOOD (  10.74  )
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
Content-Type: multipart/mixed; boundary="===============8212283228499729031=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8212283228499729031==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="u7S0YdhFapcdCqCC"
Content-Disposition: inline


--u7S0YdhFapcdCqCC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 01, 2024 at 12:00:58PM +0200, Krzysztof Kozlowski wrote:
> Properties with GPIOs should define number of actual GPIOs, so add
> missing maxItems to ep-gpios.  Otherwise multiple GPIOs could be
> provided which is not a true hardware description.
>=20
> Fixes: aa222f9311e1 ("dt-bindings: PCI: Convert Rockchip RK3399 PCIe to D=
T schema")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--u7S0YdhFapcdCqCC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZgqQgAAKCRB4tDGHoIJi
0irkAPwOsdu8M3R5EyKevxY92LnAR66NRpxZx3MMNUD+tVGVnQD8D3TuY38mYuNa
AeXjIBpXUtGDUwlr4Ch10HFNdOcndQ4=
=HnPg
-----END PGP SIGNATURE-----

--u7S0YdhFapcdCqCC--


--===============8212283228499729031==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8212283228499729031==--

