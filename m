Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EC59C531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 16:22:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tHm//0J3Z1MpAGd6mxXdkS914irfpt7mO+aOPefdyjU=; b=iummJWezBZFnlL7dNzs2ElBmBd
	QnP/2RXAqumHho3F5q8fM/zhX5XBly30SiHdJIH4RC1pucPfGdTgUVhF09eLoGzOx2/CHDJGBj629
	mwnbh0iB6eNCT0wV5jGbDSVbzrgZuUKlXjZYIKuOD8vTA6RxsOfGPY8GyA/7mmh574AMg7u2rmS10
	5p7Q/UoaIgCwr7xJj8cQmcC+TmfiS3cN7Jc+tRikGz0rK9QtrVtWnx1ImYZp8p3iC5zhXevkYSMA5
	9pHTWS3GTXCm9MVeAPjVp0wx+z6l9LeFbQ+2ohosniTv0xGA1NIUetoYWzPkwi6TAkvdd60+wzQZ6
	XgTD3AXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shX3B-0000000HXPF-2ttL;
	Fri, 23 Aug 2024 16:22:09 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shX2J-0000000HX5O-1ibm;
	Fri, 23 Aug 2024 16:21:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 97A86CE1064;
	Fri, 23 Aug 2024 16:21:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86D3BC4AF0B;
	Fri, 23 Aug 2024 16:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724430072;
	bh=6ZTDNhXDl6c05tRMKVf0ZhASXXuFxe9MockPdGhtLGg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PjcWYOkPAFkyGjdeYpW4eIPySk7PHr3dIaj9ezimM4dN54GrYqyRCMoB2cq70YB0F
	 JMMPr5X2dU1EuC93uvE8fPe6wfSQNucRsW8HNZKV56HHcwz9L2mNc0exp+TTxBQ35b
	 s9M96AkVX0X/5lAuPGas5aP5EdUXEY03EU7Ail7fD1GicxT0Xbfre8FW+4agZK2TGQ
	 7AkAcnzeax+uyGsIhs0yF8ugZs8eC+ymckeQzDmxEZDc+DT9GTuLrdkbewve9kNivb
	 pAzQiHtpG4HUdSUmm2by3fv46d+BsINV/8l80JgNvrYfTVB8HJUOCN4vbu///aKm8D
	 bP4aJHQfE5New==
Date: Fri, 23 Aug 2024 17:21:08 +0100
From: Conor Dooley <conor@kernel.org>
To: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	heiko@sntech.de, alexandre.belloni@bootlin.com,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org
Subject: Re: [PATCH 7/8] dt-bindings: arm: rockchip: Add Relfor Saib
Message-ID: <20240823-lark-regime-0d3ab4215d69@spud>
References: <20240823153528.3863993-1-karthikeyan@linumiz.com>
 <20240823153528.3863993-8-karthikeyan@linumiz.com>
MIME-Version: 1.0
In-Reply-To: <20240823153528.3863993-8-karthikeyan@linumiz.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_092115_751954_745618FD 
X-CRM114-Status: GOOD (  15.73  )
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
Content-Type: multipart/mixed; boundary="===============8777006731318825443=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8777006731318825443==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="KudtDxnQkUzFHTIL"
Content-Disposition: inline


--KudtDxnQkUzFHTIL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 23, 2024 at 09:05:27PM +0530, Karthikeyan Krishnasamy wrote:
> Add devicetree binding documentation for Relfor Saib
> board which uses Rockchip RV1109 SoC
>=20
> Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Docume=
ntation/devicetree/bindings/arm/rockchip.yaml
> index 1ef09fbfdfaf..29f7e09ae443 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -848,6 +848,12 @@ properties:
>                - radxa,zero-3w
>            - const: rockchip,rk3566
> =20
> +      - description: Relfor SAIB board
> +        items:
> +          - const: relfor,saib
> +          - enum:
> +              - rockchip,rv1109

This does not make sense to me. Why do you have an enum for the SoC
model, implying that this SAIB board would have more than one possible=20
SoC? I'd expect to see - const: rockvhip,rv1109

> +
>        - description: Rikomagic MK808 v1
>          items:
>            - const: rikomagic,mk808
> --=20
> 2.39.2
>=20

--KudtDxnQkUzFHTIL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZsi29AAKCRB4tDGHoIJi
0j3UAP9CtNVsmtseZB0iEvfn9Gf/ujRFza/6humZZ8Ai8A2hZgD8C0uTkuqwGngk
Pk0WERcvKysuRMSFVF8tl3kXhq+UkAo=
=MkK7
-----END PGP SIGNATURE-----

--KudtDxnQkUzFHTIL--


--===============8777006731318825443==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8777006731318825443==--

