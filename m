Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8889E9B265
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Feb 2026 13:54:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aKH5HNhI+hWpBC8OKb1Iqg4rZUrYXgGgc3gfVJVo5Js=; b=kAiXG8P2zkEbnN
	t2ynLdWrXVqSCDPCya15xCCtdj0wi7p+NLSdfeYU2YGq/hFhkqFYsml96LDx9sEuL+cD8ieEbxbqh
	3UcuDDNd2dgESHk4uaMBEJxBWIVENm4Aq8pmipjroTbD/kqTtM4NwjeWk9jI0m2hKBFq7UamGIx3H
	nRjXOrEv95zCD9FmqXl1Fmj4RD3j4OiC2O+C0yCuBQPvJoewst9FwzwWF3yUrcNUxBUGfrsZt6k/P
	4DGzMv3GDiH9HExZ0nSCCriC7VJ9blDfnkASsjo4qs2eH1gzLNyXQS394wzSoj68xSOhGQsKzsUW7
	KBHXweaEE2KjryS0VGLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vusrg-00000002ALC-2Zi4;
	Tue, 24 Feb 2026 13:54:16 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vusre-00000002AKk-28G8;
	Tue, 24 Feb 2026 13:54:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9326B61118;
	Tue, 24 Feb 2026 13:54:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5C2DC19424;
	Tue, 24 Feb 2026 13:54:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771941253;
	bh=3RqSZ9hfWHWRthGHXixA//9xBtFQl1Q5X01m3tFtYcA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=fhUmUV/rxokZjtSZjjvmgJu9BU36B8Yevz1bBRkZqAY+/rUIYUYxYzJrqvs5EHyZX
	 bKalOZVv2oMTx1n8T9Vw+dxR8qrT0eMUQNDLa8QkH/KO3pGT9CQplCqlm5W0C1XNmk
	 Br+zKmd+8zZpgYX/FvEBFQn13NEdGLZRTLjO4ufn5TIE6AdA9JlGRsW6gw413MqXQu
	 1xo+ciqMguzdmofSBTQL2DX+s7qM+Y89Z6gefp3kIOJaqlImZborZvelIlKub1oDqZ
	 V3iThqPxR/0evEuwsaDkfgd1QBWQfJbsIhMZDcoKALX48v+3vaA6BN04HQF09kX9eE
	 uR+CatNQqpPPQ==
Message-ID: <af6c6561-3d41-4967-a224-cf239335dc5b@kernel.org>
Date: Tue, 24 Feb 2026 14:54:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] media: dt-bindings: rockchip,vdec: Correct
 reg-names order for RK35{76,88}
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
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
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <e73da0713587ad5380344afa686a13431d07e232.camel@collabora.com>
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

T24gMjQvMDIvMjAyNiAxNDo0OCwgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToKPiBMZSBtYXJkaSAy
NCBmw6l2cmllciAyMDI2IMOgIDE0OjE4ICswMTAwLCBLcnp5c3p0b2YgS296bG93c2tpIGEgw6lj
cml0wqA6Cj4+IE9uIDI0LzAyLzIwMjYgMTQ6MTQsIE5pY29sYXMgRHVmcmVzbmUgd3JvdGU6Cj4+
Pj4+IMKgCj4+Pj4+IMKgwqAgcmVnLW5hbWVzOgo+Pj4+PiAtwqDCoMKgIGl0ZW1zOgo+Pj4+PiAr
wqDCoMKgIG9uZU9mOgo+Pj4+PiDCoMKgwqDCoMKgwqAgLSBjb25zdDogZnVuY3Rpb24KPj4+Pj4g
LcKgwqDCoMKgwqAgLSBjb25zdDogbGluawo+Pj4+PiAtwqDCoMKgwqDCoCAtIGNvbnN0OiBjYWNo
ZQo+Pj4+PiArwqDCoMKgwqDCoCAtIGl0ZW1zOgo+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgIC0g
Y29uc3Q6IGxpbmsKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiBmdW5jdGlvbgo+
Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IGNhY2hlCj4+Pj4KPj4+PiBObywgQUJJ
IGJyZWFrIHdpdGhvdXQgcG9pbnQuCj4+Pgo+Pj4gSXRzIG5vdCByZWxlYXNlZCB5ZXQsIG90aGVy
d2lzZSBib3RoIG9yZGVyIHdvdWxkIG5lZWQgdG8gYmUgYWxsb3dlZC4KPj4+Cj4+IEFsc28sIG5v
dCB0cnVlLgo+Pgo+PiBnaXQgZGVzY3JpYmUgLS1jb250YWluc8KgIGM2ZmZiN2UxZmI5MAo+PiB2
Ni4xNy1yYzF+OTBeMn4zCj4gCj4gQWNrLCBJIHRob3VnaHQgdGhpcyB3YXMgcGFydCBvZiA3LjAs
IGl0IHdvdWxkIGhhdmUgYmVlbiBsb2dpY2FsIHRvIGJlIHBhcnQgb2YKPiA3LjAtcmMxIEkgbXVz
dCBzYXkuIFdoYXRldmVyIGhhcHBlbiwgYmFja3dhcmQgY29tcGF0IHdpbGwgdW5mb3J0dW5hdGx5
IGJlCj4gbmVlZGVkLgoKCkkgd2FzIGhlcmUgY2hlY2tpbmcgdGhlIGJpbmRpbmcsIHNvIHRoZSBB
QkkuIERUUyBtYXliZSB3YXMgaW4gdjcuMC1yYzEKaW5kZWVkLiBBbnl3YXksIHRoZSBjb21taXQg
bXNnIHNob3VsZCBkZXNjcmliZSB0aGUgaW1wYWN0IG9uIHVzZXJzIG9mCnRoaXMgQUJJLCBhdCBs
ZWFzdCBrbm93biB1c2Vycy4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
