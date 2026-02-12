Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B979EE368C
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Feb 2026 14:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F9VF5Dk9WVnwdfee7Ak1AyjKyhfw/Y1LvVFwr+0iRhg=; b=Cj5UAGCyJTdUFijF8ON0YkdGqB
	oA5FTSw/VjO9OkjUQvqtc/RdobicznhkxHBLhg6VdrnUci0z5ptuG2P/0BymDYD0UfwnQZ9NyPbc3
	/hF3/v3BrUD9+jryW3ntD6bv4OposRv6aYv4sZk9NzLFrFyEMeRNwhwgoVW1DeNsy7jBveD2VjSZ0
	ZeWWMK/HLQIo4pLgp38uY9bO5GSN0arTIa0qy/fL/fupVXKLsFNd4AAW4gzj0fxMBuHE/3CogmjIa
	vwzBoGMBUo1sSK5CjVaeCPvCRDEOyiptezv3rggwUzWW7bcLkH5kJ6uumvKl6T284qQFzoruuUprj
	heBky7KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqY92-00000002ES3-3nkh;
	Thu, 12 Feb 2026 14:58:18 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqY90-00000002ERM-0YEu
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Feb 2026 14:58:15 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1770908288; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=bdBJfciw+SLKHwce3M1xZeBNSh9/dUONzlxiisNvSAhA9Y/azTwPYL7lBuRhhDNN0vpXmD0e0M9w9bnORC8xpArw1JQv4Vc6Ew8HeHpRufv67M7pKk1CLOzy20GP/uxD1oFbaZghR0miSsD3zzsizXeFPmJXUMuZFMAklECth/c=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1770908288; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=ewJ17yZssUQQjHgmzfTqhJeBawC3u74ghBag/166lsk=; 
	b=EhP6TrIUfa4578JrGFn6RoN+JGO6Umocs7CWeEJjnfmRombZJWxvbZ5EobxFCaHuf7ivV7raxO3nIl+jnGSvBnvf6l9iU5G31FG+TBzMUzizyG72kmS5FtuaQ++llZzCQzVrs/O8DWMi/Sr05FaiXf9el+1W1eAlwizdHnzx1JI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1770908288;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=ewJ17yZssUQQjHgmzfTqhJeBawC3u74ghBag/166lsk=;
	b=Gvu6J4Waf/OsLu1RLrAJg6LtJ0jCuzkBxwpJI6yXyprFKG6RAAaD0yvRfbvX10Wi
	/xV2ZO95dE5GMdDvIxAfdQbOzpYKDyFm0aH0JG3xNczQHAgaJ+mzqANxqKpCOd7+C5m
	Zf+7drziXG6/xtlkLgF4rrFvuv+JTHQ4av3DBjgU=
Received: by mx.zohomail.com with SMTPS id 1770908287347603.7883798586333;
	Thu, 12 Feb 2026 06:58:07 -0800 (PST)
Received: by venus (Postfix, from userid 1000)
	id 1869F18248B; Thu, 12 Feb 2026 15:58:03 +0100 (CET)
Date: Thu, 12 Feb 2026 15:58:03 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, 
	Finley Xiao <finley.xiao@rock-chips.com>, Frank Zhang <rmxpzlb@gmail.com>, linux-pm@vger.kernel.org, 
	Detlev Casanova <detlev.casanova@collabora.com>, Heiko Stuebner <heiko@sntech.de>, 
	linux-rockchip@lists.infradead.org, stable@vger.kernel.org
Subject: Re: [PATCH] pmdomain: rockchip: Fix rkvdec0/1 and venc0/1 for RK3588
Message-ID: <aY3oqqaoAM5QtHWl@venus>
References: <1770891364-52147-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <1770891364-52147-1-git-send-email-shawn.lin@rock-chips.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.1.0.1.4.3/270.907.16
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_065814_200998_5CFA2AF0 
X-CRM114-Status: GOOD (  16.06  )
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
Content-Type: multipart/mixed; boundary="===============8317704160257227709=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8317704160257227709==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kclqcghfrdw46u3s"
Content-Disposition: inline


--kclqcghfrdw46u3s
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] pmdomain: rockchip: Fix rkvdec0/1 and venc0/1 for RK3588
MIME-Version: 1.0

Hi,

On Thu, Feb 12, 2026 at 06:16:04PM +0800, Shawn Lin wrote:
> From the RK3588 TRM Table 1-1 RK3588 Voltage Domain and Power Domain Summ=
ary,

That's Table 7-1 :)

> PD_RKVDEC0/1 and PD_VENC0/1 rely on VD_VCODEC which require extra voltage=
s to
> be applied, otherwise it breaks RK3588-evb1-v10 board after vdec support =
landed[1].
> The panic looks like below:
>=20
>   rockchip-pm-domain fd8d8000.power-management:power-controller: failed t=
o set domain 'rkvdec0' on, val=3D0
>   rockchip-pm-domain fd8d8000.power-management:power-controller: failed t=
o set domain 'rkvdec1' on, val=3D0
>   ...
>   Hardware name: Rockchip RK3588S EVB1 V10 Board (DT)
>   Workqueue: pm genpd_power_off_work_fn
>   Call trace:
>   show_stack+0x18/0x24 (C)
>   dump_stack_lvl+0x40/0x84
>   dump_stack+0x18/0x24
>   vpanic+0x1ec/0x4fc
>   vpanic+0x0/0x4fc
>   check_panic_on_warn+0x0/0x94
>   arm64_serror_panic+0x6c/0x78
>   do_serror+0xc4/0xcc
>   el1h_64_error_handler+0x3c/0x5c
>   el1h_64_error+0x6c/0x70
>   regmap_mmio_read32le+0x18/0x24 (P)
>   _regmap_bus_reg_read+0xfc/0x130
>   _regmap_read+0x188/0x1ac
>   regmap_read+0x54/0x78
>   rockchip_pd_power+0xcc/0x5f0
>   rockchip_pd_power_off+0x1c/0x4c
>   _genpd_power_off+0x84/0x120
>   genpd_power_off+0x1b4/0x260
>   genpd_power_off_work_fn+0x38/0x58
>   process_scheduled_works+0x194/0x2c4
>   worker_thread+0x2ac/0x3d8
>   kthread+0x104/0x124
>   ret_from_fork+0x10/0x20
>   SMP: stopping secondary CPUs
>   Kernel Offset: disabled
>   CPU features: 0x3000000,000e0005,40230521,0400720b
>   Memory Limit: none
>   ---[ end Kernel panic - not syncing: Asynchronous SError Interrupt ]---
>=20
> [1] https://lore.kernel.org/linux-rockchip/20251020212009.8852-2-detlev.c=
asanova@collabora.com/
> Fixes: db6df2e3fc16 ("pmdomain: rockchip: add regulator support")
> Cc: stable@vger.kernel.org
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Greetings,

-- Sebastian

> ---
>=20
>  drivers/pmdomain/rockchip/pm-domains.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/ro=
ckchip/pm-domains.c
> index 997e93c..040aa5f 100644
> --- a/drivers/pmdomain/rockchip/pm-domains.c
> +++ b/drivers/pmdomain/rockchip/pm-domains.c
> @@ -1315,10 +1315,10 @@ static const struct rockchip_domain_info rk3588_p=
m_domains[] =3D {
>  	[RK3588_PD_NPUTOP]	=3D DOMAIN_RK3588("nputop",  0x0, BIT(3),  0,       =
0x0, BIT(11), BIT(2),  0x0, BIT(1),  BIT(1),  false, false),
>  	[RK3588_PD_NPU1]	=3D DOMAIN_RK3588("npu1",    0x0, BIT(4),  0,       0x=
0, BIT(12), BIT(3),  0x0, BIT(2),  BIT(2),  false, false),
>  	[RK3588_PD_NPU2]	=3D DOMAIN_RK3588("npu2",    0x0, BIT(5),  0,       0x=
0, BIT(13), BIT(4),  0x0, BIT(3),  BIT(3),  false, false),
> -	[RK3588_PD_VENC0]	=3D DOMAIN_RK3588("venc0",   0x0, BIT(6),  0,       0=
x0, BIT(14), BIT(5),  0x0, BIT(4),  BIT(4),  false, false),
> -	[RK3588_PD_VENC1]	=3D DOMAIN_RK3588("venc1",   0x0, BIT(7),  0,       0=
x0, BIT(15), BIT(6),  0x0, BIT(5),  BIT(5),  false, false),
> -	[RK3588_PD_RKVDEC0]	=3D DOMAIN_RK3588("rkvdec0", 0x0, BIT(8),  0,      =
 0x0, BIT(16), BIT(7),  0x0, BIT(6),  BIT(6),  false, false),
> -	[RK3588_PD_RKVDEC1]	=3D DOMAIN_RK3588("rkvdec1", 0x0, BIT(9),  0,      =
 0x0, BIT(17), BIT(8),  0x0, BIT(7),  BIT(7),  false, false),
> +	[RK3588_PD_VENC0]	=3D DOMAIN_RK3588("venc0",   0x0, BIT(6),  0,       0=
x0, BIT(14), BIT(5),  0x0, BIT(4),  BIT(4),  false, true),
> +	[RK3588_PD_VENC1]	=3D DOMAIN_RK3588("venc1",   0x0, BIT(7),  0,       0=
x0, BIT(15), BIT(6),  0x0, BIT(5),  BIT(5),  false, true),
> +	[RK3588_PD_RKVDEC0]	=3D DOMAIN_RK3588("rkvdec0", 0x0, BIT(8),  0,      =
 0x0, BIT(16), BIT(7),  0x0, BIT(6),  BIT(6),  false, true),
> +	[RK3588_PD_RKVDEC1]	=3D DOMAIN_RK3588("rkvdec1", 0x0, BIT(9),  0,      =
 0x0, BIT(17), BIT(8),  0x0, BIT(7),  BIT(7),  false, true),
>  	[RK3588_PD_VDPU]	=3D DOMAIN_RK3588("vdpu",    0x0, BIT(10), 0,       0x=
0, BIT(18), BIT(9),  0x0, BIT(8),  BIT(8),  false, false),
>  	[RK3588_PD_RGA30]	=3D DOMAIN_RK3588("rga30",   0x0, BIT(11), 0,       0=
x0, BIT(19), BIT(10), 0x0, 0,       0,       false, false),
>  	[RK3588_PD_AV1]		=3D DOMAIN_RK3588("av1",     0x0, BIT(12), 0,       0x=
0, BIT(20), BIT(11), 0x0, BIT(9),  BIT(9),  false, false),
> --=20
> 2.7.4
>=20

--kclqcghfrdw46u3s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmmN6ncACgkQ2O7X88g7
+ppwDQ/+MgfaLtM2QMPFgYQWMUHMFC/mO4X+3ZKAKoQSPbnUptASff0G8voyFYfZ
Ld74ACLB5gLXtv5sIbBHw/4N6WWUZOD+XwAYyHd9ceAU2jKoWycZHP2YcuFOQROS
HND+GtGq5Yl4QFruqt2wpo7IW3bRMF0tufXeOz01o5ezyPuYFDPqWeEUQSuBXwVj
YzPrz+hUgrTjun8EzWRz73NGtO1NsQkVGarg1o8gvczEK7qyyETZNonKSksZSpBc
wHMDmuBowxqQcGPvd58gB/mGRH6WnDnZJV5Pi828STqG0kpGSkvT+XcdUcOZhWjR
OdjQJ6YkA6V+a+e+wHCw6B7AsUagiBzojzgsGPq6/pCJ+AJ4oDQuizufPJ6nSLdn
bX6/5aLfYH2Ys9sPKpKlOoNnc8xxdmmMZqSA7w7Js+XUNuZRCBN51TAkjy+0g7qx
dUneQsnJsD0SVswpbXvdCn2+xrHJ6midhpBclOxWxSVzkVILO7M6OA6Uin9G6OLw
faVkLh0SNqZ/lpI3tQ5UN5jTH7kfhp6s3LxpDVQ6CPGjKmmuGCwaZff32nx5JVh4
AsgIfwCZYbNtwm/BQx/Zb4AWN2Z5sssHxz8n0S5ZmV7UwhTNLYnrt+YyNFuKMF3l
Y8DuMDmno5RWMlldvN3R8qp0AbUi9BDyNkD3y3LbUPVRzK3p754=
=KpAz
-----END PGP SIGNATURE-----

--kclqcghfrdw46u3s--


--===============8317704160257227709==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8317704160257227709==--

