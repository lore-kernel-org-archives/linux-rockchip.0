Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 980A9ECE57A
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Sep 2024 13:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6tqpgfHo+Hy/8uxfUlmNyUmGsSW9yTMsWZAkihMUU4U=; b=BakoeRddx+bxRBMSN+SatKBY6b
	T7djIizZO8POzoRVeppfFsyRisvzaUkLHyKOf/UFSf9xE3CO+ic+vbLoX57ZeWMHp8kZVskov5r/n
	3T6uVakLaIFvSw+uTucVCcI9lg4KQ3+kBzov/bk51NqOTemDjiDUUuY7ObictMAZTqMqjAU9gB4vH
	cZBSfSq762Yy1o3/+iq6lAS/k7bh90HMZG/uAT9HWg1clfLJdz7EUmwIr19D0PUE0kq5TM6fMFnFq
	zbFQM5RjZeKB0tMinkTMqW7Gr3vgXqbB+ur+dOUnpbR9LsTGkTYFqcmkVgErG6sDjXT61gK9xKOY+
	OafesEcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sneov-000000028zy-1toP;
	Mon, 09 Sep 2024 13:52:45 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snenA-000000028Ma-3Zav;
	Mon, 09 Sep 2024 13:50:58 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-42cbb08a1a5so4234255e9.3;
        Mon, 09 Sep 2024 06:50:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725889855; x=1726494655; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lMG5CBAWeO4ejfahNXtDesCRER8MZqFkLGpgD/QrZx0=;
        b=ENR6R/VJpRcpjkUFspk/fy60Xf7vDgTOwll17ozRwUOF5z/nOWucWApue8VXP9dkoM
         CmyWKjV1yL2+d9bUfQh6OIGtkbeVhNEW25LCua3gj6Bul72UMnVDGBjHpb5GyGl3oHZC
         b85Oz3b0G/KM8p2O2E6EWHeHq8JjYei3vHDU7pwooQxj4SOQ60/SrfHheyDq8py84AhY
         O0iyR+P5+Js29dcHG3AOfPNtWseS2L6XBAQmW0ugFNvAfuGZFyl0txLlpvl3fB+3qFq1
         2cHMR81jODNQXbFokK0oCSGOMExhDBm0783NjnC3l57n8sY/gH1hpZjQJzLaGeCvmSaw
         a5SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725889855; x=1726494655;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lMG5CBAWeO4ejfahNXtDesCRER8MZqFkLGpgD/QrZx0=;
        b=jcFLZ0qwP1w28g+zCiyR9GXHQ14R8/4BV8vaRyDj3rYf7bmp8MkRicP6Wazgolp8Ln
         fng07q+2NLEdQiwSNBxcbuL2+GZ6bNrSyfvzrRgG6T6S5rCkloNiMz5Vu2Ijs+5GVaQM
         S0QTXtRBwryvbdiHCn+kIAI5Y8Kyz5NfubJig2lrug0wndOU6ILHWbuvm+lx9y39EArl
         z/sCQg3vLktm66Dzuth3xf6oZHlrxr0FCV1oPpYNzfOalNlNfkwyUXV7y3Rut6JyXhcD
         RAh3c6j3+anA6XyXTAS0KC32s5Tn9RU4DMeYNaHTOtos7vB39VCU969lp5flmTKe9qsi
         L3Zg==
X-Forwarded-Encrypted: i=1; AJvYcCUYnBw1BcATqLEjQragDKR3kpy/DoPXePecd5MOyTkTcVyTOxiLwDaD3L/U+m3Gy2vs2ED00BI7faLkDxQ3nxiD@lists.infradead.org, AJvYcCX2p4Bz+Vit5EeUGkuQWvoMcPpa/LRIw6Ds35G8DsZBvo7v5mnjFDuKemLaQfO++LV+HmM7z5qmr46ooE1mzVc=@lists.infradead.org
X-Gm-Message-State: AOJu0YzKMa3vrT34B2RwER0kNqnqHM4o4FC1FM+o2cRk2Jt7x2nSi9JE
	TeQ1s5eR4TNwD0fRHUxJ21wGFqhbOBU+AL+hB7OLjYdQN2VvXskU
X-Google-Smtp-Source: AGHT+IH7gctIpKVybmTJbCiBDVWk+ue5UJ4VaJ0e/g/b1ur+KjZ/0Qi53vCEo48IGD4SKCIPKcrAhw==
X-Received: by 2002:a05:600c:4692:b0:428:10d7:a4b1 with SMTP id 5b1f17b1804b1-42c9f9d6f06mr85546235e9.25.1725889854108;
        Mon, 09 Sep 2024 06:50:54 -0700 (PDT)
Received: from orome (p200300e41f29d300f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f29:d300:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42cabd05496sm89431845e9.27.2024.09.09.06.50.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Sep 2024 06:50:53 -0700 (PDT)
Date: Mon, 9 Sep 2024 15:50:51 +0200
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
Subject: Re: [PATCH v2 1/3] drm/nouveau/tegra: Use iommu_paging_domain_alloc()
Message-ID: <zpk3oj47djrrrkxpe6airhiaoe7xr3pvxyqotac2jqmhoerg6h@lp5d5ziiq453>
References: <20240902014700.66095-1-baolu.lu@linux.intel.com>
 <20240902014700.66095-2-baolu.lu@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <20240902014700.66095-2-baolu.lu@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_065056_911987_9FFAE8CB 
X-CRM114-Status: GOOD (  14.36  )
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
Content-Type: multipart/mixed; boundary="===============6636814593727667502=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6636814593727667502==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cbx2ef5ohko5pqdz"
Content-Disposition: inline


--cbx2ef5ohko5pqdz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 02, 2024 at 09:46:58AM GMT, Lu Baolu wrote:
> In nvkm_device_tegra_probe_iommu(), a paging domain is allocated for @dev
> and attached to it on success. Use iommu_paging_domain_alloc() to make it
> explicit.
>=20
> Signed-off-by: Lu Baolu <baolu.lu@linux.intel.com>
> ---
>  drivers/gpu/drm/nouveau/nvkm/engine/device/tegra.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Acked-by: Thierry Reding <treding@nvidia.com>

--cbx2ef5ohko5pqdz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmbe/TsACgkQ3SOs138+
s6HxRhAAo/V2yRjVbLpppk3RuhOIcoErbyCc0GlXoAWEjqyBXH3YkzOVeaKlu8iR
cexHENRfvc2/AnQ4DZd43yo3DXB4RL06245qE5NmyTSs1/uzrcwHGrIxYLS2M5NV
GNRWjLVkVVMzZL8+WAVpZlu5Z4EjJiLYWi9ZAeOrK6Pf3KhAKfzNjVALOoLD6V3A
qMfXYpQc9yx8QnBJ/sVC6Jz11kUgDGMjz68rr3vyFftxvownjajcwpa6NvkEBaUW
a1vLHY9T4W4qt0df3VhQM2wmidkF5AFhSNRZvELogwVmVOh06W9sXIe1O79CzJ9d
vnjemWkF3w/d2qqjzSqdktYKDEwECa+f0LiCs0eYgx8btQkevTLqNoZP7f6vKG+5
ELXTVH2DHYbzMQXMnrN73uyd2WUtAP9JeoE+rcTQXv4jpkLx8JnV7cenBYTgl3Tv
xibyj23MiXDiPSX+ZQAs0fMJK9L/MSukej9WyuD95WvqadTCO7qG2DmMcklcoAe9
ZGIXvgwG429t1ttFF6Gd5FfrizP8cQPZAOQ9YgydfSgUrJRIkJJeIO9G3wcJBy4G
2kElKIFxevKxizhPmyAFJMoJCl4I2Ma/OnfVNFvuaJPhYqqfU38RxF6sV+JuwdWM
bg9Bp+0RuHrepTbQn4sGrGK3BLWeeiCoEyECMGc3V5BURxImEfo=
=IgSG
-----END PGP SIGNATURE-----

--cbx2ef5ohko5pqdz--


--===============6636814593727667502==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6636814593727667502==--

