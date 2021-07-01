Return-Path: <SRS0=qNMI=LZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57E61C11F64
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Jul 2021 13:36:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 22F086141A
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Jul 2021 13:36:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 22F086141A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kleine-koenig.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l/Cq/NvWbhiTNLeX8P9KwwcvAIeT9TErZxr8nh/R7ng=; b=xY8E089cnTpDVrdS8cvgQKmTnM
	SR7HbXemB1Mn7wcpL8B5FeQsDNQxZXJiyfVQdIMXIJbwoNkEFe1mhk8AwXsdglybRX2OCmM4VQ9A2
	ZrP+Vpnikpf7RAbSGLXKSh3zPwMJS/SFVEtMzchFpq3SgyXkiVmnJdBgvFt5sKVkK5kdvgNdANOJV
	59404KjIxeePxSwypThHL4uj63Pm735VyB6YarvAI+94DJ2AH7z3hmEGX2V1Ioko9wLlTyPuUus1c
	7+lsNp7vcfuhXq6r6wBySHY/5A2zvoesjxnq8x/jgqkqcKthNZtoh/rtCHHtIytX6LSxJh5VzSAAZ
	5K8dHmHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lywrk-00HUp0-KO; Thu, 01 Jul 2021 13:36:28 +0000
Received: from antares.kleine-koenig.org ([2a01:4f8:c0c:3a97::2])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lywrL-00HUc3-7n; Thu, 01 Jul 2021 13:36:05 +0000
Received: from antares.kleine-koenig.org (localhost [127.0.0.1])
 by antares.kleine-koenig.org (Postfix) with ESMTP id 21629BEC22E;
 Thu,  1 Jul 2021 15:35:59 +0200 (CEST)
Received: from antares.kleine-koenig.org ([94.130.110.236])
 by antares.kleine-koenig.org (antares.kleine-koenig.org [94.130.110.236])
 (amavisd-new, port 10024)
 with ESMTP id 1xiJBhPXBdcc; Thu,  1 Jul 2021 15:35:58 +0200 (CEST)
Received: from taurus.defre.kleine-koenig.org (unknown
 [IPv6:2a02:8071:b5c8:7b00:36f3:9aff:fec2:7e46])
 by antares.kleine-koenig.org (Postfix) with ESMTPSA;
 Thu,  1 Jul 2021 15:35:57 +0200 (CEST)
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: helios64: fixup USB setup
To: Dennis Gilmore <dgilmore@redhat.com>, linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20210701004043.18585-1-dgilmore@redhat.com>
 <01f1b032-14a8-a6fa-9063-23de65fc6f43@kleine-koenig.org>
 <f46b234e0aaf4356804d5e1446910bbedcbddb51.camel@redhat.com>
From: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>
Message-ID: <dbb04649-d56c-32ac-913c-5b5795851bf4@kleine-koenig.org>
Date: Thu, 1 Jul 2021 15:35:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <f46b234e0aaf4356804d5e1446910bbedcbddb51.camel@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210701_063603_478333_CEEBB800 
X-CRM114-Status: GOOD (  19.34  )
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
Content-Type: multipart/mixed; boundary="===============4503667230566868417=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4503667230566868417==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="YvRvFodUNf3nRSgnK9VvTAA07ofwB48Cl"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--YvRvFodUNf3nRSgnK9VvTAA07ofwB48Cl
Content-Type: multipart/mixed; boundary="CMaIT3Zveiav2h1hm2zKMLUREiKWD8hmX";
 protected-headers="v1"
From: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>
To: Dennis Gilmore <dgilmore@redhat.com>, linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
Message-ID: <dbb04649-d56c-32ac-913c-5b5795851bf4@kleine-koenig.org>
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: helios64: fixup USB setup
References: <20210701004043.18585-1-dgilmore@redhat.com>
 <01f1b032-14a8-a6fa-9063-23de65fc6f43@kleine-koenig.org>
 <f46b234e0aaf4356804d5e1446910bbedcbddb51.camel@redhat.com>
In-Reply-To: <f46b234e0aaf4356804d5e1446910bbedcbddb51.camel@redhat.com>

--CMaIT3Zveiav2h1hm2zKMLUREiKWD8hmX
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hello Dennis,

On 7/1/21 2:59 PM, Dennis Gilmore wrote:
> On Thu, 2021-07-01 at 11:31 +0200, Uwe Kleine-K=C3=B6nig wrote:
>> Hello,
>>
>> On 7/1/21 2:40 AM, Dennis Gilmore wrote:
>>> Without the usbdrd_dwc3_1 node defined u-boot will throw an error
>>> and
>>> reset the system.
>>
>> I wonder if this should better be fixed in u-boot then?!
>>
>>> All other rk3399 systems use this format
>>
>> This is true for the dwc nodes, however for the usb2 nodes there are
>> several that use this idiom (and even repeat the label name), see for
>> example the &u2phy0 node in
>> arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi .
>>
>=20
> looking at that file is where I got the idea to set it up as I have
> proposed, it follows the format I have submitted

I guess you didn't read exactly what I wrote and only looked at &usbdrd* =

but not &u2phy0.

Best regards
Uwe


--CMaIT3Zveiav2h1hm2zKMLUREiKWD8hmX--

--YvRvFodUNf3nRSgnK9VvTAA07ofwB48Cl
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmDdxLAACgkQwfwUeK3K
7AlVQAf/RAQaPs27pUNomG8/r01G08LL88uLjlivWTkaxbrkeD+JsdQrkncdz2VR
8kkoLdLPPl/coBFB4YFYmtKIXiYCG6fvorW19ciVM7Pe/s5VJSyJAbMF24MUwPkr
IcugWcb5CVOTa4nuhWY3Up6C0q53IRFRACI72nlUc5mcq1h4nXuXCg5wFnFwOTNL
/pwamhX8gPZd+54+YU16JgFf1rbdIJc43uSMY1kjXn8QFPcxKwZGQMKtDMRE75Ha
50xbzSlXXSDndrZl3IeNJ3W4T+7I3tb3HFwhSjZVunLntoJAoFrVIEFQF7C3k6ey
4E/EhDeFsAHZhAC7d1EnWKcMU3MBNA==
=SvsZ
-----END PGP SIGNATURE-----

--YvRvFodUNf3nRSgnK9VvTAA07ofwB48Cl--


--===============4503667230566868417==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4503667230566868417==--

