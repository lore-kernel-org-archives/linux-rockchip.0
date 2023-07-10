Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31D6DEB64D9
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jul 2023 18:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GZWS/q92b7stjDRr8OUdaD7Cp3hc8ZDRjU7XZ1k1QCc=; b=uWPjXPfrzszoLoBa9aKU/zRwdn
	DbMy4W46SfEC1KvXjUQDtBd4Ji0otPYRHYeLlTf6HEhkUMkpss3rJDkq7Z9bZFTlP0REZfB3dFIZR
	B5akU2OhpGLKNchF3IDqQrkTfreNW66epDxxROs+JMNmlemwWNYdrpM4wFEpdoXDHUdc+3oIYfG2i
	202CdoMpqlBFGTDBmznActccdt/lkpLg3mpNXm9R5g3X/UVzp+rS8xW9Sg9aNNSpKTOu5oX2g3FTk
	+7Rz4VZl1mE/u0ae6DKJk24pyVG3kjqRKms0zgNK7OIeqQvvy/7NGQfFdkcXsvVSbS5Ue66kV4BTe
	bvdrsSjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIvYR-00CSAZ-1y;
	Mon, 10 Jul 2023 18:24:11 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIvYO-00CS9N-1q;
	Mon, 10 Jul 2023 18:24:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 165416118F;
	Mon, 10 Jul 2023 18:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 692EFC433C7;
	Mon, 10 Jul 2023 18:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689013447;
	bh=rjU4uLiWYt4ftE2MPgO1TReUPqirL8bfjjX+jdgFQV8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BiQmjWFXGyfPZVU+lfUfMILKq2gxxdkRmkChNm8Ho4Tmp5S1frLciQC7PJbeQS/AK
	 lYIXtpsLgr5Uk9o9FJu1GgPf8jNg9cKcNyXgVZC56jMzQ31vlAG6bxXuLRuXXQKXnW
	 kTkLv4YfyryF8iEX4EZenZ8WSajK0WObCrwxwMNGX25xVprZDDbYJWW4Jd+LlRgSr5
	 wz8HKDkfUDgRPCPWUapfLJYGl8Vwb1Oq49qxMU9RZTHrukF9U0rM/9NuKrQs+Zu7zc
	 p6W1vu/+emZgMuyOIffoV8xIqUBGyUiIUB9MfrSA0IPRHPDTLRvJDi25cs7OktYTmr
	 cynBueTY1Ao2A==
Date: Mon, 10 Jul 2023 19:24:03 +0100
From: Conor Dooley <conor@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com
Subject: Re: [PATCH v1 02/13] dt-bindings: at24: add Belling BL24C16A
Message-ID: <20230710-sharper-dinner-f745df5f0980@spud>
References: <20230710165228.105983-1-sebastian.reichel@collabora.com>
 <20230710165228.105983-3-sebastian.reichel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20230710165228.105983-3-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_112408_651743_C9C606EF 
X-CRM114-Status: GOOD (  15.87  )
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
Content-Type: multipart/mixed; boundary="===============7121248436617569080=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7121248436617569080==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="KcRJAY7AMOgyBBbQ"
Content-Disposition: inline


--KcRJAY7AMOgyBBbQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 10, 2023 at 06:52:17PM +0200, Sebastian Reichel wrote:
> Add binding for Belling BL24C16A, which is compatible with Atmel 24C16.
>=20
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

> ---
>  Documentation/devicetree/bindings/eeprom/at24.yaml | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/eeprom/at24.yaml b/Documen=
tation/devicetree/bindings/eeprom/at24.yaml
> index 84af0d5f52aa..2ec37c11286c 100644
> --- a/Documentation/devicetree/bindings/eeprom/at24.yaml
> +++ b/Documentation/devicetree/bindings/eeprom/at24.yaml
> @@ -101,6 +101,9 @@ properties:
>                    pattern: spd$
>        # These are special cases that don't conform to the above pattern.
>        # Each requires a standard at24 model as fallback.
> +      - items:
> +          - const: belling,bl24c16a
> +          - const: atmel,24c16
>        - items:
>            - enum:
>                - rohm,br24g01
> --=20
> 2.40.1
>=20

--KcRJAY7AMOgyBBbQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZKxMwwAKCRB4tDGHoIJi
0rZpAQDbwgCS9Zg4JSwt5AcLQsX8Nc0a9ofpQpfLTLnJzN2KbQD/Vnci9I604WGR
tLvTTsbkX3b5YRmXgHuFOT4XWo6lMgs=
=u4BM
-----END PGP SIGNATURE-----

--KcRJAY7AMOgyBBbQ--


--===============7121248436617569080==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7121248436617569080==--

