Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27216EB64DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jul 2023 10:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+mGs6SSbEMOb8lTLTfzb7hj+1D1IKHy6cK344QvaUdE=; b=OD96AWkzvgxyOZesI6R8pjrIjx
	WUMNVBdI1D6CWBRLk2BQM7+H4g3hyFDbmNrzivoOGTp4iDUdIV1MOJ0B8ibgk/HBvF12QeRnnYrdM
	AliT/6CwsednI1N53N19a7eVV7koUS00d8ptPd+AfmxtilQgfJeddBjlXCnMaYbO81WrUVCy0qnQt
	t1v12ZlPWfE0uKLQ9AZdnN1ag1UrFvJClL+w/OlRjIcnlijwW4Cdw8mN831kwKCdgHiwLPx+tBlz6
	RWWnBXYSQFMw0n3Q57z3KR11MNtBjb4FmsiQzF7N+3meyYhk0j7N+7yrrBAC6ejt/ziNr5rcMDNYN
	qXd7ay5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMnAp-00DjY4-0r;
	Fri, 21 Jul 2023 10:15:47 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMnAj-00DjPQ-3C;
	Fri, 21 Jul 2023 10:15:43 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-977e0fbd742so278284966b.2;
        Fri, 21 Jul 2023 03:15:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689934536; x=1690539336;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xtjou4bw3TzoaU4pkxO6dL/R//dx1dOT1P8B0FqrHKA=;
        b=Tfm+30DQEJ60lYnGshB1LHllAG8vV6tZJlWJu8MaEzgnMoMC4s8xR3p8apQLvVNXrU
         SsCdfj06a4f9s62gn1+m13FZeT8JIaTbP/QLsdb58Wl+Bx3Sk7VWJYPoYNaVX5mC3+q0
         Rs2KjsZnmNUozrNcZGl15QnXalxAHlU6ZCHrH5lsGabvw9HEXfz1EAYPQdbs9ZtUgGmu
         ODgtKVUF0wY54I/IMZWbmr8tof5c0D/hfoTkIzmRnUg+uw27Hm23MiuKX3PpzfRWwdpX
         JSpcBybDwjUfvHgOaPY78806miQgOTtCRT1cm5IQNhbaumSj/5htxDsdm3D+hUCmwISK
         gyVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689934536; x=1690539336;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xtjou4bw3TzoaU4pkxO6dL/R//dx1dOT1P8B0FqrHKA=;
        b=anKTFV2gjz6DxPT03t/OF8b0pREkGVzT3YmQSmIsWIZZpVrzTlcAPOtApYaMwiYtLE
         RXL8DWF6IuT9QAsGjm1/ggOT4syE8/oQQU4JT1NuYg8UDacsxNQhc30AjzwCTJYHj8/4
         c4BVx9oNOzRTPLEueg4pTMvnwoYs6DVxRWqiS7vlk/3iFk2d/RpMhUXlwW/OyjEAPL2N
         bAZ9W2mNfrQgJUoS8lODJ+OEky1tnNS/u3+R9EDz+XtL7W1gZpfBE0dUYjzqkM+ZZZdu
         lyc7TigHvOTBWA3RFNcj1VrKuzKmU5ZlPHMoWghTVQH2spMqGCvNWDyHaQCHrwCwTdrL
         4dvQ==
X-Gm-Message-State: ABy/qLY29Rdehqf/cJPzufrgNBN5TEdU8S9CoJMNPqCDIPJyZP2RHUPU
	maa75m8fItak4dOcVPKOc4I=
X-Google-Smtp-Source: APBJJlFMSTNXVoDP1pttaZXsGetq1EYUvcvS8mVgRKzhexw1wKgMd76fhF1INGqDgTxi6Ne6bb3VQA==
X-Received: by 2002:a17:906:7691:b0:991:c566:979 with SMTP id o17-20020a170906769100b00991c5660979mr1229678ejm.36.1689934535180;
        Fri, 21 Jul 2023 03:15:35 -0700 (PDT)
Received: from orome (p200300e41f1bd600f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f1b:d600:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id o19-20020a17090608d300b0098d2f703408sm1960285eje.118.2023.07.21.03.15.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jul 2023 03:15:34 -0700 (PDT)
Date: Fri, 21 Jul 2023 12:15:32 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: Liviu Dudau <liviu.dudau@arm.com>, David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, etnaviv@lists.freedesktop.org,
	linux-samsung-soc@vger.kernel.org, linux-mips@vger.kernel.org,
	lima@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
	linux-amlogic@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	freedreno@lists.freedesktop.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org,
	xen-devel@lists.xenproject.org
Subject: Re: [PATCH] drm: Explicitly include correct DT includes
Message-ID: <ZLpaYPUI5gPd4jK_@orome>
References: <20230714174545.4056287-1-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20230714174545.4056287-1-robh@kernel.org>
User-Agent: Mutt/2.2.10 (2023-03-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230721_031542_039450_0F1086C5 
X-CRM114-Status: GOOD (  11.42  )
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
Content-Type: multipart/mixed; boundary="===============1283321857786177935=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1283321857786177935==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qaVvuRtXrCn2kCOF"
Content-Disposition: inline


--qaVvuRtXrCn2kCOF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 14, 2023 at 11:45:34AM -0600, Rob Herring wrote:
> The DT of_device.h and of_platform.h date back to the separate
> of_platform_bus_type before it as merged into the regular platform bus.
> As part of that merge prepping Arm DT support 13 years ago, they
> "temporarily" include each other. They also include platform_device.h
> and of.h. As a result, there's a pretty much random mix of those include
> files used throughout the tree. In order to detangle these headers and
> replace the implicit includes with struct declarations, users need to
> explicitly include the correct includes.
>=20
> Signed-off-by: Rob Herring <robh@kernel.org>

[Trimming the recipient list so that Google will let me send this]

Test builds were fine, so I've pushed this to drm-misc now.

Thierry

--qaVvuRtXrCn2kCOF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmS6WsQACgkQ3SOs138+
s6HK1A//QgDGQj/2Xez0LhGk60CphNT160FLxq+/4O2qQdzBoldz2WfYizMz+Qyv
OCph/RC4Vp2VJEySeVU8jjojJZtqnu3iVQ9LGC/L7EFFJQOwaNlGusy3FoWAp5i1
tAMhZUBH/QCvLjoc7kQXt+MjZGx/ccGHcmckwnjP1DVERdSUqXtq8VU1FHDxiQ2Q
WfE9WhlNsXzJzcGXKC9qEKcn/OdrvPHgmAMJ7ypyjQ9z1x1/oEsJH6Bj0oIaiF2+
R1Lt+KO5tvnL4ozutwZoHX4rPL9qQ9NvBwvk3DdxxaDs4R5Hhin5rkKhs6SvVbBX
8bOTy7u1WaKQWaGEhGnnQzpaK3bp1n9L9Ooc/VtUaBx1iRZ8EsJmVfdNC8527L14
0pH0DNOHHZDuTKd14C/W8JKsSrMtqPml41UClQC8AQ69iSfq95AbcajnFXcpamF6
nYbTpBL+EOukFj5EJppNc0Bg3R0HdXvz9DmBx0qMt9cFAbq05D+4ke/aTKCDv0nM
eQij9GV8h4g7wsmXWfFYqnbVk2K8G8KqsjEZakqkbUYE0i4tUs+O8g1piw1aXQis
gX6QIVmBbi4PjPh2TWik5FCLogKMIqVDCuUfG/LJIQzypr/7QnSP6XpvyqjWiWua
t1LWo/rbraFTe/hnaRqOUgOfKnfXRN3fZFxHW5CHGIwET0BUK9s=
=UVD4
-----END PGP SIGNATURE-----

--qaVvuRtXrCn2kCOF--


--===============1283321857786177935==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1283321857786177935==--

