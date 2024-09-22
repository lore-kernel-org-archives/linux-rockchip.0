Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9B90CF9C64
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Sep 2024 10:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:From:Subject:Cc:To:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tDwP9Hz0MCA/SvUPVvnp2iyworHBkGLTDkilPE3LnD0=; b=r9pqjS9UQ+Xah2jaIRfsPCDLjA
	J7FVsvpYRN5zd8FqdFgZhprk8AZanRgZ5oD6c+qdslxkwBeP57pkt65Xi4EGZWUsQ+7rFqyWO2AO3
	5HmQSrPXSd+KWhb2SOk3qT7f3YJp+O7Mtc1zoGr1rWFXZPY/RxOrdlvSGbkUc5xFFRxAOObSbK8MC
	47Q0vDe8AF2dxFQvRK+e9YH5bmQoyTYwrfkVE2ffV54zRhv2AqHJ4UEYkd3IJmF7DOgej8r2lQ8Il
	2e7Ed7kprHyFIIvSCJwL5Exc0nJvmTv54l2vhMN9DYqtlGvh+S8LwP/qXzF7mGNpoh24c8eZ+SFl4
	fjEgDdjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ssJu8-0000000EzVg-0U3m;
	Sun, 22 Sep 2024 10:33:24 +0000
Received: from out-185.mta0.migadu.com ([91.218.175.185])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ssJu4-0000000EzUh-1exR
	for linux-rockchip@lists.infradead.org;
	Sun, 22 Sep 2024 10:33:22 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1727001195;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=rh5mxOysEWdlr7zB3dIq9Xe2btAHsCpup+ruaFZk4EM=;
	b=KhKdHH4ObK+KAa3ylcl/wZq36CKLW9XGQbMTs3L/PVLTKtzN6mah6aJfCG38zpVnZ9+WWU
	FN9Yu0Uj7sgJ7XXprTjbI6UVwNg5ynCR49Xon30JpoX3Pxd/H16jLNAZjzSA9ERIyqS5Qr
	CledCoNU9+F591nNaaPK/hIx5LBdCDNLDxO/HLUEkmD4RTm6EOdcNuxs9Y2atEyUD1lIWx
	BsooqPkyy/7oHJbcCdkfIJ4YWK+wlfinkjt7sOSXt22w1uRBqecWy0Mt9YeQHONeYEtB95
	OGSa+w1znwU/9ks2KwjbP9CZgwfMUwuASQshHjGt3NgnA2w1dMNLr63HdNHLDQ==
Date: Sun, 22 Sep 2024 12:33:05 +0200
Message-Id: <D4CQTRYUPQHL.1Y42CT0P8ZOWQ@cknow.org>
To: "Andy Yan" <andyshrk@163.com>, <heiko@sntech.de>
Cc: <hjc@rock-chips.com>, <krzk+dt@kernel.org>, <robh@kernel.org>,
 <conor+dt@kernel.org>, <s.hauer@pengutronix.de>,
 <devicetree@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>, <derek.foreman@collabora.com>,
 <minhuadotchen@gmail.com>, <detlev.casanova@collabora.com>, "Andy Yan"
 <andy.yan@rock-chips.com>
Subject: Re: [PATCH v3 06/15] drm/rockchip: vop2: include rockchip_drm_drv.h
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
References: <20240920081626.6433-1-andyshrk@163.com>
 <20240920082122.6742-1-andyshrk@163.com>
In-Reply-To: <20240920082122.6742-1-andyshrk@163.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240922_033321_334226_674AB232 
X-CRM114-Status: GOOD (  16.38  )
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
Content-Type: multipart/mixed; boundary="===============6175796374598215763=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============6175796374598215763==
Content-Type: multipart/signed;
 boundary=cf4d01d20a3b9d5a9a49968868fe9e6d1f0f8308e15edb5bdb79c6fb1446;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--cf4d01d20a3b9d5a9a49968868fe9e6d1f0f8308e15edb5bdb79c6fb1446
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Fri Sep 20, 2024 at 10:21 AM CEST, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>

Maybe ``From: Min-Hua Chen <minhuadotchen@gmail.com>``?

It's very minor and Min-Hua gave their 'Reviewed-by' tag to your patch,
but they found the problem and I thought it was just for practical
reasons you made it part of this patch set.

> Move rockchip_drm_drv.h in rockchip_drm_vop2.h to fix the follow
> sparse warning:
>
> ARCH=3Darm64 LLVM=3D1 make C=3D1 CF=3D'-fdiagnostic-prefix -D__CHECK_ENDI=
AN__'
> mrproper defconfig all  -j12
>
> drivers/gpu/drm/rockchip/rockchip_vop2_reg.c:502:24: sparse:
> warning: symbol 'vop2_platform_driver' was not declared. Should it
> be static?
>
> It is also beneficial for the upcoming support for rk3576.
>
> Fixes: 604be85547ce ("drm/rockchip: Add VOP2 driver")
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> Signed-off-by: Min-Hua Chen <minhuadotchen@gmail.com>
>
> ---
>
> Changes in v3:
> - Split it from 10/15, as it fix a exiting compile warning.
>
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 1 -
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.h | 1 +
>  2 files changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/d=
rm/rockchip/rockchip_drm_vop2.c
> index 4776a227e62c..a7f9f88869a6 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -35,7 +35,6 @@
>  #include <uapi/linux/videodev2.h>
>  #include <dt-bindings/soc/rockchip,vop2.h>
> =20
> -#include "rockchip_drm_drv.h"
>  #include "rockchip_drm_gem.h"
>  #include "rockchip_drm_vop2.h"
>  #include "rockchip_rgb.h"
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h b/drivers/gpu/d=
rm/rockchip/rockchip_drm_vop2.h
> index 59cd6b933bfb..bc001f715847 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
> @@ -9,6 +9,7 @@
> =20
>  #include <linux/regmap.h>
>  #include <drm/drm_modes.h>
> +#include "rockchip_drm_drv.h"
>  #include "rockchip_drm_vop.h"
> =20
>  #define VOP2_VP_FEATURE_OUTPUT_10BIT        BIT(0)


--cf4d01d20a3b9d5a9a49968868fe9e6d1f0f8308e15edb5bdb79c6fb1446
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZu/yZAAKCRDXblvOeH7b
bhyOAQCgfugbYkLTEQoVYnYjY2LIP0tmj3SFSFrsw3hSRtqOHwD/cMGxEu1QU1Nj
DLQj4kuQxg314p3e5CtjLIAFUNlzLQI=
=a3i5
-----END PGP SIGNATURE-----

--cf4d01d20a3b9d5a9a49968868fe9e6d1f0f8308e15edb5bdb79c6fb1446--


--===============6175796374598215763==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6175796374598215763==--

