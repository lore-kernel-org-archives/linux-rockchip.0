Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 359E4C3DA47
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jul 2024 10:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HvoezykYvqhOhtWxFjISot8yYyCBlf+i706Eg1YZZF0=; b=0Nrb8O30gkrdddILS4JFJWdfMg
	JxA9xJ1Ym92CUqV493dp5jOrHIfDOzxgd4GBXB2FJp58kjPVP9uF+yeomZRewXD/sSqTMwrHWROLa
	swNPevE6iE0RUzdk/C6tK3GPnN8n1oI0pnQrpebN5UPRUIr+srwVFJhsF7J8r70LqUuBAPgVaxnKT
	V0p3NNDbEKsLqcP5bFa1N8SCncKLDB1Dc3TXwcmD0kiq2j60IzE4nM7KqMzjj67eBQ3719wpB7fCz
	3VPBJe7cWO9ir7H7mozbpttvskT0tVPqC9nSTfD76g1SlBfA1uxRwHAQHzoqVu3L/0fke4s3swNDq
	yz0VOjHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRrP9-0000000Dcjv-0CDP;
	Thu, 11 Jul 2024 10:52:03 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRrOp-0000000Dces-4AUD;
	Thu, 11 Jul 2024 10:51:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id B72EACE0F9A;
	Thu, 11 Jul 2024 10:51:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E9B2C116B1;
	Thu, 11 Jul 2024 10:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720695101;
	bh=jC+MUII/VUDTpAXbhDbSMtm7zmMjOZiHeuaNeYbo7uQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vG1Cvh4UThE+31U4IPJNPKGKyVZyd5g9xYKaiEaYwqzEey+IsiC1atQ9w0N/1nPrp
	 +BUayBEDx6eC0OykLJlfe55FXrTBe+1QNaorEHGyu/8fnc06xhNSCf+fwied2zBtli
	 T3UqS9TI3ZI1m/AR8JRW+H+TSMk1z/tk2T4YBPdj/TFFlp0gK6Y65V7ZpchlH+l9xa
	 Mnukv2NufgPYlF0VpEw58ZB6YZZhJgF8VgScTuF2Cm0IiMnlXf/soEVxCcGWLHowkT
	 f6ZxLV7q5Qvqc/AprabTo/5tafVj5eJy8UulZeqZuPEVRY0g1is2jDsDvpn1jgZEWa
	 OxLClsFrmv3Lw==
Date: Thu, 11 Jul 2024 12:51:38 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Dragan Simic <dsimic@manjaro.org>
Cc: Andy Yan <andyshrk@163.com>, linux-rockchip@lists.infradead.org, 
	dri-devel@lists.freedesktop.org, heiko@sntech.de, hjc@rock-chips.com, andy.yan@rock-chips.com, 
	maarten.lankhorst@linux.intel.com, tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, javierm@redhat.com
Subject: Re: [PATCH] drm/rockchip: cdn-dp: Remove redundant workarounds for
 firmware loading
Message-ID: <20240711-therapeutic-space-bonobo-b4fed8@houat>
References: <109c6f19.2559.1907b817a99.Coremail.andyshrk@163.com>
 <0bf4701d98833609b917983718c610aa@manjaro.org>
 <2fd3aabd.785b.190914ec1a6.Coremail.andyshrk@163.com>
 <f0fb9feed2d9262bb4d7c8ade836af62@manjaro.org>
 <909d072.9028.19096c2429a.Coremail.andyshrk@163.com>
 <31062b80d3f9e11c339c400a70464f43@manjaro.org>
 <20240709-exuberant-tentacled-oxpecker-bd1ea0@houat>
 <b6d630447e6c69e913b76650d910f895@manjaro.org>
 <20240710-smooth-hypnotic-raccoon-b91fba@houat>
 <a30067db11e586d8eb2c124abe32052a@manjaro.org>
MIME-Version: 1.0
In-Reply-To: <a30067db11e586d8eb2c124abe32052a@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240711_035144_399528_B785117F 
X-CRM114-Status: GOOD (  23.48  )
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
Content-Type: multipart/mixed; boundary="===============8031888605065045415=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8031888605065045415==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="xsbqjcnrsppws4gq"
Content-Disposition: inline


--xsbqjcnrsppws4gq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 10, 2024 at 04:22:12PM GMT, Dragan Simic wrote:
> Hello Maxime,
>=20
> On 2024-07-10 09:13, Maxime Ripard wrote:
> > On Tue, Jul 09, 2024 at 06:36:08PM GMT, Dragan Simic wrote:
> > > > > > > As I already wrote earlier, and as the above-linked discussio=
ns
> > > > > > > conclude, solving these issues doesn't belong to any specific=
 driver.
> > > > > > > It should be resolved within the kernel's firmware loading me=
chanism
> > > > > > > instead, and no driver should be specific in that regard.
> > > > > >
> > > > > > IT would be good if it can be resolved within the kernel's  fir=
mware
> > > > > > loading mechanism.
> > > > >
> > > > > ... we'll need this as a systemic solution.
> > > >
> > > > The general policy has been to put drivers that need a firmware as a
> > > > module, and just never build them statically.
> > >=20
> > > I totally agree, but if Buildroot builds them statically and provides
> > > no initial ramdisk, we need a better solution than having various
> > > drivers
> > > attempt to implement their own workarounds.
> >=20
> > Buildroot typically allows custom kernel configurations, so it's not
> > really "enforcing" anything like another distro does.
> >=20
> > It is definitely targetted towards very stripped down systems, so I
> > guess building the drivers statically is a natural choice, but it works
> > fine with modules too.
>=20
> It all leads to a conclusion that we need better in-kernel support
> for delayed firmware loading, instead of drivers implementing various
> workarounds, for the layouts in which drivers are built statically
> into the kernel image, but the required firmware blobs reside on the
> root filesystem.
>=20
> I'll start working on it, hopefully today. :)

I don't want to prevent you from trying, but be aware that similar
attempts have been shut down repeatedly in the past.

Maxime

--xsbqjcnrsppws4gq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZo+5NAAKCRAnX84Zoj2+
du2GAYCtFTc7CaphEQgCfqWHKMmGzxp6MqPjwU1kfoPddNDxF8VaZ3EI58nrUdUi
BytnnJcBf1UldJ4yRFP4F+3O6STBxwc38kR/ZT90xF0JtcAZz52j3JN7AUqtkBkm
3G+Ypgthcw==
=9HPF
-----END PGP SIGNATURE-----

--xsbqjcnrsppws4gq--


--===============8031888605065045415==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8031888605065045415==--

