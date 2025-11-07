Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F2F0CCFA05
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Nov 2025 10:09:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IO0otvuYW0bMaxNJiwH3lKs88k1msr6pWQRLdPEWA8g=; b=VjVzDEfuV2arv+Nmh+se99lDA1
	8ZLMF20BcHi+rMVf7ebePSrIPJnrFc6LfXHw56nezebNmETxt0h82cgnECjLBUdcP/Dr94rKFF0HN
	ZoSpY+6Eu2nd1wN1vZd+99wyEaG0akvFvy28ZkO+ENbMRcZTpvCfdg5hB/8v7fDTokb4j4VK5wXiu
	l01cBs26uZi6ymlUDMTlikoGvx+pUe8yunFL/EFT66+yk06TOZRtE1DK6MM4QUeOsWEqhAsIm41i2
	zFdasZOyPY7kBxp87pm65HQHZZibz4G5aHGvOVL5l8Pm+aVMIg9i491oIqaF1l22H1VyqZNKqUUBZ
	lhYhrsCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHJPG-0000000H2mK-0yGc;
	Fri, 07 Nov 2025 10:09:23 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHJPD-0000000H2lx-0zS9
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Nov 2025 10:09:20 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1762510137; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=jek+MO6su+JnNf2oK/4HLjqS6KZXmcdkXtaZpqSoOPl30Xm6O7jq+xJUVKrLOuIGSt+8ra7DvpBQlAMkOoKaSHdhL58DYzcfFTVIVb/VSxtQHUCe4Om8Hjbzd70BWcqWfSjfei+chljljP0+7SACjgcGDUx16t9Gxa91nnOUgBY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1762510137; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=98TqscCcNhUxJylsQVAEJl9l2MzJi9aTy8uuvxcVZdE=; 
	b=FqBipcHrFJO7n/8jpHtUaHKjI6qd6Li+ZAsrRxtGcvzy3EhWJY+7+dImFydGXlNr6mHLZJdyMC2OJqzLtEH0MsrpziQwrJucgOia9vANyyPFuVV0wdHHZJeJZXFuz0kI8B3UWYDVyokz3LYQNMEqeOeiG3YBQ/sRJoYrGbTTsVk=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1762510137;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=98TqscCcNhUxJylsQVAEJl9l2MzJi9aTy8uuvxcVZdE=;
	b=ZzFCkw2I/m+SXWQqpmgHchiu/y6sItbI+9iViJenDAvEo/k0dmLdVoLQjqAG2UX5
	mOtdWUzH77eV9f4T/YAnP73osGNhf2jttotC0j2knwIpwU31ZWyiqNxjaV9AuWB+YIV
	867LfpeOH89wSCFSmuk0864EyZayCsaWy3Om6SdI=
Received: by mx.zohomail.com with SMTPS id 1762510134822762.4949881758118;
	Fri, 7 Nov 2025 02:08:54 -0800 (PST)
Received: by venus (Postfix, from userid 1000)
	id 8F7B7180CB6; Fri, 07 Nov 2025 11:08:47 +0100 (CET)
Date: Fri, 7 Nov 2025 11:08:47 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 2/3] drm/bridge: dw-hdmi-qp: Add support for missing HPD
Message-ID: <z3qwk6o5exump4c6ot4wkh7sn4ihlu6gzeknoqbaop3ftvs5wc@hl7svwf25mvw>
References: <20251106180914.768502-1-macroalpha82@gmail.com>
 <20251106180914.768502-3-macroalpha82@gmail.com>
 <2301926.irdbgypaU6@phil>
MIME-Version: 1.0
In-Reply-To: <2301926.irdbgypaU6@phil>
X-Zoho-Virus-Status: 1
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.5.1/262.482.93
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_020919_333824_88C6BC5E 
X-CRM114-Status: GOOD (  19.81  )
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
Cc: mripard@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, rfoss@kernel.org, tzimmermann@suse.de, jonas@kwiboo.se, neil.armstrong@linaro.org, Chris Morgan <macromorgan@hotmail.com>, jernej.skrabec@gmail.com, Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, andrzej.hajda@intel.com, andy.yan@rock-chips.com, krzk+dt@kernel.org, robh@kernel.org, Laurent.pinchart@ideasonboard.com
Content-Type: multipart/mixed; boundary="===============5179210513153892779=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5179210513153892779==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hu7kkvok6sorts4o"
Content-Disposition: inline


--hu7kkvok6sorts4o
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 2/3] drm/bridge: dw-hdmi-qp: Add support for missing HPD
MIME-Version: 1.0

Hi,

On Thu, Nov 06, 2025 at 08:40:55PM +0100, Heiko Stuebner wrote:
> Am Donnerstag, 6. November 2025, 19:09:13 Mitteleurop=E4ische Normalzeit =
schrieb Chris Morgan:
> > From: Chris Morgan <macromorgan@hotmail.com>
> >=20
> > Add support for the dw-hdmi-qp driver to handle devices with missing
> > HPD pins.
> >=20
> > Since in this situation we are now polling for the EDID data via i2c
> > change the error message to a debug message when we are unable to
> > complete an i2c read, as a disconnected device would otherwise fill
> > dmesg with i2c read errors.
> >=20
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
>=20
> > @@ -1074,12 +1095,18 @@ struct dw_hdmi_qp *dw_hdmi_qp_bind(struct platf=
orm_device *pdev,
> >  	if (ret)
> >  		return ERR_PTR(ret);
> > =20
> > +	if (of_property_present(pdev->dev.of_node, "no-hpd"))
> > +		hdmi->no_hpd =3D 1;
> > +	else
> > +		hdmi->no_hpd =3D 0;
> > +
>=20
> what is the argument against
>=20
> hdmi->no_hpd =3D of_property_read_bool(pdev->dev.of_node, "no-hpd")); ?

Would be even better to use this, which avoids adding DT specific
code to the bridge driver:

hdmi->no_hpd =3D device_property_read_bool(pdev->dev, "no-hpd");

Greetings,

-- Sebastian

--hu7kkvok6sorts4o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmkNxSsACgkQ2O7X88g7
+pphnA/+KJLgFYW6CJj690bGUxkP/uHjY+EL5qckmjFL5nNMDue8dV5mfn0n4aUi
nbZU3ESB88foP+Q1J4rXiuVd7cd0W/ZPfMDIRkAVGy/TkzSSZlw+h3oVQSN3lJda
hWL9y2S1RChF5aO1bV2ru0poijuqyuH2nVjoU/nifgM3Oq8u2fJpfMHlcryUxZfc
gnX0PafzLg3kVhj1n6a9Db5jgo6zUjQrCjim5KrpZp4uYrt6aN7/LkshV5508eOD
OULm6T4gBctztOzCySLGG+8oBexum25wv8DPerA2RYgpoJHTqrzzCCvaVLu7OdBo
i3ka0nvGiQr6hJNsKFJ/6A6BxG9Bj9+/Eek7WY8uMurXp/oN79dGDJy9HNwq53iX
mlnK3l0UXOHMuNF88DjdEfsT0E/akCPzIOA0zNBfVGVqdFePikc5sdjf7ffAjKg9
Z1gFqTz/X8EBLbIZlA7+Qbs6/3b3BBHg6DeFjr90tYCcj5Jamkp7dEVKiQhlM3f6
uGj/WKfaioCDokhrIwmyKNcKp1jr3kwknkWmSF+yy1x0dKsRYfKZKqwWXa1d9u5I
zOlXNukg9Pui23Y5mSCIVv+ym/BkSyAC8lPx+UkRjiS32EiUj3/t1rW0iZov70P5
kG3V9xt5r3OXIVBVP9c1amU5vbScbM0lVcE5LVyk0ClbCFIJ6GQ=
=ZSDS
-----END PGP SIGNATURE-----

--hu7kkvok6sorts4o--


--===============5179210513153892779==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5179210513153892779==--

