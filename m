Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E257FD64070
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Nov 2024 17:10:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i1Uiljflz2xoCzz32IEo5mM9B5L6dF7XlzDKL6qC4DU=; b=WCFXRe338dEZI4tNtRUSGHPmtP
	dSTsJDJCLM73DPld36bLDYxUaOBZ221L1i5Mu8h1YhWZ7GvM4eCmYNhpnp07p9cdIW2O3ZTrkBD5G
	Ip4PjGq1BAu2sk1jZWfNi/V/+7feHLaEcKwwKHFpLLfKreJcKQJ/kuubthqMhAXrBNwco/VjB4RBS
	m+oHm/A/2U+lw3PIkHhxPYwUOpOZ/6BiI4Kd5EUs4HQ64XaZlAWYsiSvUTOp3Q0CMCiNdPTxoWegI
	XgmCrWrSfZIAUOM/zS1ssmpbozzUy5bqfNq70UhLpM6t+4waYCy5+KAWTRfNT9TNK5Xze1B5JWcvW
	g2ZEvC4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9SVG-0000000BKdk-13Iz;
	Fri, 08 Nov 2024 17:10:34 +0000
Received: from out-173.mta1.migadu.com ([2001:41d0:203:375::ad])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Rzt-0000000BGPy-3PH4
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Nov 2024 16:38:12 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1731083886;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Y8isQ+eC1NBDJ85mhmgiRP01XgjT4qvdr3jwt+UY19g=;
	b=wvuCdy/YsQr5y2ZLd7wKdSKLnnl9GdvdfoZrAkccd2PyafwFPUA5adoDCjZ0A2W0ehzRdu
	QyWalDT08pxaTLAk3zchX7qLvtLa2fTTAGrUwABmQ88jbZl6/P7Yp/6RofZUJzni1JZpMx
	/hJ84YXohGcqC4Ul/QvWzE4juichAa3wz0l72E0w7Sp3SXUEU4YpoBz9tbnuZZO9yj7T8D
	+UUtjE85ItWVYdfZ4yGC2LGisf6PrGQ2OW8aXy0m1/ZDpa3CRhCVVntYe+qKbb+bUJLoO+
	sxksUg6DJ9RR/+CiD26PqZ3X66Jg9ZmKloCi2N/Ytf2/fbSslOltMB2xQURPAw==
Date: Fri, 08 Nov 2024 17:37:51 +0100
Message-Id: <D5GY0NXYFLS9.1YHBZ5502R764@cknow.org>
Cc: <dsimic@manjaro.org>, <andy.yan@rock-chips.com>,
 <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
 <tzimmermann@suse.de>, <linux-kernel@vger.kernel.org>, "Heiko Stuebner"
 <heiko.stuebner@cherry.de>
Subject: Re: [PATCH] drm/rockchip: dsi: convert to dev_err_probe in probe
 function
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 <linux-rockchip@lists.infradead.org>, <dri-devel@lists.freedesktop.org>
References: <20241108144425.1009916-1-heiko@sntech.de>
 <D5GWE4WJZMM8.1MPHPPQR2QW46@cknow.org> <3594835.iIbC2pHGDl@diego>
In-Reply-To: <3594835.iIbC2pHGDl@diego>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_083810_501950_AABFB60F 
X-CRM114-Status: GOOD (  13.73  )
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
Content-Type: multipart/mixed; boundary="===============6060357678977157172=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============6060357678977157172==
Content-Type: multipart/signed;
 boundary=342aba1a373c0c1c659dff9cb9078d09b156ee41058742d4af8979a7c0b6;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--342aba1a373c0c1c659dff9cb9078d09b156ee41058742d4af8979a7c0b6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Fri Nov 8, 2024 at 5:31 PM CET, Heiko St=C3=BCbner wrote:
> Am Freitag, 8. November 2024, 16:21:24 CET schrieb Diederik de Haas:
> > On Fri Nov 8, 2024 at 3:44 PM CET, Heiko Stuebner wrote:
> > > From: Heiko Stuebner <heiko.stuebner@cherry.de>
> > >
> > > DRM_DEV_ERROR is deprecated and using dev_err_probe saves quite a num=
ber
> > > of lines too, so convert the error prints for the dsi-driver.
> > >
> > > Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
> >=20
> > Should this have a Fixes tag?
> > Because in the PineTab2 case it reported an error, which was actually
> > just a deferred probe.
>
> A deferred-probe is an error ;-)   -517 in fact  ... just that convention
> nowadays is to not actively report on it but "fail" silently.

Good to know, thanks :)

> So personally I don't really consider it a fix, but more a style thing.
> I guess I'll let others chime in for that.

Then I agree that it should not have a Fixes tag.

Cheers,
  Diederik

--342aba1a373c0c1c659dff9cb9078d09b156ee41058742d4af8979a7c0b6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZy4+ZgAKCRDXblvOeH7b
bm7IAQDlu5u1RUaHveltxvLYbs1Lkju/X4N1ZMHhqsGMKvP6MwEApHelYqAyAA1h
JBDYWaKldiIhOrBuZQvjbtUN4ic/EQQ=
=BFts
-----END PGP SIGNATURE-----

--342aba1a373c0c1c659dff9cb9078d09b156ee41058742d4af8979a7c0b6--


--===============6060357678977157172==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6060357678977157172==--

