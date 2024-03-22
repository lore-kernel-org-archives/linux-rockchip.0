Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77DEFC54E71
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Mar 2024 18:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=haJWYLi6aIksff0fDX5bq6Jqq+bt25nY/MBWlHIu4ck=; b=Zv2ySSkHs0Dz6MGUCkVRIswX8t
	GePrh4V4IGp3yWJYZXRY9/PxKuO+pu3ntSMW6k0H5BsmvmrULAALa2tTraYgO1n+VbxIRlHeSLtKE
	on9mVqwQCxzr800JFFhRzJKWBbZTkBHIeN3jYe0MXX9O7fFp/vLKn5NzmQ12TGkklRnG7wcWsSLsV
	1EcK+jWq/FR1AO+TfGMTzEB7IM4jVRUA6tm3RtZ1A+5anNrZELm4uIUyj0ix2jvIXnfAFb6NLNWz6
	0ccMV4XGAQsHpeYw0RaWysezLNYxPqF1bTgPcR9I1/ZU7XVRbuoAQwooneZJTR/cZTJKjEjGBINbm
	z5MrNneA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnjEE-00000008H1L-0IZ0;
	Fri, 22 Mar 2024 18:02:54 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnjEA-00000008H0Z-4Bjv;
	Fri, 22 Mar 2024 18:02:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0B9916139D;
	Fri, 22 Mar 2024 18:02:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D64B3C43394;
	Fri, 22 Mar 2024 18:02:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711130569;
	bh=BSoC1Wq8BPWT1DN1i//NEYLXMsxbq8aPxjQOfaeKiKM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dITseOQn+/dTzQK4dAIS0UcCi/aO1Ru6irgxF8Pm8XeVf/Q1ypA6KKDi6SrGy5SJq
	 /tJkvv+m9Xxg1YE2NP55xQQ1dRHPRmjbRxPbVUrJUvAkk3yeygzuqobBd+bGwPO7LT
	 Z5DyeAlJT0pR3IPfr1RCQeZOrAR6i0joKHlar99ukWqHDOXkIKJQ64J2qC9muGLFEB
	 08ZpmO0DDZ0X/9sbbOD02xwxvClpydNiAvKKy4AaXHQHOILOG7oMd8Arw3x7wXgI5u
	 x/M8ajyNkOpkYS4nn3wUTg+b81c8gYbX/yXAvggojCCnTlSwxFPd9EtY+SCyOLh7l6
	 NYqL8Whmi9vNQ==
Date: Fri, 22 Mar 2024 18:02:44 +0000
From: Conor Dooley <conor@kernel.org>
To: Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	heiko@sntech.de, jacob-chen@iotwrt.com,
	ezequiel@vanguardiasur.com.ar, mchehab@kernel.org,
	sfr@canb.auug.org.au
Subject: Re: [PATCH v1 1/2] dt-bindings: media: rockchip-rga: add
 rockchip,rk3588-rga
Message-ID: <20240322-exemplify-nimbly-760eb580b203@spud>
References: <20240322052915.3507937-1-liujianfeng1994@gmail.com>
 <20240322052915.3507937-2-liujianfeng1994@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240322052915.3507937-2-liujianfeng1994@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_110251_102788_A0ABEF4B 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============3143163960748411857=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3143163960748411857==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="QEz8+7jKQmViUp2d"
Content-Disposition: inline


--QEz8+7jKQmViUp2d
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 22, 2024 at 01:29:14PM +0800, Jianfeng Liu wrote:
> Add a new compatible for the rk3588 Rockchip SoC, which also features an
> RGA, which is called RGA2 in the TRM Part2. It is the same core as used
> on the rk3288 and rk3568, which documents the same RGA2.
>=20
> Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--QEz8+7jKQmViUp2d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZf3HxAAKCRB4tDGHoIJi
0uvyAP9rl+bMFQbx1J0oIWtHbzYAN5mf5Acthk+OHV+5zjkORAEAnu33smhHZkfC
/LbDCrNY/h+TUvv6Xh6UDO4ZiYGfOwE=
=KlYs
-----END PGP SIGNATURE-----

--QEz8+7jKQmViUp2d--


--===============3143163960748411857==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3143163960748411857==--

