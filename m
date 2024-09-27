Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E472CEBF7F
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Sep 2024 07:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bfO1GgIV2eujx1KrrX+SBcaCSvndG2KCi/c8Si6F+3g=; b=WXSJiN3xbjQuia
	qBkNG6rErgQYljvOaqQXVb6oYVpkqad5IEAxDR1Ze7WnzPqSLz20GrdKycwniVIwbXnKUTFWX7HTi
	Edke8yKjtiQ5T+ugsUgaSClSr8JT78KLECHKFs8Qvr29Hehod4be72tDD6CoeZ/NI0I5z+vk/hTi8
	RIi34rkGqbrbgqv0i4uewKfxdq+TAMPgP6PNLYCh3bmTyRTR7UvQFRVRRYqvePQRlrioSNNtrh26Z
	+LO4GKHZOsHAcX0ugURO93ZsfH7JcR3+apJlpKQe4eCO/1Z+HcMHP3XksT7hEDvatrntMBYm1yYlL
	6qrOSxMzcw2hICQ82gGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su5SC-0000000AM6P-1JSo;
	Fri, 27 Sep 2024 07:31:52 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su5R0-0000000ALxn-2K19;
	Fri, 27 Sep 2024 07:30:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 6D09EA45290;
	Fri, 27 Sep 2024 07:30:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A435C4CEC4;
	Fri, 27 Sep 2024 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727422237;
	bh=7BBmEL4qhfybuaet/VOBEv3xMEna/TL1iMvTU7ecAdY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=hXM+Lz2yqgY5/IVVeAABostlIQMd0BjIGsnQE0PtSa65PWiLO1pR5gKH6ZNp24UGI
	 l5ElqWnNFj6nH6ubTQwfCUN+gsCaMvc7ulbRzocm116p/SnOyZU6P3Uh5z73BmaHdd
	 WgJk8nuXA9X+C6fcMTKumHLUZ6HbaiG5KHWSgpIwDIw8jFc/MSqvB5sn9EjYIw0lPl
	 oqgCZImfUlMPeQp2Hgn4RdiV27LUVib5cabFFWvV+gRPEr6IFky0A2LqcEPNVQAsMA
	 TGU0PIL+4WQ+Af4M2MDDDjNzcmKWo+xODKn3RIXG8jBYAAIlFH8Q8SC9UuxK0cndoj
	 tW4KPv7byrcLA==
Message-ID: <4b98196a-c898-4d08-9101-31feb4e59b5c@kernel.org>
Date: Fri, 27 Sep 2024 09:30:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: rockchip,inno-usb2phy: add
 rk3576
To: Frank Wang <frawang.cn@gmail.com>, vkoul@kernel.org, kishon@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, william.wu@rock-chips.com,
 tim.chen@rock-chips.com, frank.wang@rock-chips.com
References: <20240926103223.29538-1-frawang.cn@gmail.com>
 <ed829240-d4f7-471f-84f6-3509f87f11a1@kernel.org>
 <7944f4dd-96f0-40df-8c91-523409e3cb20@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <7944f4dd-96f0-40df-8c91-523409e3cb20@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_003038_744825_50DE7EF0 
X-CRM114-Status: UNSURE (   9.93  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjcvMDkvMjAyNCAwOTowMSwgRnJhbmsgV2FuZyB3cm90ZToKPiBIaSBLcnp5c3p0b2YsCj4g
Cj4gT24gMjAyNC85LzI2IDIyOjE5LCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+PiBPbiAy
Ni8wOS8yMDI0IDEyOjMyLCBGcmFuayBXYW5nIHdyb3RlOgo+Pj4gKyAgLSBpZjoKPj4+ICsgICAg
ICBwcm9wZXJ0aWVzOgo+Pj4gKyAgICAgICAgY29tcGF0aWJsZToKPj4+ICsgICAgICAgICAgY29u
dGFpbnM6Cj4+PiArICAgICAgICAgICAgZW51bToKPj4+ICsgICAgICAgICAgICAgIC0gcm9ja2No
aXAscmszNTc2LXVzYjJwaHkKPj4+ICsgICAgdGhlbjoKPj4+ICsgICAgICBwcm9wZXJ0aWVzOgo+
Pj4gKyAgICAgICAgY2xvY2tzOgo+Pj4gKyAgICAgICAgICBtaW5JdGVtczogMwo+Pj4gKyAgICAg
ICAgICBtYXhJdGVtczogMwo+PiBSZWFkIG9uZSBtb3JlIHRpbWUgdGhlIGV4YW1wbGUgSSBnYXZl
IHlvdS4gVG9wLWxldmVsIGNvbnN0cmFpbnRzIGFyZQo+PiBzYXlpbmcgbWF4IG9uZSBjbG9jay4K
Pj4KPj4gQmVzdCByZWdhcmRzLAo+PiBLcnp5c3p0b2YKPj4KPiAKPiBTb3JyeSBmb3Igb3Zlcmxv
b2tpbmcgdGhpcywgSSB3aWxsIHNldCBib3RoICJjbG9ja3MiIGFuZCAiY2xvY2stbmFtZXMiIAo+
IHRvIHRydWUsIGFuZCBhZGQgdGhlIGVsc2UgY2FzZSBiZWxvdyB0aGUgYWJvdmUgY29kZXMgZm9y
IHRoZSAib2xkIiBTb0NzLgo+IEp1c3QgbGlrZSB0aGUgYmVsb3cuCj4gCj4gLcKgIGNsb2NrczoK
PiAtwqDCoMKgIG1heEl0ZW1zOiAxCj4gK8KgIGNsb2NrczogdHJ1ZQo+IAo+IC3CoCBjbG9jay1u
YW1lczoKPiAtwqDCoMKgIGNvbnN0OiBwaHljbGsKPiArwqAgY2xvY2stbmFtZXM6IHRydWUKCkZv
ciB0aGUgdGhpcmQgdGltZSwgcmVhZCB0aGUgY29kZSBJIGdhdmUgeW91LiBEbyB5b3Ugc2VlIHNv
bWV0aGluZyBsaWtlCnRoaXMgdGhlcmU/IFdoeSBkb2luZyBhbGwgdGhlIHRpbWUgc29tZXRoaW5n
IGRpZmZlcmVudCB0aGFuIGV4aXN0aW5nIGNvZGU/CgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
