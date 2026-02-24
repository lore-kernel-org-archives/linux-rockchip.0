Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0960AF3C982
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Feb 2026 14:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=va2gryO5TPl9eGSzfTEIiARVg8VrI4NOdecQox7RyXk=; b=IafHxExzWipoZ+
	ygI+/eemlcQH8hlL1yJaowKnHywCY1socfWdi17OZX1B/RqzqSkZb7zq0fAfRcY88hzpE7PtV4gjm
	2xU+qSPWZwJPukIBx893HBtJGNo4yLUI8pkvvBgzYIxS4G3+oL/PnlhcufwNpcHHDICDdOgTQPLZ/
	/FFB8QURT4z9u/WLJJabwnKBTCpjLnyLRTZ2hH1VYaGE6nvqP2h0x1E3WfKZ0DWMM6mUwYM1Ij1mj
	7bTttrVmbierV4Q88TqJn+7jHUK6dcUuoxCAf8TsAUQyaluA0dsDo2ITHTaMozPyw52Vn1YpSELVT
	+YylBJ88OXNWT3wA5M2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vutUp-00000002EQs-405u;
	Tue, 24 Feb 2026 14:34:43 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vutUo-00000002EQM-2Pco;
	Tue, 24 Feb 2026 14:34:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B165461119;
	Tue, 24 Feb 2026 14:34:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE404C116D0;
	Tue, 24 Feb 2026 14:34:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771943681;
	bh=ONrZv/Iu6JWBztYdh+If2jwoZaKJW0Rj0z5BS5znOgA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=QIay9dhOkmQuG3tnDjLlIFjJjdqNNX28pHW5hV13zcYYTXRuNob0DmAFubY7ELLwM
	 JrlocQ3+VZ3H6U0FR+8CKOnu7nxLPILtXgsVZJQ4grj1xqj+MZjtQMLhuIPuA1LRzf
	 HskFXf5m6YCduHz3G1b+/ahmyp9BQi3eSKNZDsptcgWN1bRQuIrmA1GbnZ7+iD29Hs
	 n+4PUn8s+WrTDENwUajLTmSZ0z/pAJRWwYwe/b1bkvboFXXKZfqkL+CdPfsyoRqzUf
	 q+x9v/Xe6B8T5Uw9XMjnw7C95JKHE3mYkOZf7fkUZsCoroZMnxLq6QdzT+1sYPi9Cm
	 R9xYGX2hx0Z8Q==
Message-ID: <1cdc36f2-6e51-492a-9063-7d0a784f5118@kernel.org>
Date: Tue, 24 Feb 2026 15:34:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] media: dt-bindings: rockchip,vdec: Correct
 reg-names order for RK35{76,88}
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@kernel.org>, kernel@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Conor Dooley <conor.dooley@microchip.com>, linux-media@vger.kernel.org
References: <20260223-vdec-reg-order-rk3576-v2-0-daf4942dfc02@collabora.com>
 <20260223-vdec-reg-order-rk3576-v2-1-daf4942dfc02@collabora.com>
 <20260224-saffron-peccary-from-heaven-2d5e6e@quoll>
 <244b22d3be77047163b4e47c4ed33b5b1befb4b4.camel@collabora.com>
 <0874bb3d-b38d-4ea3-a5b0-2da2484cc3e5@kernel.org>
 <e73da0713587ad5380344afa686a13431d07e232.camel@collabora.com>
 <af6c6561-3d41-4967-a224-cf239335dc5b@kernel.org>
 <0c9a158a-f70e-461c-900b-6f6485064a02@collabora.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <0c9a158a-f70e-461c-900b-6f6485064a02@collabora.com>
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

T24gMjQvMDIvMjAyNiAxNTowNywgQ3Jpc3RpYW4gQ2lvY2FsdGVhIHdyb3RlOgo+IE9uIDIvMjQv
MjYgMzo1NCBQTSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4gT24gMjQvMDIvMjAyNiAx
NDo0OCwgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToKPj4+IExlIG1hcmRpIDI0IGbDqXZyaWVyIDIw
MjYgw6AgMTQ6MTggKzAxMDAsIEtyenlzenRvZiBLb3psb3dza2kgYSDDqWNyaXQgOgo+Pj4+IE9u
IDI0LzAyLzIwMjYgMTQ6MTQsIE5pY29sYXMgRHVmcmVzbmUgd3JvdGU6Cj4+Pj4+Pj4gIAo+Pj4+
Pj4+ICAgIHJlZy1uYW1lczoKPj4+Pj4+PiAtICAgIGl0ZW1zOgo+Pj4+Pj4+ICsgICAgb25lT2Y6
Cj4+Pj4+Pj4gICAgICAgIC0gY29uc3Q6IGZ1bmN0aW9uCj4+Pj4+Pj4gLSAgICAgIC0gY29uc3Q6
IGxpbmsKPj4+Pj4+PiAtICAgICAgLSBjb25zdDogY2FjaGUKPj4+Pj4+PiArICAgICAgLSBpdGVt
czoKPj4+Pj4+PiArICAgICAgICAgIC0gY29uc3Q6IGxpbmsKPj4+Pj4+PiArICAgICAgICAgIC0g
Y29uc3Q6IGZ1bmN0aW9uCj4+Pj4+Pj4gKyAgICAgICAgICAtIGNvbnN0OiBjYWNoZQo+Pj4+Pj4K
Pj4+Pj4+IE5vLCBBQkkgYnJlYWsgd2l0aG91dCBwb2ludC4KPj4+Pj4KPj4+Pj4gSXRzIG5vdCBy
ZWxlYXNlZCB5ZXQsIG90aGVyd2lzZSBib3RoIG9yZGVyIHdvdWxkIG5lZWQgdG8gYmUgYWxsb3dl
ZC4KPj4+Pj4KPj4+PiBBbHNvLCBub3QgdHJ1ZS4KPj4+Pgo+Pj4+IGdpdCBkZXNjcmliZSAtLWNv
bnRhaW5zICBjNmZmYjdlMWZiOTAKPj4+PiB2Ni4xNy1yYzF+OTBeMn4zCj4+Pgo+Pj4gQWNrLCBJ
IHRob3VnaHQgdGhpcyB3YXMgcGFydCBvZiA3LjAsIGl0IHdvdWxkIGhhdmUgYmVlbiBsb2dpY2Fs
IHRvIGJlIHBhcnQgb2YKPj4+IDcuMC1yYzEgSSBtdXN0IHNheS4gV2hhdGV2ZXIgaGFwcGVuLCBi
YWNrd2FyZCBjb21wYXQgd2lsbCB1bmZvcnR1bmF0bHkgYmUKPj4+IG5lZWRlZC4KPj4KPj4KPj4g
SSB3YXMgaGVyZSBjaGVja2luZyB0aGUgYmluZGluZywgc28gdGhlIEFCSS4gRFRTIG1heWJlIHdh
cyBpbiB2Ny4wLXJjMQo+PiBpbmRlZWQuIEFueXdheSwgdGhlIGNvbW1pdCBtc2cgc2hvdWxkIGRl
c2NyaWJlIHRoZSBpbXBhY3Qgb24gdXNlcnMgb2YKPj4gdGhpcyBBQkksIGF0IGxlYXN0IGtub3du
IHVzZXJzLgo+IAo+IE15IGJhZCwgSSBvbmx5IGNoZWNrZWQgdGhlIERUUyBjaGFuZ2VzIHdoaWNo
IGxhbmRlZCBpbiB2Ny4wLXJjMSwgYW5kIHdyb25nbHkKPiBhc3N1bWVkIHRoZSBiaW5kaW5nIGFs
c28gbGFuZGVkIGFib3V0IHRoZSBzYW1lIHRpbWUuICBJIHRoaW5rIGl0J3MgdW5saWtlbHkKPiB0
aGVyZSBhcmUgYW55IChleHRlcm5hbCkgdXNlcnMgb2YgdGhpcyBiaW5kaW5nLCBidXQgb2J2aW91
c2x5IHdlIGNhbm5vdCBiZSAxMDAlCj4gc3VyZS4KPiAKPiBXb3VsZCBpdCBiZSBhY2NlcHRhYmxl
IHRvIGV4dGVuZCB0aGUgYmluZGluZyBzbyB0aGF0IGl0IGFsbG93cyBib3RoIHRoZSBjdXJyZW50
Cj4gYW5kIHRoZSBuZXcgcHJvcG9zZWQgb3JkZXIgdG8gY29leGlzdD8KCkRlcGVuZHMgYWxzbyBv
biB0aGUgZHJpdmVycyBhbmQgdGhhdCdzIHlvdXIgInVzZXJzIGFuYWx5c2lzIiBzaG91bGQKY292
ZXIuIElmIHRoZXJlIGFyZSBubyBrbm93biByZWxlYXNlZCB1c2VycyBvZiByZWxhdGl2ZWx5IG5l
dyBBQkksIGl0IGlzCmZpbmUgdG8gcHJvcG9zZSB0aGUgY2hhbmdlIHdpdGggc3VjaCBleHBsYW5h
dGlvbiBhbmQgcmVhc29uIC0gcG9vcgpoYXJkd2FyZSBkZXNjcmlwdGlvbiBiZWNhdXNlIGNvbnZl
bnRpb24gZXhwZWN0cyB0aGUgbWFpbiBkZXZpY2UncwphZGRyZXNzIHRvIGJlIHVzZWQgYXMgZmly
c3QgInJlZyIgZW50cnkuCgpZb3UgY2FuIGhhdmUgYWxzbyBvbmVPZiB3aXRoIG9sZGVyIGxpc3Qg
ImRlcHJlY2F0ZWQ6IHRydWUiLCBpZiB3YW50IHRvCmtlZXAgYW55IHVzZXJzIHVuYWZmZWN0ZWQu
CgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
