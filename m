Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15F9CEB64D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jun 2023 22:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3Gr6C6T0esgPM7LfmQCHxlZbkeHcInFMQFuaSqRQJOs=; b=QN9575+UE/GGoUyXyklSPHcmIz
	ip6hB6YLA695Vh+WkBjrBdS/iKqHBwRgOPNBH5HGCLMke7iDHcbcunbsWVuRIqTc1MiDd7I9P9/Fb
	PivHvbhNc28/FnkJJXtAQtL/E2qzqJF7SIp5U+Eh+GLdgqBzs3zS7nV/ibyov0CY1Xs2/+SjZia8t
	MWGZE1N00ywLUOOwyL/bfJddVL6ENq0v7lnOFrEs4mixODaqo8nwLFbTiqck51asOIl6AwlckWgOS
	WLVr+bHx5beS138VZe5pDTt/IpmHXzIqkuNfA17PKJvncQM/aT7ObIQD/hPHjJ2By2qliz/TqVLGf
	fgO5ptaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9Yoj-00Cq69-1G;
	Wed, 14 Jun 2023 22:18:17 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9Yog-00Cq4m-0J;
	Wed, 14 Jun 2023 22:18:15 +0000
Received: from mercury (unknown [185.209.196.239])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A606B6606F50;
	Wed, 14 Jun 2023 23:18:09 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1686781089;
	bh=7DXXgiTAFIsDkW8tcEUWa0sgVg2mlbeJ2h59wXkLWhc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iiXTsu5MPqpZr7Zn7wzW+mT+uyAJYXFDn6WtBW1LF+tRNSBpYdYJauO6Wf/5c71fk
	 hklLNLUA2EWNJfv4IZrtM1YqeihN9XYw0i5u1zevkDm7U3LdjE4XNCGwi7h7xJYAim
	 OFPjynh4LYi4UnCRp66v1HSrOiSOgMDnd8VtqsuuBHZoZulVBqm59vTzjabzffH8Su
	 jFoXvBKkDQ4xYCCYW4qMYHVU6jTbZSyEkujFr3u4GBlGk/SB2zdp5eOVrgDcV6dyzK
	 B9vF418CqQtjKwtE2ftThAYqy+GDML1EXQGYY/vSOR9NpQB2oaktBoz554TQq92EAy
	 D4xUS1lVJUuPg==
Received: by mercury (Postfix, from userid 1000)
	id 55E101060A05; Thu, 15 Jun 2023 00:18:07 +0200 (CEST)
Date: Thu, 15 Jun 2023 00:18:07 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Vincent Legoll <vincent.legoll@gmail.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Robin Murphy <robin.murphy@arm.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 00/25] Add perf support to the rockchip-dfi driver
Message-ID: <20230614221807.akvkncurzh5qxjvi@mercury.elektranox.org>
References: <20230524083153.2046084-1-s.hauer@pengutronix.de>
 <20230614134034.3p3p75a3jophi2eu@mercury.elektranox.org>
 <20230614152721.eep5ip726ump2kpe@mercury.elektranox.org>
 <CAEwRq=qufx6Y6JCD3pzA31y7mfXUxFeMLtwthE_N7rYY7k9+-A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAEwRq=qufx6Y6JCD3pzA31y7mfXUxFeMLtwthE_N7rYY7k9+-A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_151814_346745_345B214B 
X-CRM114-Status: GOOD (  20.15  )
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
Content-Type: multipart/mixed; boundary="===============4305001869192104316=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4305001869192104316==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yk4kwmqovwr2qgoc"
Content-Disposition: inline


--yk4kwmqovwr2qgoc
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jun 14, 2023 at 07:51:21PM +0000, Vincent Legoll wrote:
> On Wed, Jun 14, 2023 at 3:27=E2=80=AFPM Sebastian Reichel
> <sebastian.reichel@collabora.com> wrote:
> > On Wed, Jun 14, 2023 at 03:40:34PM +0200, Sebastian Reichel wrote:
> > > I tested the series on RK3588 EVB1. The read/write byts looks
> > > sensible. Sometimes cycles reads unrealistic values, though:
> > >
> > > 18446744070475110400      rockchip_ddr/cycles/
> >
> > I have seen this going off a few times with and without memory
> > pressure. If it's way off, it always seems to follow the same
> > pattern: The upper 32 bits are 0xffffffff instead of 0x00000000
> > with the lower 32 bits containing sensible data.
>=20
> How often is that happening ?

I saw it multiple times (4 or 5) within a few tries (I guess around
20). I could see it with and without applying load on the memory.
Tests have been running globally for a second using 'sleep 1' (just
like the example from Sascha Hauer in the perf patch)

> BTW, it's on a musl-libc arm64 void linux userspace.

In my case it's Debian unstable.

-- Sebastian

--yk4kwmqovwr2qgoc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmSKPJAACgkQ2O7X88g7
+povJA/+P1xq+rSLUOXSr3A69xOsTyy5R5bGkqh6CnBE35vwNWC7l8W/0FD0wPze
zmYSlGqHtJXB/uwzArejLLX8LjuJmFRcbBhUCTMYBvKIYfWT9JkvYEGlUWBVJtlp
Lr9g1CerL/DVZR047Ym6B7wb1K39IKFVFZCB8QWA6/Ddogj0ZAqhn510Rs+Jv6cD
zXFIrNCyXlTBxeCltJCTJc8kJUPYi+jya4hXC9QxlPkbN5Ms6RrRgpNSocAxo3Q5
vg64Gu4j+nZvgGxxBr7cbJvA2FcbAQ9cCfH6kLPyTcFJj61YRn8BGG457523Ixps
M72T/x7eES5WowQYXveZHddoYIV1uN8ZWLZiSgUubztlKPp34eHb6TwPCraiC/xO
fdttLR3tOEFIgdnc55L4lnbHmv4vEsviAZ27GXT+h5rNMjEofcXHZMiiLZ1YOrNA
H2kfue80eAhS+0fjct2wo9svB2Da+4RHTmjfqZMUJYc0JIKo4q5NQipZrlx+vkV6
Igf7n8epfsGH4hkgAqYmE78+cw/+DB9lL5CntAGBJQstOi0Ud9HaN+gGIbaNw+I1
cYJRQluhEiVE+XmIPlfI6dpClNKytr3rBEAxarGXN7VPlvcg9hAr/TKU5x7wFh0W
tYMJJGXm2a2pgGFC1TjnfMQY7BFL6U4xyDRpBeV2Z11ENBKH4MY=
=Feil
-----END PGP SIGNATURE-----

--yk4kwmqovwr2qgoc--


--===============4305001869192104316==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4305001869192104316==--

