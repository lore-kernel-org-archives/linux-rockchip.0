Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7624EED62F
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Sep 2024 17:32:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uGXiC8AX4H9jhfcwdK6gTt/PLgzzEjIfUUKK+3dJISc=; b=1sPCJhL8LSKFjUnEOck6Kyi+Tb
	r7ALutsuFopVwlID8tfbuYQANqfKNiqlKu+hqBR2kZ8qtwKFusKiwfwQ4PyyV2jIvQ6pBSK3l5Xki
	WUb4UDrDGPw2Lx+nCu4he9jgoLMRhVUjA0BEAxvWmyEDZDx0WwOsQJeP6+u15D6ErXpDDpkQzuyO6
	mRoMUhtZ8womR/73gkgm9k5PTG6cpDvgtzuqSM/NYESZcjKqJ+cd/LtYEdPziyHuh7tqeL+VduOId
	MJS0/1cAU6XqwpLVyYGPd80hLuoffEZGrMGjMZG4KDxpR2B3OWmFH3LpVUctimLLSTJR+MQ4GRvH4
	KWZ9jo6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sonfz-0000000DpU0-1qaV;
	Thu, 12 Sep 2024 17:32:15 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sonek-0000000DpKH-0BNP;
	Thu, 12 Sep 2024 17:30:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B1EB15C5BEB;
	Thu, 12 Sep 2024 17:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFA51C4CEC3;
	Thu, 12 Sep 2024 17:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726162257;
	bh=8y1dR77puzn0RMjQTmk+xE8FToGJficDwic/ip1+65w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=K9RJ91Q+I0jr/EUH9yRcVV1aZg84L+o8IM8IcRi0rbokVhyypjosQlx18+iYffsVF
	 KVQEDvvEzwjf8FZGD7DKisEqvN8JplYE0fx8i4ceBGg628uZ5xXAbBQjQn/16pnrkr
	 2kQbtDoIbhZWGjw9MKVvCp7gLatLa1SPs16O19ZFtkuMWBN8/6u6yqt2N/N1aQUlzz
	 /C7iGxAnWpFZ51i74m6b1d7BgHsKQTAfvOY2jhALi3Jb/13nc3rNqRcSYWZTQuP2WL
	 EfaT/1AoqGwtlPgycOKWfVVvzp4443ZkJv092SThLVIW336g6SEl7Dl69mOnqlwNhz
	 N+kpaOqVJWA9g==
Date: Thu, 12 Sep 2024 18:30:52 +0100
From: Conor Dooley <conor@kernel.org>
To: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	heiko@sntech.de, alexandre.belloni@bootlin.com,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org
Subject: Re: [PATCH v3 1/6] dt-bindings: watchdog: rockchip: Add
 rockchip,rv1126-wdt string
Message-ID: <20240912-uncloak-legible-f5dfe659ef61@spud>
References: <20240912142451.2952633-1-karthikeyan@linumiz.com>
 <20240912142451.2952633-2-karthikeyan@linumiz.com>
MIME-Version: 1.0
In-Reply-To: <20240912142451.2952633-2-karthikeyan@linumiz.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240912_103058_167608_9CBB46A8 
X-CRM114-Status: GOOD (  12.96  )
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
Content-Type: multipart/mixed; boundary="===============4529970153304163322=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4529970153304163322==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="EZDJnundzgFSPVEf"
Content-Disposition: inline


--EZDJnundzgFSPVEf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 12, 2024 at 07:54:46PM +0530, Karthikeyan Krishnasamy wrote:
> Add rockchip,rv1126-wdt compatible string.
>=20
> Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

> ---
>=20
> Notes:
>     v3:
>     - add watchdog compatible string
>=20
>  Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml =
b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> index c7aab0418a32..bccd27a1e470 100644
> --- a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> @@ -31,6 +31,7 @@ properties:
>                - rockchip,rk3568-wdt
>                - rockchip,rk3588-wdt
>                - rockchip,rv1108-wdt
> +              - rockchip,rv1126-wdt
>            - const: snps,dw-wdt
> =20
>    reg:
> --=20
> 2.39.2
>=20

--EZDJnundzgFSPVEf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZuMlTAAKCRB4tDGHoIJi
0mj7AP9zO5lyYCl1VkO9TLYU9+GIDBHB6DnJPkBavC5UxSCQCQEAmtTmBuv9omXs
VDfEkO/KDhle6E2vpY2syWDZ0wnnvQ8=
=go4c
-----END PGP SIGNATURE-----

--EZDJnundzgFSPVEf--


--===============4529970153304163322==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4529970153304163322==--

