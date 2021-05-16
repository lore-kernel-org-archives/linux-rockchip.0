Return-Path: <SRS0=WkAD=KL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C3B6C433ED
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 19:39:33 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6D95E61006
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 19:39:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6D95E61006
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kleine-koenig.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CEWcKx0sCJPeawhldzIN6epJEw8Lj7MdYcphI5T4Nik=; b=ik52DkNZVPIkSZUYrMAZvL1HA
	muWrGAi/UjZy4dovjAk0GUZmRm/7DHYWn4d0y/aov1x27/zVGgCs7eg1xgiBwWL9S2lN6NT8Fvb02
	kphio94gaw8TCkIMy+16fnybHLlkoFx7DZ7o6TwEof4qEsnhwMe5EXYEXJuFx29zJeBEKFaKy5JeR
	SqEjujuYigKsKREtaq0jkJy65vnIKyO+eXkwoCxehPcBqVkOwtK99TGLWGAAi7RfxVwOkAQI5SFF+
	tN2zLNAp2JRnzJbj2SRLtlT5bKz83hvuKrh4KlwhRuSJKsSndn4RFAPHx+px3VxsJOOxJbY3F6grd
	Qa5gFzE0g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liMbi-00CqZY-1i; Sun, 16 May 2021 19:39:22 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liMbg-00CqZQ-9t
 for linux-rockchip@desiato.infradead.org; Sun, 16 May 2021 19:39:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:In-Reply-To:MIME-Version
 :Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Ytk0nBzwMfQrL/AtDU9j3J4ak5wrIkVejr3p8irTWcM=; b=NLYrkKEaqQi6tyP4+pKEhsqn1v
 gDcMZ8H6uIeDjx3sQ/JP6MLqtfIXpSHE8/kIBvhW9vC8yxRV7D+daHDIh/sJY3eFUoi0jYIskFtwK
 KbipClr8BWoi5TnCWNdZLutQgipXXhMI7+m0YP8XpvYC8/twk31UEqrqiNReXlLTHLW9QSqntcCHu
 V53ock3uGTXTJnx7EMVVnA6o8kqzGhEqD9iZeeyT5o3iN3nC/cisAfe+wuLkOkGLexKmDUpr2CloF
 2d7Lq9zD4MEa4nz8CqylHRAnP3KoOxrgx90FCcGGLx1bd+DNwdpEbYf6rQNnSsoa2OzB1YtKeLTyC
 SdxhOS1g==;
Received: from antares.kleine-koenig.org ([2a01:4f8:c0c:3a97::2])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liMbc-00DBNF-Nz
 for linux-rockchip@lists.infradead.org; Sun, 16 May 2021 19:39:18 +0000
Received: from antares.kleine-koenig.org (localhost [127.0.0.1])
 by antares.kleine-koenig.org (Postfix) with ESMTP id A9A86B9CFB6;
 Sun, 16 May 2021 21:39:10 +0200 (CEST)
Received: from antares.kleine-koenig.org ([94.130.110.236])
 by antares.kleine-koenig.org (antares.kleine-koenig.org [94.130.110.236])
 (amavisd-new, port 10024)
 with ESMTP id 0RN9mhaQgUHe; Sun, 16 May 2021 21:39:09 +0200 (CEST)
Received: from taurus.defre.kleine-koenig.org (unknown
 [IPv6:2a02:8071:b5c8:7bfc:d65f:b030:4f16:836c])
 by antares.kleine-koenig.org (Postfix) with ESMTPSA;
 Sun, 16 May 2021 21:39:09 +0200 (CEST)
Subject: Re: [PATCH] arm64: dts: rockchip: helios64: Add support for two PWM
 fans
To: Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Aditya Prayoga <aditya@kobol.io>, Rob Herring <robh+dt@kernel.org>
References: <20210510090607.970145-1-uwe@kleine-koenig.org>
 <162099477649.1967349.5366927271429530848.b4-ty@sntech.de>
From: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>
Message-ID: <ebe574a9-5831-6c6d-bbb7-995afa6eb277@kleine-koenig.org>
Date: Sun, 16 May 2021 21:39:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <162099477649.1967349.5366927271429530848.b4-ty@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210516_123916_967218_268E8EB5 
X-CRM114-Status: GOOD (  13.96  )
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
Content-Type: multipart/mixed; boundary="===============6539891055365269560=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============6539891055365269560==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="uz8oQWuihi4QVrR2zOgjaJ2sFqPmGin9G"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--uz8oQWuihi4QVrR2zOgjaJ2sFqPmGin9G
Content-Type: multipart/mixed; boundary="Sc8PLjnSA6IWTdq7dj4nUtzmQSDDYFERh";
 protected-headers="v1"
From: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Aditya Prayoga <aditya@kobol.io>, Rob Herring <robh+dt@kernel.org>
Message-ID: <ebe574a9-5831-6c6d-bbb7-995afa6eb277@kleine-koenig.org>
Subject: Re: [PATCH] arm64: dts: rockchip: helios64: Add support for two PWM
 fans
References: <20210510090607.970145-1-uwe@kleine-koenig.org>
 <162099477649.1967349.5366927271429530848.b4-ty@sntech.de>
In-Reply-To: <162099477649.1967349.5366927271429530848.b4-ty@sntech.de>

--Sc8PLjnSA6IWTdq7dj4nUtzmQSDDYFERh
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 5/14/21 2:20 PM, Heiko Stuebner wrote:
> On Mon, 10 May 2021 11:06:07 +0200, Uwe Kleine-K=C3=B6nig wrote:
>> On the helios64 board the two connectors P6 and P7 are supposed to
>> power two fans. Add the corresponding pwm-fan devices.
>=20
> Applied, thanks!
>=20
> [1/1] arm64: dts: rockchip: helios64: Add support for two PWM fans
>        commit: 271b66414df0b172c936b3cfd1894b7939f84165
>=20
> Adapted the ordering "fan*" above "led*".

Oh indeed. Thanks

Best regards
Uwe


--Sc8PLjnSA6IWTdq7dj4nUtzmQSDDYFERh--

--uz8oQWuihi4QVrR2zOgjaJ2sFqPmGin9G
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmChdNgACgkQwfwUeK3K
7AmQfAf/Q7SlIh4/6sviI7ef/0a2x9qNbD6us3y2O4BpMNVWabUjrDHuyTQmbkty
fP3lENjZgMu4aOyreeNVtv/6zpQRm/82bI7PXgI8iWzkoUG9F5lvYlnmIpexbuDb
pjVXINxguJ+zDecBcjIRc0rHhdQ8Wuz82gQO11tO22Nj7j9BIZcY9X3d+oPouW0G
j01T4w/gLFIwbW6asrXLYaWBNgDej416MSbDDKdtlfAkuBNKKczwQrTJgEwgIGAV
QVIoE6DngQZbaKyKiRdfeSjCdqHEc2T1b/ZcvDuCScpp9ZNkDjSVezPTfvMAyS8z
BqcnIcdqWM+QnF940FXYYWvGLpBciA==
=E/Kk
-----END PGP SIGNATURE-----

--uz8oQWuihi4QVrR2zOgjaJ2sFqPmGin9G--


--===============6539891055365269560==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6539891055365269560==--

