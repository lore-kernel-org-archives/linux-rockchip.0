Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7794FC282C6
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Mar 2025 22:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s+BSXPOLmwxp60tphWCqy34MT1aWVmudcqwCLZxQTUg=; b=X82biX1UBlbrWgB2Z+VgYwoijr
	Km59BWIjwizoOJGKUAzaqCuV3uvOZMiZe/EKKfW6jTBfvsnQc174Y3afaNdty7W963P6GCaNpJPRc
	+ta9KKEN7dh+Zg8ps/kNlLbAmDQUWy0q2nAilyxNkQy3rUU3wm9vFKr0sEMFcdPJPxZCXMT/vxR4B
	D9U13xPmQP3CNu6ly0kdjutb+JMI0wuSFpoeKbS/i7Yl3vA2dtRDP3YkOhHELw02aZ0w+/uDnAHQs
	HZOZw4e3xLliL6tPBUM0RzjgLm6/jJo1DdHnKcDCmrM+ybmMUzo2+jCCaVfYWBT/kKN5zmLbLbgGB
	amRyclqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpEOu-00000002TxC-3E8m;
	Mon, 03 Mar 2025 22:36:40 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpENJ-00000002Tip-2RfT;
	Mon, 03 Mar 2025 22:35:03 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1741041289; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=GejOG25tOtoCkI+YE4XWkXsIJPTBWqb+UgfAZAhzlcVlFx9TguIJRiy9aXih8TMNzNXFoykF46L1KF5uZzmPH67AFFvZGfVGOyKq9Icxm1FNk9WPJKL42JFMvK1yyKWSfxwhDxSWwGef6Ha5YdFqL7L+H1VF5CHYgB1OBaQgG30=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1741041289; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=PlUzblDYEjYCS98Pl5aItUlNWLm0f3R52njwTiqqC3s=; 
	b=kLzuwD/FsZ3wdDjrs1pSvD1Fzroo3ViwPQTfll2/3Ks3yAKQqwCqOou5tngdoqL3E6VlfzJ7S4EfIOfTi4Q8i331OGfGoDRiZ4T45XzuIhuKQoyGgwDoxVbUOnri+0cq2YxANGAe9g2+bhHPlvjjSI/vPcsoSP4EGdSQYXwTS9w=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1741041289;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=PlUzblDYEjYCS98Pl5aItUlNWLm0f3R52njwTiqqC3s=;
	b=QA68lz2y9nqvEmAh+PsVrmbG1C6sVQ9Fr4ZjpmixXoldvaSqhRo2v2gOpq/7iP+M
	rDXhD4MZ8svoTj4rlqTHuSqOneFkzzv3bR5SyG86l2MXv62MffBHzeNr6s30/hZzAij
	YGmZU4qFolK0P1sJv+jRZHVciMzR1j03uEgziYaM=
Received: by mx.zohomail.com with SMTPS id 1741041286829334.02204399221273;
	Mon, 3 Mar 2025 14:34:46 -0800 (PST)
Received: by venus (Postfix, from userid 1000)
	id 1766918065C; Mon, 03 Mar 2025 23:34:42 +0100 (CET)
Date: Mon, 3 Mar 2025 23:34:42 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: hjc@rock-chips.com, andy.yan@rock-chips.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] drm/rockchip: vop2: add missing bitfield.h include
Message-ID: <quj727pq3oc4xruatx7s5hob7jtcpw6zhe3wv6fhammxhejcem@eois3su6izj7>
References: <20250303182256.1727178-1-heiko@sntech.de>
MIME-Version: 1.0
In-Reply-To: <20250303182256.1727178-1-heiko@sntech.de>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.4.2/241.32.4
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250303_143501_717071_CA69C108 
X-CRM114-Status: GOOD (  14.79  )
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
Content-Type: multipart/mixed; boundary="===============4033184084249166714=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4033184084249166714==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uxnpfa7xaeh6coyf"
Content-Disposition: inline


--uxnpfa7xaeh6coyf
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] drm/rockchip: vop2: add missing bitfield.h include
MIME-Version: 1.0

Hi,

On Mon, Mar 03, 2025 at 07:22:56PM +0100, Heiko Stuebner wrote:
> Commit 328e6885996c ("drm/rockchip: vop2: Add platform specific callback")
> moved per soc configuration code to the other per-soc data into
> rockchip_vop2_reg.c, but forgot to also include bitfield.h for the used
> FIELD_PREP macro. Add this missing include.
>=20
> Fixes: 328e6885996c ("drm/rockchip: vop2: Add platform specific callback")
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202503040135.fgoyWdLB-lkp@i=
ntel.com/
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Greetings,

-- Sebastian

>  drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/gpu/d=
rm/rockchip/rockchip_vop2_reg.c
> index 0afef24db144..f86a30df94aa 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> @@ -4,6 +4,7 @@
>   * Author: Andy Yan <andy.yan@rock-chips.com>
>   */
> =20
> +#include <linux/bitfield.h>
>  #include <linux/kernel.h>
>  #include <linux/component.h>
>  #include <linux/mod_devicetable.h>
> --=20
> 2.47.2
>=20

--uxnpfa7xaeh6coyf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmfGLnsACgkQ2O7X88g7
+prXag/+MoxGEPpemJ0hBwdSLvlh08UR3FhUgUQ07dWpX+Jn/qz1RSQi2zxlnFqp
gizw7mzUOFbi0+dXZhXOKCKmTa4jdP+SGujt0DBs4psQHQPMRrtokVb+N4IKKKDd
zH7hfzTI/FFEXjU4ayhYVsezc/5ilTrOcax9WDFuEeFVm8ORr8ntdg+vOYoXEPVa
kADBpAn23oPmHbHZCrtRUCN5eomaWiUxYJAW6vBAZs24D8Ne+JmvC2oekhasY1V+
5S9eVwkDncNSyipWAzFBSV2GM4NLKDXnurNc1GqOFJlH4R6o8dhGpTHxagizkba5
JmYqI8+Kc+FO3NyXL0mSOvMVduXJEqPFetIhn9KC4B0UDPoK63I1bXmAgh0wdyK8
Ge5heyM4TD6/L0Mu57aCZJjAwCyW2+ImB9EyXlN6pG8vyd5K7FDY3nEBPf7Pm+Y4
msgCWZmYeTMPYvKhoY1bvF8io19wFOATKNJZAiyFwGYKea3F53QWF7dSNahmq8Pj
PepbbEE20SxuKfK+ceiOb4KlzsRA2z5lL2+f04rej8AANsU6EPFkhNjRsruy26wL
dXocafGEvZChcpqS8EnJDjwVreEdUjFJbFca9E+LVEI259RAczoiv5fYkZhWuNag
23oy+R6C5o1LqVMmkLc7n0j4hzKNRzpfxDiRc7kzWLLSZb4Q4C4=
=zYzt
-----END PGP SIGNATURE-----

--uxnpfa7xaeh6coyf--


--===============4033184084249166714==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4033184084249166714==--

