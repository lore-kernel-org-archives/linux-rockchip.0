Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D86BCC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Aug 2024 17:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+xSrp2OWgoXS9f4V7QjI9TRXU5m/dnznzTw6PklqwMA=; b=0fmbRHD0BgWUNcAwZDRGAgxiBe
	TFe8GAyBg5IvJNqCp+9TIDtAgc23grWlWWf/BRRuAyu5UyJH/3jLtKSlpPKAVisM/1NHea6L95DRb
	rzpGrUH0nv0+EpSRCEBGF8MXMRYq1CUkS2f/QG+r3/EtKQJrUUhsL4aRZJcFW7BRIFMz9cHY8Liys
	oTXFzUKvItq2SyzpwpH4KJ+UC0aA8p1VImBAslzJxzFWM+ncQVKI4xclEPqAyOfnP93810tV0yCFk
	Xfbb/zm8yKXsir/xQ7WYYa0o2j6XOj5D4vIWGqR74eNzsQYujAAU7zJ2iXNy4Mjl6Kl/n4vFIY1dM
	4rQKG09Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdZ2A-0000000143W-3l9F;
	Mon, 12 Aug 2024 17:40:42 +0000
Received: from zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdYyh-000000013FE-21CB
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Aug 2024 17:37:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=X+tC
	nDWQvroKBLhT2+NKJ34gv0lM9SYFG/oysxvfa68=; b=ZI4PNX5QAJ2kYGaRJ78/
	jrL1WU84XbC/GvCvgCLQIpkRFAjMJ75pvqVVGjHD0AfbPhNyQzSb04fi/rSjeBSq
	kH3A0WVSe/GvDA5htlN99bIIcZRYdLGeT1g/xhV61wzsx0LyPGvQvOyPNlFyGzxy
	DLUIreB96yAuBFzYKUYJPL55dRD5Z+Lsx5o7cjYokQnTnSLUfPBYem/g5e8DaLxv
	30y9ana3kYoFvNWHHpfu0H2aH5H4K30ETFQSPuBxS8HGza08rqT6jplBq5rpmTdJ
	wZR0dwLqbiIIbN5QmAt5aOchLz8AvSUtCt30GV+zy6+uoEX9kgZpmJHcYqNU1hWc
	ug==
Received: (qmail 1432277 invoked from network); 12 Aug 2024 19:37:02 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 12 Aug 2024 19:37:02 +0200
X-UD-Smtp-Session: l3s3148p1@Rmfc8H8ftusujnvj
Date: Mon, 12 Aug 2024 19:37:01 +0200
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
Message-ID: <ZrpIPTOTN20GoWqR@shikoro>
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
 <ZrnekeUKciV4eAKC@shikoro>
 <f6dfc6cc-365d-4f0a-9a4c-dc34cf4c5b7d@kernel.org>
 <Zrn-ZkgYKVquarDX@ninjato>
 <426eb8b6-9b2f-4594-9cc3-320ef0cee835@kernel.org>
MIME-Version: 1.0
In-Reply-To: <426eb8b6-9b2f-4594-9cc3-320ef0cee835@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_103708_402422_D781AE30 
X-CRM114-Status: GOOD (  12.09  )
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
Content-Type: multipart/mixed; boundary="===============6787222592772656183=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6787222592772656183==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/t9BApsAyYarLt7K"
Content-Disposition: inline


--/t9BApsAyYarLt7K
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> No, it's not. It was just a ping. The issue is here not describing
> dependency, allowing Guenter to take the patch and not even telling him
> that now next has warning. :/ It's like entire weight is on maintainers
> and contributors care only about getting their patch inside. Once it is
> inside, not my problem anymore... :(

I totally get the "weight on maintainers" thing. I just also see that
for new contributors, it can be hard to see soft dependencies in
advance. I mean, even we missed it. I guess Guenter is right, we all
make mistakes, so we fix them. Commits got reverted and we will re-apply
better.


--/t9BApsAyYarLt7K
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAma6SDkACgkQFA3kzBSg
KbazHg//UBrJXW8DM60tpZPlTELL7+7g6fwFoo/w9eTO2Nus8TPYisMeCP3wFfFj
otbLP0QqgloZv27D4gogTFE0HoWhLdXxZ/hJAZddOyBsm4qDOzBad9GCVI+a60Ge
woF4s7L26m8JwUZ6tzEbCf4dUwhI322bbqFgv2c5G94p+jzgm8T+iwyyv0qAMsi+
nQdB3ElNgt88XAfBoFttsPKoE9+RrUZlHSJhLokEvDatAO+iXmYzbUhLfXDM6pEy
mJRcWWcs45bxC3mEmQpZ9dvh2ZY8Q8C7o6E0lCubIKEh6LazNNAZnfWt1FQFhiy8
IntMUuK2zITNsFo6HV5ISNy8IkQxKeOMO+QuCZfQKGeErZP/yV/Uuamdku7A/S1j
Mk3e1oiHSi4g57gsSKqeC/j1N/rHFoDCgVrh7l1kaQjuwGY9QpZPgYedfzxQ5oMb
347qEM7Yd905SdXNOoFCYshaEVhDvRNrUHVlZDseKn2XWf3/26/dvevuH3AuLipi
5ykyvXxUw3/GvAGQEcrx0d6qotT/Ow6hYiCE2fPQ+AqfLsn4F1384q4xXgGwprfT
ZO6RVwVXkE9V1yaN+8zVs085bNbs97VLy9YPncGroK4kvvuNq4EWKWBEMA+78ucf
CZ6tcKwph09bY6bcYHQ2RfaSH+19joL6xzWbr2NtHYXaSWSjk6Y=
=nV8m
-----END PGP SIGNATURE-----

--/t9BApsAyYarLt7K--


--===============6787222592772656183==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6787222592772656183==--

