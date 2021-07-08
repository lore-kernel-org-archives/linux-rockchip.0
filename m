Return-Path: <SRS0=gZV2=MA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 413CBC07E96
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jul 2021 12:01:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EFF416146B
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jul 2021 12:01:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EFF416146B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hQv8ZROdGepxxnlCgGJX1s+UVIGJBwqhCUPVN3ckPTc=; b=MQcfs6qnXzZsn8cbHhcoK8Z+sJ
	xdFgzBXkZq+OdzkkTeZUv/r8VC1m0Vu/PCYSl7JHUuFuZ89wQZ4a8uN2qrG1fXmYDs1hfFJ6Dv3mX
	b2D2rGyetFQZ2OygZTCD61/1O+aH7rzsNyBJ55MAye+kvLZCndqeeUmSjetEbRERCe3OQMag4+WNj
	mThVgyfQERTUHgxA+eqMyClanYZ3QfhbJ7j6r+Sl3KyQPPPeR5AuSFgqp0jBVjbVMVxSqigpKo7+v
	pkuToHB5GT+nsA1I1aX88AAGdW0OTuRr+aUCRhDXNtaoHb9Zam+MkuwpzDvc1VGwyrevYcOKeZVsi
	djgxaPQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1Six-00Gozb-90; Thu, 08 Jul 2021 12:01:47 +0000
Received: from smtp-out2.suse.de ([195.135.220.29])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1Sij-00GoxW-5b; Thu, 08 Jul 2021 12:01:34 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id BFBF8201B9;
 Thu,  8 Jul 2021 12:01:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1625745691; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=z/XC84Y8Csxe3fvQCmTMHrEy9tJGik1nSS43Bv0YSE4=;
 b=i1oLh3jlXbaIaof5XFzjQirDKFl4hmbHDxPInh1680+hXGScuAMyq9774ZGf+u/tD6Rxpe
 I3yeCN56GyLO7oEmbOCANKvacgepArNrYPk4brvLN27SudevO+UD9ZHYjFjeISnGQm8TJV
 B6+lvFIFLD7ZK/DZC4JxlO3ZPRJeBx8=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1625745691;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=z/XC84Y8Csxe3fvQCmTMHrEy9tJGik1nSS43Bv0YSE4=;
 b=wbibhFklhb2F197H6w/nIqvAl2ob/HuHrkNuPjL46VRqRgyOV8epQ1ylmrSgGg0qyJlBBY
 eYTs5zxjlsz+MzDQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 9338313BDF;
 Thu,  8 Jul 2021 12:01:31 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id ZGp2Ihvp5mAoUAAAMHmgww
 (envelope-from <tzimmermann@suse.de>); Thu, 08 Jul 2021 12:01:31 +0000
Subject: Re: [PATCH] drm/rockchip: Implement mmap as GEM object function
To: hjc@rock-chips.com, heiko@sntech.de, airlied@linux.ie, daniel@ffwll.ch
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 dri-devel@lists.freedesktop.org
References: <20210624095502.8945-1-tzimmermann@suse.de>
From: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <30a0370e-b2b6-9579-7b31-6bc7d68fc8e9@suse.de>
Date: Thu, 8 Jul 2021 14:01:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210624095502.8945-1-tzimmermann@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210708_050133_421203_C0261816 
X-CRM114-Status: GOOD (  27.26  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: multipart/mixed; boundary="===============7838851487208142098=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7838851487208142098==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="CTdv7Jmn98K7iDS4AqCQfuaXv0HI4etoz"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--CTdv7Jmn98K7iDS4AqCQfuaXv0HI4etoz
Content-Type: multipart/mixed; boundary="bwmEIjXADoZPGnv76DXn81uZ0iTjyK82w";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: hjc@rock-chips.com, heiko@sntech.de, airlied@linux.ie, daniel@ffwll.ch
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org
Message-ID: <30a0370e-b2b6-9579-7b31-6bc7d68fc8e9@suse.de>
Subject: Re: [PATCH] drm/rockchip: Implement mmap as GEM object function
References: <20210624095502.8945-1-tzimmermann@suse.de>
In-Reply-To: <20210624095502.8945-1-tzimmermann@suse.de>

--bwmEIjXADoZPGnv76DXn81uZ0iTjyK82w
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

ping for review

Am 24.06.21 um 11:55 schrieb Thomas Zimmermann:
> Moving the driver-specific mmap code into a GEM object function allows
> for using DRM helpers for various mmap callbacks.
>=20
> The respective rockchip functions are being removed. The file_operation=
s
> structure fops is now being created by the helper macro
> DEFINE_DRM_GEM_FOPS().
>=20
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
>   drivers/gpu/drm/rockchip/rockchip_drm_drv.c   | 13 +-----
>   drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c |  3 +-
>   drivers/gpu/drm/rockchip/rockchip_drm_gem.c   | 44 +++++-------------=
-
>   drivers/gpu/drm/rockchip/rockchip_drm_gem.h   |  7 ---
>   4 files changed, 15 insertions(+), 52 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/=
drm/rockchip/rockchip_drm_drv.c
> index b730b8d5d949..2e3ab573a817 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> @@ -208,16 +208,7 @@ static void rockchip_drm_unbind(struct device *dev=
)
>   	drm_dev_put(drm_dev);
>   }
>  =20
> -static const struct file_operations rockchip_drm_driver_fops =3D {
> -	.owner =3D THIS_MODULE,
> -	.open =3D drm_open,
> -	.mmap =3D rockchip_gem_mmap,
> -	.poll =3D drm_poll,
> -	.read =3D drm_read,
> -	.unlocked_ioctl =3D drm_ioctl,
> -	.compat_ioctl =3D drm_compat_ioctl,
> -	.release =3D drm_release,
> -};
> +DEFINE_DRM_GEM_FOPS(rockchip_drm_driver_fops);
>  =20
>   static const struct drm_driver rockchip_drm_driver =3D {
>   	.driver_features	=3D DRIVER_MODESET | DRIVER_GEM | DRIVER_ATOMIC,
> @@ -226,7 +217,7 @@ static const struct drm_driver rockchip_drm_driver =
=3D {
>   	.prime_handle_to_fd	=3D drm_gem_prime_handle_to_fd,
>   	.prime_fd_to_handle	=3D drm_gem_prime_fd_to_handle,
>   	.gem_prime_import_sg_table	=3D rockchip_gem_prime_import_sg_table,
> -	.gem_prime_mmap		=3D rockchip_gem_mmap_buf,
> +	.gem_prime_mmap		=3D drm_gem_prime_mmap,
>   	.fops			=3D &rockchip_drm_driver_fops,
>   	.name	=3D DRIVER_NAME,
>   	.desc	=3D DRIVER_DESC,
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c b/drivers/gp=
u/drm/rockchip/rockchip_drm_fbdev.c
> index 2fdc455c4ad7..d8418dd39d0e 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c
> @@ -7,6 +7,7 @@
>   #include <drm/drm.h>
>   #include <drm/drm_fb_helper.h>
>   #include <drm/drm_fourcc.h>
> +#include <drm/drm_prime.h>
>   #include <drm/drm_probe_helper.h>
>  =20
>   #include "rockchip_drm_drv.h"
> @@ -24,7 +25,7 @@ static int rockchip_fbdev_mmap(struct fb_info *info,
>   	struct drm_fb_helper *helper =3D info->par;
>   	struct rockchip_drm_private *private =3D to_drm_private(helper);
>  =20
> -	return rockchip_gem_mmap_buf(private->fbdev_bo, vma);
> +	return drm_gem_prime_mmap(private->fbdev_bo, vma);
>   }
>  =20
>   static const struct fb_ops rockchip_drm_fbdev_ops =3D {
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/=
drm/rockchip/rockchip_drm_gem.c
> index 7971f57436dd..63eb73b624aa 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> @@ -240,12 +240,22 @@ static int rockchip_drm_gem_object_mmap(struct dr=
m_gem_object *obj,
>   	int ret;
>   	struct rockchip_gem_object *rk_obj =3D to_rockchip_obj(obj);
>  =20
> +	/*
> +	 * Set vm_pgoff (used as a fake buffer offset by DRM) to 0 and map th=
e
> +	 * whole buffer from the start.
> +	 */
> +	vma->vm_pgoff =3D 0;
> +
>   	/*
>   	 * We allocated a struct page table for rk_obj, so clear
>   	 * VM_PFNMAP flag that was set by drm_gem_mmap_obj()/drm_gem_mmap().=

>   	 */
> +	vma->vm_flags |=3D VM_IO | VM_DONTEXPAND | VM_DONTDUMP;
>   	vma->vm_flags &=3D ~VM_PFNMAP;
>  =20
> +	vma->vm_page_prot =3D pgprot_writecombine(vm_get_page_prot(vma->vm_fl=
ags));
> +	vma->vm_page_prot =3D pgprot_decrypted(vma->vm_page_prot);
> +
>   	if (rk_obj->pages)
>   		ret =3D rockchip_drm_gem_object_mmap_iommu(obj, vma);
>   	else
> @@ -257,39 +267,6 @@ static int rockchip_drm_gem_object_mmap(struct drm=
_gem_object *obj,
>   	return ret;
>   }
>  =20
> -int rockchip_gem_mmap_buf(struct drm_gem_object *obj,
> -			  struct vm_area_struct *vma)
> -{
> -	int ret;
> -
> -	ret =3D drm_gem_mmap_obj(obj, obj->size, vma);
> -	if (ret)
> -		return ret;
> -
> -	return rockchip_drm_gem_object_mmap(obj, vma);
> -}
> -
> -/* drm driver mmap file operations */
> -int rockchip_gem_mmap(struct file *filp, struct vm_area_struct *vma)
> -{
> -	struct drm_gem_object *obj;
> -	int ret;
> -
> -	ret =3D drm_gem_mmap(filp, vma);
> -	if (ret)
> -		return ret;
> -
> -	/*
> -	 * Set vm_pgoff (used as a fake buffer offset by DRM) to 0 and map th=
e
> -	 * whole buffer from the start.
> -	 */
> -	vma->vm_pgoff =3D 0;
> -
> -	obj =3D vma->vm_private_data;
> -
> -	return rockchip_drm_gem_object_mmap(obj, vma);
> -}
> -
>   static void rockchip_gem_release_object(struct rockchip_gem_object *r=
k_obj)
>   {
>   	drm_gem_object_release(&rk_obj->base);
> @@ -301,6 +278,7 @@ static const struct drm_gem_object_funcs rockchip_g=
em_object_funcs =3D {
>   	.get_sg_table =3D rockchip_gem_prime_get_sg_table,
>   	.vmap =3D rockchip_gem_prime_vmap,
>   	.vunmap	=3D rockchip_gem_prime_vunmap,
> +	.mmap =3D rockchip_drm_gem_object_mmap,
>   	.vm_ops =3D &drm_gem_cma_vm_ops,
>   };
>  =20
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.h b/drivers/gpu/=
drm/rockchip/rockchip_drm_gem.h
> index 5a70a56cd406..47c1861eece0 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.h
> @@ -34,13 +34,6 @@ rockchip_gem_prime_import_sg_table(struct drm_device=
 *dev,
>   int rockchip_gem_prime_vmap(struct drm_gem_object *obj, struct dma_bu=
f_map *map);
>   void rockchip_gem_prime_vunmap(struct drm_gem_object *obj, struct dma=
_buf_map *map);
>  =20
> -/* drm driver mmap file operations */
> -int rockchip_gem_mmap(struct file *filp, struct vm_area_struct *vma);
> -
> -/* mmap a gem object to userspace. */
> -int rockchip_gem_mmap_buf(struct drm_gem_object *obj,
> -			  struct vm_area_struct *vma);
> -
>   struct rockchip_gem_object *
>   	rockchip_gem_create_object(struct drm_device *drm, unsigned int size=
,
>   				   bool alloc_kmap);
>=20

--=20
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 N=C3=BCrnberg, Germany
(HRB 36809, AG N=C3=BCrnberg)
Gesch=C3=A4ftsf=C3=BChrer: Felix Imend=C3=B6rffer


--bwmEIjXADoZPGnv76DXn81uZ0iTjyK82w--

--CTdv7Jmn98K7iDS4AqCQfuaXv0HI4etoz
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEExndm/fpuMUdwYFFolh/E3EQov+AFAmDm6RsFAwAAAAAACgkQlh/E3EQov+AB
fQ//awAlpYxZCeLpyqjWWOEURZl7agv2KjhOJfTMXo5oGaqxXRf/leTtvf7IVNMfMPFwYegjOt17
LIuKNy91qXO4ZanI+yuMyMF0nwav7caFB8n5lhocCB9TsnCm3Xr0ciOoVbH6VA+shcjznvXYLjta
ZfROcyCvDY1/Wfi+EAgtG8wzFzXgJZrXOw/mHjXx26HiXk+EFQ/Gn/ADFGoIp6yz+LFqD5ChSWMq
4Qflx8pr46PfojV3P3DU0QpNSDClkLnh/5qMr1HOFSyGqcGuw2mf4lxjmfPS3Z2R7YjWtMSAKSXd
xaWjf789APtN7gVlZm1eOOEx7skYuULK4dJPaoCEZ3oOlW9V8X9AW7qNwBRcE4e1ixG0uoke6/Ok
Cqmvu2e53P436nOWcNW+CbN/xI2wutkwsJdO3TBKb8csm/Y8xs5yAkrjpPC6HqO+tndWOl8Xa5Pb
zSRpnvy/6oFa+4Tdp+TMVOHKk0VTjzk7Pred9WP6SKiBC0QSai4hmTA8DltiqqawymWggs9jkHLA
m2CAfbPuHPpQUdeMX6HaWgYRCk7zg/ldZF6EG7eDouwsiYkrUNs6YZEtZiTupervbjgYZ4vpLDZb
KLP7cZT0Y3CHWk0vPI7hjYoda5l3THeDodlH8aqG1Mhyqe/21lAGMYHEjAXsPWmjP2DsxFTbDf1M
rn8=
=bWCU
-----END PGP SIGNATURE-----

--CTdv7Jmn98K7iDS4AqCQfuaXv0HI4etoz--


--===============7838851487208142098==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7838851487208142098==--

