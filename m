Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E077BCCA476
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Oct 2025 18:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vWf7DkgzqWDrxgV1ftcf3RDypPHysFQ+YljxioeLEAg=; b=zizj/0T6lU6AA96tnJhy6BGk1/
	MG6U32QB6b29gic9ffh4PXpG56cPk4j1lrxKVLhLfTRgXl0Ht5tkOTbsmWY00C3NN3xHH1yRE8RBA
	9ExxlX0vvUqAfjvRrA/CRygy4yh1mXnkfKpsrxbMzljt9WIwGUtwBcM275T+he2JgnQoUJWwCxJlk
	okDc18bL6Rl3Qps8uoZf9BpCYVfgbOTW219xI/K9V0kyvY8i5VU1rkiUyhjYIwkjPDukaNrQmvvmE
	usRpjEih7gCzANwBAOCY9IPReQjDm1EZ8TLz0bkTtM3q0y6bpr35Hc17JH9Cmq3db3vAGxltyLF9I
	yohq/icw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6CSP-00000002asR-2DeR;
	Tue, 07 Oct 2025 18:30:41 +0000
Received: from mail-qv1-xf36.google.com ([2607:f8b0:4864:20::f36])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6CSN-00000002ar4-0Swh
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Oct 2025 18:30:40 +0000
Received: by mail-qv1-xf36.google.com with SMTP id 6a1803df08f44-80ff41475cdso91984796d6.2
        for <linux-rockchip@lists.infradead.org>; Tue, 07 Oct 2025 11:30:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1759861838; x=1760466638; darn=lists.infradead.org;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Jb3tcA1W3FmGk+8TVe8vqOzjSK1aS/TXDE04iZAy/ws=;
        b=sDiFzyavivg/260NBizSf84xDptR/AfQqrR8zK+T2mStK1kYWE7W5Vlm4Qvjrinm6B
         luySKr3kULdnlsKzsYNRuOhSgMXOg5WZjSDNxEIUkQFYPAY87NSOhuo6s74xr/I/IHi6
         +J3ZN0fW6w6TBaQG9Ct7xqYMy+Df76c8ypnQSzhuwT66XDinMS4pKhi8EWgpVhSEw5JH
         1n3IFXNzeDsOK+BTNyaC/xhliNfjT9dRdEUY8RyFEg+fBwOztyqQSK+NU/mhBREdLTxg
         EeWsjyeWCbrQD4+H8k1Jo08VpvZLNena+CCI20qjbrYT28/wh3IpmUiU+buf1VQTL3iT
         jtJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759861838; x=1760466638;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jb3tcA1W3FmGk+8TVe8vqOzjSK1aS/TXDE04iZAy/ws=;
        b=vuys8bBBhHqR+3kGaSW3yJA0xFpYcO7oS7rZvqEo/vh3BlT58oJfmdRjLZ+nXSuZy3
         xg+n36H770hgFLanGeDbTg0pfzW4fMtUItpDDK09cObw1K5nvUYNZcr0b0fKabI1JuKG
         714OewDPRXpb8zCqlY6oruICdFQtKI9jiDQ3UMjZ23CcKIpRgVCHR/6KRwds3sEGbmQO
         hvUAopKtB3aoS4Y2MMqdsqWPMBCygLMg7oXMfMq6z23VWS6sgHcev3nrhBAqnUXziU6v
         i3Hi71OiZNY8+y05jV8xb/5RB2t2VdlLkJ7VOFOAHVk8mgeJuda2jQIwEPZOIjWnRhFk
         l4tA==
X-Forwarded-Encrypted: i=1; AJvYcCUHCx2F93rwhUE8ozQvdSNGIheIVaR43SlCZxNhDUCu3jm4cfey4EoxUcOuwi3kDk5aoOlK9HBR889I48d/PQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyHRCUqIs8VVATjORPOf+X80p2SSEsS7XeixCJJPBT44f9e6WZX
	c8FsoRjdZjRAUdz+jkklZQC507RMrSxJhi3KB0jhGKsyd4PDO9JdtETblZezZq3rKXA=
X-Gm-Gg: ASbGnct8SfNdXRarMgm4s4WcIHWtFQtRpkzbOQca0wB7wDj38x8TvDWxVEMrxdjF57D
	qVZGOOAlFHHxzT6ucRMmQPzaKlcMmv/dgO9GratVvyKS9A3Wo1NcEMMdQj/+t8FMXPelgrAoxr6
	q5T/zldOPq/AKaoIS06kXat4nvYbOmoucgp3Rk1a8QMNf5oneZg6cGGdo+1YLIT9L857EhLYJ0e
	0YQ11y1fzbQeNnE4+1skjDvR/JVXtlKClmQJLRrXaG/sOyfSnI2NDxWRJ9vh7sgd+hKjNfEDwyE
	59NV8ZXX3kc2O3ry7e7GDwsL8hrd/6NekJWHdrva5yx2W82QfPKb7ZaBPDJUoMXjI0rr8uHn0kd
	NmB1ytFgv1GRTxeHBI1ok+/7hxhXEzRB8Jbfh8JNKwvXp0wnBj3Z7
X-Google-Smtp-Source: AGHT+IG7oPC1tRwzaeHEd7zVyRiz9owBfrM5atH+5WnqTKGdGFmZwYm2VcF1mt295mM1N+XGahIowQ==
X-Received: by 2002:a05:6214:c65:b0:78d:ae5d:961e with SMTP id 6a1803df08f44-87b2efc2c83mr5392146d6.44.1759861837282;
        Tue, 07 Oct 2025 11:30:37 -0700 (PDT)
Received: from ?IPv6:2606:6d00:17:ebd3::c41? ([2606:6d00:17:ebd3::c41])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-878bb53badbsm144330446d6.21.2025.10.07.11.30.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 11:30:36 -0700 (PDT)
Message-ID: <97879b9b078055fb130edfd126d253320ce616a1.camel@ndufresne.ca>
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
Date: Tue, 07 Oct 2025 14:30:34 -0400
In-Reply-To: <20251007-spu-rga3-v1-11-36ad85570402@pengutronix.de>
References: <20251007-spu-rga3-v1-0-36ad85570402@pengutronix.de>
	 <20251007-spu-rga3-v1-11-36ad85570402@pengutronix.de>
User-Agent: Evolution 3.56.2 (3.56.2-2.fc42) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_113039_164993_09A54304 
X-CRM114-Status: GOOD (  24.15  )
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
Content-Type: multipart/mixed; boundary="===============9064893043045259396=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============9064893043045259396==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-XMJL5X6bcbRTnPR2VvM0"


--=-XMJL5X6bcbRTnPR2VvM0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le mardi 07 octobre 2025 =C3=A0 10:32 +0200, Sven P=C3=BCschel a =C3=A9crit=
=C2=A0:
> Add an iommu restore function in preparation for the rga3 addition.
> This is necessary for a soft reset, as the rga3 will also reset
> it's iommu paging table to 0 and disable paging.
>=20
> The empty domain attach/detach to restore the iommu is copied
> from the rkvdec driver.

We did receive negative feedback after the fact on this one. We will likely
upset further the iommu subsystem maintainers with that. Have you considere=
d
adding a restore function in the rkiommu driver, similar to TI mmu and Benj=
amin
VSI MMU proposal ?

I have no precise objection, I know it works, but adding a restore function
seems also pretty straight forward.

>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>
> ---
> =C2=A0drivers/media/platform/rockchip/rga/rga.c | 24 ++++++++++++++++++++=
++++
> =C2=A0drivers/media/platform/rockchip/rga/rga.h |=C2=A0 7 +++++++
> =C2=A02 files changed, 31 insertions(+)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga.c
> b/drivers/media/platform/rockchip/rga/rga.c
> index
> cd4da01645611e5fb51ed94e09b5f1463dad72c5..0a725841b0cfa41bbc5b861b8f5ceac=
2452f
> c2b5 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -9,6 +9,7 @@
> =C2=A0#include <linux/delay.h>
> =C2=A0#include <linux/fs.h>
> =C2=A0#include <linux/interrupt.h>
> +#include <linux/iommu.h>
> =C2=A0#include <linux/module.h>
> =C2=A0#include <linux/of.h>
> =C2=A0#include <linux/pm_runtime.h>
> @@ -560,6 +561,19 @@ static const struct video_device rga_videodev =3D {
> =C2=A0	.device_caps =3D V4L2_CAP_VIDEO_M2M_MPLANE | V4L2_CAP_STREAMING,
> =C2=A0};
> =C2=A0
> +void rga_iommu_restore(struct rockchip_rga *rga)
> +{
> +	if (rga->empty_domain) {
> +		/*
> +		 * To rewrite mapping into the attached IOMMU core, attach a
> new empty domain that
> +		 * will program an empty table, then detach it to restore the
> default domain and
> +		 * all cached mappings.
> +		 */
> +		iommu_attach_device(rga->empty_domain, rga->dev);
> +		iommu_detach_device(rga->empty_domain, rga->dev);
> +	}
> +}
> +
> =C2=A0static int rga_parse_dt(struct rockchip_rga *rga)
> =C2=A0{
> =C2=A0	struct reset_control *core_rst, *axi_rst, *ahb_rst;
> @@ -657,6 +671,13 @@ static int rga_probe(struct platform_device *pdev)
> =C2=A0		goto err_put_clk;
> =C2=A0	}
> =C2=A0
> +	if (iommu_get_domain_for_dev(rga->dev)) {
> +		rga->empty_domain =3D iommu_paging_domain_alloc(rga->dev);
> +
> +		if (!rga->empty_domain)

Its an error pointer, see:

https://gitlab.freedesktop.org/linux-media/media-committers/-/commit/6347dc=
7fb967521a77f9ff0774d25ef0cca4c6cd

> +			dev_warn(rga->dev, "cannot alloc new empty
> domain\n");
> +	}
> +
> =C2=A0	ret =3D v4l2_device_register(&pdev->dev, &rga->v4l2_dev);
> =C2=A0	if (ret)
> =C2=A0		goto err_put_clk;
> @@ -741,6 +762,9 @@ static void rga_remove(struct platform_device *pdev)
> =C2=A0	v4l2_device_unregister(&rga->v4l2_dev);
> =C2=A0
> =C2=A0	pm_runtime_disable(rga->dev);
> +
> +	if (rga->empty_domain)
> +		iommu_domain_free(rga->empty_domain);
> =C2=A0}
> =C2=A0
> =C2=A0static int __maybe_unused rga_runtime_suspend(struct device *dev)
> diff --git a/drivers/media/platform/rockchip/rga/rga.h
> b/drivers/media/platform/rockchip/rga/rga.h
> index
> fc4805ba4e8ef7fb311f780a198ba6ba4d3aff17..e19c4c82aca5ae2056f52d525138093=
fbbb8
> 1af8 100644
> --- a/drivers/media/platform/rockchip/rga/rga.h
> +++ b/drivers/media/platform/rockchip/rga/rga.h
> @@ -75,6 +75,7 @@ struct rockchip_rga {
> =C2=A0	void __iomem *regs;
> =C2=A0	struct clk_bulk_data clks[3];
> =C2=A0	struct rockchip_rga_version version;
> +	struct iommu_domain *empty_domain;
> =C2=A0
> =C2=A0	/* vfd lock */
> =C2=A0	struct mutex mutex;
> @@ -114,6 +115,12 @@ static inline struct rga_vb_buffer *vb_to_rga(struct
> vb2_v4l2_buffer *vb)
> =C2=A0
> =C2=A0struct rga_frame *rga_get_frame(struct rga_ctx *ctx, enum v4l2_buf_=
type
> type);
> =C2=A0
> +/*
> + * This should be called in an interrupt handler to make sure no memory
> + * is mapped through the IOMMU while the empty domain is attached.
> + */
> +void rga_iommu_restore(struct rockchip_rga *rga);
> +
> =C2=A0/* RGA Buffers Manage */
> =C2=A0extern const struct vb2_ops rga_qops;
> =C2=A0

--=-XMJL5X6bcbRTnPR2VvM0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaOVcSgAKCRDZQZRRKWBy
9OYnAP9DZqU3/sor4ifbznDD8fkkIm921ew6ADeaBvy0V9AxfgEAwHVV4+jp7xPf
P3ZUAog4C977zT1IhEvYYMKGr4Gjpwg=
=aUgZ
-----END PGP SIGNATURE-----

--=-XMJL5X6bcbRTnPR2VvM0--


--===============9064893043045259396==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============9064893043045259396==--

