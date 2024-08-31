Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 980D1CD13DF
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Aug 2024 21:06:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aEKt3laXRNQ3lS0ILwj985Wirs4hM7gWezC8tZ24B9Y=; b=0+ODjmtE073uLoovJMCMz231QM
	Za90BpdkzkqlERUijqEqL01vP66+i82HCL+TNG84ofn6WtOZVAZSJ9vb+FDfVrGexbbc6RRLbtbuI
	Kgj6UirUXykkkb5O9h3otWf5jzhhnUsEG04QfhU7/TqnXneLDUkLATrumIFlmJYGWwW0aOt9wwwsQ
	QW92TZcoO/SkmyQ0ur7ZnZpErftpqx7lZMIk4crsFQpAjKSWc9s1phnXneoRobXDWEIZzJEK1m8Fj
	jJisHChsm+SyduLrFBHJiUsPOPadmC8tP0hsjKke3+I031870fMLhtKqJEHtFHhVsX9Z61IIlSSQK
	j3LTGtEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skVIP-0000000A66b-3t4C;
	Sat, 31 Aug 2024 21:06:09 +0000
Received: from zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skVHW-0000000A5zA-10Ku
	for linux-rockchip@lists.infradead.org;
	Sat, 31 Aug 2024 21:05:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=vdy9
	irpsNcTTyDq7ZzNHqsgF4Q1XutSFwTkVDozkiZY=; b=IyoTcNnyXOX2oCMoZn09
	nvbdCEWf+efnAswEsH1SVCHYRuTbAqsfsYP7mxGtOOU/W2RtLvS4Ql2/4u2LxO0H
	R5pxF3LMastWQ2Bl+15WgUPfL4YVUqPKGEiLcK4aAHRNbgygwmLIrSmVv97XyiMB
	mUYPBSWlpZGDXWkc5jElWQUuIKknmqtbtEJm/CJl9rLTaJDBagZ7ebTpZRCDcncr
	ORwl/Iok0sZSGhHP6ROFpvGLaQMOLEbeAb6sCUMMo+21nQ5SGYbGqXDWbY77GpCG
	e6K0HbncBPAPgdVTjKi4zDngWdrds4kAVDEAm+IgTqF9EnuePOHbUz81wmRBN/jc
	BQ==
Received: (qmail 3637232 invoked from network); 31 Aug 2024 23:05:11 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 31 Aug 2024 23:05:11 +0200
X-UD-Smtp-Session: l3s3148p1@1bE8EAEhEU5tKnBL
Date: Sat, 31 Aug 2024 23:05:11 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Farouk Bouabid <farouk.bouabid@cherry.de>
Cc: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Peter Rosin <peda@axentia.se>, Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Heiko Stuebner <heiko@sntech.de>, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v6 1/8] dt-bindings: i2c: add support for tsd,mule-i2c-mux
Message-ID: <ZtOFh5ooDARtYa-n@shikoro>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Farouk Bouabid <farouk.bouabid@cherry.de>,
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Peter Rosin <peda@axentia.se>, Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Heiko Stuebner <heiko@sntech.de>, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
References: <20240725-dev-mule-i2c-mux-v6-0-f9f6d7b60fb2@cherry.de>
 <20240725-dev-mule-i2c-mux-v6-1-f9f6d7b60fb2@cherry.de>
MIME-Version: 1.0
In-Reply-To: <20240725-dev-mule-i2c-mux-v6-1-f9f6d7b60fb2@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240831_140514_641963_8DABDDD5 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============6190303062849065087=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6190303062849065087==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="QboA3ZjoP/b+0a3w"
Content-Disposition: inline


--QboA3ZjoP/b+0a3w
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 25, 2024 at 03:27:47PM +0200, Farouk Bouabid wrote:
> Theobroma Systems Mule is an MCU that emulates a set of I2C devices,
> among which devices that are reachable through an I2C-mux. The devices
> on the mux can be selected by writing the appropriate device number to
> an I2C config register.
>=20
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Farouk Bouabid <farouk.bouabid@cherry.de>

Acked-by: Wolfram Sang <wsa+renesas@sang-engineering.com>


--QboA3ZjoP/b+0a3w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmbThYYACgkQFA3kzBSg
KbY5Sg//ceGQvqvVmSu+8f+frAs/yQN52m3m1nE4lVbRnHNKmRxFCArx2Fy522yk
KmK+P10Als0D9IJIV4eHOyGxPPQgU0X/hRw0CjzFwVa7gVh8vEvFRJImBNMEfu9Z
fYDTKdlXy+Bn33homk0bXumxAK1bzMClmRQtd43XQPvhhuoQ8E+a/kOqHyZ0pe3t
bOhsWJ43HNQkbxooqfDadc/WIEjX/QSFts63zwQ8FRGC7jcG436dXoi2ZIvyhokL
WmaHWjLYxJIgpSi9XD5iEKcQSShC1nXH7Z+z6iJNoJm5qEun6DzpTyQfTEsOGiiV
ZKWNgYYdg6sftOL0iN8YuV0EOg9mL2u3qldxrJ4XNmZ/4CRzDokdh01qUYkPPYAp
X4bjISpDNWaFqVuwZtG85EMQ/JfsjuhAetIDfjqBo5iNfpfy0fo1q3TEoLT9tYg0
JHRooxxBPvXplMeTzSjk568jAy+mwhzi2ByGENy5SnpGQQmrH435rRaSfrcLFrgm
BDy4Ym2hdwButcHUd9PqlRpohOQrZKT4R3CyPmJkgyrOpQSAOlhZzPzbyyVafpTy
FBe3918uwk8V1bh9HTL0IlkDVGMbXqRsJTudpLHi6pvi8lxGrAwZeKoICPf5UAZc
dlTK8Qn6sALes3NFX91ZLxpgFBIBLq0nhYD/DJiRoi6c6GenGdY=
=rzhb
-----END PGP SIGNATURE-----

--QboA3ZjoP/b+0a3w--


--===============6190303062849065087==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6190303062849065087==--

