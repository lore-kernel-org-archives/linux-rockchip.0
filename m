Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01F78606A338
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 21:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=c57RAmda;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=ndufresne-ca.20260707.gappssmtp.com header.i=@ndufresne-ca.20260707.gappssmtp.com header.a=rsa-sha256 header.s=20260707 header.b=ZWdMYEss
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=0ntIewX1RKI8QXxOrx6nJ2ySLiL+zB4zUtC06HOvFsI=; b=c57RAmdaDcT8hvFlWv3usnwWP9
	gUxyqMhWmfBm5iZMJTwe8xcjyK8CV+jhrRWzs8767b5kcLPWTHePHGwnq9oPGUjii4OfBPDh9OOp4
	Zt7yFmCyxaVRqixIcDSDZKuFLfmQRMTSy9PXj6rijddbMwmfYl8m6MynSRVQCk4S939wABd9lgjD4
	VXZMGG0KwZE/p+LynhqLBalBFLg5T1hEyxc8I/nUdZzuvwJz9KBHIpDT+HN1ceioKKR6AvKnNzush
	amS/IsDOitM9O8NyTKP3T6XHZhz1y1hQy05cMfolHXvQ7ldJVQ3r25NJZe023ConysxBm1m2yadgc
	JYs+c/qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVyPm-00000007v6Y-1Del;
	Tue, 24 Nov 2026 21:51:02 +0000
Received: from mail-qt1-x835.google.com ([2607:f8b0:4864:20::835])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVyPg-00000007v4p-1MXH
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Nov 2026 21:51:01 +0000
Received: by mail-qt1-x835.google.com with SMTP id d75a77b69052e-5495d549924so55250281cf.1
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Nov 2026 13:50:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20260707.gappssmtp.com; s=20260707; t=1795557055; x=1796161855; darn=lists.infradead.org;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=hVPbxPzCfcI5EYvAMMF38p87BSkLVMs8H/NP5SJFtqM=;
        b=ZWdMYEss3EXq+bHlcnN9a1zM4tPHHkGjmjB8cuvfaCMBgsYvvGxeo5b18h40Vg02F+
         RpfndEKAM81YZ34dLnnDNZhQsnPfucBa4Vl+9cdgM6AsiNOg/WLb6k2l2wBRC0jsZDBt
         4S9iucBsV9zKISQ9lGQQJlyQ6noym/4p0/FIiJBQMGGmdwPhc3mVMrVEAAejv4bgedae
         GmZHPTGZm816X3DHFmLvuNP67aWdrrdP3XTvVynCb/kNkS33XCmZYNTaQKRVxYO9pUsG
         oAQFi8RtIaiJdiiaM/ek1hYINFrowzSv+tyyOz604RwIIrxNCRSkXIYba+zAMdWHF8at
         MxQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795557055; x=1796161855;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hVPbxPzCfcI5EYvAMMF38p87BSkLVMs8H/NP5SJFtqM=;
        b=rLtJ9ExFYCixYaI+vg6kH6i6CH1ZVuej6OLwhakvMZeieCHxMRBWYyV4/4P9pGmh6o
         5/ZSEJYgl8mwG4B56ehsaiiA66tpp7cccWpXhjuzcOzqoAeieH/xqs9zmxYxt7Eb4T7p
         7Q3p3cMNMYuHRTD39UeCx5qmPjsMEG6LXeU45TDsLKP60NLuXgTaqCVW9tsuUl2qo37k
         hqKtPhM0nnQBsC5wPFS1rJhzwp3x0WyJbSriCTiRV4zTFBQcZwA9D/N0TsWJBMxZ9mjs
         HRRhGtyHUjil/5F4w1hY8mx2sqqSw3ztJ8DDN5vJqVsibZEL98H/MsPwavUGvUb6GVZ0
         a2tA==
X-Forwarded-Encrypted: i=1; AL+hErENfuDj9t1c+4Bmy1+Yc6TnwP+mojGeRLD1wHs1lPB04Cc1+tpxFyF1sITLRs6ORonwcw97g7W5fvZWNOpR8A==@lists.infradead.org
X-Gm-Message-State: APuU4Z8yz7BUj6gMw/ZGC2py77J1qTM9Us1hZPFv7dVcwvCzug1tPDjt
	ARUxmsABazLsAY4Y8Vrl+3EyS/8TifGlbqdcfggTMCyzJIN2e73aaQshTRF7ydaEvS0=
X-Gm-Gg: AZFdTZfLbYphd0JuDZ0AmXO3P37/AY/pMZ10X0RBC0XfSffergs0rKsVPz6DgHawLGl
	krRgbAxTHxlOe5Lqq8GLfgNNL9vQKvEmVDsTDdTBgSUcicCVIGFNuka1LuBSnZM4aBegMybOMXt
	YtvremmbB+boTQUCUQAKUNn9PhcvflNYTp81jnW/IYd/3Uy+0KFfv2OhlM5GKhL8ZWcGagk1im+
	A+QvrK19WQYO86bg52uYd3HVl/d9IlDG8c0i4fb0O+m8KsRX+Vs4BG06v0LiL2SREfD2DJuYS6T
	OJbwim3VO8doj2gYhAblkngkTxQ5qHJvc7t+hjmzzkLpczs8f33yNra6dlx3+Esvl19AjKAvA0R
	ZbHPOeHghbkOXOdAgUev6mW+AUklY4pTuIfJ0mPTpMpcD1F6LNMX7dYvS/UUm8+45AORiO4rM4F
	lv6Kw2JGR0G7AEzCNdboH/rNFpSHVV/DSCwsYaYidWqCGL0J5DyiUFFufKi1M+X9oIUDPIJiRh2
	xJHL/RAsD4w2PrpAvl/dGu2fp4eMXTn2Va7FQ06QSNyIpj+tN1U1gV9BowSa7V/dOI8G+LRmavb
	b0qDb3mbEQsD1e8Fo4ifn4d711XNQ0fENuFYfg3ZF+PKkRDd8IJySP8=
X-Received: by 2002:ac8:598a:0:b0:533:3fc2:8b19 with SMTP id d75a77b69052e-55d769e1664mr304362671cf.20.1795557054795;
        Tue, 24 Nov 2026 13:50:54 -0800 (PST)
Received: from ?IPv6:2606:6d00:11:8ec9::c41? ([2606:6d00:11:8ec9::c41])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-55d7889f8absm135589651cf.27.2026.11.24.13.50.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 13:50:54 -0800 (PST)
Message-ID: <d1057ae0d26a942d1e79bc09ac188dd804ff97b0.camel@ndufresne.ca>
Subject: Re: [PATCH v2 16/17] media: rockchip: rga: put all cores into first
 core iommu domain
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Sven =?ISO-8859-1?Q?P=FCschel?= <s.pueschel@pengutronix.de>, Jacob Chen
	 <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab
	 <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Philipp Zabel
	 <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@pengutronix.de, Detlev Casanova <detlev.casanova@collabora.com>, 
 Michael Tretter <m.tretter@pengutronix.de>, Guangshuo Li
 <lgs201920130244@gmail.com>
Date: Tue, 24 Nov 2026 16:50:53 -0500
In-Reply-To: <20260916-spu-rga3multicore-v2-16-23aa2cb74e61@pengutronix.de>
References: <20260916-spu-rga3multicore-v2-0-23aa2cb74e61@pengutronix.de>
	 <20260916-spu-rga3multicore-v2-16-23aa2cb74e61@pengutronix.de>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual;
 keydata=mDMEaCN2ixYJKwYBBAHaRw8BAQdAM0EHepTful3JOIzcPv6ekHOenE1u0vDG1gdHFrChD
 /e0J05pY29sYXMgRHVmcmVzbmUgPG5pY29sYXNAbmR1ZnJlc25lLmNhPoicBBMWCgBEAhsDBQsJCA
 cCAiICBhUKCQgLAgQWAgMBAh4HAheABQkJZfd1FiEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrjo
 CGQEACgkQ2UGUUSlgcvQlQwD/RjpU1SZYcKG6pnfnQ8ivgtTkGDRUJ8gP3fK7+XUjRNIA/iXfhXMN
 abIWxO2oCXKf3TdD7aQ4070KO6zSxIcxgNQFtDFOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1Z
 nJlc25lQGNvbGxhYm9yYS5jb20+iJkEExYKAEECGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4
 AWIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaCyyxgUJCWX3dQAKCRDZQZRRKWBy9ARJAP96pFmLffZ
 smBUpkyVBfFAf+zq6BJt769R0al3kHvUKdgD9G7KAHuioxD2v6SX7idpIazjzx8b8rfzwTWyOQWHC
 AAS0LU5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAZ21haWwuY29tPoiZBBMWCgBBF
 iEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrGYCGwMFCQll93UFCwkIBwICIgIGFQoJCAsCBBYCAw
 ECHgcCF4AACgkQ2UGUUSlgcvRObgD/YnQjfi4+L8f4fI7p1pPMTwRTcaRdy6aqkKEmKsCArzQBAK8
 bRLv9QjuqsE6oQZra/RB4widZPvphs78H0P6NmpIJ
User-Agent: Evolution 3.62.1 (3.62.1-1.fc45) 
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_135059_633301_99E5A4A7 
X-CRM114-Status: GOOD (  21.22  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0471701471972467263=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============0471701471972467263==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-cVwN/Xd2NZTsdcaY+cOO"

--=-cVwN/Xd2NZTsdcaY+cOO
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 16 septembre 2026 =C3=A0 17:09 +0200, Sven P=C3=BCschel a =C3=
=A9crit=C2=A0:
> Put all cores into the iommu domain of the first core to allow them to
> be used by any core. All buffers accessed by the hardware are allocated
> on the first core, as the scheduling to a specific core is done after
> the allocation. Therefore put all cores into the same domain to have the
> same iommu mapping on all cores.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>
>=20
> ---
> v2
> - Fixed domain not being an err ptr
>   (https://sashiko.dev/#/patchset/20260606-spu-rga3multicore-v1-0-3ec2b15=
675f7%40pengutronix.de?part=3D14)
> - Detach domain on unbind callback
>   (https://sashiko.dev/#/patchset/20260606-spu-rga3multicore-v1-0-3ec2b15=
675f7%40pengutronix.de?part=3D14)
> ---
>  drivers/media/platform/rockchip/rga/rga.c | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/pl=
atform/rockchip/rga/rga.c
> index 5348fcc03c525..b2eeae0a61771 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -10,6 +10,7 @@
>  #include <linux/delay.h>
>  #include <linux/fs.h>
>  #include <linux/interrupt.h>
> +#include <linux/iommu.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/of_platform.h>
> @@ -761,6 +762,19 @@ static int rga_core_bind(struct device *dev, struct =
device *master, void *data)
>  =09=09  rga->version.major, rga->version.minor);
> =20
>  =09if (rga->num_cores) {
> +=09=09/* Attach to the first cores iommu */
> +=09=09struct iommu_domain *domain =3D iommu_get_domain_for_dev(rga->core=
s[0]->dev);
> +
> +=09=09if (!domain) {
> +=09=09=09dev_err(core->dev, "Couldn't get domain of the first core\n");
> +=09=09=09return -ENODEV;

Hmm, Sashiko is annoyingly right, this driver support disabling IOMMU befor=
e
this change. Maybe simply return 0, and turn the error into a warning? It a=
lso
says you are missing pm_runtime_put() or something.

> +=09=09}
> +=09=09ret =3D iommu_attach_device(domain, core->dev);
> +=09=09if (ret) {
> +=09=09=09dev_err(core->dev, "Couldn't attach to the domain of the first =
core\n");
> +=09=09=09return ret;

Also missing PM release.

> +=09=09}
> +
>  =09=09/* we are not the first core, expect that we have the same version=
 */
>  =09=09if (rga->version.major !=3D version.major || rga->version.minor !=
=3D version.minor) {

Keep this check above the iommu setup, so you don't have to undo it. Not a =
big
deal though.

Nicolas

>  =09=09=09v4l2_err(&rga->v4l2_dev, "Detected multi-core setup with differ=
ent core versions!\n");
> @@ -788,6 +802,14 @@ static void rga_core_unbind(struct device *dev, stru=
ct device *master,
>  =09=09if (rga->cores[i] !=3D core)
>  =09=09=09continue;
> =20
> +=09=09if (i) {
> +=09=09=09/* Detach from the first core iommu */
> +=09=09=09struct iommu_domain *domain =3D iommu_get_domain_for_dev(rga->c=
ores[0]->dev);
> +
> +=09=09=09if (domain)
> +=09=09=09=09iommu_detach_device(domain, core->dev);
> +=09=09}
> +
>  =09=09rga->cores[i] =3D rga->cores[rga->num_cores - 1];
>  =09=09rga->num_cores--;
>  =09=09break;

--=-cVwN/Xd2NZTsdcaY+cOO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCawYGvQAKCRDZQZRRKWBy
9EiZAQDgH7HdEx0kZfJoihc2NEWpoQw2AZO/TWinadRHtBt/SgEA5WsnvdZUOkaR
KYMLUEnn4bMuAzk58Ugd+hcGj6IXvgk=
=dLTW
-----END PGP SIGNATURE-----

--=-cVwN/Xd2NZTsdcaY+cOO--


--===============0471701471972467263==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0471701471972467263==--

