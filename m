Return-Path: <SRS0=t2gw=O3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A265C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Oct 2021 14:25:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 52B22610CC
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Oct 2021 14:25:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 52B22610CC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yHexjk4SNGW9HHTaaDsm0UsONy4oGJWNXF7U4HTdmJY=; b=nWxz7nonvVmJCUarVpUPj7LdLz
	JQAJBFd8WKe6VmKS4xPALOtSAuOYxTW3bxtk7v69K+hhyQmi5dm1d5yFhNDEzCXQLzPcbzuz3EGR4
	BXHaRqtWPGhhFZXt6K4CyDMmt9ELh+8IBzBGVrmkbn2zD83eszfEmBxujljiipziR1x3a69bQCU6+
	QiywNJcyY7XczUMluCWWY7Lkvq4TIgON2bCNxRccDr4MLD52WO8Fe4p1gYq6kK2KS/rZNDBibUKUW
	rJwmQg5jkdf7hI+OV3hyEYY4hrNdfwELc3wCx4507xJ1EaOTPdmFmxhUrcaurW/Tq4tQjfhjOXu7r
	U1LJ/QkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYUKz-00Hal5-VY; Thu, 07 Oct 2021 14:25:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYUKo-00HaiM-5s; Thu, 07 Oct 2021 14:25:23 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3ABF960F3A;
 Thu,  7 Oct 2021 14:25:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633616721;
 bh=QLMrq3g519DOhev7cHZxqX4kVWD1Aqd3nGFjxucK0K4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mkOT9IFJkprLhu9+asztn0C2dwX0LKrJ0FCSTg85Cj2mxJHjXndLCiUywviwwAE54
 py8MlMHoHOQBSF7SIAuCNTaoMUy2nrAcNTqi5Gsofi+fgUx3eGZWHtMrNxSC6Qo7Sk
 5LbmiQF1zQb7z2pKBSLqCXjTr9W3O8gG1Mfrql3Fd9bZGCcTjtZMxx8UfRlREWMgor
 JNKCmKNcoSpKJJdduuB+WPJTk242NUVQfobqAAcntrCLghB2TIZts2fimF3wI+bAob
 7NPzQ+jwJAJyI6ITftssa+/P8BthU0R9lkBV2Fkx457joWAK8V6L0x4ffe+NKXEvWz
 BBDc3Bx9DMd+w==
Date: Thu, 7 Oct 2021 15:25:18 +0100
From: Mark Brown <broonie@kernel.org>
To: Trevor Woerner <twoerner@gmail.com>
Cc: linux-kernel@vger.kernel.org,
 Javier Martinez Canillas <javierm@redhat.com>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Chen-Yu Tsai <wens@csie.org>, Peter Robinson <pbrobinson@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH] rk3399-nanopi4.dtsi: enable sdmmc regulator on boot
Message-ID: <YV8DTqA/6XI9KZmK@sirena.org.uk>
References: <20211006160817.13808-1-twoerner@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20211006160817.13808-1-twoerner@gmail.com>
X-Cookie: Colors may fade.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211007_072522_259409_A88EAF9C 
X-CRM114-Status: GOOD (  11.26  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2319437108781848390=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2319437108781848390==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/deUtXPj4/UYU6Qr"
Content-Disposition: inline


--/deUtXPj4/UYU6Qr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 06, 2021 at 12:08:17PM -0400, Trevor Woerner wrote:
> @@ -71,6 +71,7 @@ vcc3v0_sd: vcc3v0-sd {
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&sdmmc0_pwr_h>;
>  		regulator-always-on;
> +		regulator-boot-on;

This shouldn't be required for devices that can read their status, the
fact that it's always on should cause it to be powered up if it wasn't
already when applying constraints.  I'm therefore confused as to what
this change is doing and there's probably something else going on here.

--/deUtXPj4/UYU6Qr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmFfA04ACgkQJNaLcl1U
h9CKsgf8DQCEbECuQKPWS9ndwd61Y16UyarKnvFC4c5PxqpvK+JlBp3FNej5teoE
NbuCbz/NwF3yjH89C7T17S4WLOLZHdO4xF2jv0RWqnXwaJcUyxsVI4ObRynR0uSM
kwIE1eLF1DiFS49Qzf3ixMDRf4/zvCay886DBmrPlr2qbG0Wzo0+TwWidtfnFNQq
0Ft+Jw41rLh0WXaAszI1py3/e00QGoDbZbskfXJ5Bhxy6Qi9gaA5vs2l3F/5D9wg
skwZFR04rsBn5DHeRUzn8iPlMheoHivYXPTrOtu9HE13VCqsVemmPbessKehwmv5
si1hms2u9hOiplV/pzRcNX5GIpqWbw==
=nFkn
-----END PGP SIGNATURE-----

--/deUtXPj4/UYU6Qr--


--===============2319437108781848390==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2319437108781848390==--

