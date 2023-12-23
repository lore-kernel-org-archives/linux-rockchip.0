Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71A01C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Dec 2023 14:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N1x4xUAS41fVqI4pUjgCROCDG22+YpKMWw3soFj6+Ek=; b=Cdx2YnTND07TgGw9Ug00Iu6W1v
	6WbcYQS/bZPMeS0mojzr9bZSBhuMcn8ZBpGcqdY0BvrOAbcrynK5id+Oic2a++jHhL4rUBS3orHHq
	cwezsgZlfuZLtu6FwvfeUZInTDi6QJsH4SI5FIx2N6Lj0uAUqiTS8P8NWNjuinFybmeZ5WEpo2I9I
	m+hR+gnr48OOPipg3WPb5RWrOBCmSjyH3gT/M+ZNmpF1yCCsZDBUOBI67lXyn1t2s6blomN4ZRfB6
	CpGCfDGoJhpJFLicAOt+8jsUU2+ZJskSohMnpk9DehKuCvEOgLc++MGrw2q4X4Y1V4UChM/rXYD0e
	ZerKRlDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rH2pV-0081Ro-1w;
	Sat, 23 Dec 2023 14:18:17 +0000
Received: from out-184.mta0.migadu.com ([91.218.175.184])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rH2pR-0081Qt-0X
	for linux-rockchip@lists.infradead.org;
	Sat, 23 Dec 2023 14:18:15 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1703341089;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=PgAKrzFUuBY/aRZdG/sV9t0Klms7KMGcDs+12G81t/o=;
	b=mjWC7BbO22IYp9BhC/jUQ1r8tbAUbhktMbgJwM99pf3WvyVc1sI1SOnFItgAj87ZFAdsqk
	uiamEOz6g8pKsPX/FBQUTBsnqhoHGbq6uFNSXHJ5Oz7MPU0mX2f+dqKL2rHm/Rv0KLDUaX
	+Ls+BuIi6iTiv6fyafYawZ63NGyHqoNqc0KupplpFdw+e6kDTFbTwOcTBWHwfY+/yFSg48
	wVwcq1FjcVQ6GWnQbSr2e3rWcRZ3nt91chwlQ60tAvt47FmoR8Z7wwsbukc/lNsL6i44Dj
	J3ImyV5P2/dzL2d7m28SIqgb5/0K43I43OvM0U0onbOsmVfQYsP0e2pgs1oUqg==
From: Diederik de Haas <didi.debian@cknow.org>
To: Manuel Traut <manut@mecka.net>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, Mark Yao <markyao0591@gmail.com>,
 Segfault <awarnecke002@hotmail.com>, Arnaud Ferraris <aferraris@debian.org>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 4/6] arm64: dts: rockchip: Add devicetree for Pine64 Pinetab2
Date: Sat, 23 Dec 2023 15:17:58 +0100
Message-ID: <1883322.fLvJxeCpJd@bagend>
Organization: Connecting Knowledge
In-Reply-To: <ZYbnxkkCIJtzqa0h@mecka.net>
References: <20231222-pinetab2-v1-0-e148a7f61bd1@mecka.net> <2121710.IWpXjAX0fk@bagend>
 <ZYbnxkkCIJtzqa0h@mecka.net>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231223_061813_746887_694F3861 
X-CRM114-Status: GOOD (  20.78  )
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
Content-Type: multipart/mixed; boundary="===============2404950985366338966=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============2404950985366338966==
Content-Type: multipart/signed; boundary="nextPart28392273.q4UQjrvTh7";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart28392273.q4UQjrvTh7
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: Manuel Traut <manut@mecka.net>
Date: Sat, 23 Dec 2023 15:17:58 +0100
Message-ID: <1883322.fLvJxeCpJd@bagend>
Organization: Connecting Knowledge
In-Reply-To: <ZYbnxkkCIJtzqa0h@mecka.net>
MIME-Version: 1.0

Hi Manuel,

On Saturday, 23 December 2023 14:59:34 CET Manuel Traut wrote:
> On Fri, Dec 22, 2023 at 06:01:54PM +0100, Diederik de Haas wrote:
> > On Friday, 22 December 2023 12:05:44 CET Manuel Traut wrote:
> > > +
> > > +&cru {
> > > +       assigned-clocks = <&cru PLL_GPLL>, <&pmucru PLL_PPLL>, <&cru
> > > PLL_VPLL>; +       assigned-clock-rates = <1200000000>, <200000000>,
> > > <500000000>; +};
> > 
> > Attachment seem to work and for this I also have the attached patch in my
> > patch set.
> > IIRC without it you get an error in dmesg immediately at boot up which is
> > visible on the PT2 *if* you have immediate visual output (which is not
> > (yet?) the case in my image/kernel).
> 
> you can see the message also by calling "dmesg --level err".
> I could verify that your patch removes the error message.

As I have been using that patch for a while, I couldn't verify it myself 
anymore ;-)
If you use the (default) danctnix image, then you see it immediately at boot 
up (at least the last time I tried it). With my (WIP) image, I only get visual 
output after 5-7 seconds, so you'll likely miss that visual error if the image 
you use also has a delay before outputting things on the screen.
But indeed, it would still show up in dmesg (without the patch).

> I will pick the change for v2.

Great :-)
--nextPart28392273.q4UQjrvTh7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZYbsFgAKCRDXblvOeH7b
bnfaAQCB19vhFqKkdKyoVT/ScgOlKuwEnm2ELd5BtzT6OGdHaAEAjHsFPIBnxiw3
Tqs+4hbh0skq43sF8GQX35lzxGjgYg4=
=q5pl
-----END PGP SIGNATURE-----

--nextPart28392273.q4UQjrvTh7--





--===============2404950985366338966==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2404950985366338966==--




