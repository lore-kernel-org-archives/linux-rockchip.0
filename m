Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDFE0C83F05
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Jul 2025 11:43:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:From:Subject:Cc:To:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XsfoBxWPdgFuFnByNe/28e5bz7rXljG5H7noFYZCU4k=; b=wSIUjGhqQxwfs5l34bAuV5HQHo
	prEu5aHEf8BWUmg96rY/QM0ZEinPW5PxTDv6ngZ6pqiIRbHFMPjapLHW2RB3kbtasrF5BjPupPFvA
	vydKHIl6umxaj7WD6wJ6cpEtYl8u/pHrF9QR30ELukGacQrlKmRyQuLNuXwvYkldRTpHvOtG55vBJ
	eRrKpsMhPq61ykGFCOe1osU6kzxTy/HrdH2Zvw6mRIPTCvAIH4gfJ8W9IYKH0tEs1ahL7fhWT45/H
	XQTsiuGWIAblxle1rL6H6uwfRKUoYs/JdCPqu1H5NT/7bZYefC3Ce+1HZobuIkr6qGIRG3jf8q0wt
	K3WEfVfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYNmR-00000000CFV-1lIn;
	Sun, 06 Jul 2025 11:43:35 +0000
Received: from out-186.mta1.migadu.com ([95.215.58.186])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYMkv-000000008gu-1yzg
	for linux-rockchip@lists.infradead.org;
	Sun, 06 Jul 2025 10:37:59 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1751798274;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=PnW12e1DZsxOkvydzK2HotnR5pZwii2x2f3jZwicm8A=;
	b=Vt8GoLraIM5ywXcd7lswFjjkdTl92SP2XM4E6PxZMkUlHGLM6t1FT4FOkuMuoh0kx6Cpjq
	IOKS4t7aid/kF7tRlc1rhEfKJA+RmyQTquc6oDfnpmwnEZbrovIQtLyCBiBZ0OKbMzpj4J
	4C29m+1CZYiMhrSGscHQX4ZTCqiTnW/5WVoD0GziwaeULxO8at3Hhe3bV4yJq+ktJkfGgs
	hMDF8/YL6f1P2mseJshq8AszjutKxCJ0KfX0JUhsc1tu9v4IGmqHIZpT0Qgq1qtCm9DiAM
	KXkg8Z0Tku/37sJIDh34vkQKOEhsQ5o8vFUki7JmQtB2/yyvanUucpTodjrAzw==
Date: Sun, 06 Jul 2025 12:37:40 +0200
Message-Id: <DB4WNMVBIWYS.273Z54K6O7DTM@cknow.org>
To: "Piotr Zalewski" <pZ010001011111@proton.me>
Cc: <hjc@rock-chips.com>, <heiko@sntech.de>, <andy.yan@rock-chips.com>,
 <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
 <tzimmermann@suse.de>, <airlied@gmail.com>, <simona@ffwll.ch>,
 <dri-devel@lists.freedesktop.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] rockchip/drm: vop2: make vp registers nonvolatile
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
References: <20250706083629.140332-2-pZ010001011111@proton.me>
 <DB4W0GOQZ8MZ.MA7QXHJWCTK2@cknow.org>
 <OWFHI491RHadO01jlQPA34GX28LC7SseKfNRwqQy4etkkJyP1YeF_0EDdAgpSXx5RW7go62EAOkedW5nbyn_hlz_K-NUrnNJeDFWv0OOSO8=@proton.me>
In-Reply-To: <OWFHI491RHadO01jlQPA34GX28LC7SseKfNRwqQy4etkkJyP1YeF_0EDdAgpSXx5RW7go62EAOkedW5nbyn_hlz_K-NUrnNJeDFWv0OOSO8=@proton.me>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250706_033757_866930_D2D42CA3 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============3592342914078974516=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============3592342914078974516==
Content-Type: multipart/signed;
 boundary=aa40d9dc28db920960fba5ac249def83a08213f8b1a374e4a5946d696ea9;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--aa40d9dc28db920960fba5ac249def83a08213f8b1a374e4a5946d696ea9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Piotr,

On Sun Jul 6, 2025 at 12:20 PM CEST, Piotr Zalewski wrote:
>> With a new version of a patch, you're supposed to add the tags you
>> received for previous versions, like my Tested-by tag [1].
>>=20
>> (unless the new version has changed so much you feel they should not be
>> carried over; you then need to explicitly describe that and why you
>> dropped them)
> =20
> Forgot... Should i send it as PATCH v2 RESEND?

I don't think that's needed; the maintainer will let you know if that's
desirable or that they will add it (back) when committing.

Cheers,
  Diederik

--aa40d9dc28db920960fba5ac249def83a08213f8b1a374e4a5946d696ea9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaGpR+wAKCRDXblvOeH7b
boTTAQDVgBuxetL0DzvGcPFtwx7T7bTDcAoRnoFed53ZDkf+HQD/brK8092SqQNi
RV1KGSdH+z83fO99mi6WCkgzDwRGFAQ=
=8I9F
-----END PGP SIGNATURE-----

--aa40d9dc28db920960fba5ac249def83a08213f8b1a374e4a5946d696ea9--


--===============3592342914078974516==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3592342914078974516==--

