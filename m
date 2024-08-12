Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69A47C52D7C
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Aug 2024 10:08:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gzuaRZgBHyffwTsYkQJwMczAC69tCXV7TzkKxsY4CJo=; b=oYd+YZpam7+vSJuEhddWHqvgsH
	1F0UJQ2QOrnVFGYHFwFrJtKJOKWbNV03hrK148GkM3PmUGnrZ3zvMKxV7Ghy66q1659TcAewHIQVr
	/HL85zarE83azmyhtK5cUZavXIhUTXklJZEkvHx7HAVhqra6BM+RBZtXd8lLlb0NWTFSwtgcs8F5L
	zLPY+dzt3cr9Uzup6alHxUhiJ6rX2Ij/EQZos7ScFAP+Q2k+aUh3Oypge7mzs4rJFsdw5kdKI8773
	ns/4MRPeZyAimhcz9GuLgQB6ucsUEQEuuGdHqmey313nM/4eJGZ9mvKyD5mnbqCe7sulClbaKkfbf
	XlELyAAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdRy7-0000000HYpz-2Fyp;
	Mon, 12 Aug 2024 10:08:03 +0000
Received: from zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdRwO-0000000HYc0-1xa7
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Aug 2024 10:07:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=mClt
	4km34eZKuLNhSvzGvo9tPW7Zym4xoCrXG5E0FqM=; b=l4LN63QyZU7GaQ1Ba5S0
	JSGvyJuDd90fBKqdlNXMVv544GCiktX3Ocinlc82IHA82jXsh//8rayazjtsjRmB
	vlYC7GTkgmSgyUv2V8IbAnbAB1ALjGTgQSMYbdFZ1syY1iVKb8nSIQkWrVSBt5g/
	+mQeYb3qYWp/Ft4ksrqwG02Ix8hIAViOJE7YsIMpahmW4Tg/d8T+stnIqDuxXw1/
	LG4pKtOoe+XQzgchoZEv218FA0uoXFZqaZIQrSHyOH8FvceY0z++HUjbRKl2kq/a
	JFX08RFBItBdPziMS3appP636mDQAeg+dbpAGri9FSz+QDDmdkGzalPoVC9FHOmu
	tg==
Received: (qmail 1328508 invoked from network); 12 Aug 2024 12:06:09 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 12 Aug 2024 12:06:09 +0200
X-UD-Smtp-Session: l3s3148p1@MwtbpHkfJMAujnvj
Date: Mon, 12 Aug 2024 12:06:09 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Quentin Schulz <quentin.schulz@cherry.de>,
	Farouk Bouabid <farouk.bouabid@cherry.de>,
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Peter Rosin <peda@axentia.se>,
	Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Heiko Stuebner <heiko@sntech.de>, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v6 2/8] i2c: muxes: add support for tsd,mule-i2c
 multiplexer
Message-ID: <ZrnekeUKciV4eAKC@shikoro>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Farouk Bouabid <farouk.bouabid@cherry.de>,
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Peter Rosin <peda@axentia.se>,
	Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Heiko Stuebner <heiko@sntech.de>, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
References: <20240725-dev-mule-i2c-mux-v6-0-f9f6d7b60fb2@cherry.de>
 <20240725-dev-mule-i2c-mux-v6-2-f9f6d7b60fb2@cherry.de>
 <728a8e06-81f1-4771-8031-ea043b9baf20@cherry.de>
 <3a36e89b-b4e2-4eb8-9197-a7a1d04a7fb6@kernel.org>
MIME-Version: 1.0
In-Reply-To: <3a36e89b-b4e2-4eb8-9197-a7a1d04a7fb6@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_030617_375691_0618A950 
X-CRM114-Status: UNSURE (   9.62  )
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
Content-Type: multipart/mixed; boundary="===============4098955164555525381=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4098955164555525381==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="od+vr8RbPCV7rMK7"
Content-Disposition: inline


--od+vr8RbPCV7rMK7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> Let's call it real ping, because we have warning in next due to this:
>=20
> Documentation/devicetree/bindings/hwmon/ti,amc6821.example.dtb: /example-=
1/i2c/fan@18/i2c-mux: failed to match any schema with compatible: ['tsd,mul=
e-i2c-mux']

So someone picked up patches before the dependencies were accepted? Bad
idea.

> Can anyone pick up the i2c pieces?

They need review first. We likely have an issue with resource
availabilty here. It is that simple.

> And/or fix maintainers for your subsystem?

Have you looked at the entries? They look proper to me.


--od+vr8RbPCV7rMK7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAma53o0ACgkQFA3kzBSg
KbbX9hAAtTcJIjNItRlX7aZ/4MZzyR45ugXr/STAZxJX7S08nlhnx5Cd5sbQClF+
Y8vFbRbILrfO6JTtfzeQbHdaP2mlkBjfiIRXnvtIYfDGhS5qI/dJ8s9TZ6NtSvxk
2zcqvsfPKosniM27AHw9w1RBHBbpDDft+9uEo0WuWwElDTsppXB0vqapu2w3Qq3k
TAfmQpLOjaKL/BakfOZlfK9pQ5EyBxomUG8QuuRAsXOAff9tyEW5p5s7DOOUg9sb
6ETJ8rZzb6Y8rc/rh/fBxrVpXjpBffq55GlugVJCjpQNDARKl728XIEarO1rRoSe
YhMJF3yMyUZDmRcV1BHYZStG7POyRKGdyaIGhX/WjOarqiYBZgTyfs6FmeKqU8f3
ycWIxDOTAYntMlaw/yfEge3RHYAhpvvb9I9tO2xmw3oa+gQ5hieZs1hi9UGu+AIO
nZ+L5MKoO0VTrcTMzZ454YwCMJO4soQcDKZSb7vQLqbaHdC3aDAqvslDQ1dBXXbj
RMkdF6Mf2wyljtQ/BIne+OrsnemVRk00HJlJgkDiesFUuUDyEAtUXFlNflYi32d7
GNIITkt9iCHztH08wPvsONDLEZKQGfp8NqhVGZYXJwf5XN4PpZOAzHC7OOXVsbAn
lG2Hc8gZYplc+98IbQstC+PJizVUB/4RYl024aqk1BA4HsbxLvo=
=e8Gs
-----END PGP SIGNATURE-----

--od+vr8RbPCV7rMK7--


--===============4098955164555525381==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4098955164555525381==--

