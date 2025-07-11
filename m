Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C081C83F1B
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Jul 2025 20:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sbSm4PFgFOjvKc8morX3jgYOUbogguxPs74cDundUmY=; b=rYKnRLNao6grOrSq7lwjS+WSCU
	382BJnteLlcv9v62AMRbhxb2Pd5rnF18HhUCaK5eFWWbVuFEzhiaUMyesPcsXpfhXemjXX8QFxEhq
	eDugutRP1SLZfz6L0W2FyNaL+zS/Dgqrf/We+fDjrWpYuodwuQdah5qEgIfB2qKQWpfC3rykOb/bz
	nXoSKygsL5ApakP2F1kvRFj0qNvafzlr+T1BcYvylNYu9DTUod85JIdN0YZApIpakKOYziKkDHNMm
	3MqTs9vNmPEWsFqOrE3Q6f2MFZTYdgFdHFz+UNGS2ejIPQTsy+iyeG8qW5GYNjZ3xKB/iTNdVO8Ff
	ps3km7ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaKf2-0000000FpBT-09RE;
	Fri, 11 Jul 2025 20:48:00 +0000
Received: from mail-qt1-x831.google.com ([2607:f8b0:4864:20::831])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaJwm-0000000FkoX-15pM
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Jul 2025 20:02:17 +0000
Received: by mail-qt1-x831.google.com with SMTP id d75a77b69052e-4a9bff7fc6dso21709601cf.1
        for <linux-rockchip@lists.infradead.org>; Fri, 11 Jul 2025 13:02:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1752264135; x=1752868935; darn=lists.infradead.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=CnoRRDhtGSOPAPWiKhq8LlJyfNIEUB0lnKlvZ+LO7jU=;
        b=1HYUFcO16dth0IYdoFQ61IO7+BEWhGud5e7/W3vyoCUsxh/L3L+3Vizi1DbzdMR9BE
         9DlDEeMIO19205E8ymSkH231iICmq85mqKqFlvPAyfIRa50s9J/+kH9kYS9Spm6ohU0F
         WYc44Vq83j/JyTKvsDLh9W/ZTlCHM/AhGam1KTLAxd39yHp5cFVICIRSAqFxOoTrPSGG
         vaSBY/tGRus+rSAUccZUHIWgzsjcVRcSOPqWdlupkLAeRTqgvZntY/Q+ayscCG+Vu+AK
         2rvCszXTJOVpKtdlbqdXpA2Q1uWdqFGOyFGsbW4/GqPR3viH8xk7LCN+8zfqstYkAmZQ
         DRMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752264135; x=1752868935;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CnoRRDhtGSOPAPWiKhq8LlJyfNIEUB0lnKlvZ+LO7jU=;
        b=CZFNg0LkzexL3OJwBlAWuGKcBrFZPK9JhAMsPZcccJRKWZfziTbzSiaHQS5hwYT6GR
         C18rYfz89rXM437Un3dTZHtXtoAItifY9r3N7hkQWanKYTExb4wq4ayHs2uJ1jZosU6l
         d+sYpWEWXdM4znOFpZAx5lcLiqoVzQkQKSmRtvOC8SV8AGs8GU5fcDnEkFRmQ22tc0TY
         yPCGThgOi34lGvwRkd7ia6Tw8UtSI/VzsXZ0d1gMrHS0VPRckuTImR2xbJtMow+3Ybs1
         60CnbxPThqRcYnoYD8RJeyFdmq4dkZwRo/XDv/IkHB+mCN4NrderY9qJP3az5/vqX5XJ
         hmzw==
X-Forwarded-Encrypted: i=1; AJvYcCXDQPenKIBOPAOR/gk7YrP8kDSNgzzXAAKgrAZiZa5tftz2XQsv3WFs/yWOAOD3nNQnhZpS3mCc0Xd9vGLDgw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyluIxuCJEkLZobjQ7f3DdgWTky2pE4mI8vftJqXI3zTjR8CLjm
	UVDKxP6jaeFVVsx0lMhpjEWC07csIOeKqMMKl561d3BFcyF9NWsAx/izOnZoHqszo3w=
X-Gm-Gg: ASbGncu8OYB23UBQ712YYCBagSJv+YIjBWrpN1MB/+rxpzyXiZRh79KHMH0Uk2HvTo3
	0Yu7NPimp8c7BygzukBz4hY53ZtiQEqd0BT7jNGOS97eJnnsnajy60bvkA9C68wNlVxrvebT+rB
	eB3g18rhNJB3F7uQ6lQFxZdOfX3M9QkqM599/luy3VWRmdScO9qhXgo22biLPuuaVySxp6LlOLS
	aThiesKnMDzYUjiop3tEjOfVeal0gCYu6IhZf5nQbKg11V1oXu4Lk/btXhTX50XICyV+tCM55eZ
	EygJCmrOHzu18Z0uae6HkM1EraJxingP213r/HrEeRqA2OWBAqdrBIMOPVetLzsHMu0XJevKV6O
	Gpf0pMwyeQD5LzvrwDU0ZTqs4hVZiqvHvJEcuKg==
X-Google-Smtp-Source: AGHT+IEuLOxF/UAqwKLexQXJclEkYrpc7aYrRvWVeUsA+st+Tdi3sBUDzBI9yFbWLfbip40hyoxWTg==
X-Received: by 2002:a05:622a:a38c:b0:4ab:37d7:c3c2 with SMTP id d75a77b69052e-4ab37d7c5b1mr34888811cf.14.1752264135009;
        Fri, 11 Jul 2025 13:02:15 -0700 (PDT)
Received: from ?IPv6:2606:6d00:17:b699::5ac? ([2606:6d00:17:b699::5ac])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4a9edefb923sm24313601cf.75.2025.07.11.13.02.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jul 2025 13:02:13 -0700 (PDT)
Message-ID: <447205bfe4089eb6231fa17a1fff3d58806ec7d3.camel@ndufresne.ca>
Subject: Re: [PATCH 8/8] media: rkvdec: Unstage the driver
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Detlev Casanova <detlev.casanova@collabora.com>, 
	linux-kernel@vger.kernel.org
Date: Fri, 11 Jul 2025 16:02:11 -0400
In-Reply-To: <20250623160722.55938-9-detlev.casanova@collabora.com>
References: <20250623160722.55938-1-detlev.casanova@collabora.com>
	 <20250623160722.55938-9-detlev.casanova@collabora.com>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual;
 keydata=mDMEaCN2ixYJKwYBBAHaRw8BAQdAM0EHepTful3JOIzcPv6ekHOenE1u0vDG1gdHFrChD
 /e0MU5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT6ImQQTFg
 oAQQIbAwULCQgHAgIiAgYVCgkICwIEFgIDAQIeBwIXgBYhBO8NUoEVxMPCGgRvEtlBlFEpYHL0BQJ
 oLLLGBQkJZfd1AAoJENlBlFEpYHL0BEkA/3qkWYt99myYFSmTJUF8UB/7OroEm3vr1HRqXeQe9Qp2
 AP0bsoAe6KjEPa/pJfuJ2khrOPPHxvyt/PBNbI5BYcIABLQnTmljb2xhcyBEdWZyZXNuZSA8bmljb
 2xhc0BuZHVmcmVzbmUuY2E+iJkEExYKAEECGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AWIQ
 TvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaCyy+AUJCWX3dQAKCRDZQZRRKWBy9FJ5AQCNy8SX8DpHbLa
 cy58vgDwyIpB89mok9eWGGejY9mqpRwEAhHzs+/n5xlVlM3bqy1yHnAzJqVwqBE1D0jG0a9V6VQI=
User-Agent: Evolution 3.56.2 (3.56.2-1.fc42) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_130216_306261_A1DF53D4 
X-CRM114-Status: GOOD (  14.96  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, Kever Yang <kever.yang@rock-chips.com>, Hans Verkuil <hverkuil@xs4all.nl>, kernel@collabora.com, Dragan Simic <dsimic@manjaro.org>, Rob Herring <robh@kernel.org>, Yunke Cao <yunkec@google.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Frank Wang <frank.wang@rock-chips.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, linux-arm-kernel@lists.infradead.org, Jianfeng Liu <liujianfeng1994@gmail.com>, Alexey Charkov <alchark@gmail.com>, Ricardo Ribalda <ribalda@chromium.org>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Hans de Goede <hansg@kernel.org>
Content-Type: multipart/mixed; boundary="===============3099467658998927327=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3099467658998927327==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-TRLqz3hiMlUTgCc1wc3h"


--=-TRLqz3hiMlUTgCc1wc3h
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le lundi 23 juin 2025 =C3=A0 12:07 -0400, Detlev Casanova a =C3=A9crit=C2=
=A0:
> The TODO list for unstaging being empty, the driver can now be moved to t=
he
> main media folder.
>=20
> Also add myself as maintainer.
>=20
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
> =C2=A0MAINTAINERS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | =
8 ++++++++
> =C2=A0drivers/media/platform/rockchip/Kconfig=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 | 1 +
> =C2=A0drivers/media/platform/rockchip/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 | 1 +
> =C2=A0.../media =3D> media/platform/rockchip}/rkvdec/Kconfig=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 | 0
> =C2=A0.../media =3D> media/platform/rockchip}/rkvdec/Makefile=C2=A0=C2=A0=
=C2=A0=C2=A0 | 0
> =C2=A0.../platform/rockchip}/rkvdec/rkvdec-h264.c=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 0
> =C2=A0.../platform/rockchip}/rkvdec/rkvdec-regs.h=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 0
> =C2=A0.../media =3D> media/platform/rockchip}/rkvdec/rkvdec-vp9.c | 0
> =C2=A0.../media =3D> media/platform/rockchip}/rkvdec/rkvdec.c=C2=A0=C2=A0=
=C2=A0=C2=A0 | 0
> =C2=A0.../media =3D> media/platform/rockchip}/rkvdec/rkvdec.h=C2=A0=C2=A0=
=C2=A0=C2=A0 | 0
> =C2=A0drivers/staging/media/Kconfig=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 2 --
> =C2=A0drivers/staging/media/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 1 -
> =C2=A012 files changed, 10 insertions(+), 3 deletions(-)
> =C2=A0rename drivers/{staging/media =3D> media/platform/rockchip}/rkvdec/=
Kconfig
> (100%)
> =C2=A0rename drivers/{staging/media =3D> media/platform/rockchip}/rkvdec/=
Makefile
> (100%)
> =C2=A0rename drivers/{staging/media =3D> media/platform/rockchip}/rkvdec/=
rkvdec-
> h264.c (100%)
> =C2=A0rename drivers/{staging/media =3D> media/platform/rockchip}/rkvdec/=
rkvdec-
> regs.h (100%)
> =C2=A0rename drivers/{staging/media =3D> media/platform/rockchip}/rkvdec/=
rkvdec-vp9.c
> (100%)
> =C2=A0rename drivers/{staging/media =3D> media/platform/rockchip}/rkvdec/=
rkvdec.c
> (100%)
> =C2=A0rename drivers/{staging/media =3D> media/platform/rockchip}/rkvdec/=
rkvdec.h
> (100%)
>=20
> diff --git a/MAINTAINERS b/MAINTAINERS
> index c3f7fbd0d67af..d05a153c21526 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -21466,6 +21466,14 @@ S:	Maintained
> =C2=A0F:	Documentation/devicetree/bindings/media/rockchip-rga.yaml
> =C2=A0F:	drivers/media/platform/rockchip/rga/
> =C2=A0
> +ROCKCHIP RKVDEC VIDEO DECODER DRIVER
> +M:	Detlev Casanova <detlev.casanova@collabora.com>
> +L:	linux-media@vger.kernel.org
> +L:	linux-rockchip@lists.infradead.org
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> +F:	drivers/media/platform/rockchip/rkvdec/
> +
> =C2=A0ROCKCHIP RK3308 INTERNAL AUDIO CODEC
> =C2=A0M:	Luca Ceresoli <luca.ceresoli@bootlin.com>
> =C2=A0S:	Maintained
> diff --git a/drivers/media/platform/rockchip/Kconfig
> b/drivers/media/platform/rockchip/Kconfig
> index b41d3960c1b41..9bbeec4996aa2 100644
> --- a/drivers/media/platform/rockchip/Kconfig
> +++ b/drivers/media/platform/rockchip/Kconfig
> @@ -4,3 +4,4 @@ comment "Rockchip media platform drivers"
> =C2=A0
> =C2=A0source "drivers/media/platform/rockchip/rga/Kconfig"
> =C2=A0source "drivers/media/platform/rockchip/rkisp1/Kconfig"
> +source "drivers/media/platform/rockchip/rkvdec/Kconfig"
> diff --git a/drivers/media/platform/rockchip/Makefile
> b/drivers/media/platform/rockchip/Makefile
> index 4f782b876ac9b..286dc5c53f7e1 100644
> --- a/drivers/media/platform/rockchip/Makefile
> +++ b/drivers/media/platform/rockchip/Makefile
> @@ -1,3 +1,4 @@
> =C2=A0# SPDX-License-Identifier: GPL-2.0-only
> =C2=A0obj-y +=3D rga/
> =C2=A0obj-y +=3D rkisp1/
> +obj-y +=3D rkvdec/
> diff --git a/drivers/staging/media/rkvdec/Kconfig
> b/drivers/media/platform/rockchip/rkvdec/Kconfig
> similarity index 100%
> rename from drivers/staging/media/rkvdec/Kconfig
> rename to drivers/media/platform/rockchip/rkvdec/Kconfig
> diff --git a/drivers/staging/media/rkvdec/Makefile
> b/drivers/media/platform/rockchip/rkvdec/Makefile
> similarity index 100%
> rename from drivers/staging/media/rkvdec/Makefile
> rename to drivers/media/platform/rockchip/rkvdec/Makefile
> diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c
> b/drivers/media/platform/rockchip/rkvdec/rkvdec-h264.c
> similarity index 100%
> rename from drivers/staging/media/rkvdec/rkvdec-h264.c
> rename to drivers/media/platform/rockchip/rkvdec/rkvdec-h264.c
> diff --git a/drivers/staging/media/rkvdec/rkvdec-regs.h
> b/drivers/media/platform/rockchip/rkvdec/rkvdec-regs.h
> similarity index 100%
> rename from drivers/staging/media/rkvdec/rkvdec-regs.h
> rename to drivers/media/platform/rockchip/rkvdec/rkvdec-regs.h
> diff --git a/drivers/staging/media/rkvdec/rkvdec-vp9.c
> b/drivers/media/platform/rockchip/rkvdec/rkvdec-vp9.c
> similarity index 100%
> rename from drivers/staging/media/rkvdec/rkvdec-vp9.c
> rename to drivers/media/platform/rockchip/rkvdec/rkvdec-vp9.c
> diff --git a/drivers/staging/media/rkvdec/rkvdec.c
> b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
> similarity index 100%
> rename from drivers/staging/media/rkvdec/rkvdec.c
> rename to drivers/media/platform/rockchip/rkvdec/rkvdec.c
> diff --git a/drivers/staging/media/rkvdec/rkvdec.h
> b/drivers/media/platform/rockchip/rkvdec/rkvdec.h
> similarity index 100%
> rename from drivers/staging/media/rkvdec/rkvdec.h
> rename to drivers/media/platform/rockchip/rkvdec/rkvdec.h
> diff --git a/drivers/staging/media/Kconfig b/drivers/staging/media/Kconfi=
g
> index b442148543995..b9d52a51841b5 100644
> --- a/drivers/staging/media/Kconfig
> +++ b/drivers/staging/media/Kconfig
> @@ -32,8 +32,6 @@ source "drivers/staging/media/max96712/Kconfig"
> =C2=A0
> =C2=A0source "drivers/staging/media/meson/vdec/Kconfig"
> =C2=A0
> -source "drivers/staging/media/rkvdec/Kconfig"
> -
> =C2=A0source "drivers/staging/media/starfive/Kconfig"
> =C2=A0
> =C2=A0source "drivers/staging/media/sunxi/Kconfig"
> diff --git a/drivers/staging/media/Makefile b/drivers/staging/media/Makef=
ile
> index ad4e9619a9e07..102ca632ddf5c 100644
> --- a/drivers/staging/media/Makefile
> +++ b/drivers/staging/media/Makefile
> @@ -4,7 +4,6 @@ obj-$(CONFIG_INTEL_ATOMISP)=C2=A0=C2=A0=C2=A0=C2=A0 +=3D =
atomisp/
> =C2=A0obj-$(CONFIG_VIDEO_IMX_MEDIA)	+=3D imx/
> =C2=A0obj-$(CONFIG_VIDEO_MAX96712)	+=3D max96712/
> =C2=A0obj-$(CONFIG_VIDEO_MESON_VDEC)	+=3D meson/vdec/
> -obj-$(CONFIG_VIDEO_ROCKCHIP_VDEC)	+=3D rkvdec/
> =C2=A0obj-$(CONFIG_VIDEO_STARFIVE_CAMSS)	+=3D starfive/
> =C2=A0obj-$(CONFIG_VIDEO_SUNXI)	+=3D sunxi/
> =C2=A0obj-$(CONFIG_VIDEO_TEGRA)	+=3D tegra-video/

--=-TRLqz3hiMlUTgCc1wc3h
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaHFtwwAKCRDZQZRRKWBy
9D0OAQDCzPQPG7xg4OYY8o6mQuA7YYMPvLnXfsqOsELbI81nggEAn4NKzS6Zv5SL
gInU8ELc0LBcICoE9Vc3ZGnrhMUvzQo=
=TPsc
-----END PGP SIGNATURE-----

--=-TRLqz3hiMlUTgCc1wc3h--


--===============3099467658998927327==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3099467658998927327==--

