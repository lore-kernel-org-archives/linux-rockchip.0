Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06B7FC5AC67
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Aug 2026 10:00:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F+byMa5a4JZLJldPBl2VOCZTjYQ4l7qQtLfAayjaRsE=; b=FB+PyrikJ5N2oI
	A0rEfTYktcctrFfWBhGA8G2yLpu5GIN+KJysyInmoeprKR0JEXuR7xa5sgMg34wlZ2KRCuq9w+uCJ
	0QDDatagmV8Kv5JKo+g80yyiuikCtFR0bvLMw3Mj1Enl0tllY9LHy0mtNn8vasNq24fMt7eplTviA
	NYw+Krlju059GwXf6kWCnUBBQPZb2qBwHzS29WDxQQHhyZz4hIStFy47YY1gyO2N2yhCUh1g71OD8
	VL63NOtHEMl/iUaSI/paGFo6RT4Mn1PXlapT+H96CIpYPI2RZL82eyrmXAWw8A1M79iw4aERDHjb7
	wQXzcjLP519x9JxTxGoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtjHR-0000000DnYU-3HCb;
	Tue, 11 Aug 2026 10:00:21 +0000
Received: from out-180.mta0.migadu.com ([2001:41d0:1004:224b::b4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtjHK-0000000DnVY-3tZW
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Aug 2026 10:00:20 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1786442401;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Gb9mM62YNa3M980jvsV0Wc3c2VWrJY0STu0zD6FpqT8=;
	b=jVuhIJGPr2KT8VjXH4U3yJK1pu3vLLHRt1BQIVy9d9kQqYhLDZmifAp2f4x4PFL3WTQ2Np
	Jx76bQc4wLFA8wQ4ZaMnvmo8sP5mZIgVw8X2/46QiG2MOFxX0ftzoLwhI2JX84/NSEvMui
	8sZ83raoI40xnIlE3DQQLNSSaVoUg172Qi+fgmNv4nbUM3lIH5P5SAvtay0HJVwIzB9NCx
	5NpqSWL9WBs8aNy2WEzzSTdMDW52wLEni4OKKL2wRJI+480JDArORR28B9b9Fle0mZ4RBj
	3cK7qBDVH8WCs43qJu+YThfxjOz8xlkBiCh8sehzJazHWk/xhghUhcG6+jAS2Q==
Date: Tue, 11 Aug 2026 11:59:33 +0200
Message-Id: <DKM0YWWP935E.3K38J0LJL6AEE@cknow-tech.com>
Cc: "Heiko Stuebner" <heiko@sntech.de>, "Rob Herring" <robh@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, "Jonas Karlman" <jonas@kwiboo.xyz>, "Joachim
 Eastwood" <joachim.eastwood@gmail.com>
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: enable NPU on Radxa E52C
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Jimmy Hon" <honyuenkwun@gmail.com>, "Chukun Pan" <amadeus@jmu.edu.cn>
References: <20260810100000.2643814-1-amadeus@jmu.edu.cn>
 <CALWfF7K2t4nt05a4TugBjOQkaQK=M=+wDSeG26B33znyMMzhAQ@mail.gmail.com>
In-Reply-To: <CALWfF7K2t4nt05a4TugBjOQkaQK=M=+wDSeG26B33znyMMzhAQ@mail.gmail.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260811_030015_122901_D99B17A1 
X-CRM114-Status: GOOD (  12.92  )
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

T24gVHVlIEF1ZyAxMSwgMjAyNiBhdCA2OjM5IEFNIENFU1QsIEppbW15IEhvbiB3cm90ZToKPiBP
biBNb24sIEF1ZyAxMCwgMjAyNiBhdCA2OjIw4oCvQU0gQ2h1a3VuIFBhbiA8YW1hZGV1c0BqbXUu
ZWR1LmNuPiB3cm90ZToKPj4KPj4gTGlrZSB0aGUgUkszNTg4LCB0aGUgUkszNTgyIGhhcyBOUFVz
LiBFbmFibGUgdGhlIE5QVSBjb3JlcyBhbmQgdGhlaXIKPj4gTU1VcywgYW5kIGNvbm5lY3QgdGhl
IHJlZ3VsYXRvcnMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IENodWt1biBQYW4gPGFtYWRldXNAam11
LmVkdS5jbj4KPj4gLS0tCj4+ICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszNTgyLXJhZHhhLWU1
MmMuZHRzICAgfCAzNCArKysrKysrKysrKysrKysrKysrCj4+ICAxIGZpbGUgY2hhbmdlZCwgMzQg
aW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1ODItcmFkeGEtZTUyYy5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU4Mi1yYWR4YS1lNTJjLmR0cwo+PiBpbmRleCA4NTRjMTE4NDE4ZWIuLmRkMjlhM2VhNzAz
MSAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODItcmFk
eGEtZTUyYy5kdHMKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODIt
cmFkeGEtZTUyYy5kdHMKPj4gQEAgLTMwMCw2ICszMDAsMTAgQEAgJnBjaWUyeDFsMiB7Cj4+ICAg
ICAgICAgc3RhdHVzID0gIm9rYXkiOwo+PiAgfTsKPj4KPj4gKyZwZF9ucHUgewo+PiArICAgICAg
IGRvbWFpbi1zdXBwbHkgPSA8JnZkZF9ucHVfczA+Owo+PiArfTsKPiBOb3cgdGhhdCB0aGUgcG93
ZXIgZG9tYWluIGhhcyBjb250cm9sIG9mIHRoZSByZWd1bGF0b3IuIFRoZSByZWd1bGF0b3IKPiBz
aG91bGQgaGF2ZSByZWd1bGF0b3ItYWx3YXlzLW9uIHJlbW92ZWQsIHNvIGl0IGNhbiBiZSBwb3dl
cmVkIGRvd24uCgpOZXh0IHRvIHRoYXQsIHF1b3RpbmcgYSBxdWVzdGlvbiB0aGF0IHdhcyByYWlz
ZWQgZWFybGllciBoZXJlOgpodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvYjlhNWJlYjYtYjcw
MS00MzBjLWI2NjctNDQ3ODA3MzZkZDg5QGt3aWJvby54eXovCgoiV2h5IGlzIGJvb3Qtb24ga2Vw
dD8sIE5QVSBpcyBsaWtlbHkgbm90IG5lZWRlZCB1bnRpbCBPUyBoYXMgc3RhcnRlZC4KCldpdGgg
UEQgZG9tYWluLXN1cHBseSB0aGUgcmVndWxhdG9yIHNob3VsZCBiZSBlbmFibGVkIGF1dG9tYXRp
Y2FsbHksIG9yCmlzIHRoZXJlIHNvbWUgb3RoZXIgaXNzdWUgdGhhdCByZXF1aXJlcyBib290IGZp
cm13YXJlIHRvIGVuYWJsZSB0aGlzCnJlZ3VsYXRvciBiZWZvcmUgT1MgaXMgc3RhcnRlZD8iCgpJ
IGRvIHJlYWxpemUgcXVpdGUgYSBmZXcgb3RoZXIgYm9hcmRzIGhhdmUgaXQgdG9vLCBidXQgbWF5
YmUgdGhleQpzaG91bGRuJ3QgaGF2ZSBpdC90aGVtIGVpdGhlcj8KCkNoZWVycywKICBEaWVkZXJp
awoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
