Return-Path: <SRS0=Bn3x=DG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA78CC4346E
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2020 07:47:34 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 600D02075E
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2020 07:47:34 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="x3pej+yt"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 600D02075E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wjhxoUx2iAmb2TQUwI0PZSwkm9kZ5G0wae8lGx5fk5c=; b=x3pej+yt7jmvt2RqMnJKErPsR
	PZ1WTX1+EBRSsEDFB45ecEIqcXSPwopQAN4fQW3MrMC8TzidzEd7j7zc0erIaeGfCXc5fhOwy+Qt1
	vS5gN70WRHayjhgqbEkH2m9zP8yjVg8L+q18RwLkN7Lxp7PjetMq9HkLz77jpor0y9nMaXlOvu44a
	0bRClOwEBrn8s9HgsfXBVIcMWsc1EzHEZ2WkfRJQUUBKsQzfHu6AjdRMuLCWYS8Xm+WbGqGQDL34Q
	ORp8iIn+IJeXFslbB+N8qLkJxIiYOMGl38xiXS7gdZI3AZKMPPR6fX14PeWnZJQf3Mb/fpHvUZvbi
	lnVsxfgzA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNAMC-0005bv-P9; Tue, 29 Sep 2020 07:47:28 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNAM8-0005ar-AE; Tue, 29 Sep 2020 07:47:25 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 0841DAC98;
 Tue, 29 Sep 2020 07:47:23 +0000 (UTC)
Subject: Re: [PATCH v1 1/2] drm/rockchip: fix build due to undefined
 drm_gem_cma_vm_ops
To: Sam Ravnborg <sam@ravnborg.org>
References: <20200925215524.2899527-1-sam@ravnborg.org>
 <20200925215524.2899527-2-sam@ravnborg.org>
 <83650213-3b09-aea0-4485-cd20de1d9548@suse.de>
 <20200929071754.GA736868@ravnborg.org>
From: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <8c22061f-6073-5860-bd55-d85a0b4c07d6@suse.de>
Date: Tue, 29 Sep 2020 09:47:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200929071754.GA736868@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200929_034724_591925_08CC7489 
X-CRM114-Status: GOOD (  22.02  )
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
Cc: Sandy Huang <hjc@rock-chips.com>, stable@vger.kernel.org,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7627279823020664102=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7627279823020664102==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="JEHxjLtZCE48v7GMtUksxIUDasaHqcche"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--JEHxjLtZCE48v7GMtUksxIUDasaHqcche
Content-Type: multipart/mixed; boundary="xQspxrd93ohokcxrHV4431avMRiDfRusI";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, stable@vger.kernel.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Message-ID: <8c22061f-6073-5860-bd55-d85a0b4c07d6@suse.de>
Subject: Re: [PATCH v1 1/2] drm/rockchip: fix build due to undefined
 drm_gem_cma_vm_ops
References: <20200925215524.2899527-1-sam@ravnborg.org>
 <20200925215524.2899527-2-sam@ravnborg.org>
 <83650213-3b09-aea0-4485-cd20de1d9548@suse.de>
 <20200929071754.GA736868@ravnborg.org>
In-Reply-To: <20200929071754.GA736868@ravnborg.org>

--xQspxrd93ohokcxrHV4431avMRiDfRusI
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Sam

Am 29.09.20 um 09:17 schrieb Sam Ravnborg:
> On Tue, Sep 29, 2020 at 08:53:06AM +0200, Thomas Zimmermann wrote:
>> Hi Sam
>>
>> Am 25.09.20 um 23:55 schrieb Sam Ravnborg:
>>> Commit 0d590af3140d ("drm/rockchip: Convert to drm_gem_object_funcs")=

>>> introduced the following build error:
>>>
>>> rockchip_drm_gem.c:304:13: error: =E2=80=98drm_gem_cma_vm_ops=E2=80=99=
 undeclared here
>>>   304 |  .vm_ops =3D &drm_gem_cma_vm_ops,
>>>       |             ^~~~~~~~~~~~~~~~~~
>>>       |             drm_gem_mmap_obj
>>>
>>> Fixed by adding missing include file.
>>>
>>> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
>>
>> Didn't you review exactly this change yesterday? Anyway, you should ad=
d
> Yep.
>=20
>>
>> Fixes: 0d590af3140d ("drm/rockchip: Convert to drm_gem_object_funcs")
>>
>> and
>>
>> Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>
>>
>> It might happen that I land my patch first, depending on the urgency o=
f
>> the issue.
> I expect you to land the patch you made asap so we can have the build
> fixed again.

Oh, I just looked at the dates and your patch was actually first. Sorry
for the confusion. I've now merged what I had.

Best regards
Thomas

>=20
>=20
> 	Sam
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
>=20

--=20
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 N=C3=BCrnberg, Germany
(HRB 36809, AG N=C3=BCrnberg)
Gesch=C3=A4ftsf=C3=BChrer: Felix Imend=C3=B6rffer


--xQspxrd93ohokcxrHV4431avMRiDfRusI--

--JEHxjLtZCE48v7GMtUksxIUDasaHqcche
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQFIBAEBCAAyFiEEchf7rIzpz2NEoWjlaA3BHVMLeiMFAl9y5oMUHHR6aW1tZXJt
YW5uQHN1c2UuZGUACgkQaA3BHVMLeiOBIAf8DFIJ9A4KmiiZTb64quSELkbGV8of
EseJpP5JoxANjWbb3vBRCnE2OCmuGR28ejgQx+ilCkUm3Kp8EUbzfv3+0JsSihI4
1Rwd8j0fnETjA8hHqXJjr7gPzGQWs1HLh3WIsurpb11xQEti97qUM0aGha/KT/dX
JymWEOFChK25d0u3ZgttV+Q62xsWrt5TQYFXtBlKDktoUoJbRVRqPfpJaL52znVw
/7KyTvCi+y2m8RhTne9BiPpRZgEOzvMLTK3SCScNVMr4UiFCGGWcbEKKstpeFvCn
CIrtNtJtCErjeK7V5hXKNguK7QAFkdSbRNgkuoLpDDOfUgYaRua2MnR5Uw==
=mDKO
-----END PGP SIGNATURE-----

--JEHxjLtZCE48v7GMtUksxIUDasaHqcche--


--===============7627279823020664102==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7627279823020664102==--

