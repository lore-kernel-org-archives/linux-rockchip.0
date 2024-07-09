Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B35FAC3DA41
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jul 2024 11:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WWHgFEMnZrggGhkE/E+qcb0K/7VY7HrluacGzyCwavQ=; b=ACvA24A2pzlIEfGLeWCPK6Ek6i
	AI1/IuNw2pNyfRbnWupePfpS4OAJ6O8jM3uLPj8WXKJ4i4/ZZu8p7agPZOjpaW+pqPAPECCPOX1NJ
	ZZ/LgVmQGN1knOw/72QCT8SgyEMb6HYA+xEEzRUCAowTF8EEDVVp8gMGkK7MBXYp0KopX0sgeGS8L
	csj25ts/BUsncbd+cSQFZ+XeIDzB8LZecTDRYS+pzBWOX+8MaQKLsjmgd6ENiCjA28WuvFlLH1e8D
	iO+mk55vnkMFErcY4kLIw6Vm+jOpI7s6qei7T/xnp/J7xg0qsrgTVGI7Xz7cNEherl9+enAVNEx5T
	n04hG/cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sR8jH-00000006vYa-1xHV;
	Tue, 09 Jul 2024 11:09:51 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sR8j0-00000006vU0-2Y4f;
	Tue, 09 Jul 2024 11:09:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6757361343;
	Tue,  9 Jul 2024 11:09:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF727C3277B;
	Tue,  9 Jul 2024 11:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720523373;
	bh=FXUkXbQUEspDSkw/HVpFFZAVrtoTx09LZKNLAG6JZuU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lzsbke4/exLO4Xl4SqTLG6hiifRc34fVQtWOddtnZ+EUJgKmI7p9pwohDxy+ni4FZ
	 R9sOC46KJBzU1KRFruWYGkpDgVBs8BqW2FuKFwR4pnF8HQzDCVZnkDzD3y0pJKZ00p
	 qq0SxVQp+NXk7QeR6KToscr5lFlpkfDHcAbU2YvE4B9vE9n73gDov2XKtHYoaeb04+
	 J9URmF7sjiuuvE3+JgSLdzPaBb/9CuUMu1V4wmjH4Rr2BVROuE6A4X2Oquo5bAb5Jj
	 PHiDdCO7T5r4MSWjOVIaiQY+6jbh563cQW8dJu/2DGuMUfSHLdPetKCXA2GoKIvwMQ
	 ElEkddqarH3aQ==
Date: Tue, 9 Jul 2024 13:09:30 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Dragan Simic <dsimic@manjaro.org>
Cc: Andy Yan <andyshrk@163.com>, linux-rockchip@lists.infradead.org, 
	dri-devel@lists.freedesktop.org, heiko@sntech.de, hjc@rock-chips.com, andy.yan@rock-chips.com, 
	maarten.lankhorst@linux.intel.com, tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, javierm@redhat.com
Subject: Re: [PATCH] drm/rockchip: cdn-dp: Remove redundant workarounds for
 firmware loading
Message-ID: <20240709-exuberant-tentacled-oxpecker-bd1ea0@houat>
References: <9b7a9e9b88ad8c7489ee1b4c70b8751eeb5cf6f9.1720049413.git.dsimic@manjaro.org>
 <109c6f19.2559.1907b817a99.Coremail.andyshrk@163.com>
 <0bf4701d98833609b917983718c610aa@manjaro.org>
 <2fd3aabd.785b.190914ec1a6.Coremail.andyshrk@163.com>
 <f0fb9feed2d9262bb4d7c8ade836af62@manjaro.org>
 <909d072.9028.19096c2429a.Coremail.andyshrk@163.com>
 <31062b80d3f9e11c339c400a70464f43@manjaro.org>
MIME-Version: 1.0
In-Reply-To: <31062b80d3f9e11c339c400a70464f43@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240709_040934_801357_6B2330D3 
X-CRM114-Status: GOOD (  53.21  )
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
Content-Type: multipart/mixed; boundary="===============0797783959121610913=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0797783959121610913==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="mrun7l74cyv4hvms"
Content-Disposition: inline


--mrun7l74cyv4hvms
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 09, 2024 at 12:10:51PM GMT, Dragan Simic wrote:
> On 2024-07-09 11:10, Andy Yan wrote:
> > At 2024-07-09 16:17:06, "Dragan Simic" <dsimic@manjaro.org> wrote:
> > > On 2024-07-08 09:46, Andy Yan wrote:
> > > > At 2024-07-04 18:35:42, "Dragan Simic" <dsimic@manjaro.org> wrote:
> > > > > On 2024-07-04 04:10, Andy Yan wrote:
> > > > > > At 2024-07-04 07:32:02, "Dragan Simic" <dsimic@manjaro.org> wro=
te:
> > > > > > > After the additional firmware-related module information was
> > > > > > > introduced by
> > > > > > > the commit c0677e41a47f ("drm/rockchip: cdn-dp-core: add
> > > > > > > MODULE_FIRMWARE
> > > > > > > macro"), there's no longer need for the
> > > > > > > firmware-loading workarounds
> > > > > > > whose
> > > > > > > sole purpose was to prevent the missing firmware
> > > > > > > blob in an initial
> > > > > > > ramdisk
> > > > > > > from causing driver initialization to fail.  Thus, delete the
> > > > > > > workarounds,
> > > > > > > which removes a sizable chunk of redundant code.
> > > > > >=20
> > > > > > What would happen if there was no ramdisk? And the firmware is =
in
> > > > > > rootfs =EF=BC=9F
> > > > > >=20
> > > > > > For example=EF=BC=9A A buildroot based tiny embedded system=E3=
=80=82
> > > > >=20
> > > > > Good point, let me explain, please.
> > > > >=20
> > > > > In general, if a driver is built into the kernel, there
> > > > > should also be
> > > > > an initial ramdisk that contains the related firmware blobs, beca=
use
> > > > > it's
> > > > > unknown is the root filesystem available when the driver is probe=
d.
> > > > > If
> > > > > a driver is built as a module and there's no initial ramdisk, hav=
ing
> > > > > the related firmware blobs on the root filesystem should be fine,
> > > > > because
> > > > > the firmware blobs and the kernel module become available at
> > > > > the same
> > > > > time, through the root filesystem. [1]
> > > > >=20
> > > > > Another option for a driver built statically into the kernel, when
> > > > > there's
> > > > > no initial ramdisk, is to build the required firmware blobs into =
the
> > > > > kernel
> > > > > image. [2]  Of course, that's feasible only when a kernel image is
> > > > > built
> > > > > specificially for some device, because otherwise it would become =
too
> > > > > large
> > > > > because of too many drivers and their firmware blobs becoming
> > > > > included,
> > > > > but that seems to fit the Buildroot-based example.
> > > > >=20
> > > > > To sum it up, mechanisms already exist in the kernel for various
> > > > > scenarios
> > > > > when it comes to loading firmware blobs.  Even if the deleted
> > > > > workaround
> > > > > attempts to solve some issue specific to some environment,
> > > > > that isn't
> > > > > the
> > > > > right place or the right way for solving any issues of that kind.
> > > > >=20
> > > > > While preparing this patch, I even tried to find another
> > > > > kernel driver
> > > > > that
> > > > > also implements some similar workarounds for firmware loading, to
> > > > > justify
> > > > > the existence of such workarounds and to possibly move them into =
the
> > > > > kernel's
> > > > > firmware-loading interface.  Alas, I was unable to find such
> > > > > workarounds
> > > > > in
> > > > > other drivers, which solidified my reasoning behind classifying t=
he
> > > > > removed
> > > > > code as out-of-place and redundant.
> > > >=20
> > > > For some tiny embedded system=EF=BC=8Cthere is no such ramdisk=EF=
=BC=8Cfor example=EF=BC=9A
> > > > a buildroot based rootfs=EF=BC=8Cthe buildroot only generate rootfs=
=E3=80=82
> > > >=20
> > > > And FYI=EF=BC=8C there are mainline drivers try to fix such issue by
> > > > defer_probe=EF=BC=8Cfor example=EF=BC=9A
> > > > smc_abc[0]
> > > > There are also some other similar scenario in gpu driver{1}[2]
> > > >=20
> > > > [0]https://elixir.bootlin.com/linux/latest/source/drivers/tee/optee=
/smc_abi.c#L1518
> > > > [1]https://patchwork.kernel.org/project/dri-devel/patch/20240109120=
604.603700-1-javierm@redhat.com/
> > > > [2]https://lore.kernel.org/dri-devel/87y1918psd.fsf@minerva.mail-ho=
st-address-is-not-set/T/
> > >=20
> > > Thanks for providing these examples.
> > >=20
> > > Before I continue thinking about the possible systemic solution,
> > > could you please clarify the way Buildroot builds the kernel and
> > > prepares the root filesystem?  I'm not familiar with Buildroot,
> > > but it seems to me that it builds the drivers statically into the
> > > produced kernel image, while it places the related firmware blobs
> > > into the produced root filesystem.  Am I right there?
> >=20
> > in practice we can chose build the drivers statically into the kernel=
=EF=BC=8C
> > we can also build it as a module=E3=80=82
> > And in both case=EF=BC=8C the firmware blobs are put in rootfs=E3=80=82
> > If the drivers is built as a module=EF=BC=8C the module will also put in
> > rootfs=EF=BC=8C
> > so its fine=E3=80=82
> > But if a drivers is built into the kernel =EF=BC=8Cit maybe can't acces=
s the
> > firmware blob
> > before the rootfs is mounted.
> > So we can see some drivers try to use  DEFER_PROBE to fix this issue.
>=20
> When Buildroot builds the drivers statically into the kernel image,
> can it also be told to build the required firmware blobs into the
> kernel image, for which there's already support in the kernel?
>=20
> Of course, that would be feasible if only a small number of firmware
> blobs would end up built into the kernel image, i.e. if the Buildroot
> build would be tailored for a specific board.

IIRC, it can, but it's not really convenient from a legal point of view.

> Otherwise...
>=20
> > > As I already wrote earlier, and as the above-linked discussions
> > > conclude, solving these issues doesn't belong to any specific driver.
> > > It should be resolved within the kernel's firmware loading mechanism
> > > instead, and no driver should be specific in that regard.
> >=20
> > IT would be good if it can be resolved within the kernel's  firmware
> > loading mechanism.
>=20
> ... we'll need this as a systemic solution.

The general policy has been to put drivers that need a firmware as a
module, and just never build them statically.

Maxime

--mrun7l74cyv4hvms
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZo0aZQAKCRAnX84Zoj2+
duQXAX9Ms7O+/0tW/78X0hREfX//aho/GXBlOL08FaPaawYipsYuGwkuSK4xC+TQ
3SVdsKIBgMufiC9PXKOysm7HIFZiDuMPBNPHv80tBJqv56TzkdtGbOh1EsHigFIM
nMK0oN9Ezw==
=Grb7
-----END PGP SIGNATURE-----

--mrun7l74cyv4hvms--


--===============0797783959121610913==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0797783959121610913==--

