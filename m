Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E486CDB474
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Oct 2023 16:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tO4hOQFIM+DirryuVVk+Allh9jfnP8GKsSv4fm2D+OI=; b=h2O+0XaZRZfn7jX+tR0CAAHedm
	e6trvVbTaAvjHgMbQ7QCkCwJCdl2bxRS6KLwXZGkr2oSazyXpF369DAJudG1wAESPZy4A/pMKjyWa
	mB1xM5ST643/Shfm8Pfd01CoZjjW1gDEMPldyKP5zlNskTF72DMha8EWGLuKNewRtbq3X6zTiPI6L
	1SuyLFnQjxtoRv8BdPcqch6Pgk0iqKVTkJwNT8ySmht68/YtE1xFOOJYrd1eJziVT2sOdQnaBYQrP
	/rVKZAM9EDI5XLhs+01zrmfRe0+qIQDEQf8il4dKWOCI8aRICrWL5zUmmOp80zDeu/x4BWhqtXEn3
	5D6MiSlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtryM-002fJu-2g;
	Fri, 20 Oct 2023 16:03:38 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtryI-002fIn-1o;
	Fri, 20 Oct 2023 16:03:35 +0000
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 1B29F660731B;
	Fri, 20 Oct 2023 17:03:32 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697817812;
	bh=gdDLnZkjmHu+Sk+/2xbwhd6fH/+pG0s/huYMTIz5rp8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IQFefCmvfeF1DgM1gwp4s6N4cgiJZSOLMPM4KqmFPhcDEqYra/6qGuzOZ8uXfsM1G
	 dndXiXqb3HzXVk1aMsaSQ0S56EMTjnZjF64NXuuVRQQz8/270jgTiqIxtulr4wGb7c
	 OPhUDYPn+hXJEAf4rl9wOAcZA/tf/eSSJYQQzh0N/+XupthBNbSDHU/kqHqFhTr5Z6
	 x0j1cSz2oJoChJT4pr/9Vo3CP/ji3vHYFZ8GgNTQvXtN7ZRdbaJeFsp0+fPOob5UUU
	 Tu62TlLLx4w2HAGI92a3SiNLOaUFO/rvEo7+sxOqggfemBvjNEz+vG+DrTd/1cZKNv
	 kvpOyb/vt5z8A==
Received: by mercury (Postfix, from userid 1000)
	id 1E11910603FC; Fri, 20 Oct 2023 18:03:29 +0200 (CEST)
Date: Fri, 20 Oct 2023 18:03:29 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Conor Dooley <conor@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v4 1/3] dt-bindings: usb: add rk3588 compatible to
 rockchip,dwc3
Message-ID: <20231020160329.uqgjjr6ubfrcqjkj@mercury.elektranox.org>
References: <20231020150022.48725-1-sebastian.reichel@collabora.com>
 <20231020150022.48725-2-sebastian.reichel@collabora.com>
 <20231020-shudder-tackle-cc98a82f1cd0@spud>
MIME-Version: 1.0
In-Reply-To: <20231020-shudder-tackle-cc98a82f1cd0@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231020_090334_768749_445FDFC6 
X-CRM114-Status: GOOD (  14.90  )
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
Content-Type: multipart/mixed; boundary="===============7814963520143588543=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7814963520143588543==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bdmk4yrcxo3we24y"
Content-Disposition: inline


--bdmk4yrcxo3we24y
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Conor,

On Fri, Oct 20, 2023 at 04:36:19PM +0100, Conor Dooley wrote:
> On Fri, Oct 20, 2023 at 04:11:40PM +0200, Sebastian Reichel wrote:
> > [...]
> > +allOf:
> > +  - $ref: snps,dwc3.yaml#
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: rockchip,rk3328-dwc3
> > +    then:
> > +      properties:
> > +        clocks:
> > +          minItems: 3
> > +          maxItems: 4
> > +        clock-names:
> > +          minItems: 3
> > +          items:
> > +            - const: ref_clk
> > +            - const: suspend_clk
> > +            - const: bus_clk
> > +            - const: grf_clk
>=20
> minItems for clocks and clock-names is already 3, is it not?

Yes, but the following 'maxItems: 4' implicitly sets it to 4,
so I had to set it again. The same is true for clock-names -
providings new 'items:' effectively drops the "minItems: 3"
=66rom the generic section.

> Otherwise,
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
>=20
> Thanks,
> Conor.

Thanks,

-- Sebastian

--bdmk4yrcxo3we24y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmUypMQACgkQ2O7X88g7
+prWug//YTS5WE0ntNTSommlUibet+KcZPc5blw/2DH/Lx7UHSPecqtfjAWpAB/j
Cg9pHPgOumi0wJSdmqKRkJST7bKaCOkpw4N4HLqnrNBL+PNLG7sQOo9qMwaV2x7B
3nFbsXLjoxlHuYGrupRoFAUL/LevwpWC1vgnrKdk37p0uJzmhRVyUtMrjE3wqzVU
FbiI4NgxpflWpRQ8VqtUzZVGA/15RXZVqnFjHgGZ624NhDD/2KsIUYOscvwq5qYa
1QylGUeTFE3D7EGbmTLd/voxlGKTntEPbYw+hP8JVf/oA7d01zlFRFa3MLmVM4vg
cRbaTt96A6ugCjBdUdkHYhw0aEROd4u/5hCdRv5whBOqWmz5HJ4jKsc+hrneNE7T
M9tHr6WpbtHu/s4Gepx+AxScNwOEF/A93pOuQXcy1CYOjF/hvx9zP0PYsQwD7b03
Qtr6Qnp95rozYYFt/2NforFTdFAwcGxR3XtUmd7qAMkIQYmApzgaQiDzLoJb/Gtv
1nSAiW0lvgHALq+PefTqKCqPXs28wJXdojJJscTIRk7RbkoLkxScdnaZG85kp+Qj
xSAtSGrvjE6PLvTdwxP3G+R9Qlh1O5mzze9iydGtwY4UsW6vR+Xybvu6e8V5rC8B
R/C1la6YhCZoGPgK93jn4tVCqwHxiOX3TMY1NlCj4hn+2WU2AxQ=
=a1sC
-----END PGP SIGNATURE-----

--bdmk4yrcxo3we24y--


--===============7814963520143588543==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7814963520143588543==--

