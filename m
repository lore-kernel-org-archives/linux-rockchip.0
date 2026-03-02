Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BD73EB362C
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Mar 2026 20:55:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UmigwQB7fRflq0RH9FnautYakf9h0oo8SLXjPxULWcA=; b=PGK55ki/lfVQq52YF6ziPMwLKW
	AfrZXyY4sKpbXH+Zaekn163EFnj3nB/KQVT4xMtwjwxnMEiPqEnynAV3y/MWruPcFnZxcsWbI3O6J
	E8u3DOjajFRhw+WK3OzlNkWDHndm1ASb9PG9WlIaRP6lHy+757Wiz9Xo76qFMRXHYHdKudEvvDP1s
	VdVOvlA1hHT9etMqdB8kE+Y5Yo2Wom2e1tG5bFGLNZJ+uOx40aojdpQVzsHh3xej48vmj6TmY7VRF
	mPtoh4/mXKre9WhTJgo6humoZ8dc6yNaIeEFmSUkkBjGJ1krToSiBWjUVjOfD10bMp2x+a6yRKhCt
	c5G6N7Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxAIO-0000000DyaK-4546;
	Mon, 02 Mar 2026 20:55:16 +0000
Received: from tika.stderr.nl ([94.142.244.14])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxAIL-0000000DyXL-3YxN
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Mar 2026 20:55:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=mail.tikatika.nl; s=201709.tika; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=nfZjio9mqzPbmGBKPpi/HAe2lojuaXWKi2yE0BlVa5U=; b=dnhyJLq5x6ZfAp3Ai6T97W1vWi
	p0HFQU/awWI9vje3s9C6j1fL2IAn3Nx2pkoKmdwT+CZEWpOi5dALC/S+1lwA9+KGhAeoEexIT0Rag
	M6dbR6PYtKPN57PTjIzYhCdSfyob8DJ1+SOQj6+IBA3ddrTpNB6ncoLrNyp9bovM25Ro=;
X-Preliminary-Spam-Score: -3.6 (---)
Received: from [10.42.0.16] (helo=login.tika.stderr.nl)
	by tika.stderr.nl with smtp (Exim 4.96)
	(envelope-from <matthijs@stdin.nl>)
	id 1vx9nv-00HGhp-0K;
	Mon, 02 Mar 2026 21:23:50 +0100
Received: (nullmailer pid 2619430 invoked by uid 2001);
	Mon, 02 Mar 2026 20:23:46 -0000
Date: Mon, 2 Mar 2026 21:23:46 +0100
From: Matthijs Kooijman <matthijs@stdin.nl>
To: Heiko Stuebner <heiko@sntech.de>, Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH RESEND] rockchip: Make gpiod pin control work and add
 gpio-ranges
Message-ID: <aaXx0ez9-F-ObJhO@login.tika.stderr.nl>
Mail-Followup-To: Matthijs Kooijman <matthijs@stdin.nl>,
	Heiko Stuebner <heiko@sntech.de>, Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>, linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20260302202121.197288-1-matthijs@stdin.nl>
MIME-Version: 1.0
In-Reply-To: <20260302202121.197288-1-matthijs@stdin.nl>
X-PGP-Fingerprint: E7D0 C6A7 5BEE 6D84 D638  F60A 3798 AF15 A156 5658
X-PGP-Key: http://www.stderr.nl/static/files/gpg_pubkey.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_125513_882798_6BDF550E 
X-CRM114-Status: GOOD (  14.83  )
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
Content-Type: multipart/mixed; boundary="===============6797932096689947240=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6797932096689947240==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="stVqFOw48iOWV2+/"
Content-Disposition: inline


--stVqFOw48iOWV2+/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> The second patch is just because I was messing with this code already
> and had a test setup ready. It makes gpio-ranges explicit for the rk3308
> instead of relying on the (possibly fragile) legacy workaround in
> gpio-rockchip to add them automatically. I tested this be removing the
> legacy workaround from the code during my testing.
>
> I think the first patch might be a good candidate to backport to the
> stable releases, since it makes a userspace interface functional that
> currently silently fails. However, it is not a clear bugfix and I am not
> super familiar with the rules for -stable, so I left out any stable Cc
> tags. Feel free to add them if this seems appropriate.

W00ps, seems the patches got reversed, so swap "first" and "second" when
reading the above paragraphs :-)

Gr.

Matthijs

--stVqFOw48iOWV2+/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEMyF3AetYrDfGJ9el6ZMxy91tJYwFAmml8c4ACgkQ6ZMxy91t
JYwJNRAAknhHzotXj0k4496wmeitnuquO75epkGmensDC8x7HAYlyTTxt36Qix98
w1e5EaCjwTqpHLkFsJmwu08N58veJbR5xn1oLY9vtta6KQvi+sw3FkL/PIh/eI4x
J6Q/aZNt4T3jX1BuKYHfJ++4oOQ4O0b1Yjox/D7yC8lnjnwL/hI4Eoy6MRe7q3Qo
fCT0P1YeUGo7stcqJmsKdkduGBluwJRpSrOm/+I24Rx95t+UAlQ2F9LBda/wOpXQ
Dubtzjvli8KeKWn6/dE5czbq6ufglhmnAQKa9hr03YDl4+ffdaq/7Q5Sv1DVRFla
I3dPtbvjwYLm9v+Nta7TXMPbsx/BRlOZd6PpZEl2+re4ja8HI98qTwae+Yk9gYrJ
l/zvNVQAqzi8QqJUTPJJmSgRV7f1H75xthbGeAbKYWZD5aAfNQXBileZ9rTIbjq1
UwMHlXLNLvpIu1ZC8DiD4cvIZ5PBjwHnQwe0sP9rONe84bDCzHy+Jsjbv4wQF4S3
wjiknPlarYuh8XKQAoD/jQX32sZCEKDx6eC/Uw3Y4T5Z1jiuMMr3C5a9/hFAWdZr
O7NgUdel42dYb9Eqq0xkB48Q8aetZJlC2x1AG0IcnSP42qSynxe7GTbwlAjS7wrQ
d2yTP/TWvxGCG6l4YVYmBkaLaMRqCpap0waXWlgK8C7mlvqSQbo=
=gQkS
-----END PGP SIGNATURE-----

--stVqFOw48iOWV2+/--


--===============6797932096689947240==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6797932096689947240==--

