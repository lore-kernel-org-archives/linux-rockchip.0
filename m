Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55B20EB363C
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Mar 2026 22:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sRLhAZ9ZlzA7XsvdYESaWQyxrFMrW3K6qj9AXyTTM5s=; b=qkAJT4JABa7Se7w8LIANdGs4yK
	EHa5fpJbnKFCuluHlbZsHcouesVdTiC2R7YhVjNxArkEYsC3CJhCVfTP55PiOOLvqF7osbBMFy4+T
	ve+mJzFfEEBl3YcTPdefe8oUPFQTOLtcoDA6yUjLQVeCY/ck9skEeMXRvLP3UvBXQedVltL8bycRS
	s8ObS7iaazZlEdExxGdiZrG14MDyZ4WmsWHBkJhpp1JnW8TWh95ZsfAOWialfNKZrtJq8XqUFs4fI
	0m//HEH2p+zOb3btGL2lM7sxgrZlAAPtxZ9ev3CUfgz7Fv34KyIZgl/m/urwKZyNWSChvyVz4EETw
	3iHYCdwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxCBF-0000000E9iv-2gPe;
	Mon, 02 Mar 2026 22:56:01 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxCBC-0000000E9hi-0xpu
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Mar 2026 22:55:59 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1772492149; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=PA5Vyg5JJ1o6mkYIZByEs94sAGp8NKHm8ncmEqH5HF7vxyOiD4eUTr4pLSVQpca/hkrmEvuCT3+8h4EJYR44S3yLiJ20IE2x1RXW6UW4NrhfSwadyvOiX5PZo4jnrKiAVyqsoGhduspSb6k6fNZxu5VZyfHr1p26D6sathwn5oY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1772492149; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=/zdY8KHrZuIUijPdIoSdoYLMGu+rk0Tb9iREEpfohNo=; 
	b=lI7YhxZOD31+07z7vfs0KsXrAJ0I1W+9Yg0sHaPZtjwIvfSYrv8Ftqn7sMV0Q4rty/IYdyNUaf6ISQyB8FVJ4EF4RREGR0COEHPsRBYHnk0la/pwoFIlTdh7IX3bHJ4XmOT2Jb0kCGNCH8I9MWLSeCzGLkMqqpkCnEQjyqlYj2Q=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1772492149;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=/zdY8KHrZuIUijPdIoSdoYLMGu+rk0Tb9iREEpfohNo=;
	b=LLW0fW+n6DCCwrKRfbBtuS2n8xKR/023CjQ2eKRWWHSd2RYMNkal4Lzk0CtZsG+Y
	cM4+wJ2JzSIdt5mT7gZkrU1EUnM53fGRklsruE6Qggj0UHHorYCu4aXcwJ8Bi/BWPXh
	H56omdqdNVlGCCGqs872JfF1hBrja8zgsUm261ss=
Received: by mx.zohomail.com with SMTPS id 1772492147652172.17855840863865;
	Mon, 2 Mar 2026 14:55:47 -0800 (PST)
Received: by venus (Postfix, from userid 1000)
	id 0804C180411; Mon, 02 Mar 2026 23:55:44 +0100 (CET)
Date: Mon, 2 Mar 2026 23:55:44 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, 
	Finley Xiao <finley.xiao@rock-chips.com>, Frank Zhang <rmxpzlb@gmail.com>, linux-pm@vger.kernel.org, 
	Detlev Casanova <detlev.casanova@collabora.com>, Heiko Stuebner <heiko@sntech.de>, 
	linux-rockchip@lists.infradead.org, stable@vger.kernel.org, Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: Re: [PATCH v3] pmdomain: rockchip: Fix PD_VCODEC for RK3588
Message-ID: <aaYVOClMqnXIUvjf@venus>
References: <1771988101-49877-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <1771988101-49877-1-git-send-email-shawn.lin@rock-chips.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.1.1.4.3/272.480.55
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_145558_326313_99977C05 
X-CRM114-Status: GOOD (  19.04  )
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
Content-Type: multipart/mixed; boundary="===============8484400808877639883=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8484400808877639883==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4zfusrcm7v6ffvo5"
Content-Disposition: inline


--4zfusrcm7v6ffvo5
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3] pmdomain: rockchip: Fix PD_VCODEC for RK3588
MIME-Version: 1.0

Hi,

On Wed, Feb 25, 2026 at 10:55:01AM +0800, Shawn Lin wrote:
> From the RK3588 TRM Table 7-1 RK3588 Voltage Domain and Power Domain Summ=
ary,
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
>   regmap_bus_reg_read+0xfc/0x130
>   regmap_read+0x188/0x1ac
>   regmap_read+0x54/0x78
>   rockchip_pd_power+0xcc/0x5f0
>   rockchip_pd_power_off+0x1c/0x4c
>   genpd_power_off+0x84/0x120
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
> Chaoyi pointed out the PD_VCODEC is the parent of PD_RKVDEC0/1 and PD_VEN=
C0/1, so checking
> the PD_VCODEC is enough.
>=20
> [1] https://lore.kernel.org/linux-rockchip/20251020212009.8852-2-detlev.c=
asanova@collabora.com/
> Fixes: db6df2e3fc16 ("pmdomain: rockchip: add regulator support")
> Cc: stable@vger.kernel.org
> Suggested-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
>=20
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Greetings,

-- Sebastian

>=20
> Changes in v3:
> - drop tags
> - rework it for just changing PD_VCODEC(chaoyi)
>=20
> Changes in v2:
> - collect tags
> - correct TRM section(Sebastian)
>=20
>  drivers/pmdomain/rockchip/pm-domains.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/ro=
ckchip/pm-domains.c
> index 997e93c..44d3484 100644
> --- a/drivers/pmdomain/rockchip/pm-domains.c
> +++ b/drivers/pmdomain/rockchip/pm-domains.c
> @@ -1311,7 +1311,7 @@ static const struct rockchip_domain_info rk3576_pm_=
domains[] =3D {
>  static const struct rockchip_domain_info rk3588_pm_domains[] =3D {
>  	[RK3588_PD_GPU]		=3D DOMAIN_RK3588("gpu",     0x0, BIT(0),  0,       0x=
0, 0,       BIT(1),  0x0, BIT(0),  BIT(0),  false, true),
>  	[RK3588_PD_NPU]		=3D DOMAIN_RK3588("npu",     0x0, BIT(1),  BIT(1),  0x=
0, 0,       0,       0x0, 0,       0,       false, true),
> -	[RK3588_PD_VCODEC]	=3D DOMAIN_RK3588("vcodec",  0x0, BIT(2),  BIT(2),  =
0x0, 0,       0,       0x0, 0,       0,       false, false),
> +	[RK3588_PD_VCODEC]	=3D DOMAIN_RK3588("vcodec",  0x0, BIT(2),  BIT(2),  =
0x0, 0,       0,       0x0, 0,       0,       false, true),
>  	[RK3588_PD_NPUTOP]	=3D DOMAIN_RK3588("nputop",  0x0, BIT(3),  0,       =
0x0, BIT(11), BIT(2),  0x0, BIT(1),  BIT(1),  false, false),
>  	[RK3588_PD_NPU1]	=3D DOMAIN_RK3588("npu1",    0x0, BIT(4),  0,       0x=
0, BIT(12), BIT(3),  0x0, BIT(2),  BIT(2),  false, false),
>  	[RK3588_PD_NPU2]	=3D DOMAIN_RK3588("npu2",    0x0, BIT(5),  0,       0x=
0, BIT(13), BIT(4),  0x0, BIT(3),  BIT(3),  false, false),
> --=20
> 2.7.4
>=20
>=20

--4zfusrcm7v6ffvo5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmmmFWwACgkQ2O7X88g7
+prm0w//c/OObis4A9+I6pXVvUB0m0bE1+Jpj/1KGWaM9zA+Y7wpeE2w3GaWPdN+
UgbQ3oH/0+1QL4zZ173YeiLf8h7VqseZF+S2+6YzjWnDsEpWRBwncXrw5e0MoAPN
8L/QfhrxUOD4RDLo6rBVsA+p+y61+mEGJrNKwbTqXQn7EATEQnHzIGLcF7xIKIaB
HKiX0tQ5yspsZ3SsjeEkUfteyS2+t4g2CIoDbOv2s5gv+N4+Os2WdlbzOrew5d3c
l0NQ0wH/OOVmGR9U2YWg/tu/O65+BlXMpE7iXexJ0xynkYwzVRiTAiI8lDTJ1wbb
HivXw6EKQjbihbV9IWGkbfActInVuGVUAn494yyNBNr0F6Ro1r+JR2Fm4sDwBEHi
yH3ZAShn0sPmrxi0lZ4+5QD+PDtrkyBfYMAQXHJJwoWs8hf3pDZ8k2uJei5sjCne
QXmIJlalS3cv7Kxhq09V46NiMSFhB7aPweQUj8oZFTmIhXzQIPZMI/sp0zoi2Ztr
J9vmq1bNsyGI5hFIedF4ZJ5CilQqmSHbedzXEgVcJCRXAeqI0yQyTzL6L4+BJVg7
CVIQLNdXdI+FM89hITqgD3fYjhFXrlCelppNeSit9RtuOoJhaYbrS4MdkfbDj7FX
W592zfgPsMbHVkxj4AwGm4AOl6VVvCPtm7UAFFSP5iMQJeYBs20=
=Wz7p
-----END PGP SIGNATURE-----

--4zfusrcm7v6ffvo5--


--===============8484400808877639883==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8484400808877639883==--

