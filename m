Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D245CE7AF8
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 09:39:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GOOa1eBGJhOhgI3ApS3SVKzwizLsfXVQQSB55TyPgiw=; b=S+IincxSfLs8EPZw3SepLnRq5Q
	95r1Mf7nc/hN/QnpHwXzjrYDB+TiysWIfBptXMpRAwlOA47X1lWsuAAWmv1pkIyiRNV1mrj4aFeSE
	8KR+iZh3K3tTWjvW9VROZze8D8cCBTYrM4NAzHPRFsl3UMqVPUHMNemEufSWchi1LwJv2YT0oVb9l
	fOwLuBN/rSz7w899/2Y9iZfKlCCh8/4Kir+X+o6ATnEt2MCYVghP1umXeZW0eYbBR/DKfhpBc3cJe
	JZeVyBmTDEKwGH3QJNR8reaurCuan89svwJcDEg988Z8wcb/qyp2ErlbOnPMTSHbV5VRrvz1eMEfT
	ybOuyHEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smVRA-0000000BY3w-49dY;
	Fri, 06 Sep 2024 09:39:28 +0000
Received: from out-177.mta0.migadu.com ([2001:41d0:1004:224b::b1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smVGk-0000000BVjR-0x2k
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Sep 2024 09:28:44 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1725614919;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=be7bi10a61hIs7OOh5j48QgrRwW9Uv9WavYfuDp8rzM=;
	b=Po95yllGLdAdag4YSuvzKSp6Qem9ZD9GNtMMojIPdfCiuv87PmBVVwQBQuoVlrs+z4AGAY
	xALn1S5D47Ni2L+F1dJ6QgXHx0eW3bOIzamOz57i0Dj0JxE0u3iHPpGaxME/JLpKpKOpjA
	AXPM6Xgy5HLcFUDP19Zs8FJlHYufM5wlfZPWgqp7fV93VjyrXUTvV1fFm2qhUsFMofx737
	+quHYGiji2cyFFIwoHxlARLUT65HVkMI1Nwv7aGI8MUMlqNTeUUUB/ExJHnFgfQJUaQz3v
	c0ovAdTDTDplpeMh9Deumn9Jmv+/0Dqs4W/NVrZeota3CSriNMutiN7vt2aoDA==
Date: Fri, 06 Sep 2024 11:28:33 +0200
Message-Id: <D3Z3FN6GARPI.197HD3V38X81T@cknow.org>
Cc: "Sandy Huang" <hjc@rock-chips.com>, =?utf-8?q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, "Andy Yan" <andy.yan@rock-chips.com>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard"
 <mripard@kernel.org>, "Thomas Zimmermann" <tzimmermann@suse.de>, "David
 Airlie" <airlied@gmail.com>, "Daniel Vetter" <daniel@ffwll.ch>,
 <dri-devel@lists.freedesktop.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] drm/rockchip: include rockchip_drm_drv.h
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Andy Yan" <andyshrk@163.com>, "Min-Hua Chen" <minhuadotchen@gmail.com>
References: <20240905223852.188355-1-minhuadotchen@gmail.com>
 <6f07603.7f9.191c4c887b1.Coremail.andyshrk@163.com>
In-Reply-To: <6f07603.7f9.191c4c887b1.Coremail.andyshrk@163.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_022842_856684_7D945109 
X-CRM114-Status: GOOD (  11.82  )
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
Content-Type: multipart/mixed; boundary="===============7061044562670509998=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============7061044562670509998==
Content-Type: multipart/signed;
 boundary=90251523fbbd216b6fd8d265a28b65ea30f3d99c5d6460b75d286064d840;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--90251523fbbd216b6fd8d265a28b65ea30f3d99c5d6460b75d286064d840
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Fri Sep 6, 2024 at 2:42 AM CEST, Andy Yan wrote:
> At 2024-09-06 06:38:50, "Min-Hua Chen" <minhuadotchen@gmail.com> wrote:
> >Include rockchip_drm_drv.h to fix the follow sparse warning:
> >
> >drivers/gpu/drm/rockchip/rockchip_vop2_reg.c:502:24: sparse:
> >warning: symbol 'vop2_platform_driver' was not declared.
> >Should it be static?
> >
> >No functional change intended.
> >
> >Signed-off-by: Min-Hua Chen <minhuadotchen@gmail.com>
> >---
> > drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 1 +
> > 1 file changed, 1 insertion(+)
> >
> >diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/gpu/=
drm/rockchip/rockchip_vop2_reg.c
> >index 18efb3fe1c00..c678d1b0fd7c 100644
> >--- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> >+++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> >@@ -14,6 +14,7 @@
> > #include <drm/drm_print.h>
> >=20
> > #include "rockchip_drm_vop2.h"
> >+#include "rockchip_drm_drv.h"
> >=20
>
> We already have a patch[0] include rockchip_drm_drv.h in rockchip_drm_vop=
2.h
>
> [0]https://patchwork.kernel.org/project/linux-rockchip/patch/202409041202=
38.3856782-3-andyshrk@163.com/=20

Maybe I'm missing something, but this patch seems to fix an already
existing bug (which should have a Fixes tag?), which Andy also fixed
while implementing a different (and unrelated) feature?

Cheers,
  Diederik

--90251523fbbd216b6fd8d265a28b65ea30f3d99c5d6460b75d286064d840
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZtrLRwAKCRDXblvOeH7b
bk/qAQDPHdbej4aC0ukgU/dbB+KKBekdjOZZD5I3sUS8I7Bd4wEAuK0ILSqPfD+n
L9LK3ogtrQ6CGzdsFsQ4YBi2P4hwUwA=
=eQVK
-----END PGP SIGNATURE-----

--90251523fbbd216b6fd8d265a28b65ea30f3d99c5d6460b75d286064d840--


--===============7061044562670509998==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7061044562670509998==--

