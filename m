Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 299F0C7EE2A
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Jun 2025 19:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:From:Subject:Cc:To:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VfsmXAd5Ex8oOvkOEVPfUQ3HMS6g5Ue895iDoWDo66k=; b=WaofzdIzFV17k9Vh6+LSKK+PZW
	lrqI402Frvo58JtYvYTiOIYjBCw4q1VvuDKHl8IoirXcF+6EczbapvIegMx0TsyF3jLpKbcnJNcBs
	41P+wd11wnHqO77X9BnUqhafhmnEC2KcISM3lpFkddkaKqoYcbgFL0kf0oOG0Of3wMJ3B+Zczt96k
	vGYg8IzX2gsl1IPlYwi6NIjoPX2dSprBQzuhza45U/efUV0pkbWHX7YYO0XFxrO8yOEpH6UlYk2wL
	Ol/ciJSj1racs+/fKmGqOvgaZuVR8GnNqcaRXwb6ftiY4w3UU2+XOnGbESp5reqtjRWbgPjoZuhgL
	vXKuj2pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVEMx-0000000FY70-01Yp;
	Fri, 27 Jun 2025 19:04:15 +0000
Received: from out-172.mta1.migadu.com ([95.215.58.172])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVCJS-0000000FKl3-2xrH
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Jun 2025 16:52:32 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1751043147;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=tGcjuL2slpWhzqeNUJrDqbaR1n+v8Pj6UenPCqATS+g=;
	b=kSjCkU4w5siXqHmivmcrSVGuVOGanuQatBxL5wL6DA7gbq3/cV4Iz+Lt3bjWGA0ajFitZH
	ZRcTzfoYnXJ0J3gb2FPrM45P9fvqLHjTdZ/VimZ1zl+Q+SdJ5VO/nb6tSqEpcpZUsaMXye
	U7Nt1zsLU/xbGHw+WBxhPQciMCe9RWu+1+OrLxi9/DSI/PTsOJkpuXuU5j6bqqD4jpq8Xg
	rDN5lZNB/Di8qrpx5Q2LGyE6E4WLg9f7qhYJNyJnER2rRgoQWPR8wSfVKN/+svwCDu6JuR
	xMCpyS+wRGTW8Dt9OA6SezudNoWmpTMbdgPKnT0TPs1QsBZQ8faG6pFn5ouD6g==
Date: Fri, 27 Jun 2025 18:52:08 +0200
Message-Id: <DAXGZG0DEKS2.7RLXKSDO0C9T@cknow.org>
To: "Quentin Schulz" <quentin.schulz@cherry.de>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>
Cc: "Dragan Simic" <dsimic@manjaro.org>, "Johan Jonker" <jbx6244@gmail.com>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/8] arm64: dts: rockchip: Refactor DSI nodes on rk3399
 boards
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
References: <20250627152645.740981-1-didi.debian@cknow.org>
 <20250627152645.740981-3-didi.debian@cknow.org>
 <b1c789bf-1369-42ec-8bb3-d7a45c92abf0@cherry.de>
In-Reply-To: <b1c789bf-1369-42ec-8bb3-d7a45c92abf0@cherry.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_095231_012631_87B95527 
X-CRM114-Status: GOOD (  16.51  )
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
Content-Type: multipart/mixed; boundary="===============7004137533358077758=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============7004137533358077758==
Content-Type: multipart/signed;
 boundary=96f61c01bf8107678ee9012b3e19c12962b79f2f2124dfe2dc8bdea55bc2;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--96f61c01bf8107678ee9012b3e19c12962b79f2f2124dfe2dc8bdea55bc2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Quentin,

Thanks for taking a look.

On Fri Jun 27, 2025 at 6:10 PM CEST, Quentin Schulz wrote:
> On 6/27/25 5:16 PM, Diederik de Haas wrote:
>> The #address-cells and #size-cells properties are not useful on the DSI
>> controller nodes; they are only useful/required on ports and panel(s).
>> So remove them from the controller node and add them where actually
>> needed on the various rk3399 based boards.
>>=20
>> Next to that, there were several (exact) redefinitions of nodes which
>> are already present in rk3399-base.dtsi to add a mipi_out endpoint.
>> Simplify that by referencing the mipi_out phandle and add the endpoint
>> to that, which allows the removeal of the ports redefinition.
>>=20
>> And fix 1 instance where the mipi_out referenced node was not sorted
>> correctly.
>>=20
>> This fixes the following DTB validation warnings:
>>=20
>>    unnecessary #address-cells/#size-cells without "ranges",
>>    "dma-ranges" or child "reg" property
>>=20
>
> Too many unrelated changes in this commit, please split into multiple=20
> commits.
>
> I could identify:
>
> - moving address-cells/size-cells from SoC.dtsi to board dts(i)s,
> - reordering properties to better match DT coding style=20
> https://www.kernel.org/doc/html/latest/devicetree/bindings/dts-coding-sty=
le.html#order-of-properties-in-device-node
> - use phandle to directly access ports,
> - reorder DT node to better match DT coding style=20
> https://www.kernel.org/doc/html/latest/devicetree/bindings/dts-coding-sty=
le.html#order-of-nodes

I initially had it as several commits, but that resulted in (f.e.) 1
issue being fixed, but 1 (or more) others would pop up.
Those were then fixed in follow-up commits, but I assumed I'd get Rob's
bot screaming at me for introducing new warnings (first).

And as they all relate(d) to fixing the dsi node, I then choose to
combine them (but still separated by SoC).
IMO there are several ways to organize the commits and each would have
their pros and cons, so I 'settled' for this arrangement.

So I prefer to wait for other people's opinion first before reorganizing
the commits again (if there's a different consensus).

> The change for RK3399 Puma Haikou Video Demo DTSO is fine for me.

Thanks :)

Cheers,
  Diederik

--96f61c01bf8107678ee9012b3e19c12962b79f2f2124dfe2dc8bdea55bc2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaF7MRAAKCRDXblvOeH7b
bvDfAP9WGhpdcQcQ06Wxrsu8JLAg+fmJPYyjmIUtlZTFnFqf1AEAx9/kmKAqTewV
XzVG0YMlKfLnQS0bh46/FwKpZg/SlAc=
=EA9N
-----END PGP SIGNATURE-----

--96f61c01bf8107678ee9012b3e19c12962b79f2f2124dfe2dc8bdea55bc2--


--===============7004137533358077758==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7004137533358077758==--

