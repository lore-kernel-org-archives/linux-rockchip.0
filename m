Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8E56C54E67
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Mar 2024 19:35:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RmfH17o3ja+ReMpm7aAbuXRb638MQVvqYzojAQSv7Q0=; b=sN1sgQuJwWvc6RTumEWbaZc04v
	zaazqdP0tQvXoTSEFevIPHl6j46C39LyoTHTNS+k+dsRysCR3Yhc7/xuDET0Md5fs58VjwZINbgV0
	/no7rXhLCOSCiGPl74dB/ddPv058/qCxXlb+3bPWhbT+OK0Api+fLfIa2YlaOEzD/tjZ+25RdbRhX
	Q34AhRv78kMGUDRJLPbAPRpd3SUKPLa8cGOxj9MNT2Ajz1EwvO2xu8orSK4b94mfmiDHLVwU5kyFp
	CJ5MJUGbWkHbxHg0Z0OnuYVY28Bv4jde5+mSCrenZ/N8aHWl5kkUsgjiOLUHSWFW5Hu9XGgBNQyUI
	pK2cIAFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpCZe-00000006B0R-40zx;
	Tue, 26 Mar 2024 19:35:06 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpCZa-00000006Ayj-3zF9;
	Tue, 26 Mar 2024 19:35:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id AA7D1CE2303;
	Tue, 26 Mar 2024 19:35:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C90AC433F1;
	Tue, 26 Mar 2024 19:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711481699;
	bh=dd88q1ZEU6vWFMFdtX0JYBknro/QldP57SoW9UmINfU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d4yxmGjC0N+zEn19fH/1bM+s9IgFIlwD+J2ali8Up/WQDOgW2t8N6shOD8Dr2B2W0
	 JoDYxTsIEhUlST2ScUZ1Gn7FDik/5JaR+YLrAwSIkmGDb4sfL6xXf6nj7NkAm/igc6
	 TtxtqWpfUeiJsgTTGid0GDvzTxNBqWsjcRUW1to55B0RNTMzCM+4v18rR2BWivsiOX
	 x1WcmLakDJOZiLSrqQPUG2QQBv8/+wLw5OvKfl1QjzzPBO5rg2vW8leX4b/77EwWQa
	 IA1XOQ+7kIkeMy1hOpKn5lU9Fx07ky5ntFqTwYVfPdJyGGFFzlC3Prnimvhl4nAGrf
	 MVaYQjC2SHQzQ==
Date: Tue, 26 Mar 2024 19:34:54 +0000
From: Conor Dooley <conor@kernel.org>
To: dev@folker-schwesinger.de
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Ruehl <chris.ruehl@gtsys.com.hk>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Alban Browaeys <alban.browaeys@gmail.com>,
	Doug Anderson <dianders@chromium.org>,
	Brian Norris <briannorris@chromium.org>,
	Jensen Huang <jensenhuang@friendlyarm.com>,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 2/3] devicetree: phy: rockchip-emmc: Document changed
 strobe-pulldown property
Message-ID: <20240326-shortage-portly-a3ae475b2f78@spud>
References: <20240326-rk-default-enable-strobe-pulldown-v1-0-f410c71605c0@folker-schwesinger.de>
 <20240326-rk-default-enable-strobe-pulldown-v1-2-f410c71605c0@folker-schwesinger.de>
MIME-Version: 1.0
In-Reply-To: <20240326-rk-default-enable-strobe-pulldown-v1-2-f410c71605c0@folker-schwesinger.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_123503_385366_C683E6D5 
X-CRM114-Status: GOOD (  20.51  )
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
Content-Type: multipart/mixed; boundary="===============1669238282871081054=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1669238282871081054==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rZWP/rtpsRtp/vzL"
Content-Disposition: inline


--rZWP/rtpsRtp/vzL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 26, 2024 at 07:54:36PM +0100, Folker Schwesinger via B4 Relay w=
rote:
> From: Folker Schwesinger <dev@folker-schwesinger.de>

The prefix is "dt-bindings" not "devicetree" FYI.

>=20
> Document the changes regarding the optional strobe-pulldown property.
> These changes are necessary as the default behavior of the driver was
> restored to the Rockchip kernel behavior of enabling the internal
> pulldown by default.

I don't think this is a valid justification, but it'll be easier for me
to explain this on the driver patch.

Thanks,
Conor.

>=20
> Fixes: f34e43f12382 ("devicetree: phy: rockchip-emmc: pulldown property")
> Signed-off-by: Folker Schwesinger <dev@folker-schwesinger.de>
> ---
>  Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt =
b/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
> index 57d28c0d5696..10c05437f7ab 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
> +++ b/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
> @@ -16,8 +16,8 @@ Optional properties:
>   - drive-impedance-ohm: Specifies the drive impedance in Ohm.
>                          Possible values are 33, 40, 50, 66 and 100.
>                          If not set, the default value of 50 will be appl=
ied.
> - - rockchip,enable-strobe-pulldown: Enable internal pull-down for the st=
robe
> -                                    line.  If not set, pull-down is not =
used.
> + - rockchip,disable-strobe-pulldown: Disable internal pull-down for the =
strobe
> +                                     line.  If not set, pull-down is use=
d.
>   - rockchip,output-tapdelay-select: Specifies the phyctrl_otapdlysec reg=
ister.
>                                      If not set, the register defaults to=
 0x4.
>                                      Maximum value 0xf.
>=20
> --=20
> 2.44.0
>=20
>=20

--rZWP/rtpsRtp/vzL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZgMjXgAKCRB4tDGHoIJi
0gDXAQDsnJ2l1e9/GqPRLAJofwCMnAL+WPP/kMag/2lxXFb3sgD8DaHfe8Mk5FsS
FcEt/njhjF1n6zYpqFuyWccUhJQdUwc=
=f9q9
-----END PGP SIGNATURE-----

--rZWP/rtpsRtp/vzL--


--===============1669238282871081054==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1669238282871081054==--

