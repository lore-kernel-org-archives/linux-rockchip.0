Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 777B8CDB474
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Oct 2023 17:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XatyG5VvRnXjy1KHMUudUzL2RItXgzYqET3dbc3oZ/0=; b=Hw9kI3NPj0chQZ1Om87Ie0PS+3
	N0ZYGETMy3fsy+K4/fVXBY7/QGgQjoR92QFT7pA15gkeoOAVPqLT+eqaPSR2p9mX+oPNC+wCpw4fT
	s/BCh0DVm20hgHut9DhPghIJH6fpur70qRWsnEF66TRi6W/cZFCe1Goas0TpNeUgUYXvSHJQMrPwo
	DSvpCiglrzKoYZUY3yg+TQ08M1UYiO2vZkRfgVzaXyeLRk1KlgM23+3XMcJd5uN/0Fl52Kd0JpL//
	wW2AiMep77p/z7P8T4jrQBjRm7sBm+mdiIvp1aB41pgpHYYRlfZgCi6DH1TylDDkfhJUfZEQaimUq
	efyxWwsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qttW0-002mng-1Z;
	Fri, 20 Oct 2023 17:42:28 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qttVx-002mme-0F;
	Fri, 20 Oct 2023 17:42:26 +0000
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 41AD3660737B;
	Fri, 20 Oct 2023 18:42:20 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697823740;
	bh=61vCDd/sNXFMkRx1cJTA4jU6t54DUXmsCc85UIZ8QtQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=X7SlevR3PHykdfwk7rOnw+QtXkDIyQqybO09uN6u1F1kY3Af9YEAJIoW1HI5uQYIv
	 x93rnq+YA1/9UHmefX/YL0F9szvMlquJRbDQlNT1lCxL6/xXetWCk877FT9LRwrUDU
	 9kxL/IltSqZkMabFc2N6mIMg1e2xScONIutc/rhJ/jxrM3azJymAE/41Qxvc6bfoqF
	 x5Fa0nOuswF05bjIo0dIqCwZjLVDVnofO0+8PRWPc740WYlzsyJV8r4DSSPUnD7ID5
	 +GHp+0ewSf9L2dJJZxo7i1AP8p0ygxGfXeFv/yAGYKDzTguKOad4DnBz2KPu0CpPdq
	 O8VR5JxueDfvQ==
Received: by mercury (Postfix, from userid 1000)
	id 7EDFF10603FC; Fri, 20 Oct 2023 19:42:17 +0200 (CEST)
Date: Fri, 20 Oct 2023 19:42:17 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, kever.yang@rock-chips.com,
	heiko@sntech.de, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, huangtao@rock-chips.com,
	andy.yan@rock-chips.com
Subject: Re: [PATCH v4 0/4] rockchip: add GATE_LINK
Message-ID: <20231020174217.py6tqwm4wenppltl@mercury.elektranox.org>
References: <20231018070144.8512-1-zhangqing@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20231018070144.8512-1-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231020_104225_406504_472EAC36 
X-CRM114-Status: GOOD (  20.09  )
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
Content-Type: multipart/mixed; boundary="===============8102367853424997008=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8102367853424997008==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="u4p4mgloo6pn3xch"
Content-Disposition: inline


--u4p4mgloo6pn3xch
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Oct 18, 2023 at 03:01:40PM +0800, Elaine Zhang wrote:
> Recent Rockchip SoCs have a new hardware block called Native Interface
> Unit (NIU), which gates clocks to devices behind them. These effectively
> need two parent clocks.
> Use GATE_LINK to handle this.
>=20
> change in v4:
> [PATCH v4 1/4]: No change
> [PATCH v4 2/4]: No change
> [PATCH v4 3/4]: dropping CLK_NR_CLKS,reword commit message
> [PATCH v4 4/4]: No change
>=20
> change in V3:
> [PATCH v3 1/4]: new, export clk_gate_endisable for PATCH2.
> [PATCH v3 2/4]: reuse clk_gate_endisable and clk_gate_is_enabled.
>                 add prepare and unprepare ops.
> [PATCH v3 3/4]: No change
> [PATCH v3 4/4]: reword commit message
>=20
> change in V2:
> [PATCH v2 1/3]: fix reported warnings
> [PATCH v2 2/3]: Bindings submit independent patches
> [PATCH v2 3/3]: fix reported warnings
>=20
> Elaine Zhang (4):
>   clk: gate: export clk_gate_endisable
>   clk: rockchip: add support for gate link
>   dt-bindings: clock: rk3588: export PCLK_VO1GRF clk id
>   clk: rockchip: rk3588: Adjust the GATE_LINK parameter
>=20
>  drivers/clk/clk-gate.c                        |   3 +-
>  drivers/clk/rockchip/Makefile                 |   1 +
>  drivers/clk/rockchip/clk-gate-link.c          | 120 ++++++++++++++++++
>  drivers/clk/rockchip/clk-rk3588.c             | 110 ++++++++--------
>  drivers/clk/rockchip/clk.c                    |   7 +
>  drivers/clk/rockchip/clk.h                    |  22 ++++
>  .../dt-bindings/clock/rockchip,rk3588-cru.h   |   2 +-
>  include/linux/clk-provider.h                  |   1 +
>  8 files changed, 213 insertions(+), 53 deletions(-)
>  create mode 100644 drivers/clk/rockchip/clk-gate-link.c

I get this with the patchset applied:

Oct 20 18:25:04 rk3588-evb1 kernel: clk: Disabling unused clocks
Oct 20 18:25:04 rk3588-evb1 kernel: ------------[ cut here ]------------
Oct 20 18:25:04 rk3588-evb1 kernel: hclk_rkvenc0 already disabled
Oct 20 18:25:04 rk3588-evb1 kernel: WARNING: CPU: 4 PID: 1 at drivers/clk/c=
lk.c:1090 clk_core_disable+0x1b0/0x1e0
Oct 20 18:25:04 rk3588-evb1 kernel: Modules linked in:
Oct 20 18:25:04 rk3588-evb1 kernel: CPU: 4 PID: 1 Comm: swapper/0 Not taint=
ed 6.6.0-rc6-00044-g31c3dbd16ca1 #1120
Oct 20 18:25:04 rk3588-evb1 kernel: Hardware name: Rockchip RK3588 EVB1 V10=
 Board (DT)
Oct 20 18:25:04 rk3588-evb1 kernel: pstate: 604000c9 (nZCv daIF +PAN -UAO -=
TCO -DIT -SSBS BTYPE=3D--)
Oct 20 18:25:04 rk3588-evb1 kernel: pc : clk_core_disable+0x1b0/0x1e0
Oct 20 18:25:04 rk3588-evb1 kernel: lr : clk_core_disable+0x1b0/0x1e0
Oct 20 18:25:04 rk3588-evb1 kernel: sp : ffff8000846fbbf0
Oct 20 18:25:04 rk3588-evb1 kernel: x29: ffff8000846fbbf0 x28: ffff8000833a=
0008 x27: ffff8000830e0130
Oct 20 18:25:04 rk3588-evb1 kernel: x26: ffff800082ffcff0 x25: ffff8000830b=
9be8 x24: ffff800083236100
Oct 20 18:25:04 rk3588-evb1 kernel: x23: 000000000000104a x22: 000000000000=
0000 x21: ffff800084669000
Oct 20 18:25:04 rk3588-evb1 kernel: x20: ffff00040087ca00 x19: ffff00040087=
ca00 x18: ffffffffffffffff
Oct 20 18:25:04 rk3588-evb1 kernel: x17: ffff80008435d050 x16: ffff80008435=
cfe0 x15: 0720072007200720
Oct 20 18:25:04 rk3588-evb1 kernel: x14: 0720072007200720 x13: 072007200720=
0720 x12: 0720072007200720
Oct 20 18:25:04 rk3588-evb1 kernel: x11: 0720072007200720 x10: ffff80008407=
9890 x9 : ffff800080128a78
Oct 20 18:25:04 rk3588-evb1 kernel: x8 : 00000000ffffefff x7 : ffff80008407=
9890 x6 : 80000000fffff000
Oct 20 18:25:04 rk3588-evb1 kernel: x5 : 0000000000000000 x4 : 000000000000=
0000 x3 : 0000000000000000
Oct 20 18:25:04 rk3588-evb1 kernel: x2 : 0000000000000000 x1 : 000000000000=
0000 x0 : ffff000400a08000
Oct 20 18:25:04 rk3588-evb1 kernel: Call trace:
Oct 20 18:25:04 rk3588-evb1 kernel:  clk_core_disable+0x1b0/0x1e0
Oct 20 18:25:04 rk3588-evb1 kernel:  clk_disable+0x38/0x60
Oct 20 18:25:04 rk3588-evb1 kernel:  clk_gate_link_disable+0x2c/0x48
Oct 20 18:25:04 rk3588-evb1 kernel:  clk_disable_unused_subtree+0x104/0x270
Oct 20 18:25:04 rk3588-evb1 kernel:  clk_disable_unused_subtree+0x34/0x270
Oct 20 18:25:04 rk3588-evb1 kernel:  clk_disable_unused_subtree+0x34/0x270
Oct 20 18:25:04 rk3588-evb1 kernel:  clk_disable_unused_subtree+0x34/0x270
Oct 20 18:25:04 rk3588-evb1 kernel:  clk_disable_unused_subtree+0x34/0x270
Oct 20 18:25:04 rk3588-evb1 kernel:  clk_disable_unused_subtree+0x34/0x270
Oct 20 18:25:04 rk3588-evb1 kernel:  clk_disable_unused+0x54/0x148
Oct 20 18:25:04 rk3588-evb1 kernel:  do_one_initcall+0x48/0x2a8
Oct 20 18:25:04 rk3588-evb1 kernel:  kernel_init_freeable+0x1ec/0x3d8
Oct 20 18:25:04 rk3588-evb1 kernel:  kernel_init+0x2c/0x1f8
Oct 20 18:25:04 rk3588-evb1 kernel:  ret_from_fork+0x10/0x20
Oct 20 18:25:04 rk3588-evb1 kernel: ---[ end trace 0000000000000000 ]---
Oct 20 18:25:04 rk3588-evb1 kernel: ------------[ cut here ]------------
=2E.. (more clocks follow)

I managed to fix this by introducing some flags, that clk_disable /
clk_unprepare is only called on the linked clock if there was a
prior clk_enable/clk_prepare for it.

Apart from that this does not remove the existing GATE clocks for
pclk_vo0grf and pclk_vo1grf resulting in the following errors:

Oct 20 19:22:37 rk3588-evb1 kernel: pclk_vo0grf clk_register field
Oct 20 19:22:37 rk3588-evb1 kernel: rockchip_clk_register_branches: failed =
to register clock pclk_vo0grf: -17
Oct 20 19:22:37 rk3588-evb1 kernel: pclk_vo1grf clk_register field
Oct 20 19:22:37 rk3588-evb1 kernel: rockchip_clk_register_branches: failed =
to register clock pclk_vo1grf: -17

Last but not least I think it's better to restructure the patches a
bit:

Patch 1: Add CLK ID for PCLK_VO1GRF in the DT binding (add Fixes tag for 4f=
5ca304f202)
Patch 2: Fix clock"pclk_vo0grf" and "pclk_vo1grf" (add Fixes tag for f1c506=
d152ff)
Patch 3: Adjust GATE_LINK parameter from string to constant, but
         keep local GATE_LINK() define
Patch 4: Export clk_gate_endisable
Patch 5: Add gate-link support and remove local GATE_LINK() define from rk3=
588
Patch 6: Remove RK3588_LINKED_CLK

Greetings,

-- Sebastian

--u4p4mgloo6pn3xch
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmUyu+4ACgkQ2O7X88g7
+pp5VBAAosG0PSQuBuC4mvPRmtIDKJO5osD6ZilS/4EWjQG76xUoAiEx7eQ4HzpJ
ORfvX/fRLcE3LdJDBRu6uuQsZzpmr4DwqT6PJBjNIwHE1+UfHf5u7ve43O8WSfpJ
IVbuBMncy//QA9aSDYdYY3ZfFIct4O6NNbyz+94ep02vUnhExLzaLz3NEv34Jh84
kNfd/ChNngH4pS4MiY817ctydUXM261OqYixRpNStmDKEYNxMzsUp2F0XoZFrqXY
BdT7QtXEmeTYXqswHdNsfU0Po1jncYuXIKzcOK8IZ7NkKCd3L5oUijQHoqirZRQv
Mb0NtEwOBByleE70BPVBMCW61ZpoOdZciQHT6n2JqasVEYn8CeRqZL/obFLd6kO7
j6hk3FLFLgzDLRuqGJPFCAOLloGgupwon8rV1/4Pp1InjjJjkR7MYZ4PdRbXdGza
x7TVDDHK2sB+KoOQY9QXaLFEixcdeHCgSXci8pHRi4Y3df4lWe0ldrvPHxp+YlJ5
E3p9eVh1n6lMPrqxs8dMycovoAj7BbVO3qJmjNC9Qp//tI3AL44ANKPEFlCLExLR
+0mW3yfug3HdXw1IRzh9rkvnzUgFxi4lOH7Q27q1sGVSqYyJ8A29pJrfMljDMtax
BkmxUZsvui/vP/gDu32C0x1ciXoVksr2m1mokF6m6UB9x5iCepk=
=MYrB
-----END PGP SIGNATURE-----

--u4p4mgloo6pn3xch--


--===============8102367853424997008==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8102367853424997008==--

