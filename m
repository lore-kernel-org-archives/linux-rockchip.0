Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 593BCC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Mar 2022 14:50:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bj4qWzMaJKqznpcKJZGcTghnwR/Hap6v6j923zd190U=; b=ygg5bYh/NSlxmE
	GK0DJaGOpFTL3oXYZswQqSX0g/FnTGs4D84j4EQsDPoxqqLQtPIC90t5hcz0MCbG/DVEBvrj1GChE
	9a+pfmLGGVstPi7aVTTFAb704w9hThVcVYMDsrR+2ZHv7GGm9Plj1eWH2cGv8a55eROy+ar7DRgBb
	7ryvyLZ6z5rjMzbYQmZW6Njx89T2Uv62ddPkU0N7cfiiRvLJco1N5eCoJnwsOZMVEZUe7LjOrVlqS
	xsWeIMe0FPoizVP9NfieI93WknEjpDu4ZMDHlreE1MZgPGG80OBwJojMlASxZmh+bBtgh3X1cm/fb
	uZXqJQNStLn55jqloVZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSK7u-00DDCv-Pq; Thu, 10 Mar 2022 14:50:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSK7c-00DD5r-H2; Thu, 10 Mar 2022 14:50:33 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nSK7V-0004bE-W9; Thu, 10 Mar 2022 15:50:26 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Colin Ian King <colin.i.king@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: Sandy Huang <hjc@rock-chips.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 llvm@lists.linux.dev, knaerzche@gmail.com
Subject: Re: [PATCH] drm/rockchip: remove redundant assignment to pointer
 connector
Date: Thu, 10 Mar 2022 15:50:25 +0100
Message-ID: <4453075.DPozGzHrQt@diego>
In-Reply-To: <CAKwvOdkXNGRJkZDd7Cg8jhL9Ex7R+VPYqEEc+VpwDyi9NJKXQQ@mail.gmail.com>
References: <20220307181704.149076-1-colin.i.king@gmail.com>
 <CAKwvOdkXNGRJkZDd7Cg8jhL9Ex7R+VPYqEEc+VpwDyi9NJKXQQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220310_065032_604666_0D71F6A9 
X-CRM114-Status: GOOD (  23.93  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

looks like I wasn't in the original recipient list, so only got Nick's
answer.

Am Mittwoch, 9. M=E4rz 2022, 00:10:31 CET schrieb Nick Desaulniers:
> On Mon, Mar 7, 2022 at 10:17 AM Colin Ian King <colin.i.king@gmail.com> w=
rote:
> >
> > The pointer connector is being assigned a value that is never read,
> > it is being re-assigned in the following statement. The assignment
> > is redundant and can be removed.
> >
> > Cleans up clang scan build warning:
> > drivers/gpu/drm/rockchip/rockchip_rgb.c:153:2: warning: Value stored
> > to 'connector' is never read [deadcode.DeadStores]
> =

> + Author & reviewer of:
> Fixes: 2e87bf389e13 ("drm/rockchip: add DRM_BRIDGE_ATTACH_NO_CONNECTOR
> flag to drm_bridge_attach")
> =

> >
> > Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
> > ---
> >  drivers/gpu/drm/rockchip/rockchip_rgb.c | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/rockchip/rockchip_rgb.c b/drivers/gpu/drm/=
rockchip/rockchip_rgb.c
> > index 2494b079489d..92a727931a49 100644
> > --- a/drivers/gpu/drm/rockchip/rockchip_rgb.c
> > +++ b/drivers/gpu/drm/rockchip/rockchip_rgb.c
> > @@ -150,7 +150,6 @@ struct rockchip_rgb *rockchip_rgb_init(struct devic=
e *dev,
> >         if (ret)
> >                 goto err_free_encoder;
> >
> > -       connector =3D &rgb->connector;
> >         connector =3D drm_bridge_connector_init(rgb->drm_dev, encoder);

I don't think this will work as expected.

Yes, the whole thing looks a bit broken right now, but the connector
field in the rockchip_rgb struct still exists and rockchip_rgb_fini also
still uses it when calling drm_connector_cleanup.

Same issue seems to exist in in rockchip_lvds.c with drm_connector_cleanup
it seems.

I guess drm_bridge_connector_destroy() is responsible for the cleanup so
the drm_connector_cleanup call both in rockchip_rgb and rockchip_lvds
as well as the local connector elements can go away as well?


Heiko


> >         if (IS_ERR(connector)) {
> >                 DRM_DEV_ERROR(drm_dev->dev,
> > --
> > 2.35.1
> >
> >
> =

> =

> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
