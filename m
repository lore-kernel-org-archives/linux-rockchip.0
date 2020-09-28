Return-Path: <SRS0=Ahoz=DF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DAA4C2D0A8
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Sep 2020 08:48:45 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 00EC9207C4
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Sep 2020 08:48:44 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="rNvAbfVg"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 00EC9207C4
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TmCPoJbSg/WT3KzyzbZqXJUWaGW4BLdLXL9gcdRJtR4=; b=rNvAbfVg2ZhhowOyCG26RHf3f
	0/XoPcfo/T2ovoH1Otn2tlNIdbkLmlo68bprPBp++d5FSpA1ZS8eo+J9V+PbZXnYTvwZ6RP8D1Fu2
	bzHDSOR7RfUKQSLP5kG+87BsuF0unvcstkFjhTWI2ovT0Bd1KTkor86WwxkQ0iDuca6/7jKTxQUFH
	Db7FSjTce1MBU6+mcVQfaZn0oaue1TWqPXClIRGkl2lXsRLtVSt+H3SvenpJqMktTUBOI+aeAjNID
	DEojTlChAb3YzxO300FU0BW4lQs+DQ9ykj7HJtZd/no0v+3OBS7n2buTqEfNn0CvIXyMr6niV/BZw
	G20bjbjwA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kMopr-0000oI-Ob; Mon, 28 Sep 2020 08:48:39 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMopm-0000n7-JP; Mon, 28 Sep 2020 08:48:35 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 5793AB295;
 Mon, 28 Sep 2020 08:48:33 +0000 (UTC)
Subject: Re: [PATCH] drm/rockchip: Include <drm/drm_gem_cma_helper> for
 drm_gem_cm_vm_ops
To: Sam Ravnborg <sam@ravnborg.org>
References: <20200928081643.8575-1-tzimmermann@suse.de>
 <20200928084019.GA625010@ravnborg.org>
From: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <7e928cd3-d185-065d-40de-1541b08d2ec4@suse.de>
Date: Mon, 28 Sep 2020 10:48:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200928084019.GA625010@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200928_044834_848973_C9E72FBE 
X-CRM114-Status: GOOD (  24.99  )
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
Cc: kernel test robot <lkp@intel.com>, airlied@linux.ie,
 Daniel Vetter <daniel.vetter@ffwll.ch>, hjc@rock-chips.com,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 daniel@ffwll.ch, christian.koenig@amd.com,
 linux-arm-kernel@lists.infradead.org, heiko@sntech.de
Content-Type: multipart/mixed; boundary="===============4829973962884854354=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4829973962884854354==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="EircRPPndu5aQfYtI8jvR1Ocn3eSs9CSN"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--EircRPPndu5aQfYtI8jvR1Ocn3eSs9CSN
Content-Type: multipart/mixed; boundary="Rl6PXXLecLjTnTXorlT1DNJKA3WNaD2aO";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Sam Ravnborg <sam@ravnborg.org>
Cc: hjc@rock-chips.com, heiko@sntech.de, airlied@linux.ie, daniel@ffwll.ch,
 christian.koenig@amd.com, kernel test robot <lkp@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Message-ID: <7e928cd3-d185-065d-40de-1541b08d2ec4@suse.de>
Subject: Re: [PATCH] drm/rockchip: Include <drm/drm_gem_cma_helper> for
 drm_gem_cm_vm_ops
References: <20200928081643.8575-1-tzimmermann@suse.de>
 <20200928084019.GA625010@ravnborg.org>
In-Reply-To: <20200928084019.GA625010@ravnborg.org>

--Rl6PXXLecLjTnTXorlT1DNJKA3WNaD2aO
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi

Am 28.09.20 um 10:40 schrieb Sam Ravnborg:
> Hi Thomas.
> On Mon, Sep 28, 2020 at 10:16:43AM +0200, Thomas Zimmermann wrote:
>> Include <drm/drm_gem_cma_helper.h> to get drm_gem_cma_vm_ops. Fallout
>> from the recent conversion to GEM object functions.
>>
>> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
>> Reported-by: kernel test robot <lkp@intel.com>
>> Fixes: 0d590af3140d ("drm/rockchip: Convert to drm_gem_object_funcs")
>=20
> As this has only hit drm-misc-next and not pushed anywhere else there i=
s
> really no need for the Fixes: tag. At least thats my understanding.

I'm not sure what the upstream requirements are. As part of my dayjob, I
maintain drivers for Suse distributions. If we pick the original patch,
we also want the fixes. We have scripts that look for these Fixes tags
to find the fixes. So it's helpful.

>=20
> Otherwise the patch is equal to what I posted in the weekend so:
> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

Thanks

Best regards
Thomas

>=20
>> Cc: Thomas Zimmermann <tzimmermann@suse.de>
>> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
>> Cc: Christian K=C3=B6nig <christian.koenig@amd.com>
>> Cc: Sandy Huang <hjc@rock-chips.com>
>> Cc: "Heiko St=C3=BCbner" <heiko@sntech.de>
>> Cc: dri-devel@lists.freedesktop.org
>> Cc: linux-arm-kernel@lists.infradead.org
>> Cc: linux-rockchip@lists.infradead.org
>> ---
>>  drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu=
/drm/rockchip/rockchip_drm_gem.c
>> index 1cf4631461c9..7d5ebb10323b 100644
>> --- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
>> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
>> @@ -10,6 +10,7 @@
>> =20
>>  #include <drm/drm.h>
>>  #include <drm/drm_gem.h>
>> +#include <drm/drm_gem_cma_helper.h>
>>  #include <drm/drm_prime.h>
>>  #include <drm/drm_vma_manager.h>
>> =20
>> --=20
>> 2.28.0
>>
>> _______________________________________________
>> dri-devel mailing list
>> dri-devel@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/dri-devel

--=20
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 N=C3=BCrnberg, Germany
(HRB 36809, AG N=C3=BCrnberg)
Gesch=C3=A4ftsf=C3=BChrer: Felix Imend=C3=B6rffer


--Rl6PXXLecLjTnTXorlT1DNJKA3WNaD2aO--

--EircRPPndu5aQfYtI8jvR1Ocn3eSs9CSN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQFIBAEBCAAyFiEEchf7rIzpz2NEoWjlaA3BHVMLeiMFAl9xo18UHHR6aW1tZXJt
YW5uQHN1c2UuZGUACgkQaA3BHVMLeiMaQQf/WSSvGQ2C62ake0lnnvQo3S3Io+WN
53Nzj/HQZ7QM1KjAPofEQu//jfD/Ut2q9LsWzRAduaGhwgmWKfDJ2fmho51hTRGf
7pPC0e+uq4xt9e+z97x4TuNr2Jaz4EP2t7GZzLW0MkaFlRH/8dBD0ROs3isIWxv/
oo6KcKmECFjgSpERUMoSwSN4v2YHtObOGRfd83EsFiY/PncZzW7I4EW8xyagI5iC
PV+QOXKi0s8NLymzErzjV6ytkgpy+1vSWzo9h2SauLCit6KsNf9+qUdUyYH2C9fP
vyQLqrp4mr9SUkDDJQ+EPOuEGTzm1yk6EJKsj9JKVTU1qleMBE9FGGeKJQ==
=6PQO
-----END PGP SIGNATURE-----

--EircRPPndu5aQfYtI8jvR1Ocn3eSs9CSN--


--===============4829973962884854354==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4829973962884854354==--

