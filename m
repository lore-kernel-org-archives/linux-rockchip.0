Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52F59C3271E
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jul 2024 09:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lkKAX+xYV74HqVe61aaoueS83iDqRbnn5mmtucQ8sTM=; b=jaVb3C0WBUs3BZjhw/1nXd0cgX
	r3uh9HPGCtcddEcURza9ft6Ul1TAEe0HpDQxBbS6aRvN4O+0pGjupmBGIn/zJ6QKtQsYmr0ZvzRmx
	zXvitVtmuqPuflHbp16mnY6ujNE1JdPNFJXMD/Tg9VRWQNRQYWRM0F0SSSnz6MoxToCE6hSSJodRZ
	faczBT9aqM+dp0XhOtN3D6vyetdNQH2/CQc7QvoBxhb04hwsot8cxCJRHxVtF8WpgZSo36GcV8J6m
	WsQ5Rj/U/+AoJt/3CzlPpOpcQ5wsJIqcIXaqb02HdNJShnYpCHMpp95kXNf6/6WUXYf3DUphYlCBe
	FjJaTtBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQl1t-00000003Mul-2t8o;
	Mon, 08 Jul 2024 09:51:29 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQl1e-00000003Mqq-1Fhn;
	Mon, 08 Jul 2024 09:51:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 645EB60B2D;
	Mon,  8 Jul 2024 09:51:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8264C4AF0A;
	Mon,  8 Jul 2024 09:51:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720432273;
	bh=+bbtocJ2OgfBGTOC9VVI14ZzymKokzGF4y9DKFmT4Xo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=W2iY9uhXsYYDMv0PGVSP4LX7RLMVo0ISk+EErLwKg7+VgLNwFMJYqBh+12P2rCODm
	 nGt+RdCi/PFM0Z0QUIt/3a/ea68Ga145nQlnpl/vkrc5hxZwhoJgSVMGso1+UE1v8q
	 0OYjIObzq2CGcZkYL0LSQ2Bwil/Wb2+og6wtNY44aLAzCET4Ik9uTsq4xbOgQnOjn5
	 rzR1Mi6k7+9n3kU7eHs4Sd2vEULq1rE+AS2EAb44ORjAtRhyH8kpC8r/Q3hp/zb3/j
	 bpoUTkFqriQwm+bmqLczAn1xg5UG6Hf1bR6fjCHAlo5UvX1iXstC7dCYqcQ3/vYNKn
	 r5vPpSYCcezkg==
Date: Mon, 8 Jul 2024 11:51:10 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: Dragan Simic <dsimic@manjaro.org>, linux-rockchip@lists.infradead.org, 
	dri-devel@lists.freedesktop.org, heiko@sntech.de, hjc@rock-chips.com, andy.yan@rock-chips.com, 
	maarten.lankhorst@linux.intel.com, tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, javierm@redhat.com
Subject: Re: [PATCH] drm/rockchip: cdn-dp: Remove redundant workarounds for
 firmware loading
Message-ID: <20240708-catfish-of-holistic-attack-5ea61e@houat>
References: <9b7a9e9b88ad8c7489ee1b4c70b8751eeb5cf6f9.1720049413.git.dsimic@manjaro.org>
 <109c6f19.2559.1907b817a99.Coremail.andyshrk@163.com>
 <0bf4701d98833609b917983718c610aa@manjaro.org>
 <2fd3aabd.785b.190914ec1a6.Coremail.andyshrk@163.com>
MIME-Version: 1.0
In-Reply-To: <2fd3aabd.785b.190914ec1a6.Coremail.andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_025114_441825_424DAE8D 
X-CRM114-Status: GOOD (  26.12  )
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
Content-Type: multipart/mixed; boundary="===============8163840983528954957=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8163840983528954957==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="ci5qbz6tem4b4xue"
Content-Disposition: inline


--ci5qbz6tem4b4xue
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 08, 2024 at 03:46:16PM GMT, Andy Yan wrote:
>=20
> Hi Dragan=EF=BC=8C
> At 2024-07-04 18:35:42, "Dragan Simic" <dsimic@manjaro.org> wrote:
> >Hello Andy,
> >
> >On 2024-07-04 04:10, Andy Yan wrote:
> >> At 2024-07-04 07:32:02, "Dragan Simic" <dsimic@manjaro.org> wrote:
> >>> After the additional firmware-related module information was=20
> >>> introduced by
> >>> the commit c0677e41a47f ("drm/rockchip: cdn-dp-core: add=20
> >>> MODULE_FIRMWARE
> >>> macro"), there's no longer need for the firmware-loading workarounds=
=20
> >>> whose
> >>> sole purpose was to prevent the missing firmware blob in an initial=
=20
> >>> ramdisk
> >>> from causing driver initialization to fail.  Thus, delete the=20
> >>> workarounds,
> >>> which removes a sizable chunk of redundant code.
> >>=20
> >> What would happen if there was no ramdisk? And the firmware is in=20
> >> rootfs =EF=BC=9F
> >>=20
> >> For example=EF=BC=9A A buildroot based tiny embedded system=E3=80=82
> >
> >Good point, let me explain, please.
> >
> >In general, if a driver is built into the kernel, there should also be
> >an initial ramdisk that contains the related firmware blobs, because=20
> >it's
> >unknown is the root filesystem available when the driver is probed.  If
> >a driver is built as a module and there's no initial ramdisk, having
> >the related firmware blobs on the root filesystem should be fine,=20
> >because
> >the firmware blobs and the kernel module become available at the same
> >time, through the root filesystem. [1]
> >
> >Another option for a driver built statically into the kernel, when=20
> >there's
> >no initial ramdisk, is to build the required firmware blobs into the=20
> >kernel
> >image. [2]  Of course, that's feasible only when a kernel image is built
> >specificially for some device, because otherwise it would become too=20
> >large
> >because of too many drivers and their firmware blobs becoming included,
> >but that seems to fit the Buildroot-based example.
> >
> >To sum it up, mechanisms already exist in the kernel for various=20
> >scenarios
> >when it comes to loading firmware blobs.  Even if the deleted workaround
> >attempts to solve some issue specific to some environment, that isn't=20
> >the
> >right place or the right way for solving any issues of that kind.
> >
> >While preparing this patch, I even tried to find another kernel driver=
=20
> >that
> >also implements some similar workarounds for firmware loading, to=20
> >justify
> >the existence of such workarounds and to possibly move them into the=20
> >kernel's
> >firmware-loading interface.  Alas, I was unable to find such workarounds=
=20
> >in
> >other drivers, which solidified my reasoning behind classifying the=20
> >removed
> >code as out-of-place and redundant.
>
> For some tiny embedded system=EF=BC=8Cthere is no such ramdisk=EF=BC=8Cfo=
r example=EF=BC=9A
> a buildroot based rootfs=EF=BC=8Cthe buildroot only generate rootfs=E3=80=
=82

I'm not sure why you think ramdisks are an issue. Modules and firmwares
work just the same with or without ramdisks, so Buildroot can work just
fine too.

Maxime

--ci5qbz6tem4b4xue
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZou2iAAKCRAnX84Zoj2+
dsmPAYCZJGLhenooONeYP8afPlj+pVdEjg7//jhR+O5k9/W8nr2A64KhfLGFnrr8
Rky7+08BfijxYcx6VkUyY5IzEZWlDia+egXkkN5oDrn5pQOFSft7DdccmIzWs+eJ
+5GfyVhSQw==
=/d+L
-----END PGP SIGNATURE-----

--ci5qbz6tem4b4xue--


--===============8163840983528954957==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8163840983528954957==--

