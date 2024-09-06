Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CF19CD5BDD
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 11:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:Subject:Cc:To:From:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FGB8YteD7ZcSYVqZxJGE6vvx3PRLcd16b9hbdXOKXto=; b=Uj0dB+g6sNQZNroSRC9lX9Klv2
	X/EoqZ3/7PcrhEbk8P9bgYcCRE5WBIxN6Qd1KnInhF4b/Pr34hE0tQMk0/Gpx4xuHDGFuvRmjXtPW
	Zsujy6PAFoaIu4TsyiekWjV63s3HX3wiwBVrjtoLxtsDN93ngRhPMKVmoIS6zGBikNirlkg/4dLVW
	8gaQEovTVDp6COg1doPouRIUkD52OEVQMB2XiXktXMnUlc2Ina7QOVEUe3tGnkV1iOyzV+j9i7xIu
	v2/WdZQN/R0xUEk/9CzjlM8YAyknj5UddmrblOtYE0WTjmGSuIO5+xyPO8L/hBoNSMs/yGEofTk8O
	V0casquQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smWxA-0000000BvZf-167C;
	Fri, 06 Sep 2024 11:16:36 +0000
Received: from out-177.mta1.migadu.com ([2001:41d0:203:375::b1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smWou-0000000BtoI-3a83
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Sep 2024 11:08:08 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1725620880;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=gcYaptrKBfML0qcaOM5vqkd6iW3yCKV8zFKoo34jnNM=;
	b=C5prNb4DaC/HAtXV/Yno7mJUrcByO6K6x/EAHcCpXpx6wSc3in2AnFWu3rz8GmV7sLvqbP
	Zfe9Gn1L6Vqke0xQ1iugDUrmANpmPB6dv4S4dFwGHbhBkVmJBO2qQeIQ0+Gfdk7Bclwx5r
	nB5UDc/n6YV8QNws97AU2CCPl5KyhZU5km7NHmDdgEsm+u/XMShp5NqpQ4hLagX5B82ppn
	7EEhhrgheKFaON9Oyd4E7PFO9bI2udvokXgVzDd8JtBOan7tZOxRhIryIs7FhU21PGuyC2
	PwYrJL9O5fOoQZmJ4osl4d9sOxQhayBCbX637a/eZOmoImF3X8RUqs9xo4eBYg==
Date: Fri, 06 Sep 2024 13:07:47 +0200
Message-Id: <D3Z5JMTKPQIS.2M5O5DY0S4U9G@cknow.org>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Andy Yan" <andyshrk@163.com>
Cc: "Min-Hua Chen" <minhuadotchen@gmail.com>, "Sandy Huang"
 <hjc@rock-chips.com>, =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "Andy Yan" <andy.yan@rock-chips.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Daniel Vetter" <daniel@ffwll.ch>,
 <dri-devel@lists.freedesktop.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] drm/rockchip: include rockchip_drm_drv.h
References: <20240905223852.188355-1-minhuadotchen@gmail.com>
 <6f07603.7f9.191c4c887b1.Coremail.andyshrk@163.com>
 <D3Z3FN6GARPI.197HD3V38X81T@cknow.org>
 <e4ca4ac.a3fb.191c6bde766.Coremail.andyshrk@163.com>
In-Reply-To: <e4ca4ac.a3fb.191c6bde766.Coremail.andyshrk@163.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_040805_156298_970CDC82 
X-CRM114-Status: GOOD (  16.53  )
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
Content-Type: multipart/mixed; boundary="===============1721167243659134647=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============1721167243659134647==
Content-Type: multipart/signed;
 boundary=3b244cc64b320c1a92e52653e21b3af80c1207ea33cb79acd1a135dbf8f4;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--3b244cc64b320c1a92e52653e21b3af80c1207ea33cb79acd1a135dbf8f4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi,

On Fri Sep 6, 2024 at 11:50 AM CEST, Andy Yan wrote:
> At 2024-09-06 17:28:33, "Diederik de Haas" <didi.debian@cknow.org> wrote:
> >On Fri Sep 6, 2024 at 2:42 AM CEST, Andy Yan wrote:
> >> At 2024-09-06 06:38:50, "Min-Hua Chen" <minhuadotchen@gmail.com> wrote=
:
> >> >Include rockchip_drm_drv.h to fix the follow sparse warning:
> >> >
> >> >drivers/gpu/drm/rockchip/rockchip_vop2_reg.c:502:24: sparse:
> >> >warning: symbol 'vop2_platform_driver' was not declared.
> >> >Should it be static?
> >> >
> >> >No functional change intended.
> >> >
> >> >Signed-off-by: Min-Hua Chen <minhuadotchen@gmail.com>
> >> >---
> >> > drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 1 +
> >> > 1 file changed, 1 insertion(+)
> >> >
> >> >diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/g=
pu/drm/rockchip/rockchip_vop2_reg.c
> >> >index 18efb3fe1c00..c678d1b0fd7c 100644
> >> >--- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> >> >+++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> >> >@@ -14,6 +14,7 @@
> >> > #include <drm/drm_print.h>
> >> >=20
> >> > #include "rockchip_drm_vop2.h"
> >> >+#include "rockchip_drm_drv.h"
> >> >=20
> >>
> >> We already have a patch[0] include rockchip_drm_drv.h in rockchip_drm_=
vop2.h
> >>
> >> [0]https://patchwork.kernel.org/project/linux-rockchip/patch/202409041=
20238.3856782-3-andyshrk@163.com/=20
> >
> >Maybe I'm missing something, but this patch seems to fix an already
> >existing bug (which should have a Fixes tag?), which Andy also fixed
> >while implementing a different (and unrelated) feature?
>
> In fact, I don't know how to reproduce this compilation issue.

FWIW: I didn't see it either, but I assumed I was missing the right
context (i.e. patches) needed to trigger that warning.

> While implementing my feature, I happened to find that I need to
> include rockchip_drm_drv.h in rockchip_drm_vop2.h

Makes perfect sense :)
But if the warning is indeed valid, it should be fixed on its own (IMO).

Cheers,
  Diederik

--3b244cc64b320c1a92e52653e21b3af80c1207ea33cb79acd1a135dbf8f4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZtriiAAKCRDXblvOeH7b
bgGYAP9ZGSTkXT/5o/dRBWJ5eQlUBNNW9+epakVgWTzWTVpJYgD+KaQ5lle8XD6W
ztX+E7hdE3sQQlhWeEwLvO2EcBldrQo=
=6Yqr
-----END PGP SIGNATURE-----

--3b244cc64b320c1a92e52653e21b3af80c1207ea33cb79acd1a135dbf8f4--


--===============1721167243659134647==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1721167243659134647==--

