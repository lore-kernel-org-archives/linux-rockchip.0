Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A7CCECE564
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Sep 2024 09:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O+n94FZ99sahXjcEqhmlXhXFtfv7oyIk1gPPQnYrNng=; b=h2yEvrhjXxOsKVegTyky4kcv04
	QR3BCsFHzZAKIecjxSUsG7ce7sHDkxpjomqGNHaA5XJJcNhu/1MTBobcBtlFvJuCntKiAKa1C6reK
	RvUShauNs6fUV3cIffkK8LZRORQQQyU0l+mWxWQMEmN9FPEZbNIhyKq5vffKTjNE4qdV7pA2/1hTV
	0yMMZxyqR+XF+R29phYB0/tKz6LfqhAqryFRpQQkQk05hR7mr5lZi9yc2m1otpr2QnGtMrx3OWVwb
	axoowoan0YdTiHzoWoInKWRVRj3dS8QMqAnP/oGrIAf5/Nr7UvFyJHJpAGt+NUTz14Gw8NvWtxOQy
	JK08T6rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snxeE-0000000585f-2pXT;
	Tue, 10 Sep 2024 09:58:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snxcW-000000057kn-02X6
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Sep 2024 09:57:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1snxcI-0005Uj-OW; Tue, 10 Sep 2024 11:56:58 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1snxcH-006rjx-55; Tue, 10 Sep 2024 11:56:57 +0200
Received: from pengutronix.de (pd9e595f8.dip0.t-ipconnect.de [217.229.149.248])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id C2D713375DD;
	Tue, 10 Sep 2024 09:56:56 +0000 (UTC)
Date: Tue, 10 Sep 2024 11:56:56 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Simon Horman <horms@kernel.org>, Nathan Chancellor <nathan@kernel.org>
Cc: kernel@pengutronix.de, Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Heiko Stuebner <heiko@sntech.de>, linux-can@vger.kernel.org, netdev@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, llvm@lists.linux.dev, 
	patches@lists.linux.dev
Subject: Re: [PATCH] can: rockchip_canfd: fix return type of
 rkcanfd_start_xmit()
Message-ID: <20240910-utopian-meticulous-dodo-4ec230-mkl@pengutronix.de>
References: <20240906-rockchip-canfd-wifpts-v1-1-b1398da865b7@kernel.org>
 <20240909084448.GU2097826@kernel.org>
 <20240909-arcane-practical-petrel-015d24-mkl@pengutronix.de>
 <20240909143546.GX2097826@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240909143546.GX2097826@kernel.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_025712_217048_19861245 
X-CRM114-Status: GOOD (  29.33  )
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
Content-Type: multipart/mixed; boundary="===============5150905704349865617=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5150905704349865617==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mtff2ca2w5gsezcq"
Content-Disposition: inline


--mtff2ca2w5gsezcq
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 09.09.2024 15:35:46, Simon Horman wrote:
> On Mon, Sep 09, 2024 at 10:57:06AM +0200, Marc Kleine-Budde wrote:
> > On 09.09.2024 09:44:48, Simon Horman wrote:
> > > On Fri, Sep 06, 2024 at 01:26:41PM -0700, Nathan Chancellor wrote:
> > > > With clang's kernel control flow integrity (kCFI, CONFIG_CFI_CLANG),
> > > > indirect call targets are validated against the expected function
> > > > pointer prototype to make sure the call target is valid to help mit=
igate
> > > > ROP attacks. If they are not identical, there is a failure at run t=
ime,
> > > > which manifests as either a kernel panic or thread getting killed. A
> > > > warning in clang aims to catch these at compile time, which reveals:
> > > >=20
> > > >   drivers/net/can/rockchip/rockchip_canfd-core.c:770:20: error: inc=
ompatible function pointer types initializing 'netdev_tx_t (*)(struct sk_bu=
ff *, struct net_device *)' (aka 'enum netdev_tx (*)(struct sk_buff *, stru=
ct net_device *)') with an expression of type 'int (struct sk_buff *, struc=
t net_device *)' [-Werror,-Wincompatible-function-pointer-types-strict]
> > > >     770 |         .ndo_start_xmit =3D rkcanfd_start_xmit,
> > > >         |                           ^~~~~~~~~~~~~~~~~~
> > > >=20
> > > > ->ndo_start_xmit() in 'struct net_device_ops' expects a return type=
 of
> > > > 'netdev_tx_t', not 'int' (although the types are ABI compatible). A=
djust
> > > > the return type of rkcanfd_start_xmit() to match the prototype's to
> > > > resolve the warning.
> > > >=20
> > > > Fixes: ff60bfbaf67f ("can: rockchip_canfd: add driver for Rockchip =
CAN-FD controller")
> > > > Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> > >=20
> > > Thanks, I was able to reproduce this problem at build time
> > > and that your patch addresses it.
> >=20
> > FTR: the default clang in Debian unstable, clang-16.0.6 doesn't support
> > this. With clang-20 from experimental it works, haven't checked older
> > versions, though.
>=20
> FTR: I checked using 18.1.8 from here [1][2].
>=20
> [1] https://mirrors.edge.kernel.org/pub/tools/llvm/
> [2] https://mirrors.edge.kernel.org/pub/tools/llvm/files/

I was a bit hasty yesterday, clang-20 and W=3D1 produces these errors:

| include/linux/vmstat.h:517:36: error: arithmetic between different enumer=
ation types ('enum node_stat_item' and 'enum lru_list') [-Werror,-Wenum-enu=
m-conversion]
|   517 |         return node_stat_name(NR_LRU_BASE + lru) + 3; // skip "nr=
_"
|       |                               ~~~~~~~~~~~ ^ ~~~
| 1 error generated.

However I fail to reproduce the ndo_start_xmit problem. Even with 18.1.8
=66rom kernel.org.


The following command (ARCH is unset, compiling x86 -> x86) produces the
above shown "vmstat.h" problems....

| $ make LLVM=3D1 LLVM_IAS=3D1 LLVM_SUFFIX=3D-20 drivers/net/can/rockchip/ =
 W=3D1 CONFIG_WERROR=3D0

=2E.. but not the ndo_start_xmit problem.


Am I missing a vital .config option?

| $ grep "CLANG\|CFI" .config
| CONFIG_CC_IS_CLANG=3Dy
| CONFIG_CLANG_VERSION=3D200000
| CONFIG_CFI_AUTO_DEFAULT=3Dy
| CONFIG_FUNCTION_PADDING_CFI=3D11
| CONFIG_LTO_CLANG=3Dy
| CONFIG_ARCH_SUPPORTS_LTO_CLANG=3Dy
| CONFIG_ARCH_SUPPORTS_LTO_CLANG_THIN=3Dy
| CONFIG_HAS_LTO_CLANG=3Dy
| CONFIG_LTO_CLANG_THIN=3Dy
| CONFIG_ARCH_SUPPORTS_CFI_CLANG=3Dy
| CONFIG_ARCH_USES_CFI_TRAPS=3Dy
| CONFIG_CFI_CLANG=3Dy
| # CONFIG_CFI_PERMISSIVE is not set


V=3D1 gives this output:

|   clang-20 -Wp,-MMD,drivers/net/can/rockchip/.rockchip_canfd-core.o.d
|   -nostdinc -Iarch/x86/include -I./arch/x86/include/generated
|   -Iinclude -I./include -Iarch/x86/include/uapi
|   -I./arch/x86/include/generated/uapi -Iinclude/uapi
|   -I./include/generated/uapi -include include/linux/compiler-version.h
|   -include include/linux/kconfig.h -include
|   include/linux/compiler_types.h -D__KERNEL__
|   --target=3Dx86_64-linux-gnu -fintegrated-as
|   -Werror=3Dunknown-warning-option -Werror=3Dignored-optimization-argument
|   -Werror=3Doption-ignored -Werror=3Dunused-command-line-argument
|   -fmacro-prefix-map=3D=3D -Wundef -DKBUILD_EXTRA_WARN1 -std=3Dgnu11
|   -fshort-wchar -funsigned-char -fno-common -fno-PIE
|   -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx
|   -fcf-protection=3Dbranch -fno-jump-tables -m64 -falign-loops=3D1
|   -mno-80387 -mno-fp-ret-in-387 -mstack-alignment=3D8 -mskip-rax-setup
|   -mtune=3Dgeneric -mno-red-zone -mcmodel=3Dkernel -Wno-sign-compare
|   -fno-asynchronous-unwind-tables -mretpoline-external-thunk
|   -mindirect-branch-cs-prefix -mfunction-return=3Dthunk-extern
|   -fpatchable-function-entry=3D11,11 -fno-delete-null-pointer-checks -O2
|   -fstack-protector-strong -fomit-frame-pointer
|   -fno-stack-clash-protection -fno-lto -flto=3Dthin -fsplit-lto-unit
|   -fvisibility=3Dhidden -fsanitize=3Dkcfi -falign-functions=3D16
|   -fstrict-flex-arrays=3D3 -fno-strict-overflow -fno-stack-check -Wall
|   -Wundef -Werror=3Dimplicit-function-declaration -Werror=3Dimplicit-int
|   -Werror=3Dreturn-type -Werror=3Dstrict-prototypes -Wno-format-security
|   -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member
|   -Wmissing-declarations -Wmissing-prototypes -Wframe-larger-than=3D2048
|   -Wno-gnu -Wvla -Wno-pointer-sign -Wcast-function-type
|   -Wimplicit-fallthrough -Werror=3Ddate-time
|   -Werror=3Dincompatible-pointer-types -Wenum-conversion -Wextra
|   -Wunused -Wmissing-format-attribute -Wmissing-include-dirs
|   -Wunused-const-variable -Wno-missing-field-initializers
|   -Wno-type-limits -Wno-shift-negative-value -Wno-sign-compare
|   -Wno-unused-parameter -g -gdwarf-5 -DDEBUG
|   -Idrivers/net/can/rockchip -Idrivers/net/can/rockchip -DMODULE
|   -DKBUILD_BASENAME=3D'"rockchip_canfd_core"'
|   -DKBUILD_MODNAME=3D'"rockchip_canfd"'
|   -D__KBUILD_MODNAME=3Dkmod_rockchip_canfd -c -o
|   drivers/net/can/rockchip/rockchip_canfd-core.o
|   drivers/net/can/rockchip/rockchip_canfd-core.c
| In file included from drivers/net/can/rockchip/rockchip_canfd-core.c:25:
| In file included from drivers/net/can/rockchip/rockchip_canfd.h:11:
| In file included from include/linux/can/dev.h:18:
| In file included from include/linux/can/bittiming.h:9:
| In file included from include/linux/netdevice.h:38:
| In file included from include/net/net_namespace.h:43:
| In file included from include/linux/skbuff.h:17:
| In file included from include/linux/bvec.h:10:
| In file included from include/linux/highmem.h:8:
| In file included from include/linux/cacheflush.h:5:
| In file included from arch/x86/include/asm/cacheflush.h:5:
| In file included from include/linux/mm.h:2232:
| include/linux/vmstat.h:517:36: warning: arithmetic between different enum=
eration types ('enum node_stat_item' and 'enum lru_list') [-Wenum-enum-conv=
ersion]
|   517 |         return node_stat_name(NR_LRU_BASE + lru) + 3; // skip "nr=
_"
|       |                               ~~~~~~~~~~~ ^ ~~~
| 1 warning generated.

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--mtff2ca2w5gsezcq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmbgF+UACgkQKDiiPnot
vG+I2wf/Uov3eSkXqoiq4vrvpJA6Vt32qVb9Rx0KaydYu9oBuUvIlztrXujb0uhA
+Z40eWCMvfkfXu35Lr/bMXmii8tKJc7NebFPfYXaCiFgeQ+DbW1mTzhF6IP4zph8
Oc95A+P0vjPwbDbE45ybEuJeOY7CehIC8Ow6fDHgMdbv8/LAISg1cfJhVQai5Ll4
/LkmzzJb+XCx1ZlCDM6AKg7lqwqzi/jGFc0DG9gICA2LVr8hc8qxDouiLoZyrbgo
JkBHf0DkV+xtE+exKufX75BnCMEwRS5+8Ocxml69V1CJHdNmk7SWkJ1nt/lu15u8
N+wrgEqhqMVeExcK81LQAHJKFsXZUQ==
=5QMc
-----END PGP SIGNATURE-----

--mtff2ca2w5gsezcq--


--===============5150905704349865617==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5150905704349865617==--

