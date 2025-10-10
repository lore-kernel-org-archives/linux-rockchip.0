Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56E92CCA476
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Oct 2025 13:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3D5tbD/UvYRnnDW6kGdlAJrfn6tYHJmZeGBq8xLPSo8=; b=WKYQA4f065H8Ec7FI/GJ+JJGfm
	O+tZPkA5qB0SD/U1rXmRhOGZSN1QFooKlM7S4HGF9DGrKd2YrQ7Tem6t1XeHiJ9aOrZOq8vXapn3f
	1LGgTIDEljrwXegVA1Edc4GnuGaf+Jlwm/9Dhulo1oImeQnmKu41tSZDu4ZuNqsbl4YsjyORXZ+Sm
	MDl28612lhpzKAUwd2gge0cZpFYW626sJKteUlimbhSD6xS2U9ptF7xDIno+4riLHjDKTX6dpvw5d
	hXC5eLoYGgoWhs4ABLIpyAIvxGT6S8UubQGRRe1Zg60zvNZ0ewScfvVIEPWK4iIYDPC6zH3L8vWFX
	ApkZjPVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7Ct1-00000008Wyv-2GGd;
	Fri, 10 Oct 2025 13:10:19 +0000
Received: from mail-vs1-xe2c.google.com ([2607:f8b0:4864:20::e2c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7Csz-00000008Wxh-2ebG
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Oct 2025 13:10:18 +0000
Received: by mail-vs1-xe2c.google.com with SMTP id ada2fe7eead31-59f64abbb61so912773137.3
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Oct 2025 06:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1760101816; x=1760706616; darn=lists.infradead.org;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=1fLwwQtYS9/oCuPHk+DiJAuPGJNAUbU6jjwD4B7N0V0=;
        b=b6Ubx1p5cEymPgRnnzwi9SJNaI5XXmSr4isVY3SePD+NF7dU0pXVRUdwFWLlr6MG+x
         isHy6CGvhbsPWfkQBXHlCUxsCqhLONJdbNhw8pkiD4KpWiMTqN2KCWf89GG5a9HFi1PQ
         8JyrEF1AFOv0OfwSp9VMFsbld69kXnDYr51Z1fEAcLFzB8GMKQ9tDFtv5rdUr8fAcjQF
         2G/eA/HHNk7Tzgut99y5qaeh4fUGdceLjoUzVdU33qVEO0eJRTALzgBJ641OcthVMl1R
         511RKcLOamNB9ivrtPZBlqMo+esAFuQoniioojMmK6q5BSmJ7VloWryPcRqgRs/+7y/P
         UUOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760101816; x=1760706616;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1fLwwQtYS9/oCuPHk+DiJAuPGJNAUbU6jjwD4B7N0V0=;
        b=iHIziY3mI3c/WCg+qxsc7dHWFj9D3tbwPeyME3Pnl/EzSBl81k02uGTgK1VQt18x5i
         8jkmwiOC3Jpq/Gn1oFbmMkZF2vQcVTYygEuS5Ovi3jmHHMUnQq8TvHd06qCZdhQHsrEY
         a3gJ0e00KM90cWosi8S+a+Yo+hgNAsDtEH/TbSi1ckfe7n/K7qGFO0CVadV9/EK/H3Lp
         oYpOYAOtpwt/OKcLeC+RSJLZWiQqaD443I1TxGgjzewyMrgBqwDiHd4cShV4LCe71jYW
         NszHRu0abuYmeHFa1SjqdvocPyFVGCJJkS2ShGi73qirm8kE5aH/mS6iBzdrL1K3zKPJ
         2BBA==
X-Forwarded-Encrypted: i=1; AJvYcCUnkEuoJ/VYqDpPnoETVhPd8+LaKyNkV30FNWEh/FPmryomyTVz8YHOc/tFuO/O7Pu39YTpgj4V3sYeMi5nMQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxF91u0roYfgVvpDONAxFbxeQsBkH/AKQrXP3N3c9hoevqz0Cn9
	a5A6UZSnXTZo6jx5IFFmu6ZTEuDYKWIxsPRFKIKo+CuDRVDGrhJfPVAkIClEUGkWQzk=
X-Gm-Gg: ASbGncu8qJU907fY67+fHlZUqjR6vJX5WD9hRauOXSbepmjRSULHZQpHSqAT1fZLBob
	R0z2buogj9IBaSBk9bfrU/qXjavzsvbm7Lq4fox0t23E/Qq8TUVJuSg8w2LvFbvyfbTTAwwpAtm
	Y6db8qiqua0m5+BI5Y3FBKKwmNoIaKT1tTfeoEjL4ozlFR+XL5nuFEJJc90KDm9AIh7Far9eb4z
	5RYsu9/5Np5KphG7KeERbV+UuHuSlaxEbkIO8Wv7LE+hE6knuyllKn6pc7yozhUQoKcHAKb5n7b
	AM3w503JwPyUKvruO702T6pk2XJejTxsIYTzwQ8dX8QbMcMCj6o3Lz2uVnCg6qDCw+q3vZsxoW+
	+ciyaXkFGbL1sJzaMCMO2QG9hiOHoqzNu/d3806HfTpStiFI=
X-Google-Smtp-Source: AGHT+IFRUo0Z5NcP31jBqlbovhPstCVhPEpvKr9/mW5HAo/OoZxluHpqS1bKY5jZDCTa960/6sgFvQ==
X-Received: by 2002:a05:6102:598b:b0:521:57e7:3b19 with SMTP id ada2fe7eead31-5d5e23ad946mr4722552137.25.1760101816309;
        Fri, 10 Oct 2025 06:10:16 -0700 (PDT)
Received: from ?IPv6:2606:6d00:17:ebd3::c41? ([2606:6d00:17:ebd3::c41])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-930bf6ce034sm704047241.7.2025.10.10.06.10.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 06:10:14 -0700 (PDT)
Message-ID: <09dd8f5915da5a2e01bee3835e8de8e209cc4933.camel@ndufresne.ca>
Subject: Re: [PATCH 11/16] media: rockchip: rga: add iommu restore function
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Sven =?ISO-8859-1?Q?P=FCschel?= <s.pueschel@pengutronix.de>, Jacob Chen
	 <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab
	 <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Rob Herring
	 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	 <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, kernel@pengutronix.de
Date: Fri, 10 Oct 2025 09:10:13 -0400
In-Reply-To: <bdebed9c-2980-4d5d-9eb3-1cb5e5e8e226@pengutronix.de>
References: <20251007-spu-rga3-v1-0-36ad85570402@pengutronix.de>
	 <20251007-spu-rga3-v1-11-36ad85570402@pengutronix.de>
	 <97879b9b078055fb130edfd126d253320ce616a1.camel@ndufresne.ca>
	 <bdebed9c-2980-4d5d-9eb3-1cb5e5e8e226@pengutronix.de>
User-Agent: Evolution 3.56.2 (3.56.2-2.fc42) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251010_061017_694629_266343E0 
X-CRM114-Status: GOOD (  32.58  )
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
Content-Type: multipart/mixed; boundary="===============6306721052719257187=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6306721052719257187==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-3xuLcpZRvhbRvRP2LvxW"


--=-3xuLcpZRvhbRvRP2LvxW
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le vendredi 10 octobre 2025 =C3=A0 10:45 +0200, Sven P=C3=BCschel a =C3=A9c=
rit=C2=A0:
>=20
> On 10/7/25 20:30, Nicolas Dufresne wrote:
> > Hi,
> >=20
> > Le mardi 07 octobre 2025 =C3=A0 10:32 +0200, Sven P=C3=BCschel a =C3=A9=
crit=C2=A0:
> > > Add an iommu restore function in preparation for the rga3 addition.
> > > This is necessary for a soft reset, as the rga3 will also reset
> > > it's iommu paging table to 0 and disable paging.
> > >=20
> > > The empty domain attach/detach to restore the iommu is copied
> > > from the rkvdec driver.
> > We did receive negative feedback after the fact on this one. We will li=
kely
> > upset further the iommu subsystem maintainers with that. Have you consi=
dered
> > adding a restore function in the rkiommu driver, similar to TI mmu and =
Benjamin
> > VSI MMU proposal ?
> >=20
> > I have no precise objection, I know it works, but adding a restore func=
tion
> > seems also pretty straight forward.
>=20
> I haven't considered adding an restore function. I've implemented this=
=20
> to handle potential command stream failures like scaling beyond the=20
> supported 8x factor. I'll probably drop this for now to keep it simple=
=20
> and instead correctly announce the constraints to avoid creating invalid=
=20
> commands in the first place.

Ack, though keep a warning around and some comment about the behaviour. We =
are
human, and may leave some bugs behind, always nice then they are recoverabl=
e.
(though PM runtime cycle also would recover that one).
>=20
> > > Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>
> > > ---
> > > =C2=A0=C2=A0drivers/media/platform/rockchip/rga/rga.c | 24 ++++++++++=
++++++++++++++
> > > =C2=A0=C2=A0drivers/media/platform/rockchip/rga/rga.h |=C2=A0 7 +++++=
++
> > > =C2=A0=C2=A02 files changed, 31 insertions(+)
> > >=20
> > > diff --git a/drivers/media/platform/rockchip/rga/rga.c
> > > b/drivers/media/platform/rockchip/rga/rga.c
> > > index
> > > cd4da01645611e5fb51ed94e09b5f1463dad72c5..0a725841b0cfa41bbc5b861b8f5=
ceac2452f
> > > c2b5 100644
> > > --- a/drivers/media/platform/rockchip/rga/rga.c
> > > +++ b/drivers/media/platform/rockchip/rga/rga.c
> > > @@ -9,6 +9,7 @@
> > > =C2=A0=C2=A0#include <linux/delay.h>
> > > =C2=A0=C2=A0#include <linux/fs.h>
> > > =C2=A0=C2=A0#include <linux/interrupt.h>
> > > +#include <linux/iommu.h>
> > > =C2=A0=C2=A0#include <linux/module.h>
> > > =C2=A0=C2=A0#include <linux/of.h>
> > > =C2=A0=C2=A0#include <linux/pm_runtime.h>
> > > @@ -560,6 +561,19 @@ static const struct video_device rga_videodev =
=3D {
> > > =C2=A0=C2=A0	.device_caps =3D V4L2_CAP_VIDEO_M2M_MPLANE | V4L2_CAP_ST=
REAMING,
> > > =C2=A0=C2=A0};
> > > =C2=A0=20
> > > +void rga_iommu_restore(struct rockchip_rga *rga)
> > > +{
> > > +	if (rga->empty_domain) {
> > > +		/*
> > > +		 * To rewrite mapping into the attached IOMMU core, attach a
> > > new empty domain that
> > > +		 * will program an empty table, then detach it to restore the
> > > default domain and
> > > +		 * all cached mappings.
> > > +		 */
> > > +		iommu_attach_device(rga->empty_domain, rga->dev);
> > > +		iommu_detach_device(rga->empty_domain, rga->dev);
> > > +	}
> > > +}
> > > +
> > > =C2=A0=C2=A0static int rga_parse_dt(struct rockchip_rga *rga)
> > > =C2=A0=C2=A0{
> > > =C2=A0=C2=A0	struct reset_control *core_rst, *axi_rst, *ahb_rst;
> > > @@ -657,6 +671,13 @@ static int rga_probe(struct platform_device *pde=
v)
> > > =C2=A0=C2=A0		goto err_put_clk;
> > > =C2=A0=C2=A0	}
> > > =C2=A0=20
> > > +	if (iommu_get_domain_for_dev(rga->dev)) {
> > > +		rga->empty_domain =3D iommu_paging_domain_alloc(rga->dev);
> > > +
> > > +		if (!rga->empty_domain)
> > Its an error pointer, see:
> >=20
> > https://gitlab.freedesktop.org/linux-media/media-committers/-/commit/63=
47dc7fb967521a77f9ff0774d25ef0cca4c6cd
> >=20
> > > +			dev_warn(rga->dev, "cannot alloc new empty
> > > domain\n");
> > > +	}
> > > +
> > > =C2=A0=C2=A0	ret =3D v4l2_device_register(&pdev->dev, &rga->v4l2_dev)=
;
> > > =C2=A0=C2=A0	if (ret)
> > > =C2=A0=C2=A0		goto err_put_clk;
> > > @@ -741,6 +762,9 @@ static void rga_remove(struct platform_device *pd=
ev)
> > > =C2=A0=C2=A0	v4l2_device_unregister(&rga->v4l2_dev);
> > > =C2=A0=20
> > > =C2=A0=C2=A0	pm_runtime_disable(rga->dev);
> > > +
> > > +	if (rga->empty_domain)
> > > +		iommu_domain_free(rga->empty_domain);
> > > =C2=A0=C2=A0}
> > > =C2=A0=20
> > > =C2=A0=C2=A0static int __maybe_unused rga_runtime_suspend(struct devi=
ce *dev)
> > > diff --git a/drivers/media/platform/rockchip/rga/rga.h
> > > b/drivers/media/platform/rockchip/rga/rga.h
> > > index
> > > fc4805ba4e8ef7fb311f780a198ba6ba4d3aff17..e19c4c82aca5ae2056f52d52513=
8093fbbb8
> > > 1af8 100644
> > > --- a/drivers/media/platform/rockchip/rga/rga.h
> > > +++ b/drivers/media/platform/rockchip/rga/rga.h
> > > @@ -75,6 +75,7 @@ struct rockchip_rga {
> > > =C2=A0=C2=A0	void __iomem *regs;
> > > =C2=A0=C2=A0	struct clk_bulk_data clks[3];
> > > =C2=A0=C2=A0	struct rockchip_rga_version version;
> > > +	struct iommu_domain *empty_domain;
> > > =C2=A0=20
> > > =C2=A0=C2=A0	/* vfd lock */
> > > =C2=A0=C2=A0	struct mutex mutex;
> > > @@ -114,6 +115,12 @@ static inline struct rga_vb_buffer *vb_to_rga(st=
ruct
> > > vb2_v4l2_buffer *vb)
> > > =C2=A0=20
> > > =C2=A0=C2=A0struct rga_frame *rga_get_frame(struct rga_ctx *ctx, enum=
 v4l2_buf_type
> > > type);
> > > =C2=A0=20
> > > +/*
> > > + * This should be called in an interrupt handler to make sure no mem=
ory
> > > + * is mapped through the IOMMU while the empty domain is attached.
> > > + */
> > > +void rga_iommu_restore(struct rockchip_rga *rga);
> > > +
> > > =C2=A0=C2=A0/* RGA Buffers Manage */
> > > =C2=A0=C2=A0extern const struct vb2_ops rga_qops;
> > > =C2=A0=20

--=-3xuLcpZRvhbRvRP2LvxW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaOkFtQAKCRDZQZRRKWBy
9K7JAQDtH5ATpeywJXRiQ257tpfW7vvpZX9/3t7E0wbUA/MVsAD6A3FL1LcECnxq
20Ch0znvV9//0YSBl4slG1UocjEBuQ4=
=awm4
-----END PGP SIGNATURE-----

--=-3xuLcpZRvhbRvRP2LvxW--


--===============6306721052719257187==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6306721052719257187==--

