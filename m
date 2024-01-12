Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EACDAC4706C
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Jan 2024 17:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LcCLpEoBOHvhDaHkkUmwXL22cFsr35kMqWPftJdRh5s=; b=m9f4YGaeem11gFxPdkGU5/0b2J
	lJjzRI/xRwZ+XO8arXvKtw0sYjkmQpLZIqZFqSNcjA2x5Ko6BJtr260eeYYwEO2rdTlbMpWcrGKaH
	yStFGnHWHXKb6hzXwUkzh123FOBVRh/JVBJ+1foMjtUxSx0uqyzu+sK7eV2+La0Lm+kgDDjWgRJc5
	pygwMaEOtsgZDgH5HbFbKyCXFKncjw8Nn1FAuywGLQX8uSpzrMvXjia1HES0dlYLsYj84TIu8xA09
	CnMJ8DDW/u2/5jElTp+QvkhFVVt0Y0O9TwW7KLmxqt7BsRk+EAnZpgoc1tZ91PdIedQdUi03vt9C2
	WGjV1k2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOLIV-003T6X-2L;
	Fri, 12 Jan 2024 17:26:23 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOLIS-003T4x-0W;
	Fri, 12 Jan 2024 17:26:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 323EBCE2428;
	Fri, 12 Jan 2024 17:26:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7EB54C433F1;
	Fri, 12 Jan 2024 17:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705080377;
	bh=G13ttglQZFvIxRzYqlByAFmV0GTC0NKlv+puvnh+HkM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p/5NauODxWkrXBrumGRvhpsDdjKxFAqtxEfpKF3YSbeKlLwFN6SfLMplnny9zcrN4
	 +BOdPfmazJpUY71pjnhP10h4i9xABe4qVBTVEy8orFrkXXKOas0oJQAXluJ/aH6Q6t
	 UZdhzWpfJgedTCCGf368LPN6ZAHw5Sh8QScp4sQWFrAXFTT+RUgUElUGpclPGseY/B
	 auCN1400aQevegXgvydK2D3fbbtMs5MbYijVUBS7rYOFsQ50kmTpr/eDhpdIL9g8ra
	 8qgjFUzuJ6h9QLzOxAr29fjiA9T+ei1OmcBxm+iZKnok4NhzbKv3UL4IF59Sq5mCH0
	 6f3FDQLZ7CLkQ==
Date: Fri, 12 Jan 2024 17:26:12 +0000
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: KyuHyuk Lee <lee@kyuhyuk.kr>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jagan Teki <jagan@edgeble.ai>, Tianling Shen <cnsztl@gmail.com>,
	Andy Yan <andyshrk@163.com>, Ondrej Jirman <megi@xff.cz>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: rockchip: Add Hardkernel ODROID-M1S
 board
Message-ID: <20240112-headsman-concur-1d47da7e3e14@spud>
References: <20240112134230.28055-1-lee@kyuhyuk.kr>
 <20240112-granola-underline-36a525dc789c@spud>
 <dc4e9808-cd36-4b99-afd9-8dd4cd16a2a9@linaro.org>
MIME-Version: 1.0
In-Reply-To: <dc4e9808-cd36-4b99-afd9-8dd4cd16a2a9@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240112_092620_551645_C35C8AEB 
X-CRM114-Status: GOOD (  18.92  )
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
Content-Type: multipart/mixed; boundary="===============8338875666488412550=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8338875666488412550==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="BlTaGf17Fz4L1eNA"
Content-Disposition: inline


--BlTaGf17Fz4L1eNA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 12, 2024 at 06:02:09PM +0100, Krzysztof Kozlowski wrote:
> On 12/01/2024 17:58, Conor Dooley wrote:
> > On Fri, Jan 12, 2024 at 10:42:30PM +0900, KyuHyuk Lee wrote:
> >> Add device tree binding for Hardkernel ODROID-M1S board based on
> >> RK3566 SoC.
> >>
> >> Signed-off-by: KyuHyuk Lee <lee@kyuhyuk.kr>
> >> ---
> >>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
> >>  1 file changed, 5 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Doc=
umentation/devicetree/bindings/arm/rockchip.yaml
> >> index 5cf5cbef2cf5..cc37d2118131 100644
> >> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> >> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> >> @@ -566,6 +566,11 @@ properties:
> >>            - const: rockchip,rk3568-odroid-m1
> >>            - const: rockchip,rk3568
> >> =20
> >> +      - description: Hardkernel Odroid M1S
> >=20
> > if the vendor for this board is hardkernel...
> >=20
> >> +        items:
> >> +          - const: rockchip,rk3566-odroid-m1s
> >=20
> > ...why is the vendor prefix here rockchip?
>=20
> Uh, good catch. I missed it when acking their earlier mistake year ago
> :( Would be nice if they fixed that one too.

Maybe they will if they got your email, they did not get mine
apparently:
<lee@kyuhyuk.kr>: host mx02.mail.icloud.com[17.57.155.34] said: 554 5.7.1
    [HM08] Message rejected due to local policy. Please visit
    https://support.apple.com/en-us/HT204137 (in reply to end of DATA comma=
nd)


--BlTaGf17Fz4L1eNA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZaF2NAAKCRB4tDGHoIJi
0m7FAQCuvT9Rcw0zZGt/yZ0NOireQ5ZqcA+Vh5bLT+YEF7jv5QD6A8iGqsl6Cz2q
UGZPQh2gBpqx2DAGHZ+yLKZv9WOaQA4=
=J3G+
-----END PGP SIGNATURE-----

--BlTaGf17Fz4L1eNA--


--===============8338875666488412550==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8338875666488412550==--

