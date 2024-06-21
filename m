Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 874C7C27C4F
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 22:17:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8jGY36YqMcCZ1C9MJkVuvEnC+aSC+2WBvPkyKgGELQ8=; b=sWHa67AtSkmdFY
	1gNSqAQDOlmMsIkfZqr84JvoRVTu+zMqeOUPrnZFKW64LJak3y3GR/brO/WnIvIdtcDfA/Z0VGF7v
	icUKAPdL6qqPZ6PdbShOsdcNR6t89/z+Z+HUVYOt/htloQRLimA0bwaX6+s2/AVlfJOYFvdWDh7Jc
	+XRg1D8AHlmRf8brD4PSIwBTNGau70pqgvwKEl8yLYL7i6xFBTT5EYHy9+M5QU5RJx86MR5qh5QI7
	dhwCJmkVOtuT7XMCA/nAKOJcjRzQlGH7ssyJJhUv7THICiP9uX/2dfzBdNXG9TKIPEyKZdsg5+AUf
	cXC9rgnVzBpTsRPmDWdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKmZc-0000000AjUH-3TWD;
	Fri, 21 Jun 2024 22:17:36 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKmZX-0000000AjT4-43HV;
	Fri, 21 Jun 2024 22:17:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id ACA18CE3D30;
	Fri, 21 Jun 2024 22:17:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0FBAC2BBFC;
	Fri, 21 Jun 2024 22:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719008244;
	bh=XIgP3gnjd7LTC0cYexQhnrJXzTEPBFd9t0ht0ox/1jo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=FNLs4VxLGgEYEzsY52miCNNujSfXwPo8nvN02pkUceS4AGd/t9R0YBoGuSz0iSBC5
	 1P24T8SfRPpNKmYsJD3FQf44uMwvChSF0oWtp9SwcqssBupu93Dg7mQNvgDm9G60Uv
	 U2FFjo9EmbwgtSJ5EizcIuV+n3ybPB4bOryBaXpCd92LGyHoja7v/Y+S7s8WBBfq9C
	 XvOamhRIhWggfPWdi28OLfKdK+MZBdU6E++x8qWpRn2D5+Wu3w0XzST89l7AeJewfc
	 Y6jKnIVav4PDjOgs66bE1oBclTu97rV0yQDXG1sDtBRGWuesPPneNSCW+t+RoGwt3N
	 CuVYcjsbcJRYA==
Message-ID: <ead26406-dd3b-491c-b6ab-11002a2db11a@kernel.org>
Date: Sat, 22 Jun 2024 00:16:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] hwrng: add Rockchip SoC hwrng driver
To: Dragan Simic <dsimic@manjaro.org>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: Daniel Golle <daniel@makrotopia.org>,
 Aurelien Jarno <aurelien@aurel32.net>, Olivia Mackall <olivia@selenic.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Anand Moon <linux.amoon@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Martin Kaiser <martin@kaiser.cx>, Ard Biesheuvel <ardb@kernel.org>,
 linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <cover.1718921174.git.daniel@makrotopia.org>
 <57a7fb13451f066ddc8d1d9339d8f6c1e1946bf1.1718921174.git.daniel@makrotopia.org>
 <f8e6b1b9-f8ff-42df-b1ef-bcc439c2e913@kernel.org>
 <173ce1663186ab8282356748abcac3f4@manjaro.org>
Content-Language: en-US, de-DE
From: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
In-Reply-To: <173ce1663186ab8282356748abcac3f4@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_151732_382435_758775FA 
X-CRM114-Status: GOOD (  14.77  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8gRHJhZ2FuLAoKT24gNi8yMS8yNCAyMDoxMywgRHJhZ2FuIFNpbWljIHdyb3RlOgo+IE9u
IDIwMjQtMDYtMjEgMTE6NTcsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+IE9uIDIxLzA2
LzIwMjQgMDM6MjUsIERhbmllbCBHb2xsZSB3cm90ZToKPj4+IEZyb206IEF1cmVsaWVuIEphcm5v
IDxhdXJlbGllbkBhdXJlbDMyLm5ldD4KPiAKPiBbc25pcF0KPiAKPj4+ICvCoMKgwqAgcG1fcnVu
dGltZV9zZXRfYXV0b3N1c3BlbmRfZGVsYXkoZGV2LCBSS19STkdfQVVUT1NVU1BFTkRfREVMQVkp
Owo+Pj4gK8KgwqDCoCBwbV9ydW50aW1lX3VzZV9hdXRvc3VzcGVuZChkZXYpOwo+Pj4gK8KgwqDC
oCBwbV9ydW50aW1lX2VuYWJsZShkZXYpOwo+Pj4gKwo+Pj4gK8KgwqDCoCByZXQgPSBkZXZtX2h3
cm5nX3JlZ2lzdGVyKGRldiwgJnJrX3JuZy0+cm5nKTsKPj4+ICvCoMKgwqAgaWYgKHJldCkKPj4+
ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gZGV2X2Vycl9wcm9iZSgmcGRldi0+ZGV2LCByZXQsICJG
YWlsZWQgdG8gcmVnaXN0ZXIgCj4+PiBSb2NrY2hpcCBod3JuZ1xuIik7Cj4+PiArCj4+PiArwqDC
oMKgIGRldl9pbmZvKCZwZGV2LT5kZXYsICJSZWdpc3RlcmVkIFJvY2tjaGlwIGh3cm5nXG4iKTsK
Pj4KPj4gRHJvcCwgZHJpdmVyIHNob3VsZCBiZSBzaWxlbnQgb24gc3VjY2Vzcy4KPiAKPiBJIHJl
c3BlY3RmdWxseSBkaXNhZ3JlZS7CoCBNYW55IGRyaXZlcnMgcHJpbnQgYSBzaW5nbGUgbGluZSB1
cG9uCj4gc3VjY2Vzc2Z1bCBwcm9iaW5nLCB3aGljaCBJIGZpbmQgdmVyeSB1c2VmdWwuwqAgSW4g
dGhpcyBwYXJ0aWN1bGFyCj4gY2FzZSwgaXQncyBldmVuIG1vcmUgdXNlZnVsLCBiZWNhdXNlIHNv
bWUgcGVvcGxlIG1heSBiZSBjb25jZXJuZWQKPiBhYm91dCB0aGUgdXNlIG9mIGhhcmR3YXJlIFRS
TkdzLCBzbyB3ZSBzaG91bGQgYWN0dWFsbHkgbWFrZSBzdXJlCj4gdG8gYW5ub3VuY2UgaXQuCgpJ
IGFncmVlIHRvIEtyenlzenRvZiBoZXJlLiBGcm9tIHRoZSBQT1Ygb2YgYSBkcml2ZXIgYXV0aG9y
LCB5b3VyIG93bgpkcml2ZXIgaXMgdmVyeSBpbXBvcnRhbnQgYW5kIHdoaWxlIHlvdSB3cml0ZSBp
dCwgaXQgcmVhbGx5IGludGVyZXN0cwoqeW91KiBpZiB0aGUgZHJpdmVyIGlzIHN1Y2Nlc3NmdWxs
eSBwcm9iZWQuIEhvd2V2ZXIgZnJvbSBhIHN5c3RlbQpwZXJzcGVjdGl2ZSB0aGVzZSBhcmUgYW5u
b3lpbmc6IFRoZXJlIGFyZSBlYXNpbHkgPjUwIGRldmljZXNbMV0gb24gYQpzeXN0ZW0sIGlmIGFs
bCBvZiB0aGVzZSBwcmludCBhIG1lc3NhZ2UgaW4gcHJvYmUsIHlvdSBoYXZlIGxpdHRsZSBjaGFu
Y2UKdG8gc2VlIHRoZSByZWxldmFudCBtZXNzYWdlcy4gRXZlbiBpZiBldmVyeSBkcml2ZXIgYXV0
aG9yIHRoaW5rcyB0aGVpcgp3b3JrIGlzIGEgc3BlY2lhbCBzbm93IGZsYWtlIHRoYXQgaXMgd29y
dGggYW5ub3VuY2luZywgaW4gcHJhY3RpY2UgdXNlcnMKb25seSBjYXJlIGFib3V0IHlvdXIgZHJp
dmVyIGlmIHRoZXJlIGlzIGEgcHJvYmxlbS4gQWRkaXRpb25hbGx5IGVhY2gKbWVzc2FnZSB0YWtl
cyB0aW1lIGFuZCBzbyBkZWxheXMgdGhlIGJvb3QgcHJvY2Vzcy4gQWRkaXRpb25hbGx5IGVhY2gg
Cm1lc3NhZ2UgdGFrZXMgcGxhY2UgaW4gdGhlIHByaW50ayByaW5nIGJ1ZmZlciBhbmQgc28gZWRn
ZXMgb3V0IGVhcmxpZXIgCm1lc3NhZ2VzIHRoYXQgbWlnaHQgYmUgbW9yZSBpbXBvcnRhbnQuCgpT
byArMSBmb3IgZHJvcHBpbmcgdGhlIGRldl9pbmZvKCkgb3IgYXQgbGVhc3QgdXNpbmcgZGV2X2Rl
YnVnKCkgZm9yIGl0LgoKQmVzdCByZWdhcmRzClV3ZQoKWzFdIE9uIG15IGxhcHRvcCBpZiBoYXZl
OgoKCSQgZmluZCAvc3lzL2RldmljZXMgLW5hbWUgZHJpdmVyIHwgd2MgLWwKCTg3CgogICAgIE9u
IGEgUmFzcGJlcnJ5cGkgaXQgeWllbGRzIDY2LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
