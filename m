Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C5B9E9B26A
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Feb 2026 14:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AJ9zxYpgRNiwDeoi7+3LrK0EDGIzGrwJc8fj0zlkyXM=; b=z6IvxjHMUzMiNN
	AtEEO+x+a1c4R7THjX68lMqshSk9r7L9UGkgGitOAKOmfLCa4g4aZh8WsbDOkzwwo+A5df962u8dP
	8SYUSaxwL34OqHLWKLKwQg9zGGO/08sk1tXdggtcDofAGeLUdqRRtNLRs3j+VrOLsQhDLcm7YPmv1
	I72lRLKI/wHbgTOf6xxrAiRpCrtH2bNmgh/OMlToCwvCD1UoGLsezjhuTNVThb/ei9etR1Yf8gNLq
	YKk97634uJIH0c4qKN3jqVnWV8qfhmcdyo3EbbH3BBiARY/vxZi46ThhC1sfqbTzxCK2Mjz3QHNUc
	55PB8HIa76ot7qZOS3ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vut4K-00000002BBH-0k1Q;
	Tue, 24 Feb 2026 14:07:20 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vut4H-00000002BAc-0q4o;
	Tue, 24 Feb 2026 14:07:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771942034;
	bh=GHqOMsVIhnM/qwB2gCQ7BjybcTTTqIh1JgBMM216iN8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=I3hbAez5JGJzQLHds0zTJby2v3l21CQAIDqMmf6UFT4QbKY2ap3g0TAqDhIvfNV3m
	 pNC4dibgW3KNhsy0MBxbK059ec/YZdJ+DkbTuMQ2SBpiS34Lsu/yKB0xEYEV/x8bdA
	 6zP0a7X+PifMQiZdNzdvgDwpyhMXZkvnCsXGFvSv3iVqlDxparBUYIzDNJGkm6F3KO
	 CWeA6rTOvRCiHKOzNzWs/zCnBet43s8f2sGGltNIlYkYuKxotkU7CoQVPM5xKrSAI+
	 m2M8szYFONBEae6oGZ1xH7WWo2trFqVNKDsHRo0bvBOgB3K0GHlXYiz6ItbCZZQhX2
	 Ouz8qDzYvZB5A==
Received: from [192.168.1.90] (unknown [86.123.23.225])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7967017E01E7;
	Tue, 24 Feb 2026 15:07:13 +0100 (CET)
Message-ID: <0c9a158a-f70e-461c-900b-6f6485064a02@collabora.com>
Date: Tue, 24 Feb 2026 16:07:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] media: dt-bindings: rockchip,vdec: Correct
 reg-names order for RK35{76,88}
To: Krzysztof Kozlowski <krzk@kernel.org>,
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
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <af6c6561-3d41-4967-a224-cf239335dc5b@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_060717_401681_03DA620F 
X-CRM114-Status: GOOD (  12.10  )
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

T24gMi8yNC8yNiAzOjU0IFBNLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+IE9uIDI0LzAy
LzIwMjYgMTQ6NDgsIE5pY29sYXMgRHVmcmVzbmUgd3JvdGU6Cj4+IExlIG1hcmRpIDI0IGbDqXZy
aWVyIDIwMjYgw6AgMTQ6MTggKzAxMDAsIEtyenlzenRvZiBLb3psb3dza2kgYSDDqWNyaXQgOgo+
Pj4gT24gMjQvMDIvMjAyNiAxNDoxNCwgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToKPj4+Pj4+ICAK
Pj4+Pj4+ICAgIHJlZy1uYW1lczoKPj4+Pj4+IC0gICAgaXRlbXM6Cj4+Pj4+PiArICAgIG9uZU9m
Ogo+Pj4+Pj4gICAgICAgIC0gY29uc3Q6IGZ1bmN0aW9uCj4+Pj4+PiAtICAgICAgLSBjb25zdDog
bGluawo+Pj4+Pj4gLSAgICAgIC0gY29uc3Q6IGNhY2hlCj4+Pj4+PiArICAgICAgLSBpdGVtczoK
Pj4+Pj4+ICsgICAgICAgICAgLSBjb25zdDogbGluawo+Pj4+Pj4gKyAgICAgICAgICAtIGNvbnN0
OiBmdW5jdGlvbgo+Pj4+Pj4gKyAgICAgICAgICAtIGNvbnN0OiBjYWNoZQo+Pj4+Pgo+Pj4+PiBO
bywgQUJJIGJyZWFrIHdpdGhvdXQgcG9pbnQuCj4+Pj4KPj4+PiBJdHMgbm90IHJlbGVhc2VkIHll
dCwgb3RoZXJ3aXNlIGJvdGggb3JkZXIgd291bGQgbmVlZCB0byBiZSBhbGxvd2VkLgo+Pj4+Cj4+
PiBBbHNvLCBub3QgdHJ1ZS4KPj4+Cj4+PiBnaXQgZGVzY3JpYmUgLS1jb250YWlucyAgYzZmZmI3
ZTFmYjkwCj4+PiB2Ni4xNy1yYzF+OTBeMn4zCj4+Cj4+IEFjaywgSSB0aG91Z2h0IHRoaXMgd2Fz
IHBhcnQgb2YgNy4wLCBpdCB3b3VsZCBoYXZlIGJlZW4gbG9naWNhbCB0byBiZSBwYXJ0IG9mCj4+
IDcuMC1yYzEgSSBtdXN0IHNheS4gV2hhdGV2ZXIgaGFwcGVuLCBiYWNrd2FyZCBjb21wYXQgd2ls
bCB1bmZvcnR1bmF0bHkgYmUKPj4gbmVlZGVkLgo+IAo+IAo+IEkgd2FzIGhlcmUgY2hlY2tpbmcg
dGhlIGJpbmRpbmcsIHNvIHRoZSBBQkkuIERUUyBtYXliZSB3YXMgaW4gdjcuMC1yYzEKPiBpbmRl
ZWQuIEFueXdheSwgdGhlIGNvbW1pdCBtc2cgc2hvdWxkIGRlc2NyaWJlIHRoZSBpbXBhY3Qgb24g
dXNlcnMgb2YKPiB0aGlzIEFCSSwgYXQgbGVhc3Qga25vd24gdXNlcnMuCgpNeSBiYWQsIEkgb25s
eSBjaGVja2VkIHRoZSBEVFMgY2hhbmdlcyB3aGljaCBsYW5kZWQgaW4gdjcuMC1yYzEsIGFuZCB3
cm9uZ2x5CmFzc3VtZWQgdGhlIGJpbmRpbmcgYWxzbyBsYW5kZWQgYWJvdXQgdGhlIHNhbWUgdGlt
ZS4gIEkgdGhpbmsgaXQncyB1bmxpa2VseQp0aGVyZSBhcmUgYW55IChleHRlcm5hbCkgdXNlcnMg
b2YgdGhpcyBiaW5kaW5nLCBidXQgb2J2aW91c2x5IHdlIGNhbm5vdCBiZSAxMDAlCnN1cmUuCgpX
b3VsZCBpdCBiZSBhY2NlcHRhYmxlIHRvIGV4dGVuZCB0aGUgYmluZGluZyBzbyB0aGF0IGl0IGFs
bG93cyBib3RoIHRoZSBjdXJyZW50CmFuZCB0aGUgbmV3IHByb3Bvc2VkIG9yZGVyIHRvIGNvZXhp
c3Q/CgpUaGFua3MsCkNyaXN0aWFuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
