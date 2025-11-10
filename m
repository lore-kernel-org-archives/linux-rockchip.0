Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 411B8CCFA13
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Nov 2025 13:44:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iOVkGbJJdRctSV0VJh3PzG0tTAFBO1OCeB99XQFgka0=; b=PCecCsXdwTj2TmdX634rXZ7+Y+
	z8a3YZZIJMfxfNWMOkWTGHs06AOm6RyEkK3AsXI1qKz8ceTfaaFWZjbtbYa6K3kRoyDhrT86lKxgP
	LItUFDpTwukB1dH+idb4pYmNdGQI1C9eSX5aBpKq7vVYM+1dH5AEB8/JQ0uYPGUIQBaaw4RYbsPTb
	uJNTSpoG29yZmCC0XIwxWifGX1wy056QmS3bPKvngSSv5qSUwiLSI+7KW9kuIXdpfZ9gTK1YVL13i
	7mnt6n+BwpJBAYKY4S6kXj76fYVK9z1NK3XurbNUNyECKUXc2o/gFpNRABUXwr7YHKq1clS0FiGm1
	huxUvuBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vISBd-00000005Vj4-2w21;
	Mon, 10 Nov 2025 13:44:01 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vISBa-00000005Vie-0NMs
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Nov 2025 13:43:59 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1762782225; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=HSdRTwjaAi6bgsxuRDSbZsLF0DPeI+LOlnd1y9igvc4gNPWWf4KKlKpPdEAOfTaQstq/Elrkm4nlxsua8YS7r7TQxGzcIUoGFmye99W2XQCDmhFlZL65IHe2jlJ6uXaeHnPfVprdqTJExRxDG4IsmXGErXhcno5ygCrqceoO4G4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1762782225; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=NaQSEtGafus0sgJYl14H1AHyjnLimFCe/otE/1Mn3kw=; 
	b=gSarWGs90VIKXpnYnCyXBQUZ1/4+5W7W9NV0vwShHeZv7ylmf6NpN8vejvFMXe7Umw9ZBIvlETJNJYjYD642RIKS5sf/TDqS8LPPdl19sj70wSBxCoL0kU0QFGdIfHpCshg5gxXEpjiT5BbV8kp7ycPF9soTskb2PS4EAzXMJ6w=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1762782225;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=NaQSEtGafus0sgJYl14H1AHyjnLimFCe/otE/1Mn3kw=;
	b=g2wP67Cz3+CvMMmpD6hniCswHIQj5NnpT7xiqlt6FzX71FphZCGERnSiHweKixQ4
	ws7tgOQ/wENJ3VHs3Ta3tls2Lw5z6dK6AoaEpYV26oedR9I5DvnUyCjreOa6+5cMfJf
	Gpnsfu5X6FF82r/e8Vf5k0I6Bv8G3+gFJvTYmnXQ=
Received: by mx.zohomail.com with SMTPS id 1762782223271450.25151316746724;
	Mon, 10 Nov 2025 05:43:43 -0800 (PST)
Received: by venus (Postfix, from userid 1000)
	id D8FC2180735; Mon, 10 Nov 2025 14:43:32 +0100 (CET)
Date: Mon, 10 Nov 2025 14:43:32 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Adrian Hunter <adrian.hunter@intel.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com, 
	Yifeng Zhao <yifeng.zhao@rock-chips.com>
Subject: Re: [PATCH v2 1/2] mmc: sdhci-of-dwcmshc: Add command queue support
 for rockchip SOCs
Message-ID: <hjxwedwtwksog67mz4unm4jita2q5vvp4vkdrtpznc6mllz7q4@7a7nn3c5l7fv>
References: <20251031-rockchip-emmc-cqe-support-v2-0-958171f5edad@collabora.com>
 <20251031-rockchip-emmc-cqe-support-v2-1-958171f5edad@collabora.com>
 <abb4a253-6f4b-4547-a238-db6f60ee3244@intel.com>
MIME-Version: 1.0
In-Reply-To: <abb4a253-6f4b-4547-a238-db6f60ee3244@intel.com>
X-Zoho-Virus-Status: 1
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.5.1/262.770.93
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_054358_211076_830C8795 
X-CRM114-Status: GOOD (  20.85  )
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
Content-Type: multipart/mixed; boundary="===============1113050329238436867=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1113050329238436867==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ladnhwyx55vra2te"
Content-Disposition: inline


--ladnhwyx55vra2te
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 1/2] mmc: sdhci-of-dwcmshc: Add command queue support
 for rockchip SOCs
MIME-Version: 1.0

Hi,

On Mon, Nov 10, 2025 at 09:58:24AM +0200, Adrian Hunter wrote:
> On 31/10/2025 17:58, Sebastian Reichel wrote:
> > This adds CQE support for the Rockchip RK3588 and RK3576 platform. To
> > be functional, the eMMC device-tree node must have a 'supports-cqe;'
> > flag property.
> >=20
> > As the RK3576 device-tree has been upstreamed with the 'supports-cqe;'
> > property set by default, the kernel already tried to use CQE, which
> > results in system hang during suspend. This fixes the issue.
> >=20
> > Co-developed-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> > Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
>=20
> One question below, otherwise:
>=20
> Acked-by: Adrian Hunter <adrian.hunter@intel.com>

Thanks,

[...]

> > @@ -687,6 +757,9 @@ static void rk35xx_sdhci_reset(struct sdhci_host *h=
ost, u8 mask)
> >  	}
> > =20
> >  	sdhci_reset(host, mask);
> > +
> > +	/* Enable INTERNAL CLOCK */
> > +	sdhci_writel(host, MISC_INTCLK_EN | extra, DECMSHC_EMMC_MISC_CON);
>=20
> rk35xx_sdhci_reset() is in sdhci_dwcmshc_rk35xx_ops.
> sdhci_dwcmshc_rk3576_pdata also uses sdhci_dwcmshc_rk35xx_ops but isn't
> supporting CQE ops.  Is this change OK for rk3576?

How did you come to the conclusion, that rk3576 does not support CQE
ops? Have you read the cover letter? :)

Greetings,

-- Sebastian

--ladnhwyx55vra2te
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmkR7AAACgkQ2O7X88g7
+poq/g/6Av018KZfLynGwjZMNoFxVnLTbPCij+47pv7hWC/61IeB3Wo3ZKuWOZaT
mJgj8ttbiE8caqUP8EusAjZpnLwmYIeoEfewsXr7mlhwzzKR1wR8xtKzkSYvSOPg
2vjagIjI0QWubTnuyrvBihngKhpXjl9wSgWKBeY3o4PmYB5b9kHuqjBs1hoa8445
fCu0u4zt+2BsxNQYFjCeGbM06pa4kzD00SyNW+Zl3uGPX64SaaUnGeo1k+GFyVzw
h6Q7QmJFLY0kkXr5H5fysSQMWxuMgWyBp/hrcVrdYEx8/EaWddQVOXRIJHK7MVgB
uTi3zilX/3+8Hx8ij+4k2Elp8ywBdoAL92ufUeaZm9va2r+iB1V0kO7YznDU4L3N
AeDqFOG75McYdgKYD/HATaQ9gjut+13TBCvNmajPyFtu0iPww8Tg55lgvfBNOmxF
ZTw2L3OAcfFiVpDzOZ2P5kzQ6S54yMHUE8El7OHQCvfRD3kaLXSJYBswahfh4hW6
1Rq5uosLvZ/59EG6eGkA66xQLEam6Fgq+LmvS7XMagRZdR9EbdFHht5myxXF6lXs
GWwqjJkHBaXFYdUa2jzF7hitnpJBMFOmwh9DjzbyVNPJKSG3504lOyb1UC+2L70R
AMnnkw1ljj57dHDPZ+26sJZA3a37eaWbWjfPiTG/zavQCYzjaLw=
=iosp
-----END PGP SIGNATURE-----

--ladnhwyx55vra2te--


--===============1113050329238436867==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1113050329238436867==--

