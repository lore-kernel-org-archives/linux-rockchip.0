Return-Path: <SRS0=Bn3x=DG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8669C4727C
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2020 17:49:49 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 268AC207F7
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2020 17:49:48 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="vv49hAVP"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 268AC207F7
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9kAMf8S/TJV1BuiHMt6IbEki/R/EvNeKw/LWhYRun3Y=; b=vv49hAVP3sxpjVbTfqq3L4sqt
	LUiCABEzQz7YNsstXUKGDnkF6hLNhZw2nW2FMd1sB8GgwQhoaeI04ZE0UhvPzTyMRKSZpZPIX20yd
	sWDkP4KY2mTIWYqLeuE/ie2f/BcfIQ44GIBrh1GHN2YvjMSm6Nk4dvyoGY/2A/rm2K/0v2WjyciV8
	w+vOskw8kA4sZZOfgHEESe4sho9PoXwNSLKOvI4hWQwjx0BHmR3lkgv+B3w+y4jbZCFcqBc53xG4A
	Rk7bEgkJojpZrSpRs0tlYfBuGAse5EZEQw3FjsnalaWFEghZEVFBbyfizQTGsnzXOw11J2l5V9B3G
	ySt7mPveA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNJl0-0005t9-Pl; Tue, 29 Sep 2020 17:49:42 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNJkx-0005qo-3i; Tue, 29 Sep 2020 17:49:40 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 156ECAFFD;
 Tue, 29 Sep 2020 17:49:37 +0000 (UTC)
Subject: Re: [PATCH v3 2/7] drm/ttm: Add ttm_kmap_obj_to_dma_buf_map() for
 type conversion
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, airlied@linux.ie,
 daniel@ffwll.ch, sam@ravnborg.org, alexander.deucher@amd.com,
 kraxel@redhat.com, l.stach@pengutronix.de, linux+etnaviv@armlinux.org.uk,
 christian.gmeiner@gmail.com, inki.dae@samsung.com, jy0922.shim@samsung.com,
 sw0312.kim@samsung.com, kyungmin.park@samsung.com, kgene@kernel.org,
 krzk@kernel.org, yuq825@gmail.com, bskeggs@redhat.com, robh@kernel.org,
 tomeu.vizoso@collabora.com, steven.price@arm.com,
 alyssa.rosenzweig@collabora.com, hjc@rock-chips.com, heiko@sntech.de,
 hdegoede@redhat.com, sean@poorly.run, eric@anholt.net,
 oleksandr_andrushchenko@epam.com, ray.huang@amd.com,
 sumit.semwal@linaro.org, emil.velikov@collabora.com, luben.tuikov@amd.com,
 apaneers@amd.com, linus.walleij@linaro.org, melissa.srw@gmail.com,
 chris@chris-wilson.co.uk, miaoqinglang@huawei.com
References: <20200929151437.19717-1-tzimmermann@suse.de>
 <20200929151437.19717-3-tzimmermann@suse.de>
 <8fad0114-064a-4ed5-c21d-d1b4294de0a1@amd.com>
From: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <2614314a-81f7-4722-c400-68d90e48e09a@suse.de>
Date: Tue, 29 Sep 2020 19:49:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <8fad0114-064a-4ed5-c21d-d1b4294de0a1@amd.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200929_134939_376631_44F202E1 
X-CRM114-Status: GOOD (  26.86  )
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
Cc: linux-samsung-soc@vger.kernel.org, lima@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, etnaviv@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org, spice-devel@lists.freedesktop.org,
 xen-devel@lists.xenproject.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6436559326378451582=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============6436559326378451582==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="TxZtp2xZDgS8tF4LCH0pvplac5jBMMD1n"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--TxZtp2xZDgS8tF4LCH0pvplac5jBMMD1n
Content-Type: multipart/mixed; boundary="KHQT7KYakINZF3D85LRV0AG8BWDH6IVnP";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, airlied@linux.ie,
 daniel@ffwll.ch, sam@ravnborg.org, alexander.deucher@amd.com,
 kraxel@redhat.com, l.stach@pengutronix.de, linux+etnaviv@armlinux.org.uk,
 christian.gmeiner@gmail.com, inki.dae@samsung.com, jy0922.shim@samsung.com,
 sw0312.kim@samsung.com, kyungmin.park@samsung.com, kgene@kernel.org,
 krzk@kernel.org, yuq825@gmail.com, bskeggs@redhat.com, robh@kernel.org,
 tomeu.vizoso@collabora.com, steven.price@arm.com,
 alyssa.rosenzweig@collabora.com, hjc@rock-chips.com, heiko@sntech.de,
 hdegoede@redhat.com, sean@poorly.run, eric@anholt.net,
 oleksandr_andrushchenko@epam.com, ray.huang@amd.com,
 sumit.semwal@linaro.org, emil.velikov@collabora.com, luben.tuikov@amd.com,
 apaneers@amd.com, linus.walleij@linaro.org, melissa.srw@gmail.com,
 chris@chris-wilson.co.uk, miaoqinglang@huawei.com
Cc: linux-samsung-soc@vger.kernel.org, lima@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, etnaviv@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org, xen-devel@lists.xenproject.org,
 spice-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Message-ID: <2614314a-81f7-4722-c400-68d90e48e09a@suse.de>
Subject: Re: [PATCH v3 2/7] drm/ttm: Add ttm_kmap_obj_to_dma_buf_map() for
 type conversion
References: <20200929151437.19717-1-tzimmermann@suse.de>
 <20200929151437.19717-3-tzimmermann@suse.de>
 <8fad0114-064a-4ed5-c21d-d1b4294de0a1@amd.com>
In-Reply-To: <8fad0114-064a-4ed5-c21d-d1b4294de0a1@amd.com>

--KHQT7KYakINZF3D85LRV0AG8BWDH6IVnP
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Christian

Am 29.09.20 um 17:35 schrieb Christian K=C3=B6nig:
> Am 29.09.20 um 17:14 schrieb Thomas Zimmermann:
>> The new helper ttm_kmap_obj_to_dma_buf() extracts address and location=

>> from and instance of TTM's kmap_obj and initializes struct dma_buf_map=

>> with these values. Helpful for TTM-based drivers.
>=20
> We could completely drop that if we use the same structure inside TTM a=
s
> well.
>=20
> Additional to that which driver is going to use this?

As Daniel mentioned, it's in patch 3. The TTM-based drivers will
retrieve the pointer via this function.

I do want to see all that being more tightly integrated into TTM, but
not in this series. This one is about fixing the bochs-on-sparc64
problem for good. Patch 7 adds an update to TTM to the DRM TODO list.

Best regards
Thomas

>=20
> Regards,
> Christian.
>=20
>>
>> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
>> ---
>> =C2=A0 include/drm/ttm/ttm_bo_api.h | 24 ++++++++++++++++++++++++
>> =C2=A0 include/linux/dma-buf-map.h=C2=A0 | 20 ++++++++++++++++++++
>> =C2=A0 2 files changed, 44 insertions(+)
>>
>> diff --git a/include/drm/ttm/ttm_bo_api.h b/include/drm/ttm/ttm_bo_api=
=2Eh
>> index c96a25d571c8..62d89f05a801 100644
>> --- a/include/drm/ttm/ttm_bo_api.h
>> +++ b/include/drm/ttm/ttm_bo_api.h
>> @@ -34,6 +34,7 @@
>> =C2=A0 #include <drm/drm_gem.h>
>> =C2=A0 #include <drm/drm_hashtab.h>
>> =C2=A0 #include <drm/drm_vma_manager.h>
>> +#include <linux/dma-buf-map.h>
>> =C2=A0 #include <linux/kref.h>
>> =C2=A0 #include <linux/list.h>
>> =C2=A0 #include <linux/wait.h>
>> @@ -486,6 +487,29 @@ static inline void *ttm_kmap_obj_virtual(struct
>> ttm_bo_kmap_obj *map,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return map->virtual;
>> =C2=A0 }
>> =C2=A0 +/**
>> + * ttm_kmap_obj_to_dma_buf_map
>> + *
>> + * @kmap: A struct ttm_bo_kmap_obj returned from ttm_bo_kmap.
>> + * @map: Returns the mapping as struct dma_buf_map
>> + *
>> + * Converts struct ttm_bo_kmap_obj to struct dma_buf_map. If the memo=
ry
>> + * is not mapped, the returned mapping is initialized to NULL.
>> + */
>> +static inline void ttm_kmap_obj_to_dma_buf_map(struct ttm_bo_kmap_obj=

>> *kmap,
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 struct dma_buf_map *map)
>> +{
>> +=C2=A0=C2=A0=C2=A0 bool is_iomem;
>> +=C2=A0=C2=A0=C2=A0 void *vaddr =3D ttm_kmap_obj_virtual(kmap, &is_iom=
em);
>> +
>> +=C2=A0=C2=A0=C2=A0 if (!vaddr)
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dma_buf_map_clear(map);
>> +=C2=A0=C2=A0=C2=A0 else if (is_iomem)
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dma_buf_map_set_vaddr_iome=
m(map, (void __force __iomem *)vaddr);
>> +=C2=A0=C2=A0=C2=A0 else
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dma_buf_map_set_vaddr(map,=
 vaddr);
>> +}
>> +
>> =C2=A0 /**
>> =C2=A0=C2=A0 * ttm_bo_kmap
>> =C2=A0=C2=A0 *
>> diff --git a/include/linux/dma-buf-map.h b/include/linux/dma-buf-map.h=

>> index fd1aba545fdf..2e8bbecb5091 100644
>> --- a/include/linux/dma-buf-map.h
>> +++ b/include/linux/dma-buf-map.h
>> @@ -45,6 +45,12 @@
>> =C2=A0=C2=A0 *
>> =C2=A0=C2=A0 *=C2=A0=C2=A0=C2=A0 dma_buf_map_set_vaddr(&map. 0xdeadbea=
f);
>> =C2=A0=C2=A0 *
>> + * To set an address in I/O memory, use dma_buf_map_set_vaddr_iomem()=
=2E
>> + *
>> + * .. code-block:: c
>> + *
>> + *=C2=A0=C2=A0=C2=A0 dma_buf_map_set_vaddr_iomem(&map. 0xdeadbeaf);
>> + *
>> =C2=A0=C2=A0 * Test if a mapping is valid with either dma_buf_map_is_s=
et() or
>> =C2=A0=C2=A0 * dma_buf_map_is_null().
>> =C2=A0=C2=A0 *
>> @@ -118,6 +124,20 @@ static inline void dma_buf_map_set_vaddr(struct
>> dma_buf_map *map, void *vaddr)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 map->is_iomem =3D false;
>> =C2=A0 }
>> =C2=A0 +/**
>> + * dma_buf_map_set_vaddr_iomem - Sets a dma-buf mapping structure to
>> an address in I/O memory
>> + * @map:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 The dma-buf mappin=
g structure
>> + * @vaddr_iomem:=C2=A0=C2=A0=C2=A0 An I/O-memory address
>> + *
>> + * Sets the address and the I/O-memory flag.
>> + */
>> +static inline void dma_buf_map_set_vaddr_iomem(struct dma_buf_map *ma=
p,
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 void __iomem *vaddr_iomem)
>> +{
>> +=C2=A0=C2=A0=C2=A0 map->vaddr_iomem =3D vaddr_iomem;
>> +=C2=A0=C2=A0=C2=A0 map->is_iomem =3D true;
>> +}
>> +
>> =C2=A0 /**
>> =C2=A0=C2=A0 * dma_buf_map_is_equal - Compares two dma-buf mapping str=
uctures
>> for equality
>> =C2=A0=C2=A0 * @lhs:=C2=A0=C2=A0=C2=A0 The dma-buf mapping structure
>=20
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

--=20
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 N=C3=BCrnberg, Germany
(HRB 36809, AG N=C3=BCrnberg)
Gesch=C3=A4ftsf=C3=BChrer: Felix Imend=C3=B6rffer


--KHQT7KYakINZF3D85LRV0AG8BWDH6IVnP--

--TxZtp2xZDgS8tF4LCH0pvplac5jBMMD1n
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQFIBAEBCAAyFiEEchf7rIzpz2NEoWjlaA3BHVMLeiMFAl9zc60UHHR6aW1tZXJt
YW5uQHN1c2UuZGUACgkQaA3BHVMLeiNPnwf/aCTKdBejEjGzelqMuF4UePySm/kg
uxWq4a3bhUNU/jUfaYErgmfPo7k2kd8GBKNwzUIWBmuanOtyVjPUASvzWxWn7GBo
c0Y2iWSttNk7zk3Qr330IDKDPtQjtzVbklLBu1YsbOQi0WqdzK0uFpRKl9MAvmth
5mi7+IzMbP/w3eu8z71VaPc7xy5tYCmeeyqeEPIEV3CoY4QnFaJDhRxenlDIZ/bR
M9RHikgzelrT1Nra42ooEtT6b3mBp4p63jHBHzTQnSjlAYT1khyKFLvQSHjNPyCN
GMHZqwUnG3U9EMjYvcGsvk7hZ4ROSOwVpq0j00R3hAK5rfbg6C1+v4XNSQ==
=/tV0
-----END PGP SIGNATURE-----

--TxZtp2xZDgS8tF4LCH0pvplac5jBMMD1n--


--===============6436559326378451582==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6436559326378451582==--

