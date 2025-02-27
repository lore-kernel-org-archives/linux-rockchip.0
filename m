Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9EF6C021BE
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Feb 2025 11:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MKY/s0elkqSVUqDiZVzPU6k7grHbGGk/YqSqIzwyx8M=; b=b3ZHJzKOxR8ZcrvF7IBF3xDOUm
	o6tKPgyS7IqW4Q6oI+X5HRqIOQZ/0dwU7XFkP2SV7QMjONMGftswpfglSkQ4BeyE9U4szl8uUtsXm
	f5JD6jhIvWo7r7YHEIzu++g0Z/gFyyPbfwE5M70pNMwIKJQHwNYdbT52nG9leK31S7RYLR/VSFb7L
	iDr+/iN65O+ixbaBZJc8HS7kLJ3bkuzYSST8FwOLM5/1PwAXCInee2Fjy144teLgEuY/He/GxIyHZ
	EWb2PAFb8ZKXW0Wse9cU+hnrYB4lTOZp1JazcTegD7OVzMCEn8cctoEaF0uz/Jz3nrjeIpbuDpUW7
	muxZJ8Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tncBC-00000007D1v-2qLB;
	Thu, 27 Feb 2025 11:35:50 +0000
Received: from out-170.mta0.migadu.com ([91.218.175.170])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnbtE-000000078Yv-1raN
	for linux-rockchip@lists.infradead.org;
	Thu, 27 Feb 2025 11:17:17 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1740655031;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=/2lDeXkEJ2zFt3hYo39omMRDWvJAm1z3XFejqJuo+b0=;
	b=tvD1NcvyUC8jq0+m+Gozq4Z/bqVih/lG3hS2DPcNco84ZZ+SIoD6aFT0++hk7tK8U1ydpo
	wOWJDxjJx40r969JOwHrkoMmkxw/wi+uWnuKVQZshU/nAZ+ID6zmBGuNvKSzeQeBqdz7Vk
	9e252TkSszIkCBs36i6+ikF3yTS8amvKU2bJjg/4JStDRSCdSmYNiQOWByKLbhCyMws326
	CrvzMK09mhDAQKXD0ecC1j+JoPwbTag4IzK13WSlT482w+m+n34pGHtCkgPSLmHUk3WuRk
	+mNqIdiKQ9tlgObwUfGL5KBjc25GL/YD3LXCnxnzY9khQeVnVfpFgi8mmJR6RA==
Date: Thu, 27 Feb 2025 12:16:58 +0100
Message-Id: <D836PGFSE49W.SVV3JJRM1WQE@cknow.org>
Cc: <kernel@collabora.com>, <linux-media@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>, "Tim Surber" <me@timsurber.de>,
 "Christophe JAILLET" <christophe.jaillet@wanadoo.fr>
Subject: Re: [PATCH v10 3/6] media: platform: synopsys: Add support for HDMI
 input driver
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Dmitry Osipenko" <dmitry.osipenko@collabora.com>, "Shreeya Patel"
 <shreeya.patel@collabora.com>, "Heiko Stuebner" <heiko@sntech.de>, "Mauro
 Carvalho Chehab" <mchehab@kernel.org>, "Hans Verkuil" <hverkuil@xs4all.nl>,
 "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 <jose.abreu@synopsys.com>, <nelson.costa@synopsys.com>,
 <shawn.wen@rock-chips.com>, <nicolas.dufresne@collabora.com>, "Sebastian
 Reichel" <sebastian.reichel@collabora.com>
References: <20250225183058.607047-1-dmitry.osipenko@collabora.com>
 <20250225183058.607047-4-dmitry.osipenko@collabora.com>
 <D82H4F6J4V4V.2BLHVUVD3BVX9@cknow.org>
 <f0c3a16e-c4a2-4cd9-9afa-a21a975a45c9@collabora.com>
In-Reply-To: <f0c3a16e-c4a2-4cd9-9afa-a21a975a45c9@collabora.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_031716_823754_88A8A5E9 
X-CRM114-Status: UNSURE (   8.31  )
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
Content-Type: multipart/mixed; boundary="===============2960338127953617750=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============2960338127953617750==
Content-Type: multipart/signed;
 boundary=6ea8b17535b5903c5a542c2da7dcd7cc3e5f0f3ad9204e7183c8eccf5172;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--6ea8b17535b5903c5a542c2da7dcd7cc3e5f0f3ad9204e7183c8eccf5172
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Thu Feb 27, 2025 at 6:28 AM CET, Dmitry Osipenko wrote:
> On 2/26/25 18:14, Diederik de Haas wrote:
>>> +config VIDEO_SYNOPSYS_HDMIRX_LOAD_DEFAULT_EDID
>>> +	bool "Load default EDID"
>>> +	depends on VIDEO_SYNOPSYS_HDMIRX
>>> +	help
>>> +	  Preload default EDID (Extended Display Identification Data).
>
>> Thus a more extensive description what this Kconfig item does and why
>> and when I want to enable it or not, seems more useful to me.
>
> Will update and expand the description with more clarification. Thanks
> for suggestion.

Thanks for the explanation. The new description looks *much* better :-)

Cheers,
  Diederik

--6ea8b17535b5903c5a542c2da7dcd7cc3e5f0f3ad9204e7183c8eccf5172
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZ8BJsAAKCRDXblvOeH7b
bqZ7AQCBEQEhBUK1iOz9+T8B3Y+OdjGIfIJ6kEU6H7gHbHEHqAEAnKGZTMkUf6+D
c2Kroh+hbwGpguLij0MrCgQAOd7oKQs=
=B/cr
-----END PGP SIGNATURE-----

--6ea8b17535b5903c5a542c2da7dcd7cc3e5f0f3ad9204e7183c8eccf5172--


--===============2960338127953617750==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2960338127953617750==--

