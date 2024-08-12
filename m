Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31387C52D7C
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Aug 2024 12:22:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u2Kot8CRHru18QpAoD91puihIBRQ/knH+eVCCODX7O8=; b=SzliZfgzUmsAfZ1juJC1HhDyd1
	QFxUvR4GGkOE7RyiD6iSpB35DBgOe5vqlVd/kPEWugmyo9h/kDcfQCrHqlif2WvXClpZ/EF0Y7eR+
	J2F7zeQlMh6dUBqr+wGoMCADMJBKee9Vbbkqk7D9k2cN+7fdqDCJ4GNebg0rl1/6kHrg/kr+svk5r
	ROrjui0kHpMzDyXxBXRWTdxG1lFdnHDqu5NdmX7Ln79gXUVx563C6/olAVWBYY9v2alc0VnRR5/Pi
	DDmNkWpWeI7436fjOqdiBS745xXBS7E76vT/bHGUoeTMlv+8bBgkOt8GmJe6Rrsljdgl1QnZkFtvq
	Y0jKiPeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdU4Q-00000000GJl-0RIG;
	Mon, 12 Aug 2024 12:22:42 +0000
Received: from zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdU3n-00000000G9U-0eJy
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Aug 2024 12:22:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=nGcf
	tqlwgnxl/vT3ar0EQUng1CmB3IEYmpbTbYcyWwc=; b=ZgADc3nqBIciyV1GO5I6
	ZhmsNjhmf2hrNE2+JpbTTbfSy5MymqkHr8Jf3XOmc7GqfQ/NWaCitdBuUDC9U1wa
	WYVlk0fYqxDQTPFNgysR/m67hs4K9VIqqUU/77z7GIMCz9ZvsCi2/Wj9wzW9ENja
	6AlE69UlQqKeHa6KRd+wEqPD30UjGuQu3vG7O0K8E4gVQ9j5G0RRYauF2e7MbUI8
	BauhSzvA8yDD3dSxsS3bkQkOiA5ti5ZBgCsa7YqB6SwcgvQ7rSeTxhUVYN73Zpf7
	7TWh30iVfGxjRJZ9z7DgoohLGJ6G2jAgDOG0hzbcUNwRCnybJTw9lVKb/bfXT0Ik
	kA==
Received: (qmail 1361653 invoked from network); 12 Aug 2024 14:21:59 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 12 Aug 2024 14:21:59 +0200
X-UD-Smtp-Session: l3s3148p1@9r8finsfkpgujnvj
Date: Mon, 12 Aug 2024 14:21:58 +0200
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
Message-ID: <Zrn-ZkgYKVquarDX@ninjato>
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
MIME-Version: 1.0
In-Reply-To: <f6dfc6cc-365d-4f0a-9a4c-dc34cf4c5b7d@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_052204_081563_39380233 
X-CRM114-Status: GOOD (  15.61  )
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
Content-Type: multipart/mixed; boundary="===============4583404801583835831=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4583404801583835831==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Sm4JRBD3k+rtmVkV"
Content-Disposition: inline


--Sm4JRBD3k+rtmVkV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> Yep, but to be fair the patchset did not say anything about
> dependencies. There is absolutely nothing in cover letter, nothing in
> the patches, so I do not wonder that this mishap happened.

Still, one shouldn't take DT patches (which are even the last ones in
this series) until all other patches are at least in -next, or? Yes,
mistakes happen, so no big deal, but i2c is not to blame IMHO.

> Depends whether you rely on being CC-ed here. Existing entries do not

I don't rely on CC. I rely on patches being on the i2c list.

> include you, thus you are not cc-ed on maintainers. Peter Rosin is, but
> it seems Peter does not apply patches. It could be intentional, but then
> I understand that all pings should go to Peter?

Once Peter acks, I apply. He is the maintainer. Yet, he is very busy, so
I also apply when someone else I trust does a review. He is fine with
that and might chime in later, if needed. This patch here did not get
any review, sadly. As I said, resource problem. That being said, these
patches are somewhere on my todo list if nobody else steps up (what I
would prefer). But please, don't put pressure on me (or any other
potential reviewer) just because DT patches ended up upstream too early.


--Sm4JRBD3k+rtmVkV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAma5/mIACgkQFA3kzBSg
KbZH+xAAsT9Fv0MOTHlN4rWnmaEydjOU/Ati2WyGH+EwuX5r/Uh467W0Fxea3Vfr
SHLsDri1HFk/IjrYjx1aPoIzrm97JOD6K52gegxuPm8M/ckee0H2Q/0bR70Uk0Kb
Bac2uI+6WHrTMgPp8r0VN0rrnt6dve6DSjFAQI8InGkiv7C8jcL63X0ZujsPCA8R
QMgMYs8aC8dPo7uTxVx9FLS7eFZiATQ0TIYV039kQElDRunSiCqfRLaYbhO47lv8
JRZI3AvufWAv6SWF66/Qs0yyzPzIla36tHSS1ZqpyU15OFIg0H8nw5Yy9XA4xQ03
XJiFg/AfCWrX/1K3+L7qVRZxCCiWRs4VFRj34OmyZnP+ND1HUlnYhWfmXBpQmRVe
D/+mHc5mt9trzL5hd3ASkRIBwpLrHfLV7wexwQOt+ULdfhKRYZ7E4b/PWS/AbL8l
Ni/rb6uE+G6/S/9B1dZ0NV1LUeMKz7Ffk/7O1Fs9b1BXRLVIDfkJF5vC28UgHcwL
j79SSIlC7bqknudsbcQm80NCi3oBHth3PYdbMafBysBL3kGRJX7OoT+/un6kzIOa
uHDgFOc30O93QWw5S0ZBib/SpAPBaZNGuo08zqfXk9Xx9Pii6kk+oHRoy7F7mYVz
kbdq6tFWwz8Z7TyVpY0OsQ2S+uTqGuG+JFXHYxo9D7YATCQ7wvg=
=5FhI
-----END PGP SIGNATURE-----

--Sm4JRBD3k+rtmVkV--


--===============4583404801583835831==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4583404801583835831==--

