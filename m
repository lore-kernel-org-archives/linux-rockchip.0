Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4E8CC48260
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jan 2024 13:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BJ81O8lFONaDVx6N75+TqbFBqUuKR4i/0sPx9H1/8G0=; b=G/DmJv7ymxE4Bu8xenpY5EA45r
	FTfNJZUpxx6m6sVCp7cuygBqWFCI2ujQANyYPr1EUcpjZ3HBv+idLny6hGzxkjR2jd5dApNYqBsf1
	uyUJhJhh6fPxGRrDR66nmWY6riK1LAczbBr/ou7RV0gQaI7BC83qBOvQElXf6PZEzlaYnWsq02o1C
	1atDz4CGkLLwcZjGdi0qdW/0M+pT4iG3q2Te2L9zfU1MOWKqzaxZorhXF3J5nB7qRn253pI54S6QE
	kHaTXqp4OkQfYxMD58vsOLkCXkZVsu8+8gPIAf2hfuDDcoL+W9uiDxtydOKgWkOSapUGYW10vCsL5
	ro1AuNnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rSzt2-000000004Eg-0ULM;
	Thu, 25 Jan 2024 13:35:20 +0000
Received: from out-174.mta0.migadu.com ([2001:41d0:1004:224b::ae])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rSzsx-0000000047l-1Caw
	for linux-rockchip@lists.infradead.org;
	Thu, 25 Jan 2024 13:35:18 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1706189701;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=51k3AHXGohIJoLoxDV00w5xStGGYYOVxEKd0gWSXjl4=;
	b=AXEWAW6S4/kdZsZwyWh+CUsGYuDIYgb4amFUns0o+QYTTakww1DwkpcnsAN3Z5KmRXsr67
	QBPNlEgkrY9lEZd6RsEnNACI2PYcQeDIEoJ7T8Twai7zniYI6pcBQXjBSAg8C3qU067Ttm
	c9NXwyFXxrA7/eEo2islYV6bMurKDf/Y6fVt6KLPTHG1MIrer9PuBpvu3kOuBrDZg8Ua3b
	IhSqVliB1rtwli0/xiSxtvVU1oZXsR9GpOvZgC34/escTgpfVkK9zlV3ml0Sa6/vqCGcv5
	28qB28r5hidmQTxRa8PSVCH/hUKQoie22143UGpoHbwGW9Z6BLxYGW2KMrKGLA==
From: Diederik de Haas <didi.debian@cknow.org>
To: Alexey Charkov <alchark@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org
Cc: Dragan Simic <dsimic@manjaro.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH 2/4] arm64: dts: rockchip: enable built-in thermal monitoring on
 rk3588
Date: Thu, 25 Jan 2024 14:34:47 +0100
Message-ID: <1824717.EqSB1tO5pr@bagend>
Organization: Connecting Knowledge
In-Reply-To: <245f5692-be30-4216-8b13-988092793732@linaro.org>
References: <20240125-rk-dts-additions-v1-0-5879275db36f@gmail.com>
 <20240125-rk-dts-additions-v1-2-5879275db36f@gmail.com>
 <245f5692-be30-4216-8b13-988092793732@linaro.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_053516_767561_0151D77F 
X-CRM114-Status: UNSURE (   8.24  )
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
Content-Type: multipart/mixed; boundary="===============0392674495062753730=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============0392674495062753730==
Content-Type: multipart/signed; boundary="nextPart4312370.MBFMXe44yd";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart4312370.MBFMXe44yd
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
Date: Thu, 25 Jan 2024 14:34:47 +0100
Message-ID: <1824717.EqSB1tO5pr@bagend>
Organization: Connecting Knowledge
In-Reply-To: <245f5692-be30-4216-8b13-988092793732@linaro.org>
MIME-Version: 1.0

On Wednesday, 24 January 2024 22:56:21 CET Daniel Lezcano wrote:
> > +                       cooling-maps {
> > +                               map1 {
> 
> s/map1/mpa0/

FTR: that should be ``s/map1/map0/``
(verified with Daniel Lezcano)
--nextPart4312370.MBFMXe44yd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZbJjdwAKCRDXblvOeH7b
biA/APwNyu3DMP1k8u1Z1gxe5C8Vi6G43KSWumtPGN2v9paVbAEAtSdbFcND47gA
MsiAV1fUxJbOATVo1LIngCtRbhbSkAs=
=YVZI
-----END PGP SIGNATURE-----

--nextPart4312370.MBFMXe44yd--





--===============0392674495062753730==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0392674495062753730==--




