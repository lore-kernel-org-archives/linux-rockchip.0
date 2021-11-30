Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6E9CC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Nov 2021 21:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iiGOatxVpA1+aTRXO3MxM38f2HBvt/jZhrfTJW/hVno=; b=gnnc64D1pDDy+AmL6Nof6tpp1o
	aGwAkgV7/NqGsNt2nn2ZH6h5xDdtirDeBXhcqVjnI1oTGj1U0cmdYOLEYd0KP6ZGlGHjFNJ8GFzkC
	0if13uLl3C7CBfoKXuGRUIwFtt15+tu8+H9iuYgMXIyo1kBoN/x+LDO5K/5knjbxTTHlpVLNJCuql
	BIxKJPuT9UUraKg9RzH7O98zwe0+ewGJhf8NhMyAtvVvdBdY6+7c79AFFogdsiUws7uDtcd0Pqw2k
	BQXKbjQsiVBkoDIJRiS22Y5GUizNoNP3TGvYLneJOz7dO/H3pGulYsSFdFqdIneZk6OlheLO0q6+J
	njXjeExA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msAoP-006lDz-Bo; Tue, 30 Nov 2021 21:37:17 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msAoB-006lCv-UC; Tue, 30 Nov 2021 21:37:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 808D8B81CBB;
 Tue, 30 Nov 2021 21:37:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB1C1C53FC7;
 Tue, 30 Nov 2021 21:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638308221;
 bh=MZMyEnMSvEk8R5TGwwDHjwcmN8HW9IXH8UDHhjIr0ao=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=c9RqmnK9oiIGvjJ5a9bFvTeAObgU1/rE8hqiXR5o8teGb01SmQ+oHeh19ypv8QUkF
 7KXVB2jVSv4GOoGEn7/gUAcutKjVxAvA2WwQwr5rh2t72C7DiCWdJRW+BYb+rHBSKf
 UyqbghqTIr+M7FBnPQmeOjTLCxENg75NIHR7P9YamT/J6xBTJv83ywaHM6ixY5caoy
 vVpoY7md5Ncm7lo8SzHAwYFqNCoMuMsfGs11gbki+ZI68C49WDZla6s0OHeu36iPjF
 rEUqvi7iTn5lJvsR292lRbYKtt2unHJAhJyzlkkubPa73YTKMcB27lk5PY0iWW6Izx
 J0+epgFxPn7Ew==
Date: Tue, 30 Nov 2021 22:36:58 +0100
From: Wolfram Sang <wsa@kernel.org>
To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk@kernel.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 "open list:I2C SUBSYSTEM HOST DRIVERS" <linux-i2c@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>
Subject: Re: [RESEND PATCH] i2c: rk3x: Handle a spurious start completion
 interrupt flag
Message-ID: <YaaZejhnqHa/nlYI@kunai>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
 =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 "open list:I2C SUBSYSTEM HOST DRIVERS" <linux-i2c@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20210924111528.2924251-1-megous@megous.com>
 <YaSfZxtYtV+SfJqL@kunai> <20211130155443.sbvpirzj6moikxl2@core>
MIME-Version: 1.0
In-Reply-To: <20211130155443.sbvpirzj6moikxl2@core>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211130_133704_157250_8AEC37C0 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============1543978863783403573=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1543978863783403573==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Lz55wWF51uLbNsJl"
Content-Disposition: inline


--Lz55wWF51uLbNsJl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> Spurious interupt happens in both modes.

Thanks for the detailed explanation!


--Lz55wWF51uLbNsJl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmGmmXoACgkQFA3kzBSg
KbYtFBAAkT42AT46O5Tr1IZfV+kaz0A0tROXvUJpREPcg/T9BmAOVf9DGBum9vCV
UKLEEvLJzhYaNzftddVxThxKUy8szPMElaos1rYMRwev9VPgk/GcNl8/ldAS5JRN
6ZePQC8OucKFmv3LeR0pcD7Q1deBl14kPS7THgE3zhI9Zd7IqKM5VD/ljdZtw46u
8L5I9AoVzdklzcpwUzBRF8+uxkliuyJ3TNXM5AVURt6pEmmCTw3v+JsaxKTokH8B
NCgDWtwei8TCAzfWiTxKs9gBTw9lngECv/9YkmlmDIA28lIAZWQzwlAkKidXjWoX
Qu5fKsZrOco9c1nRe0iHMCraOhC0tAt4jLvH/1R129PHVE+N3bAeINTcwe+V+RqG
bmNReFVYJZxiABWHxZBzUj5pqologdGiP2U08sbeGnENOlV9mzlPbjC2Oj57HjXG
vpfdfg5jqAJE3rD43feRKaFBLnjVQOYdmYY96EMzLGtBCXOXr7sfBnaMKkgSfnXb
zNVM5XpBNa08TodMXHIhMiqVfRmAtL1BdIcfcne/o7vzO8ZxFHhm+TnsZCA470R6
umBk2wZg9AqUdxbmemiO4Vpoh4dfQIUkfnaUs8OnJmjxRmySKz5oo3Wz+qWEmsVm
u0JdXcI6oBkIDMuRL1ataDAM74h8BwEXf9gaz3CTksTd00WZAMg=
=AEvi
-----END PGP SIGNATURE-----

--Lz55wWF51uLbNsJl--


--===============1543978863783403573==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1543978863783403573==--

