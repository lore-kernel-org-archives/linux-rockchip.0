Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11F6EC43217
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Nov 2022 23:46:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fPpbixSF3jf54vcamDuPxQBy9RlLITDpgdDPHTNPRmQ=; b=qgeLR2uw6zNEbuCEmoJNKxjLT6
	bPW7qQhPL6bS+s3xDePX75Kdi6aKjY/otMIq4Swzt+CJUxpBFfndclJwAWw+hx2lbp6atB4Yhw3kq
	dQOiHNdyEcMQfaWwn8Y+KXU4zKkFrxa/arrvuOV3FTeHpoe90DL0ngBMT+VdvZAv4l8cpzDiqUGFs
	SL29ikrZMORqnbGu4MJPT+qZZ6aWcDytd9NSXhknjqHFT7LayTk2faFOwOfMBwvKiKqBJJMnqQreB
	Lrhg5BRi8UTY784qDys+mZvkONrrjhZNvT/4rD8/EO2EPeA4ffmZ0BujdWu53jvVL/0TPg0n86Mzw
	8AHW2wHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyiOo-002uZ0-FS; Fri, 25 Nov 2022 23:46:26 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyiOl-002uVt-K5
	for linux-rockchip@lists.infradead.org; Fri, 25 Nov 2022 23:46:25 +0000
Received: from mercury (unknown [185.209.196.162])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 710A66602B71;
	Fri, 25 Nov 2022 23:46:19 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1669419979;
	bh=pPnXaAWc/pYV6UYA4PeBonV+NM/csJC4V56rNy+Qgwo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bNhJVHOqJshUHf629nNgqzzZHiHDkjoMYtawtWJUMB+IvtZ4smZiT5b0Gxqr7nxIu
	 eI5+VC06UjVOopxJ95cVzNpbvwbMu/iptE+cQQzAb94Za8AQtAwnld7J/VOuFiRNET
	 rLVmMsYlMLQvLx01jmHa/lcmPMgw3Y8x9y+MFNZbmHnSY9Qy4Y8auhqG8x0+3KnbdV
	 m/beEYhl+rwBVSJN/I8/GEiWVry4dvvUUqSW2ms6BF7NEn0OInmHDdjmiwNOUJGxsa
	 knO77dKuC2An0LQ1qP/zHbfj0uJK1tvPN15avwvaQJP+3HsN5GJu8IaB7xfM5DMO/x
	 kY8YkOKeo9AJg==
Received: by mercury (Postfix, from userid 1000)
	id A306D10613A9; Sat, 26 Nov 2022 00:46:16 +0100 (CET)
Date: Sat, 26 Nov 2022 00:46:16 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Mark Brown <broonie@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v4 11/13] regulator: rk808: Use dev_err_probe
Message-ID: <20221125234616.3jj2izaa42uznlz7@mercury.elektranox.org>
References: <20221020204251.108565-1-sebastian.reichel@collabora.com>
 <20221020204251.108565-12-sebastian.reichel@collabora.com>
 <Y4EYjNOrS6lDnDZK@sirena.org.uk>
MIME-Version: 1.0
In-Reply-To: <Y4EYjNOrS6lDnDZK@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221125_154623_908540_936D670E 
X-CRM114-Status: GOOD (  16.81  )
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
Content-Type: multipart/mixed; boundary="===============0509973977771794049=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0509973977771794049==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="spwcfqzgs2tjdqot"
Content-Disposition: inline


--spwcfqzgs2tjdqot
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Mark,

On Fri, Nov 25, 2022 at 07:33:32PM +0000, Mark Brown wrote:
> On Thu, Oct 20, 2022 at 10:42:49PM +0200, Sebastian Reichel wrote:
> > Print error message for potential EPROBE_DEFER error using
> > dev_err_probe, which captures the reason in
> > /sys/kernel/debug/devices_deferred and otherwise silences
> > the message.
>=20
> This doesn't apply against current code, please check and resend.

That's expected. Patch 2 changes the dev parameter of dev_err(),
which is being changed to dev_err_probe() in this patch.

I think we are getting too close to the merge window for this
series considering it's touching so many subsystems. But you
can take patch 2 + 11 to the regulators tree as is.

Thanks for the review,

-- Sebastian

--spwcfqzgs2tjdqot
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmOBU8EACgkQ2O7X88g7
+pobVw//bj0mXmsiqq6WitjYB5ZyfXrg4eSJM+5c2SvVRTZrFC0aCq/A98lA5qEm
Vodq8aNKRGBQbpQL2pGFwsK0Nf7WozUdNxy9cB92H/C/nZ/dzRrtlVY6NLy6xFW5
QhLz4YXRfUypYmTNfYfsA5RxU1tsXSzDMIJpAi/kL80C+Dm+u9cq+9Ap/AEL8vWC
cQY0d4QazWN1KJMufa1m2ZTpvSiGHfv2XFqo6nrZ7LuW3wwf1PbJiGeQv9UPJwU9
qlYie7tSlgk1+m60JfYmsUUAKA7V/jMircUlGBruxoMpAzjyNuCqGMgyMsHvF5tA
S6ecEcyFuQimQksTE6jGW27+BaYfYhnmFUZJlHxcHywwTRBkinL2AieqRhhQdJXx
JA4NUfKunWhBqOGLAbkcEF90lvjeYyei/XRg/9tHCBteu1nBW22f6o1Yie+kTjEz
uSPErA4di+UENJFOt42NuesYWe8rrkQ6w31jld8Nz3B/TeQPJbh3BNL1NmnZUzBn
wiGo6oW5jEh3yECiVHj2Gw9QfzuJ5LMVob7S3VW/a8xZzeEndpi2NvzyPh3OReAx
Q+OHwNzrLswxFIs43AnY/P7miM6DdIvNtg3vnnvYEMmR0VFXQzTAwgx8ew27nsU+
shbVt9QfhudZZgZE0nisqCZCq9QoaqIZyzszGaV2Wt518mAHipY=
=n0B+
-----END PGP SIGNATURE-----

--spwcfqzgs2tjdqot--


--===============0509973977771794049==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0509973977771794049==--

