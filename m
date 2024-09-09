Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD3EAECE57A
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Sep 2024 13:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HphtMjPWF5aq7uXlACqsMPtw1PQPaDzOhMAH3ndKDdU=; b=MDx78EYFUdlKs+6Y8HjYU3XKbf
	//xJy3RoUXV8lGGTF+iTGbtMLAZOoGIsGHeh1Iaty6DiOVvVsWPJftfe6Bz/bnJlJGe97JWIzxSQi
	4CApTsoeQSutbje//SnzjR6H4TCheRv0XF4kMtvqTB4oKdrr5bQL9TvM8rZvD5GO5hPPdCczaI/+p
	npJ3fH54q6iD3TKTsLJbxQ13eK8eWsJchiLQQTRnmkP9DGFS/oOAPfZuiL3YkQu8uienXEKuS60Yq
	pPR7bnNRF+HlY5I9GygWZbuwHZA7wDbnu/qQpUICTujrqZSdR/uW4D6N6gUqjNS2UEJWsSSmY/HcB
	t2p4RfRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sneno-000000028Vf-3tIl;
	Mon, 09 Sep 2024 13:51:36 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snemm-000000028GN-3PiM;
	Mon, 09 Sep 2024 13:50:34 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-42cae6bb895so20049305e9.1;
        Mon, 09 Sep 2024 06:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725889830; x=1726494630; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uTmI7FKnXchw996SUeECY59GrYXxeJtGeoLPHxq544M=;
        b=i1BtbDI4EciZN9AmrEJUlvdKQ7vTP0oKjcR9jCa8CPLtmZfBkFWTHdcfPYNMaFqu0w
         068uRFmJsxo1T3QHJZmrkn4HozJx5wzmNHbSbH1pep3S0j198fG8w+Y/K+s3GQDoJrsZ
         nmarHDX4p/snjcVmiQqpPr9wUeUAAq7BF0T+o0VEmUSCGFKBeCGEdAXzk1vdzpMtcHTw
         zFcaFqBrcu8dzYWZskhIjZQQT7/FNnGPXw4ycMMW7W+eGiqIFLdQnC6j8RDs/NZ3K4jM
         qZqJXm31bO+oF55+gktHOjMERyTjaz82Bntq2uhrp4mzbe0QP3GzIs7Ltfqo4Icz+byx
         WMXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725889830; x=1726494630;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uTmI7FKnXchw996SUeECY59GrYXxeJtGeoLPHxq544M=;
        b=DZlFZJh4qd3uSLC9q2KJT2X/qLr2Jv3goS6Nv95hUZFyqT9UmQw2QWCUeO/OpmFvTw
         rn5p0df7EAkz/stsWEy+nKerjin49S6PazSc0NX+3eyUsGdg5nrxX2XeOzBPG2mVRtKv
         oAqJ9E00FQbyne0QcwiFAJSLBvo2jXlkC3J3Df6lNjJx5eZQ9YfplltNp4bAFlQNffmR
         eJTRK+hbTDVvQlsTTU53GYFAPyDTOReEf8CMYJ4uGa5eV05Noy2hNmlUc5z6aabjt2AF
         SBtCigBs4b6r0+tOMtqLeLPkkaT0oIVjDvSeDrIdVSXR+REJNZcectAU5pjHJtupJVYk
         j6wQ==
X-Forwarded-Encrypted: i=1; AJvYcCVC2wPytN17lT9VHQ7ppUDWZZQei0Um987tvlzLWE4csTSiLInaYx36KZ95rw0cqqqfWMrbTkof1DHlyHpC+Kk=@lists.infradead.org, AJvYcCXkCkeKBw+2hhxFVaAtwyaAvIGPakWqmgaL+7L36ObxvbWca7B97Ls+1a/r6zOfkkThO7nkohzQKkf9uPDkrb1G@lists.infradead.org
X-Gm-Message-State: AOJu0YzO+HEnHjYwwp7vDAXV1UYN4uIEAqIincswzzmW79v5vk+zPFaE
	pYLGwYmDmnbaWUls9H+Ci0NuHSMTjpTpmil8huFZvWOG6iPf07fh
X-Google-Smtp-Source: AGHT+IFWznISjjxuV7eQKDlaN9b6a4OoZXrdhN32jKOPKPIhtjTxNr0Q41kQYaOLItLh2+izQfDzHw==
X-Received: by 2002:a05:600c:19ce:b0:42c:aeff:9766 with SMTP id 5b1f17b1804b1-42caeff99aamr49332695e9.20.1725889829441;
        Mon, 09 Sep 2024 06:50:29 -0700 (PDT)
Received: from orome (p200300e41f29d300f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f29:d300:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42caeb81ac0sm78365275e9.34.2024.09.09.06.50.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Sep 2024 06:50:28 -0700 (PDT)
Date: Mon, 9 Sep 2024 15:50:26 +0200
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
Subject: Re: [PATCH v2 3/3] drm/tegra: Use iommu_paging_domain_alloc()
Message-ID: <7unmvrhiydje2fqcrmj6flbvdbpexujibatpgoqcqevmuhkcgs@pa62yzobzajj>
References: <20240902014700.66095-1-baolu.lu@linux.intel.com>
 <20240902014700.66095-4-baolu.lu@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <20240902014700.66095-4-baolu.lu@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_065032_871745_AC3E5BF1 
X-CRM114-Status: GOOD (  14.79  )
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
Content-Type: multipart/mixed; boundary="===============8852497451644526301=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8852497451644526301==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="sekau6utgzc3r2ki"
Content-Disposition: inline


--sekau6utgzc3r2ki
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 02, 2024 at 09:47:00AM GMT, Lu Baolu wrote:
> Commit <17de3f5fdd35> ("iommu: Retire bus ops") removes iommu ops from
> the bus structure. The iommu subsystem no longer relies on bus for
> operations. So iommu_domain_alloc() interface is no longer relevant.
>=20
> Replace iommu_domain_alloc() with iommu_paging_domain_alloc() which takes
> the physical device from which the host1x_device virtual device was
> instantiated. This physical device is a common parent to all physical
> devices that are part of the virtual device.
>=20
> Suggested-by: Thierry Reding <thierry.reding@gmail.com>
> Signed-off-by: Lu Baolu <baolu.lu@linux.intel.com>
> ---
>  drivers/gpu/drm/tegra/drm.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

Acked-by: Thierry Reding <treding@nvidia.com>

--sekau6utgzc3r2ki
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmbe/SIACgkQ3SOs138+
s6GivQ/+JSKDqhg5e7WkMv/tttd5OTC46SSL0+cobiyQfyKnv+49GXf27ORgQw1S
aVk1ecp/nPSd0KksxiAd/ZDwulfWcOZSEVKSNhhm8Ju3WrCAZcDoI7wjiOjhNK4U
o1kbLg2ly3JhXkEhPuyvfW+1pk6rNt/xcqY5NrpW8Fh6/G1K5AJiC6oCEAsS65Ak
QejXU8T/A6s4jfBOd3O23td1serVya4AAc+wJzKgGcmVsG6ELwWbJSD0rGX+Ai5a
vO2IGIt5qzeibQIP/ZSOLX0lacV028ZEc0zCK/0tgoLkk/TiMfraIO6Ay3Ok5wdo
WiLZ/VYBfsxlQO/IqlgI/WbmhwcTReCK+T46GoyFAW6fvS2TP4YQ0JGJsubrxUby
zk8Bt9oUwJcAq9LotbPSaXgHgrkbUq1Zg4AX53UoZi6n2ClKsMusqx60Z7kbKBTU
MefEmbsZaQCoY6PdDZPYHehE08YC3d0RlojHdxwrzJM2UHfn9fCtdD5HQJGnpGxi
tgNrxCPCUNa7EzE0lqRIkDM3QoBaoxAQVf6Q2uI3BG3HPBowuwXXcTayfrKPJEoP
IVZHM9lH1aEo6B2iT1zE4oXbNS8PFeJPLkzS4XEZk+Ct0ytaBLLoGykSvvk8xE5h
oSnbslewV6UY1RVPQyOSGA/kxxwOhbB9hd65dQ87qSyKaXwc1u4=
=K/dz
-----END PGP SIGNATURE-----

--sekau6utgzc3r2ki--


--===============8852497451644526301==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8852497451644526301==--

