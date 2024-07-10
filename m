Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 748DCC3DA42
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jul 2024 07:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5Wfr4Amak2RQsj7i14TwciOmickydpeOb8txTFPp9TY=; b=WsYfcLYvLnfG8xdD4QYvMiC3aW
	0t0/xLKL8PPqXh5abOt4cwd3b2oANZvDnr7yF1WlVfd/fdk9Z7XfSm93MrT1Wnk2VFUNAqJ4cKqCB
	K8+7FnBzrZzTMLH9ozu7rAF+yYu3rO0p5+eA9oT96simSdDoMP6II+KFD+i2PL5ICw5s5vXoGmZRt
	PsVZ/mjAtKyqATchtmD1FYcD5dZnvHR6duxi32EHyLubrVaSvUyBRPoPEWwpbMrANLKzeQsbprjtq
	YGijK9lVdHqpLBKx42dAc6T8lxg5YiaIGeUTAQJdSpCheIQtG12UVY9da2OvfMGt2Z2yGH3WPYaXo
	IBOUSm7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRRWG-00000009hxP-2GwG;
	Wed, 10 Jul 2024 07:13:40 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRRVy-00000009hsQ-486O;
	Wed, 10 Jul 2024 07:13:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 39658CE13CB;
	Wed, 10 Jul 2024 07:13:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13EEDC32781;
	Wed, 10 Jul 2024 07:13:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720595600;
	bh=x4Iv2ujiTEenjVrms5+vXH7xG9UcavnTmM2LhQnOcG8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dKk429XfmzcO+XAYY1Ls+tIh/Nc4eZ5CFHGB69JLNECEFWVpEDLi2fhEWaTr2sy8W
	 QGvNZhI8DxXcbfworB2a1nBKZ41ch90fto3uv6xsK8eZKyWeFdRM5eQgfq0AtYzh/V
	 Ue4KvNf8E7gjEvYQIy/vgzToAixTg0VBnaE2ZLy6A2IpQ783eboosUp5E9DrZjf+8K
	 Wdp/I3LW8l109sjNDOxTD5QnKfY43I32WkYsHrueC2hDF769gPJad35SAt8/26gsbC
	 Coh2T30E5L1v72W0M/u0sc6JvVeHvQcQdFI5WaGL1KP+XX9EjmOJqEAG+OrwrRenTr
	 NdT/zFCeapjEA==
Date: Wed, 10 Jul 2024 09:13:17 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Dragan Simic <dsimic@manjaro.org>
Cc: Andy Yan <andyshrk@163.com>, linux-rockchip@lists.infradead.org, 
	dri-devel@lists.freedesktop.org, heiko@sntech.de, hjc@rock-chips.com, andy.yan@rock-chips.com, 
	maarten.lankhorst@linux.intel.com, tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, javierm@redhat.com
Subject: Re: [PATCH] drm/rockchip: cdn-dp: Remove redundant workarounds for
 firmware loading
Message-ID: <20240710-smooth-hypnotic-raccoon-b91fba@houat>
References: <9b7a9e9b88ad8c7489ee1b4c70b8751eeb5cf6f9.1720049413.git.dsimic@manjaro.org>
 <109c6f19.2559.1907b817a99.Coremail.andyshrk@163.com>
 <0bf4701d98833609b917983718c610aa@manjaro.org>
 <2fd3aabd.785b.190914ec1a6.Coremail.andyshrk@163.com>
 <f0fb9feed2d9262bb4d7c8ade836af62@manjaro.org>
 <909d072.9028.19096c2429a.Coremail.andyshrk@163.com>
 <31062b80d3f9e11c339c400a70464f43@manjaro.org>
 <20240709-exuberant-tentacled-oxpecker-bd1ea0@houat>
 <b6d630447e6c69e913b76650d910f895@manjaro.org>
MIME-Version: 1.0
In-Reply-To: <b6d630447e6c69e913b76650d910f895@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_001323_219790_68F2F05A 
X-CRM114-Status: GOOD (  17.75  )
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
Content-Type: multipart/mixed; boundary="===============7249257271150353092=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7249257271150353092==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="hmozv7bd2sxugxlk"
Content-Disposition: inline


--hmozv7bd2sxugxlk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 09, 2024 at 06:36:08PM GMT, Dragan Simic wrote:
> > > > > As I already wrote earlier, and as the above-linked discussions
> > > > > conclude, solving these issues doesn't belong to any specific dri=
ver.
> > > > > It should be resolved within the kernel's firmware loading mechan=
ism
> > > > > instead, and no driver should be specific in that regard.
> > > >
> > > > IT would be good if it can be resolved within the kernel's  firmware
> > > > loading mechanism.
> > >=20
> > > ... we'll need this as a systemic solution.
> >=20
> > The general policy has been to put drivers that need a firmware as a
> > module, and just never build them statically.
>=20
> I totally agree, but if Buildroot builds them statically and provides
> no initial ramdisk, we need a better solution than having various drivers
> attempt to implement their own workarounds.

Buildroot typically allows custom kernel configurations, so it's not
really "enforcing" anything like another distro does.

It is definitely targetted towards very stripped down systems, so I
guess building the drivers statically is a natural choice, but it works
fine with modules too.

Maxime

--hmozv7bd2sxugxlk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZo40jAAKCRAnX84Zoj2+
dk7wAXsGnTzsBpAO71ZkHwlPTy/hfj7mkqJs1dxvs1EHsvTY5R9jsiA0xksKCqAb
ofSC7f0BgLqiZnp5G+2MV0POlp4hoq7m1l/IoTg44FTB0PjPx8MSeR1++MfMdKAk
ugJA0QtGyg==
=v2r+
-----END PGP SIGNATURE-----

--hmozv7bd2sxugxlk--


--===============7249257271150353092==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7249257271150353092==--

