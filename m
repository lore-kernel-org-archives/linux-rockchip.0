Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6107C3DA7D
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Jan 2023 21:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HcJgJntTF0kppA5Lo1uKSg1w07tfcpQFnfF34O4x6HY=; b=YqzUmjvhsifGb2LayOiYgnyLvb
	nRMgmi1U6gA5qjNL3+XNpOlBEbkGKhrPjyGoYwM007kRkTgoFilEmh1bvtrBfo4/lL29s8Gv1DtHl
	qhKfcROMokdeuwqgHjRimn/A0BZ5/vHrHW0zAXlXI2FH9Ges3NfcLv4kMnYWUZ9j39Zm23cauo0/a
	c7avQv1YKTedl6qxqksjjWys5v8un53HcWP+GlkwFrpBcLl/f2RtepgZL4P+TOEsV6Aq3q63/39Ej
	5bmnXxBhT4ugKM5xicU6UadluBEYqmgrwUF/6UgsjLiYlYSxY32afntBMbpH1jt+qeVhyO4IRiKVP
	Dbmawp/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pC5m4-005DGd-0m; Sun, 01 Jan 2023 21:21:44 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pC5ln-005D6k-Hs; Sun, 01 Jan 2023 21:21:30 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
	id CDCFD1C09F4; Sun,  1 Jan 2023 22:21:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ucw.cz; s=gen1;
	t=1672608080;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Aq0v+DYHcUKp6Xj+Ok8b/poNMw5kQJV4suii1vowS2Y=;
	b=hp4FrWfGD9sf/WF/sIKeSJh2cWjkqGkhJgEbwyHMiXN7Xf4KewzwFCmD59UY7hXAraoIOq
	Exgfp8xbd9cPZL8Oy5UZ4IBa+EWGo967xtUlVWDyBC8oAATD5qC0UYN9yAdsWtHijeluIm
	6rGR62jAzP9MiMHQHk22l8L9lRoAu9g=
Date: Sun, 1 Jan 2023 22:21:20 +0100
From: Pavel Machek <pavel@ucw.cz>
To: Javier Martinez Canillas <javierm@redhat.com>
Cc: linux-kernel@vger.kernel.org,
	Kamil =?utf-8?Q?Trzci=C5=84ski?= <ayufan@ayufan.eu>,
	Martijn Braam <martijn@brixit.nl>, Sam Ravnborg <sam@ravnborg.org>,
	Robert Mader <robert.mader@posteo.de>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
	Peter Robinson <pbrobinson@gmail.com>,
	Onuralp Sezer <thunderbirdtr@fedoraproject.org>,
	dri-devel@lists.freedesktop.org, Ondrej Jirman <megi@xff.cz>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Neal Gompa <ngompa13@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Caleb Connolly <kc@postmarketos.org>,
	Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 0/4] Add PinePhone Pro display support
Message-ID: <Y7H5UJOz/zYuZn7j@duo.ucw.cz>
References: <20221230113155.3430142-1-javierm@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20221230113155.3430142-1-javierm@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230101_132127_798555_19D61E4D 
X-CRM114-Status: GOOD (  15.94  )
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
Content-Type: multipart/mixed; boundary="===============1228538283986506623=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1228538283986506623==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="RTMPi14+3aUpRgHm"
Content-Disposition: inline


--RTMPi14+3aUpRgHm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> This series add support for the display present in the PinePhone Pro.
>=20
> Patch #1 adds a driver for panels using the Himax HX8394 panel controller,
> such as the HSD060BHW4 720x1440 TFT LCD panel present in the PinePhone Pr=
o.
>=20
> Patch #2 adds a devicetree binding schema for this driver and patch #3 ad=
ds
> an entry for the driver in the MAINTAINERS file.
>=20
> Finally patch #4 adds the needed devicetree nodes in the PinePhone Pro DT=
S,
> to enable both the display and the touchscreen. This makes the upstream D=
TS
> much more usable and will allow for example to enable support for the pho=
ne
> in the Fedora distribution.

Thanks for the series. Please cc: phone-devel@vger.kernel.org with
future patches.

Best regards,
								Pavel
--=20
People of Russia, stop Putin before his war on Ukraine escalates.

--RTMPi14+3aUpRgHm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCY7H5UAAKCRAw5/Bqldv6
8umEAKCiiwwQLTUUm7OHMP64I5tMJAdxgACfQsIjJN7Qg6MhlcLpmicQs5rvGSs=
=0ZNJ
-----END PGP SIGNATURE-----

--RTMPi14+3aUpRgHm--


--===============1228538283986506623==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1228538283986506623==--

