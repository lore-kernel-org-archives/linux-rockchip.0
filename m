Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9CEEC369BD
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Apr 2025 09:49:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:Cc:To:From:Subject:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tpCrqAT/E76WJAaQTKpsSWL/4Jq0euvor5V8meFFvGs=; b=uyGLIeO8d8JinTE4sPe4Y/oHKI
	GIHJpdCS5ZSttQ5gJL+UFpKUJSch6nwvD1p39R0GjmE0XlFeMOdeiiEP9ENSemuQif5VDhjwqxmFd
	tfZawE1yn/lZVCGz3cZl9SkT/qYbnEf6ocQznwlN1EoqIyBwVKQPm28aAdJ//+odKRNVi44d+kU8w
	P7pmXSIJMIQnp4l0MLgyfj+yncb26YjSAY1VIo6af5EeJy4Kw6zIb3Gs1+z7RLunicqVS6KihYDBP
	idMNE1xAZSsZKEOylE+SrM2vsHJHjZEHWFP1XpebAP3Zp6IYO8BMkWJNlUEuEcF0N7xI9v053VP5g
	TOZAySJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u64on-000000016qG-1kWw;
	Sat, 19 Apr 2025 09:49:01 +0000
Received: from out-170.mta1.migadu.com ([95.215.58.170])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u64ol-000000016pR-0V1z
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Apr 2025 09:49:00 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1745056135;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=WYcIiX7im0SwEgUBjW9RpMKMf9b+aamLPfpMOC5NliI=;
	b=XKnDJwgwVh+2AJkayQ0NeH2Kvg8qAbd1tnYvcMl+DKXHqiczpSpLHXSIzPBsxU/16t7iF4
	hlYG9UTJWjXQNnUnkl64Qgc/oFfw/T8qtw6j0f9K6IvZmc7UEmQIKrmtpBHirzgLvOQPh0
	J3ZWdIczd+6ufV4zdSA/E+qA1OtlNVgCdyNgn29IB8XuTI5EEc9vqkSezr7poIUqsoBwmV
	MxMirsfelUlnq6h9recCZVOrPLxjseiwhEtSocWqQ96RR6A5TKgXHBsJoiTs3TwP6IiEf0
	CejUseD8cefGgezfsiE2cTsZxrvlhitP1egzdsgPVf3AdOdTHVAn/I5JnviHXA==
Date: Sat, 19 Apr 2025 11:48:46 +0200
Message-Id: <D9AIRPBIHXAO.3SDHEJW99DP4X@cknow.org>
Subject: Re: [PATCH v3 00/10] Tegra Security Engine driver improvements
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Herbert Xu" <herbert@gondor.apana.org.au>
Cc: "Akhil R" <akhilrajeev@nvidia.com>, <davem@davemloft.net>,
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
 <linux-crypto@vger.kernel.org>, <linux-tegra@vger.kernel.org>, "Dragan
 Simic" <dsimic@manjaro.org>, "Corentin Labbe" <clabbe@baylibre.com>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20250224091610.49683-1-akhilrajeev@nvidia.com>
 <D99QMGBHHYJO.1D7D0ZXJLBG9Y@cknow.org>
 <aAMhYaq0Ze-z6E8q@gondor.apana.org.au>
In-Reply-To: <aAMhYaq0Ze-z6E8q@gondor.apana.org.au>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250419_024859_569700_888F52A5 
X-CRM114-Status: UNSURE (   8.17  )
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
Content-Type: multipart/mixed; boundary="===============6785649902256670332=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============6785649902256670332==
Content-Type: multipart/signed;
 boundary=787e13d5ada3b08197d931c1726e36235e1092534fb802965a37df9b17c0;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--787e13d5ada3b08197d931c1726e36235e1092534fb802965a37df9b17c0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Sat Apr 19, 2025 at 6:06 AM CEST, Herbert Xu wrote:
> On Fri, Apr 18, 2025 at 01:45:23PM +0200, Diederik de Haas wrote:
>>=20
>> Earlier today I tried to boot my 6.15-rc1 kernel on my RockPro64
>> (rk3399) and that didn't go too well:
>
> This should be fixed in the latest mainline kernel where hash
> request chaining has been disabled.

Excellent, thanks for letting me know.
b2e689baf220 ("crypto: ahash - Disable request chaining")

Cheers,
  Diederik

--787e13d5ada3b08197d931c1726e36235e1092534fb802965a37df9b17c0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaANxgAAKCRDXblvOeH7b
blJ4AP4v0v8uHn92ZBD/ipPt+rGobZitRKp0xpoUesLYwz/VOQD+ObBSY+Fau99D
uvbyarhPlqm3RUyDXRzJnNuy1XXOEwY=
=82VX
-----END PGP SIGNATURE-----

--787e13d5ada3b08197d931c1726e36235e1092534fb802965a37df9b17c0--


--===============6785649902256670332==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6785649902256670332==--

