Return-Path: <SRS0=Bn3x=DG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83EF1C4346E
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2020 06:53:26 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ED1DF206B7
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2020 06:53:25 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="xnbWwFvd"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org ED1DF206B7
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OTDe4tOixoOEJxZNGRnyS3USvtvcw/CIVvTFQDaTsaA=; b=xnbWwFvdMTy0qeNHjWLNeKfHN
	Ey4msrpcn6NxMi9rccVo5/dAUVaZVqicj8lly032YeMWMkVnIlgKTRiKu/jviIisj/GL9yj+gS49q
	j63v27xktvj6Ax/xotWuGeU8SopV3hBlomo8aFKToQfI+EQZe7sXXi9jhb5+kL7aZi9CuFsp4yH1o
	nKDG2Rhr9uTncVVN7ap5CfHlK7YHPNpVrqo+GVXWi2+c8scIdWMoTfgLG07Axu+l9R6akyF1gOC6t
	o5gKv7/9uqNVlzbJ6buhvdS/AXJtQcmR235w8yLmFDFvaAXYFXu+THsgre5IHosUaAEjmyzsr7Gpn
	JK5KbP/hQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kN9Vl-0007EZ-MH; Tue, 29 Sep 2020 06:53:17 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kN9Vh-0007E0-HN; Tue, 29 Sep 2020 06:53:14 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id C20E5AA55;
 Tue, 29 Sep 2020 06:53:10 +0000 (UTC)
Subject: Re: [PATCH v1 1/2] drm/rockchip: fix build due to undefined
 drm_gem_cma_vm_ops
To: Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org,
 Heiko Stuebner <heiko@sntech.de>
References: <20200925215524.2899527-1-sam@ravnborg.org>
 <20200925215524.2899527-2-sam@ravnborg.org>
From: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <83650213-3b09-aea0-4485-cd20de1d9548@suse.de>
Date: Tue, 29 Sep 2020 08:53:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200925215524.2899527-2-sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200929_025313_798321_65D710C4 
X-CRM114-Status: GOOD (  22.08  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-rockchip@lists.infradead.org, stable@vger.kernel.org,
 Sandy Huang <hjc@rock-chips.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3448484804752684650=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3448484804752684650==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="6YHHtMbT7KHuJuTcxyCa8HKASYuntrLh1"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--6YHHtMbT7KHuJuTcxyCa8HKASYuntrLh1
Content-Type: multipart/mixed; boundary="a4Uvht4Eoz86hwhsz3CYNBhxRUzoaASBQ";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org,
 Heiko Stuebner <heiko@sntech.de>
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Sandy Huang <hjc@rock-chips.com>, stable@vger.kernel.org
Message-ID: <83650213-3b09-aea0-4485-cd20de1d9548@suse.de>
Subject: Re: [PATCH v1 1/2] drm/rockchip: fix build due to undefined
 drm_gem_cma_vm_ops
References: <20200925215524.2899527-1-sam@ravnborg.org>
 <20200925215524.2899527-2-sam@ravnborg.org>
In-Reply-To: <20200925215524.2899527-2-sam@ravnborg.org>

--a4Uvht4Eoz86hwhsz3CYNBhxRUzoaASBQ
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Sam

Am 25.09.20 um 23:55 schrieb Sam Ravnborg:
> Commit 0d590af3140d ("drm/rockchip: Convert to drm_gem_object_funcs")
> introduced the following build error:
>=20
> rockchip_drm_gem.c:304:13: error: =E2=80=98drm_gem_cma_vm_ops=E2=80=99 =
undeclared here
>   304 |  .vm_ops =3D &drm_gem_cma_vm_ops,
>       |             ^~~~~~~~~~~~~~~~~~
>       |             drm_gem_mmap_obj
>=20
> Fixed by adding missing include file.
>=20
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>

Didn't you review exactly this change yesterday? Anyway, you should add

Fixes: 0d590af3140d ("drm/rockchip: Convert to drm_gem_object_funcs")

and

Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>

It might happen that I land my patch first, depending on the urgency of
the issue.

Best regards
Thomas

> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Sandy Huang <hjc@rock-chips.com>
> Cc: "Heiko St=C3=BCbner" <heiko@sntech.de>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/=
drm/rockchip/rockchip_drm_gem.c
> index bb3578469b03..6da15faf0192 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> @@ -10,6 +10,7 @@
> =20
>  #include <drm/drm.h>
>  #include <drm/drm_gem.h>
> +#include <drm/drm_gem_cma_helper.h>
>  #include <drm/drm_prime.h>
>  #include <drm/drm_vma_manager.h>
> =20
>=20

--=20
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 N=C3=BCrnberg, Germany
(HRB 36809, AG N=C3=BCrnberg)
Gesch=C3=A4ftsf=C3=BChrer: Felix Imend=C3=B6rffer


--a4Uvht4Eoz86hwhsz3CYNBhxRUzoaASBQ--

--6YHHtMbT7KHuJuTcxyCa8HKASYuntrLh1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQFIBAEBCAAyFiEEchf7rIzpz2NEoWjlaA3BHVMLeiMFAl9y2dUUHHR6aW1tZXJt
YW5uQHN1c2UuZGUACgkQaA3BHVMLeiOlhgf8DYDzFCpHX12ZpZHqFk3OQ9J9L89O
pGoo9DVE8T363kMseRMt4gjR/MqCz6x9iaQj5Eh+9wFomogly/P4dIiZvuWXT4qI
siLNbwiRT9VC3a4BqsI+bU938ftr+0fTV4J9BqVCr/arFBKhKldyofvXYtJK2stm
58BPLvKLF9C7aORDCFA8+YMTgIuIALOtr9k6+W3K9PqcC1oG7QdvK8Yv7cop2hI3
hD+j0qqPtI20sDcqEm2zs3vt6qMLSqvd29n3ax27FMu862XIp3n+d7v6qWhK67L8
EdEoRjJG1gFjZ5fEzhMCs+iH16OrfKAicd6sYApBCgr4rq1obJmkLjlTzA==
=qy3O
-----END PGP SIGNATURE-----

--6YHHtMbT7KHuJuTcxyCa8HKASYuntrLh1--


--===============3448484804752684650==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3448484804752684650==--

