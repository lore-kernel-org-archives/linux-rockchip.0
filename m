Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC270C04A95
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Oct 2022 18:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JmE8HQfLwCLY39pHCpzfP6S1XQM+XAj34qiwlioZbPk=; b=RWVgWVwU63RS2W3vx9dl2/obDO
	Zva8j9hlLvGJm8FhjEZpnOc2HTgIyaV0PUyJk3Xq/+FeaELteLvONGrEQeOyg+Pu3ItaJyk3fiJsO
	Y8Gs1TbXK4A3yBjlm2KxoQf3dyB40At/w/y8xV9FznGLFlltGORLcdT5oG2gotfTxUxdc2Nq8T4xU
	5IBHjGNP+5+Mi+X6QFhzUt7W5l0sA+m+DwbvSnSRzbH70zUu+aCk10SySn2UE0kTwNRatJmJowaGs
	sLFxVpPp19hewBYtzCWHtJEzUGZA4d8DyjZm9WGZANj37EheENhrckcTdtB//kAdRAD6Ot9qMYSbV
	Huwh8KAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omJ5N-00DVTi-Ka; Sat, 22 Oct 2022 18:19:05 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omJ5K-00DVSO-T1
	for linux-rockchip@lists.infradead.org; Sat, 22 Oct 2022 18:19:04 +0000
Received: from mercury (unknown [185.209.196.162])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 828AD660237E;
	Sat, 22 Oct 2022 19:18:57 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1666462737;
	bh=aVRfa05Pe4xu8Oy3Hd7CQnA76p8LS2W9iGhPGMnw+qg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MK/yeP8c8W918ZegSCk1eMlJ+VPS+K8YHfpnvuq768Vo87AGYTqpFPvlaG/EFFDLS
	 dPUKr7VN+Ybw342XFy2hBe4RnwxWXA5cHsyL1/1qVxnNj5W+7jusYh3RF/fpQrm8Hk
	 SQ0dzvr9yStrJfsR5W1o7RzRpPi9mdj+LK06OfAJLzOxxqJ0W0FPRlUuKtp29+ael/
	 BmIEp/r+bHo/J3W7hNRw4kO5VXQMjvS+IPzWcj6E8WS1S6vacIJE/g1SDoXeMRVLAQ
	 Ur419A1T2KfXpJlhhXar9CFC0kXibYQgz3rGcx/1vx8RVeA+Q53TqPOxIqJs1hOPdl
	 VDxh07PGeyGBQ==
Received: by mercury (Postfix, from userid 1000)
	id C0F3210607E8; Sat, 22 Oct 2022 20:18:54 +0200 (CEST)
Date: Sat, 22 Oct 2022 20:18:54 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Amit Kucheria <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
	linux-rockchip@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Finley Xiao <finley.xiao@rock-chips.com>, kernel@collabora.com
Subject: Re: [PATCH 1/2] thermal: rockchip: Support RK3588 SoC in the thermal
 driver
Message-ID: <20221022181854.znel4pizx3gemz7q@mercury.elektranox.org>
References: <20221021174721.92468-1-sebastian.reichel@collabora.com>
 <20221021174721.92468-2-sebastian.reichel@collabora.com>
 <2aafa6cc-a7de-0b7a-571f-04593ad53787@linaro.org>
 <7276280.TLKafQO6qx@archbook>
 <2b0fe8c2-674a-3b44-16aa-d3008b1271c3@linaro.org>
MIME-Version: 1.0
In-Reply-To: <2b0fe8c2-674a-3b44-16aa-d3008b1271c3@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221022_111903_110446_B3EF7375 
X-CRM114-Status: GOOD (  18.30  )
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
Content-Type: multipart/mixed; boundary="===============4966789435011119358=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4966789435011119358==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="r3ipl5tfxboahj42"
Content-Disposition: inline


--r3ipl5tfxboahj42
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Oct 22, 2022 at 01:12:22PM +0200, Daniel Lezcano wrote:
> > If you have access to the TRM, it contains the following line in
> > part 1 on page 1372:
>=20
> Unfortunately no, I don't have access to the TRM. But I'll be happy if I =
can
> ;)

The RK3588 TRM is available under datasheets on this page:

https://wiki.radxa.com/Rock5/hardware

> > 	Support to 7 channel TS-ADC (near chip center, A76_0/1, A76_2/3,
> > 	DSU and A55_0/1/2/3, PD_CENTER, NPU, GPU)
> >=20
> > I assume one of "TOP" and "CENTER" is "near chip center", the other is
> > PD_CENTER, whatever that means (PD =3D power domain maybe?)
>=20
> Yes certainly.
>=20
> I take the opportunity to let you know there is a new tool in the linux
> tools directory called 'thermometer'. You can capture the temperature and
> use the data to create graphics.

nice :)

-- Sebastian

--r3ipl5tfxboahj42
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmNUNAsACgkQ2O7X88g7
+pqiABAAoegMIjcvD0MMzIGy5tJXZrbTiRiXnecAxm52JAWAFUOguaq/9eHHfUTA
txSchjmuzrZf41rhF1nM+6gbb3EEgZyNlkVfcmY+I++jWpA4labqb/fj+j7Ct2aF
TCixCcJT7RgPyF/MvrQ5zAlPPk0loikk3OBZwLIs5zDULIurjwu9hHLNYHi0S5nT
taiaHtfvdzlOidmbb7yc0TdvC5bYKnIjeMCQ49Vs7OsltnzUJvztSCEtRHj2flvq
GvFZavp3VB3ZZl3FaRO4AzmHGM9zxTMsbLXMBqMO6pplUKCHEliOKh6svRwbrEza
MqNHl4cNl9KWI7hqdB1kXPtRF3s6kcTZsH8+LK0wkh2po1oV9jkVloFxApy0kjo3
EDpuRmUKOeWdX0iO+88ehK6k31heZInEjTYJivgCII52OrwN7ryDkYj5s/WoZE+i
KqkozthBLI9dM7yojZ97fYO2MqxO4IF+63j9kmgcjhDEF3PQjs/5gMlpMyEY+Ab0
rR6zN1X8t12EDUfm1tmPtFSJ9YfbWoi18CkBid8BB0YFYl9rCfl7BNlCp35B2uBo
fwgHnDefq3llRKK+5NX+Imk+z3DiMisEeLjEicORXERweAzkuG6CaMQwK2GboMK9
e32ANTH6AUcf9knUFSKqFGckFVkdpne5N+pDgIrrL4NHaSOCVoQ=
=oMve
-----END PGP SIGNATURE-----

--r3ipl5tfxboahj42--


--===============4966789435011119358==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4966789435011119358==--

