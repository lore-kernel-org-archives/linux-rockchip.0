Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C762C5AE5A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 15:44:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xcNVI1tGV5JdedaIbJBkMibksZJyflrw0PWrkH+6/u0=; b=sNhsRLzlFhxlmi9lK3bHA+D2nU
	YbyEq2SCp2N00aZ/ggMDi2xTnWRRDijd5NVCnyalyhqlXGMqfJLDinNbe61DYJw+2kenXNa6AWsbm
	0g19eErlCb3cSl4a53e7z3kO0LWVQyYz5z/HoKh6CICxo0+QcDc7umUata6OH3mjU0WeU5hHQYHRb
	pb98Mq0Tf1LpWSblngCS6X2pE7VmGV+cUGocTmF4/HGCnIobQwwoIhVOCp4Zc3hdjhNQr66Pi1o/L
	opFadi8rfL56yYeqEXaiqx17vcGbArc1tRZB5/jGjPj5pL+U4IM/bN6DXlc2X8jMJ7M5dif+Jh1HV
	Xc9vt+hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKqR-0000000G2rt-0eL7;
	Wed, 28 Aug 2024 15:44:27 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKa2-0000000FyJh-1iDx;
	Wed, 28 Aug 2024 15:27:37 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-371941bbfb0so4033461f8f.0;
        Wed, 28 Aug 2024 08:27:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724858848; x=1725463648; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7d72c/mj/2Z6FiVdpOBNTFT01VdBmf1RNvsZEcgNCnA=;
        b=i5DJtMEmVpohGirj6WBFhyEjCx8Iy48c+A7YJlg4+cfsAFeKlBmfDdMAYI4Oh/kO7C
         4lVtNgtAatZtJtYl7fJmgPyz/LEhlKUn+5+JYZdpT8TBwtu9Agh+AyKmZgT5bGoIKq5C
         Q5sdwWbRoZ4qmdBz79r775JOwDXKJy3ZG/e8D8lVnI0w/Cl1i5nj7vUEPFjLczuKgF/b
         YfPP2jLaZUzM5u3xmLNT8S9EApkK69gTrCj9NKA/4erakuTnbJLPQALSLCgpYTwg6/Zj
         MVj1eMi5b69LGnbHpU5kvJv7r5NRLLajtRBwbXOxRT8EmYtfpcB9KwnwNKVkuRkb96gW
         hfKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724858848; x=1725463648;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7d72c/mj/2Z6FiVdpOBNTFT01VdBmf1RNvsZEcgNCnA=;
        b=LSaLbpZ+aQxzWcg9ndEwj8KLDF5zcUNlXdsIItYLjMRVWSkblPWtZsPMjyMmRVOyZ3
         qExu7gQI6owrqYp4+EhMKIrLn40Wj6JwB4hXbDPRvFqk+jkltLXOU8K7tsR0JUFJX+NN
         F8VT4nUgOzn80vK8bcKA6MkkE5WJ5/xDCKype1N7rgzV9uTZCcRmTcUt2CnGf6IKO+0f
         WU4uOoKmtpWnPFNpezmBJHhl4R2EZxEkT4KCMyiSPSFDpYT9A3TT7OTshLJXAg9tZJFX
         EC9ZSl7hlq0NFF/E9qCR7mZPltzN+UY3oEOVdJb6xN2XMkzhsGxF7CYukFZN1m/VDLVB
         0UOA==
X-Forwarded-Encrypted: i=1; AJvYcCUqKInh+TLUcEicS+pJCW7qWwhVKi/7aYiIOs5/hoZf1gBmLkDNMOBpdoYKqP9KqF2q8rVFZeiZ9/74v6SBri0=@lists.infradead.org, AJvYcCVdFFFZPdUfc4HnuV26wp7vGihpGvvTFLWFrWiXp3UC9Tz6WeZqvbSqtrJAcZBVzr1iOGRM7h26T40h85Hp31GG@lists.infradead.org
X-Gm-Message-State: AOJu0YxT0PP4zytwLRKFb3ae6p7WnLnUu2PmsWgmRzQWSO8g6pMTey5W
	xX5p9Ji9L8/8i1ld8v7HQiRmYwH1ddMyWtl4tJR0WuzOkruYlahS
X-Google-Smtp-Source: AGHT+IFy+N6MNpikAMD3IJYGiP5Mfu8DbpT3WuOqB9zdjdgMg/vD1umE1XlYBlEzFehtYhZBgfMtDQ==
X-Received: by 2002:adf:a3dd:0:b0:371:7e73:de6e with SMTP id ffacd0b85a97d-3749685b56fmr1596718f8f.52.1724858847009;
        Wed, 28 Aug 2024 08:27:27 -0700 (PDT)
Received: from orome (p200300e41f29d300f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f29:d300:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3749b238cf7sm81389f8f.33.2024.08.28.08.27.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 08:27:26 -0700 (PDT)
Date: Wed, 28 Aug 2024 17:27:24 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Lu Baolu <baolu.lu@linux.intel.com>
Cc: Karol Herbst <kherbst@redhat.com>, Lyude Paul <lyude@redhat.com>, 
	Danilo Krummrich <dakr@redhat.com>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Sandy Huang <hjc@rock-chips.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Mikko Perttunen <mperttunen@nvidia.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Jason Gunthorpe <jgg@ziepe.ca>, 
	Kevin Tian <kevin.tian@intel.com>, dri-devel@lists.freedesktop.org, nouveau@lists.freedesktop.org, 
	linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org, iommu@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] drm/tegra: Remove call to iommu_domain_alloc()
Message-ID: <qyvyd2ftebjlgmzyayfvxsqa64c4wgx7keix3a6eexdspbvawy@a5ffnm5h5tgp>
References: <20240812071034.9443-1-baolu.lu@linux.intel.com>
 <20240812071034.9443-3-baolu.lu@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <20240812071034.9443-3-baolu.lu@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_082730_471307_521EF8B3 
X-CRM114-Status: GOOD (  21.48  )
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
Content-Type: multipart/mixed; boundary="===============7887300838857033352=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7887300838857033352==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fslg44mz7bzr7agv"
Content-Disposition: inline


--fslg44mz7bzr7agv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 12, 2024 at 03:10:34PM GMT, Lu Baolu wrote:
> Commit <17de3f5fdd35> ("iommu: Retire bus ops") removes iommu ops from
> the bus structure. The iommu subsystem no longer relies on bus for
> operations. So iommu_domain_alloc() interface is no longer relevant.
>=20
> Normally, iommu_paging_domain_alloc() could be a replacement for
> iommu_domain_alloc() if the caller has the right device for IOMMU API
> use. Unfortunately, this is not the case for this driver.
>=20
> Iterate the devices on the platform bus and find a suitable device
> whose device DMA is translated by an IOMMU. Then use this device to
> allocate an iommu domain. The iommu subsystem prevents domains
> allocated by one iommu driver from being attached to devices managed
> by any different iommu driver.
>=20
> Signed-off-by: Lu Baolu <baolu.lu@linux.intel.com>
> Link: https://lore.kernel.org/r/20240610085555.88197-20-baolu.lu@linux.in=
tel.com
> ---
>  drivers/gpu/drm/tegra/drm.c | 34 +++++++++++++++++++++++++---------
>  1 file changed, 25 insertions(+), 9 deletions(-)

Actually I think we can just do something like this:

--- >8 ---
diff --git a/drivers/gpu/drm/tegra/drm.c b/drivers/gpu/drm/tegra/drm.c
index d9f0728c3afd..d35e411d536b 100644
--- a/drivers/gpu/drm/tegra/drm.c
+++ b/drivers/gpu/drm/tegra/drm.c
@@ -1150,7 +1150,7 @@ static int host1x_drm_probe(struct host1x_device *dev)
 	}
=20
 	if (host1x_drm_wants_iommu(dev) && iommu_present(&platform_bus_type)) {
-		tegra->domain =3D iommu_domain_alloc(&platform_bus_type);
+		tegra->domain =3D iommu_paging_domain_alloc(dev->dev.parent);
 		if (!tegra->domain) {
 			err =3D -ENOMEM;
 			goto free;
--- >8 ---

That refers to the physical device that the host1x_device virtual device
was instantiated from and is a common parent to all physical devices
that are part of the virtual device.

Thierry

--fslg44mz7bzr7agv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmbPQdkACgkQ3SOs138+
s6Faag/+PLNW+D2IJ1ANTAMAHn0fybn2aGa6fRFPkVgUQSXQP4OlfAdV1W2+DKPi
CSLmOHisUapqMwyMZECKEkXHkM7+i7Snhz+D6gHCMx7YWFQiLGi0j9KZfT3kfX5V
tOIVJXrEAcJZN9htxoPZ842Z5QrrzTNgVkvhmC2lhqA6sjy3BbyK8TgncUVpceMC
wPCVwjnNyJZUxK/MZgyj5OywXC9emVXY5Y0WgjJ14D1KNPScAsSCLKbIvAS5Pku8
8K0m4Dzv4+WtNRhr42OVrtji9VJwnrjVgJZXuGgJC7aQVDFbghM9rQ2NnaHAztOK
EL+9DKRDLXo+MwQmvqSWTkY1OEd0Y2cJsagqS9363Q5Xau7Iwrxa2vAXgXUwkWyP
/Z4cZYzatMr+CF+165NbtQYlJlRqBpW8kDslxGR1DT1NhNLbpE6y0FKaBp9YWXhA
U8AkaTSeeuO96M7c9jr2sLyHIxIYzMPvsC5vvw44NQRty78DyLp9wE90r0Z954C+
6DJMnKQIsoa+rCnof94BhK9ThweuwyWWMc/7755EWJoUo2g8VVyDei6m2GBMj5zT
kkkzVeWz8F1cV3zDn8aa0hYje3tzVdvChHSMXHU44wRHSD6xaoI9KgxehV6TYlCI
G3/NyFMo6sIP/I5hnEpQmI3pF5641WaJSYeocgjLIRESADr7+Dk=
=Ka+K
-----END PGP SIGNATURE-----

--fslg44mz7bzr7agv--


--===============7887300838857033352==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7887300838857033352==--

