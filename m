Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD973E77188
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Dec 2024 15:12:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s40icpzawUZ0VjOqK41b8c1hln61rOvh7B2faR3RMRY=; b=zKa3Ru6hO+0+uVAAuJjQyy4Dnw
	+Esf+ud+010wtBFhQuPCLEhrvfp/bDgHnxBi+afJr0fd7WHW2lRYfxej4kHioKnV2wOt5xDllgQnc
	Jv8LQxoDt8YPHGS25uUY3P94j3r1D086UDd8pLc9knxYEoYxgQQupW6NITji/tP07VA9Jfv9s/eMZ
	9GKgpHLvc/bCyk187M7ItcaC/ltIFofhLbdJKvz7VXaJEIEWwUP6v/bcA1HWfHoiPwh+TNIX08xlq
	t4hub+PdSMkOjYa0CmmoVgmsSWINr+9ney6/oObk8jDT5WO+BxEdBa4kAkbtIAaspoD44TTeU+Wgv
	XFzRsRXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOeg5-00000005HZ6-0jyg;
	Fri, 20 Dec 2024 15:12:33 +0000
Received: from out-184.mta0.migadu.com ([2001:41d0:1004:224b::b8])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOeg3-00000005HYN-0swG
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Dec 2024 15:12:32 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1734707547;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=/LiPAGXpVlFwSKfQDVJtrPWrmtCEtF6y3lf3wDnXjmw=;
	b=pyif9c9Oubxx0q42jlkVRRsULSuCrXS2PwoiPjnaQHlDqhmiHRKxDsg+m+k3guLhFEHTJr
	tU/G6QspHFrh8HRMV/D2PgccEMKOVRpHHSpiDW2l9bzDKpVVGfKpD/nK9rP6BavpV5Xb0/
	41bGKyQCJuidsn+PEpauzlX/J+cmIj9TcW0CXr0aotSAGDPMG/80if8j7avmVz3U3K0vmR
	r5HajRvdOmTVvLCKR8JJNTa9GIhpsLW4FQqbIGVBezG89CvHZZOlmgiEO2oU4x5nEeBpIq
	phnd4Z3+h3Tp0W2w3x6VGz4c6Kdy2+Obdjc5/1TBBIJaQ8nESbdBgbyqlu+Qtw==
Date: Fri, 20 Dec 2024 16:12:24 +0100
Message-Id: <D6GMI4JWTEFM.35B3HZS6Y9WWE@cknow.org>
Cc: <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH 35/38] dt-bindings: arm: rockchip: Add rk3562 evb2 board
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Kever Yang" <kever.yang@rock-chips.com>, <heiko@sntech.de>
References: <20241220103825.3509421-1-kever.yang@rock-chips.com>
 <20241220110558.3511994-1-kever.yang@rock-chips.com>
 <20241220110558.3511994-26-kever.yang@rock-chips.com>
In-Reply-To: <20241220110558.3511994-26-kever.yang@rock-chips.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_071231_391422_B76FBF98 
X-CRM114-Status: GOOD (  10.80  )
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
Content-Type: multipart/mixed; boundary="===============2122748727580223605=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============2122748727580223605==
Content-Type: multipart/signed;
 boundary=ccbd7e701a960d6301b70e5d87a0770e8037896be033f205da2c4d641b8b;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--ccbd7e701a960d6301b70e5d87a0770e8037896be033f205da2c4d641b8b
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Kever,

The To/Cc list seems a bit short?

On Fri Dec 20, 2024 at 12:05 PM CET, Kever Yang wrote:
> Add device tree documentation for rk3562-evb2-v10.
>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
>
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Docume=
ntation/devicetree/bindings/arm/rockchip.yaml
> index b2681a45867b..e300a817226a 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -1011,6 +1011,11 @@ properties:
>            - const: rockchip,rk3566-box-demo
>            - const: rockchip,rk3566
> =20
> +      - description: Rockchip RK3562 Evaluation board 2
> +        items:
> +          - const: rockchip,rk3562-evb2-v10
> +          - const: rockchip,rk3562

I would expect RK3562 to come *before* RK3566.
In your other/smaller patch set you corrected the sorting of Rockchip
items; lets continue that 'tradition' ;-)

Cheers,
  Diederik

> +
>        - description: Rockchip RK3568 Evaluation board
>          items:
>            - const: rockchip,rk3568-evb1-v10


--ccbd7e701a960d6301b70e5d87a0770e8037896be033f205da2c4d641b8b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZ2WJWgAKCRDXblvOeH7b
bo8fAP0QDNlvJGv4xU+56NJoVV8FiJ839wxM7JE4HhsbgxkTigD/Y2KjkE3Wi3Au
UiLHHkZf6yLuBXNEsfRiW0ZJAN8oaA8=
=MJkJ
-----END PGP SIGNATURE-----

--ccbd7e701a960d6301b70e5d87a0770e8037896be033f205da2c4d641b8b--


--===============2122748727580223605==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2122748727580223605==--

