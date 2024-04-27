Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 556DDC4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Apr 2024 18:04:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ygFVwHraGcUBDggkYLX7rkwQgW+SGk70NYY5HTBkzHY=; b=O50OR6qya6wVaOdBE5R3lZrU6E
	bD1Px+ewqUkTi2zFDfe+pHW1GX0HuzfAcaT0l8iA5nAYOk41h7fEmRL5oxflD8T+EmSN+ZmvDFJJF
	+vKezqRIk1eZzmUXLaXXlGuQJ51AQkhxy+voH19fQZiVBBcbDEgyUe7czZAoBRysgaVZg6cREvNxI
	IPluDy/3iLxkL+Nj8ZBy3Oms1vy3L97RjLtqV3v4zrJn+BPRWUqRQA0IgpJLRNlv1Gh/ZiNkGMdOW
	5dB9B1tmnUm1sLKjkAjv5CXqseTwC2Ryb6sYuYZ+AJfDyofEwH8nGhuxMxatK3G0crz4OPWVL6SX1
	Gz+5KCCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0mOr-0000000FvM7-2WLu;
	Sat, 27 Apr 2024 18:03:49 +0000
Received: from www.zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0mOo-0000000FvKP-0HK1
	for linux-rockchip@lists.infradead.org;
	Sat, 27 Apr 2024 18:03:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=8iVe
	i5xGXrW0hT05cj2YRsXH6i/FR3dHY8M9IRQFA5k=; b=bzq+JO3yD1dPLPi+NSMn
	wjBeeB9a4vObiSjdv8wTBBq1Oronttl+/1OiymDH7cSgKu3V24uyOxSELEuIdFb7
	j1gmM6MYI1Z91i4h+6Z3sPg9KOgII60hFQt9G7hC9dW56UE7Ht5Iaxqsx0HTE8ER
	yzSkrdMknbSd+EuEGj4GgrFkcEltadfP5xXn2EocSaZsOmMRFHW266/fBuNVpDga
	t60yWRzXkIhZpSUoUkwnkgvJQBdDeC228q1+8ClvgHUbr+/NLqplRJSRYzm+Q4gs
	VQxx7rPe5VE6pnb+2SSR/z7tkLrhTPtyNnSrZhHIjMKdELfGbYoyKj7keuXhZpLz
	Hg==
Received: (qmail 1744437 invoked from network); 27 Apr 2024 20:03:37 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 27 Apr 2024 20:03:37 +0200
X-UD-Smtp-Session: l3s3148p1@HHbi1hcX9Jxehh9l
Date: Sat, 27 Apr 2024 20:03:36 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-rpi-kernel@lists.infradead.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH 00/18] i2c: remove printout on handled timeouts
Message-ID: <dizevhnog7moz5qajkdkghwurza6ewobo5htavlbizqxlgnqwx@7f53mbpwu7o6>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Andy Shevchenko <andy.shevchenko@gmail.com>, linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-rpi-kernel@lists.infradead.org, linux-tegra@vger.kernel.org
References: <20240410112418.6400-20-wsa+renesas@sang-engineering.com>
 <ZihNbtiVDkxgUDGk@surfacebook.localdomain>
 <sbkymvjmrufouqqscpmrui5kcd466gj6yn2bqwf3lhfk55mjos@n4ydx6wzyq4k>
 <CAHp75VfEvifLjPRQ+xsKipjwXA-APR7m_au6OJjafeXp6Wiyxg@mail.gmail.com>
 <CAHp75VdqcYn9RDVf63N7HL=nQLvFRt8cSO3EfbzAxLKNkwF-Kg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHp75VdqcYn9RDVf63N7HL=nQLvFRt8cSO3EfbzAxLKNkwF-Kg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240427_110346_779995_26B450D3 
X-CRM114-Status: UNSURE (   6.60  )
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
Content-Type: multipart/mixed; boundary="===============6339311574129027503=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6339311574129027503==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ur2627yprz3xmq7n"
Content-Disposition: inline


--ur2627yprz3xmq7n
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> about a problem without expecting it to happen. Is that -ETIMEDOUT
> being converted to some message somewhere?

As said initially, the place for that is the client driver, I'd say.


--ur2627yprz3xmq7n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmYtPfQACgkQFA3kzBSg
KbZazxAAlDDyQT8XTqNFoRYUjr2e6FAw93vAgrmRIjaq7YDf1MjoVF5i9k4F1+7S
zQXcXT9O65VNBaxvzkhNJVODcSUxdTuuGGRtABpkHHE9e0u5LezU2GbbJA/NE+im
sQP1Sr13FAcNQxc/Fj7Nkr+9NmzFQh6UruPTqITcV/tx0tukhGJlr1WT9HhJQOH8
z3vFdrZBZ+gRJ0luT8NWI+o8gYV4wY1q+nMvtOthOHyjHh68fvk83oXSTKEES6ip
8XKSzBfV6ZhPLNF8kaQIcZzzvhlMpEiiRVxmJV8qrYDN/+NeOLImVWxF0+oBwZSi
FnD+W5ueMM7hsVE+vVy2UkpsY3JQOHaTYHAIGGk6RVnrjjl7VysK7qFV2KO9Edb2
guyjzypfaL9IWTogLaznXxJt5oSvLfBNqv7ev400HhCRxKLrmm2OOihe5G76fZOn
v5/cEk4SmoA61+sW7PuaEkIahQLNpDlr/VzzBg/HqEZ5maGPYxedZ2E+afDF3TNT
hQvH4ycoe4+PLB256GmrNh5PZWZmYYdNvcwjW6nUTr/8ZjKfzsuIzqthQJqxztcA
e8EUYo4Gby5hW+V2A8xBXOmFHrcW88+5nXTfv9XNoFCIfZ1hKLuwoG1d4td0dZ1Y
IIj3nxl0MdHqFhXdoLvHWjBbErwzl0blkA/5zPNW3QanuolJstE=
=fHd8
-----END PGP SIGNATURE-----

--ur2627yprz3xmq7n--


--===============6339311574129027503==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6339311574129027503==--

