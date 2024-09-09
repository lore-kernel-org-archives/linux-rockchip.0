Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF873ECE57B
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Sep 2024 09:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mgRUrlPR9/LhUtrDZtvce+lIkruQSZs0keUQAqaKieY=; b=0/BztY0qhEC4uI0okKt6vIlA/x
	J3zfWgXIgTSIlmE5VGcvUUK+tjbkSkuyzNhtHGZvZ0URiK74n0ghlQuYaylZTwCm9hYwSFHJ6pNSt
	LfbfHDEw8QqiNMtJLL/h9G32hwz4EQRcXKnzrSECiiielETQFH8NEEx5G/dBrSFtZYuT45JkIPmzw
	sUlbnUlljn1Zx1ijf5WcsvlXeqvM58CBeDLSQfsSegwxFUHpl9nSy2udEFyOQt2tGgPbA1lBoUDca
	LJVP8ruAkp799X5agsLXl3PlnvWiFKsSptEUPFYEQtumbbBW6x7WZaZybjoiYpKZAofngINMczCWk
	N0dVoNGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snap5-00000001MNc-0p5d;
	Mon, 09 Sep 2024 09:36:39 +0000
Received: from out-173.mta1.migadu.com ([95.215.58.173])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snap0-00000001MKV-1u8h
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Sep 2024 09:36:37 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1725874588;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Ac7MnXk0+4OmEaGl+o2m4y/0M5iH7c+3GKkl4Qy3D8A=;
	b=U1ctQX5eIeSZpzL1FGOk+YNq1zfqhAuIOYZnZk4KkZeMNWuidAVb0ZgcLHt3miY80lhy3h
	N2+P20Z6umpmoxsROgk+CpQp0Ti6yzJWVcaQbzXjVYPTlE76xnPUMHDNsBIOnA4EOMdbTi
	THbjO7xFXzRxHPYbD5S2Qe+nEbWOYAoFn1zgj2mtmpyF9m491GZOCkH+3zHw4BwCGQmx05
	ox/AUJvJnH4OulTrG+t2f/zonHSyo2pjhgY5h97NVrxiXw3t55o7lLDK1MzF8jFQbkN3d1
	xctqBIVEWLNbfql6B43xP4nZe3k8Df2lsVV7vTOfxG+D3sdTzI6kx9lffNlERA==
Date: Mon, 09 Sep 2024 11:36:14 +0200
Message-Id: <D41NH5VO0A7T.26F04WDY1UTCR@cknow.org>
Cc: <detlev.casanova@collabora.com>, <heiko@sntech.de>,
 <devicetree@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
 <hjc@rock-chips.com>, <mripard@kernel.org>,
 <sebastian.reichel@collabora.com>, <linux-rockchip@lists.infradead.org>,
 <sjoerd@collabora.com>, "Andy Yan" <andy.yan@rock-chips.com>,
 <krzk+dt@kernel.org>, <robh@kernel.org>
Subject: Re: [PATCH v2 05/11] drm/rockchip: vop2: Introduce vop hardware
 version
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Sascha Hauer" <s.hauer@pengutronix.de>, "Andy Yan" <andyshrk@163.com>
References: <20240904120238.3856782-1-andyshrk@163.com>
 <20240904120238.3856782-6-andyshrk@163.com>
 <ZtlZgKcDQFF_WnCn@pengutronix.de>
 <2326e2ea.8264.191c13bab93.Coremail.andyshrk@163.com>
 <Zt68U6hnPA0KrxXB@pengutronix.de>
In-Reply-To: <Zt68U6hnPA0KrxXB@pengutronix.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_023635_331375_51DF41D9 
X-CRM114-Status: GOOD (  31.02  )
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
Content-Type: multipart/mixed; boundary="===============6064391152608235009=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============6064391152608235009==
Content-Type: multipart/signed;
 boundary=8c1b658f7c448cb5c0b613f89153b15bab673f392c82b551568fd1d1d6ee;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--8c1b658f7c448cb5c0b613f89153b15bab673f392c82b551568fd1d1d6ee
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Mon Sep 9, 2024 at 11:13 AM CEST, Sascha Hauer wrote:
> On Thu, Sep 05, 2024 at 04:09:58PM +0800, Andy Yan wrote:
> >  At 2024-09-05 15:10:56, "Sascha Hauer" <s.hauer@pengutronix.de> wrote:
> >  >On Wed, Sep 04, 2024 at 08:02:32PM +0800, Andy Yan wrote:
> >  >> From: Andy Yan <andy.yan@rock-chips.com>
> >  >>
> >  >> There is a version number hardcoded in the VOP VERSION_INFO
> >  >> register, and the version number increments sequentially based
> >  >> on the production order of the SOC.
> >  >>
> >  >> So using this version number to distinguish different VOP features
> >  >> will simplify the code.
> >  >>
> >  >> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> >  >>
> >  >> ---
> >  >>
> >  >> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h b/drivers=
/gpu/drm/rockchip/rockchip_drm_vop2.h
> >  >> index 9b269f6e576e..871d9bcd1d80 100644
> >  >> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
> >  >> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
> >  >> @@ -13,6 +13,15 @@
> >  >>  #include "rockchip_drm_drv.h"
> >  >>  #include "rockchip_drm_vop.h"
> >  >>
> >  >> +#define VOP2_VERSION(major, minor, build)     ((major) << 24 | (mi=
nor) << 16 | (build))
> >  >> +
> >  >> +/* The new SOC VOP version is bigger than the old */
> >  >> +#define VOP_VERSION_RK3568    VOP2_VERSION(0x40, 0x15, 0x8023)
> >  >> +#define VOP_VERSION_RK3588    VOP2_VERSION(0x40, 0x17, 0x6786)
> >  >> +#define VOP_VERSION_RK3528    VOP2_VERSION(0x50, 0x17, 0x1263)
> >  >> +#define VOP_VERSION_RK3562    VOP2_VERSION(0x50, 0x17, 0x4350)
> >  >> +#define VOP_VERSION_RK3576    VOP2_VERSION(0x50, 0x19, 0x9765)
> >  >
> >  >What about the RK3566? Does it have the same version code as the RK35=
68?
> >  >
> >  >This new version field replaces the soc_id mechanism we had before to
> >  >99%. You keep the soc_id around just for distinguishing between RK356=
6
> >  >and RK3568. It would be nice to fully replace it.
> >  >
> >  >I see that the VOP_VERSION_RK* numbers are the same as found in the
> >  >VOP2_SYS_VERSION_INF registers. On the other hand you never read the
> >  >value from the register which make the VOP_VERSION_RK* just arbitrary
> >  >numbers. Wouldn't it be possible to make something up for RK3566, lik=
e
> >  >VOP2_VERSION(0x40, 0x15, 0x8022) to get rid of the soc_id thingy?
> >  Yes=EF=BC=8CRK3566 and RK3568 share the same VOP IP block=EF=BC=8C so =
the version code at VERSION_REGISTER is
> >  the same, the difference between rk3568 and rk33566 are introduced at =
soc Integration=E3=80=82
> >  So i would still like to keep the soc_id to  handle situation like thi=
s=E3=80=82As we always have such  cause=EF=BC=8C one
> >  same IP block=EF=BC=8C but there are some subtle differences in featur=
es across different SOCs.
>
> Fine with me. You could leave a comment in the code or commit
> message that explains why we need both.

Also (or especially?) add that to the commit message of patch 6 of this
series. Patch 6's commit message talks about RK3576 while it changes
code related to RK3566 and I (too?) thought that not using VOP_VERSION
was an oversight, while it turns out to be deliberate.

Cheers,
  Diederik

--8c1b658f7c448cb5c0b613f89153b15bab673f392c82b551568fd1d1d6ee
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZt7BlQAKCRDXblvOeH7b
bjNCAQD75I99I8eQyeyxfrEV5TDf/AH75sfVSERvC4tYJYmhUQEAzK6ErqvvskFA
GFfJz2HXP1a+zRS/z7wpv3XGdG83eQ4=
=9uHr
-----END PGP SIGNATURE-----

--8c1b658f7c448cb5c0b613f89153b15bab673f392c82b551568fd1d1d6ee--


--===============6064391152608235009==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6064391152608235009==--

