Return-Path: <SRS0=NyFe=KX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27FA4C2B9F7
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 14:01:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D2B5661355
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 14:01:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D2B5661355
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O4deNK+EIZ/ZZz5YKmOeXeazAzEKSnuI4o+F7KufSHE=; b=R6sp84Ix8FmUWiwyCFwhn/1K3g
	+EaPIGji74f8xfkuDtsZPm6azOqmpjVOFWFOFhuX6ES/8LxRXadg3P5WXqdZvEPWrjeCXGWvKf9Ko
	okqa7WJvxClt4OGirttBO0LfV+MuAPoFfhgepdCEAeIzMpAqyG5o2fLjr3ShYSs1LscW8/2+4n/CY
	B/DPDrkfz05JrqC6TlIVW6GutuRag1CQFADLLuggMEmGkUNxCuf+TEPdIYlCX6HZFoHik8vUHRP8v
	iU0vPkcWp8UZA/XHkyyG9iQgIbuTN8wahdFed8BPTdZ13LzYruVVpLoTjyM4FgtOok2nEXCBr0Tua
	84y0OUAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmd3A-00Fyzz-Q6; Fri, 28 May 2021 14:01:20 +0000
Received: from smtp-out1.suse.de ([195.135.220.28])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmd1G-00FyHr-4C; Fri, 28 May 2021 13:59:23 +0000
Received: from imap.suse.de (imap-alt.suse-dmz.suse.de [192.168.254.47])
 (using TLSv1.2 with cipher ECDHE-ECDSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 9247D218B3;
 Fri, 28 May 2021 13:59:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1622210356; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=T1fRGHfHUb7/Zr0qPH9cVl7kztDPoQDyj6xfG+R+RW0=;
 b=vIZh1t5nZC1e1yj/QtAJ4gOMiA9Zm/bKb92WSOShDnCTQmI61XdQmp7e2kWpHhbxb4ufJL
 aJZ9AEQblJaTPC2YwP2lixP9P69x/g5foAB4O0tacRJo4ALtXJVwOM3oOG6v+EzigiijAU
 y47hkE7S4oiwqEAKJOxgbCs3GpuQVfY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1622210356;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=T1fRGHfHUb7/Zr0qPH9cVl7kztDPoQDyj6xfG+R+RW0=;
 b=S5B32VFqbnt/woUhT0+zWZiuPlskYQVKbKgitfSHioI5fFzQjr73iIg1QH/NTjGiLY4HlP
 6y6YoSUurPDyspAQ==
Received: from imap3-int (imap-alt.suse-dmz.suse.de [192.168.254.47])
 by imap.suse.de (Postfix) with ESMTP id 52AA611A98;
 Fri, 28 May 2021 13:59:16 +0000 (UTC)
Received: from director2.suse.de ([192.168.254.72]) by imap3-int with ESMTPSA
 id EHkXEzT3sGA2WwAALh3uQQ
 (envelope-from <tzimmermann@suse.de>); Fri, 28 May 2021 13:59:16 +0000
Subject: Re: [PATCH v2] drm/rockchip: remove existing generic drivers to take
 over the device
To: Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org
Cc: David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 Peter Robinson <pbrobinson@gmail.com>, linux-arm-kernel@lists.infradead.org
References: <20210516074833.451643-1-javierm@redhat.com>
 <ef974dd8-5619-35b7-74de-4e270033a3c3@suse.de>
 <1f781f88-24ff-98b8-9c86-ae4db311843f@redhat.com>
From: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <bc8ba42b-2fbf-ba95-d7a4-92f789142bd3@suse.de>
Date: Fri, 28 May 2021 15:59:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <1f781f88-24ff-98b8-9c86-ae4db311843f@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210528_065922_508438_D5D1A0FE 
X-CRM114-Status: GOOD (  19.50  )
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
Content-Type: multipart/mixed; boundary="===============2083608457965620991=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2083608457965620991==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="UQrFh0WQs4TtyMcOLbL1G5mbWOEXfTHtQ"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--UQrFh0WQs4TtyMcOLbL1G5mbWOEXfTHtQ
Content-Type: multipart/mixed; boundary="7Xhf3qKEvoJB4vdb8HBr3oauPUsd3OcmZ";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Javier Martinez Canillas <javierm@redhat.com>,
 linux-kernel@vger.kernel.org
Cc: David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 Peter Robinson <pbrobinson@gmail.com>, linux-arm-kernel@lists.infradead.org
Message-ID: <bc8ba42b-2fbf-ba95-d7a4-92f789142bd3@suse.de>
Subject: Re: [PATCH v2] drm/rockchip: remove existing generic drivers to take
 over the device
References: <20210516074833.451643-1-javierm@redhat.com>
 <ef974dd8-5619-35b7-74de-4e270033a3c3@suse.de>
 <1f781f88-24ff-98b8-9c86-ae4db311843f@redhat.com>
In-Reply-To: <1f781f88-24ff-98b8-9c86-ae4db311843f@redhat.com>

--7Xhf3qKEvoJB4vdb8HBr3oauPUsd3OcmZ
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



Am 27.05.21 um 09:38 schrieb Javier Martinez Canillas:
> Hello Thomas,
>=20
> On 5/16/21 12:30 PM, Thomas Zimmermann wrote:
>>
>>
>> Am 16.05.21 um 09:48 schrieb Javier Martinez Canillas:
>>> There are drivers that register framebuffer devices very early in the=
 boot
>>> process and make use of the existing framebuffer as setup by the firm=
ware.
>>>
>>> If one of those drivers has registered a fbdev, then the fallback fbd=
ev
>> of
>>> the DRM driver won't be bound to the framebuffer console. To avoid th=
at,
>>> remove any existing generic driver and take over the graphics device.=

>>>
>>> By doing that, the fb mapped to the console is switched correctly fro=
m the
>>> early fbdev to the one registered by the rockchip DRM driver:
>>>
>>>       [   40.752420] fb0: switching to rockchip-drm-fb from EFI VGA
>>>
>>> Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
>>
>> Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
>>
>=20
> Thanks for the ack.
>  =20
>> Ping me if no one else merges the patch.
>>
>=20
> I would really appreciate if you merge this patch.

It's merged now. Thanks for the patch.

Best regards
Thomas

>  =20
>> Best regards
>> Thomas
>=20
> Best regards,
>=20

--=20
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 N=C3=BCrnberg, Germany
(HRB 36809, AG N=C3=BCrnberg)
Gesch=C3=A4ftsf=C3=BChrer: Felix Imend=C3=B6rffer


--7Xhf3qKEvoJB4vdb8HBr3oauPUsd3OcmZ--

--UQrFh0WQs4TtyMcOLbL1G5mbWOEXfTHtQ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEExndm/fpuMUdwYFFolh/E3EQov+AFAmCw9zMFAwAAAAAACgkQlh/E3EQov+DB
PxAAgQw6Sy8VeAvlmd26pFV2YhWs10y6WMjsg4NvDGqBatXW6P4BuazWX2k9CkhOWs4IUGkAL7KE
Sbp+iWS4sqjIlTJj26NS36ktC4VluIb9gQhR6eAimuqdUqY3HxMtM4k1txdKtH7IftqNYFh/lY1B
lORl9390SZrvcrxEhAvWrbffNFasiG4aX2DuRj1wyg1wSecW7VqY2BMFcHDrHSaeg3zlHldj+sn+
/rTk/iqd+2VdmyoDR1SYxNuNgDku5aS68B6aPYWqXlbMxlwtpQFkc5DSfhr5E8WzG0dSElIrQdcw
+PRrFIDMlWbWZnn/NNn8oXNNM15tXdM6lsT07R4qxbk0CZlyR4MRyGQaK8I/mEsW+FT9FxiOiYvL
YCPCg/4PaysA9Yq91qO34ASYbO0moP59U7p0NBeWFMFcx8sq1dyLNXUZgctusmkGzLdRCc9tfGzy
pWzRXYaYSBteuUy5bwGIwVFtQS/CkGQy6uOyaXP979hhW+adJOJjP7IA61TZpee+QUf/izSW0VPt
xFZ+Ufo14G6bNbmgRagk/dyDSkf/AXZ1GNprKtfWNPiS+TRqbMGERHZlrcChANOIeMi/7s6UMn0i
UV2fKfOfHoHbZceUbfdIQZxUzWN25nTNyth0MmnO8VYHBJy2WyIG/BltaDX8TtJanq5dlnnlpukT
YDc=
=mqhb
-----END PGP SIGNATURE-----

--UQrFh0WQs4TtyMcOLbL1G5mbWOEXfTHtQ--


--===============2083608457965620991==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2083608457965620991==--

