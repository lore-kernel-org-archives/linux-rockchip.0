Return-Path: <SRS0=qNMI=LZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5982AC11F64
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Jul 2021 09:31:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2717461418
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Jul 2021 09:31:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2717461418
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kleine-koenig.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:Subject:From:References:Cc:To:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JalqX8xbP4Z5zIRbjCM5E3AXYLo15zK1uG1PEjCm1Vc=; b=0b15YkGvTzpNhsAQuKzVyXtN8y
	i+j6CBL+a+xVGvFwqcz2PGZR1oRbbz2EtXnR0Azu9sStD8UeihG7wzG8Z8adosOHQ2n9bRkRntIHv
	ud5FaO6KTTndv+7NiisgJ87siYPFnVFobXddVI+TsHR8Mlyyvx1Vn97XBHdgQmixcpqEgmxzO/k16
	1+cX5jvF7fhBcCcysjIvR2OTaXCon+Pa4l40XnRs9+dKuTWVMIF4CdOJa3dMr9nHh2ns0eK5dsWUB
	FqcWAdrK9gsTAb5hXg0hruaHjFcJys5Qwtu6Wk52RC2TPcpmBZ/K+AV+qnUnTMYj5o2WjIvn+A6YN
	/kErmadQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyt2n-00Gibz-DV; Thu, 01 Jul 2021 09:31:37 +0000
Received: from antares.kleine-koenig.org ([2a01:4f8:c0c:3a97::2])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyt2a-00GiCK-By; Thu, 01 Jul 2021 09:31:26 +0000
Received: from antares.kleine-koenig.org (localhost [127.0.0.1])
 by antares.kleine-koenig.org (Postfix) with ESMTP id DAC7DBEBD19;
 Thu,  1 Jul 2021 11:31:19 +0200 (CEST)
Received: from antares.kleine-koenig.org ([94.130.110.236])
 by antares.kleine-koenig.org (antares.kleine-koenig.org [94.130.110.236])
 (amavisd-new, port 10024)
 with ESMTP id SDSbjhjav00Y; Thu,  1 Jul 2021 11:31:18 +0200 (CEST)
Received: from taurus.defre.kleine-koenig.org (unknown
 [IPv6:2a02:8071:b5c8:7b00:36f3:9aff:fec2:7e46])
 by antares.kleine-koenig.org (Postfix) with ESMTPSA;
 Thu,  1 Jul 2021 11:31:18 +0200 (CEST)
To: Dennis Gilmore <dgilmore@redhat.com>, linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20210701004043.18585-1-dgilmore@redhat.com>
From: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: helios64: fixup USB setup
Message-ID: <01f1b032-14a8-a6fa-9063-23de65fc6f43@kleine-koenig.org>
Date: Thu, 1 Jul 2021 11:31:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210701004043.18585-1-dgilmore@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210701_023124_615361_FF5B15BF 
X-CRM114-Status: GOOD (  13.39  )
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
Content-Type: multipart/mixed; boundary="===============6150061945136993100=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============6150061945136993100==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="BpJ5xrTQirBbIjXcMUHPDnZ3mp4HzW92f"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--BpJ5xrTQirBbIjXcMUHPDnZ3mp4HzW92f
Content-Type: multipart/mixed; boundary="1nWwQQLfYRngiveeI35Jked9SbcM6Pqbw";
 protected-headers="v1"
From: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>
To: Dennis Gilmore <dgilmore@redhat.com>, linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
Message-ID: <01f1b032-14a8-a6fa-9063-23de65fc6f43@kleine-koenig.org>
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: helios64: fixup USB setup
References: <20210701004043.18585-1-dgilmore@redhat.com>
In-Reply-To: <20210701004043.18585-1-dgilmore@redhat.com>

--1nWwQQLfYRngiveeI35Jked9SbcM6Pqbw
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hello,

On 7/1/21 2:40 AM, Dennis Gilmore wrote:
> Without the usbdrd_dwc3_1 node defined u-boot will throw an error and
> reset the system.

I wonder if this should better be fixed in u-boot then?!

> All other rk3399 systems use this format

This is true for the dwc nodes, however for the usb2 nodes there are=20
several that use this idiom (and even repeat the label name), see for=20
example the &u2phy0 node in=20
arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi .

In my eyes it's a bit ugly to have the two nodes as separate entities=20
and on the same indentation level in the machine dts given that one is=20
the parent of the other and enabling USB needs both status settings.

Best regards
Uwe


--1nWwQQLfYRngiveeI35Jked9SbcM6Pqbw--

--BpJ5xrTQirBbIjXcMUHPDnZ3mp4HzW92f
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmDdi10ACgkQwfwUeK3K
7Al/Pwf/fwKvnfatRdAv7KIh3rNNLcGJMdEn2xWYZ6hi1BSCujztTMA1Dwa6yMsy
HxFEpDWx/dUEi6ZsLKZpKH4RRfB8TFpZX2bT2LhqRs8FsuIdbfr/gipul8dRv6k/
8HqazpBR+flWTvGs1eaLRGGXOxAhvaZ/jXpihWJDGIX9inaLmUcHjr97yvXUMy7v
7YU8MSICXSZri0gEp6M8ZiljvXN/Q9RZe1Z034zOwd4NNBpR/nmBd4xLgvotnlJj
clNn+BwiSEBhfFjuRxaH0jo6hn3mDRmSDgxanuz7uKfFUPBpQ7ST50mMclzTZGyY
fT3Q+7Frw5I70d/FOvrQRFy6nwY0aQ==
=zJ9u
-----END PGP SIGNATURE-----

--BpJ5xrTQirBbIjXcMUHPDnZ3mp4HzW92f--


--===============6150061945136993100==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6150061945136993100==--

