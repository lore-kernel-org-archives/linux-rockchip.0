Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A1ACD206A9
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Dec 2025 14:33:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TdvTQk7Y9n8d2SlrU6DfWT1ru4hLxSvDtyejgLU+UC8=; b=l6qS6WP8qScxku
	UiHzPCX9zHlOJ8wFull9snT4xMkTRqi1jcO1UuMLT8XftQx3hQg8ZR3/kdctLcwR4x8uVBwJ0cHR1
	kBHrYzmlHGztdkJgaHDkQ6NUR4i84L1M6VtU9guIVXYyaGHF8jmKcOmeAir95ITXDt4M3yi9AhSKN
	AFE8ainTB4RkQ0dvPNI/vlgX53HAhgmKOl1Ko3JvX8stDMABLqIruZyz28e34FzqfZ7OpnGnVeCzW
	7LHGBB4dN0L/BUlRveJvm+/Bz7D8xhyvyKZ7nlX5ByTMEOlp+vSGv0EBEaUKwFapLCDCZoPY+IzPc
	BYbnh5ge9qSwz0y0hdRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRAOu-000000087jS-40vy;
	Thu, 04 Dec 2025 14:33:44 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRAOq-000000087ij-4C21;
	Thu, 04 Dec 2025 14:33:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5303A339;
	Thu,  4 Dec 2025 06:33:32 -0800 (PST)
Received: from [10.1.28.112] (010265703453.cambridge.arm.com [10.1.28.112])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3B9F93F66E;
	Thu,  4 Dec 2025 06:33:38 -0800 (PST)
Message-ID: <43f9753d-2e63-4b52-a4af-ca8d22f0b351@arm.com>
Date: Thu, 4 Dec 2025 14:33:36 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: add SPDIF audio to Beelink A1
To: Christian Hewitt <christianshewitt@gmail.com>,
 Alex Bee <knaerzche@gmail.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250828164300.3829488-1-christianshewitt@gmail.com>
 <66ae20b3-3316-4ec2-9c51-8414c053dc32@arm.com>
 <f0df035f-3c3d-4649-9f48-3e8e2e69d17b@gmail.com>
 <5557C31E-3B1D-426C-BF9F-C417FF29E97C@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <5557C31E-3B1D-426C-BF9F-C417FF29E97C@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251204_063341_178215_F95E657D 
X-CRM114-Status: GOOD (  14.55  )
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

T24gMjAyNS0xMi0wNCAyOjEzIHBtLCBDaHJpc3RpYW4gSGV3aXR0IHdyb3RlOgo+PiBPbiA0IERl
YyAyMDI1LCBhdCAxMjoyM+KAr2FtLCBBbGV4IEJlZSA8a25hZXJ6Y2hlQGdtYWlsLmNvbT4gd3Jv
dGU6Cj4+Cj4+IEhpIFJvYmluLAo+Pgo+PiBBbSAwMy4xMi4yNSB1bSAxNzoyMSBzY2hyaWViIFJv
YmluIE11cnBoeToKPj4+IFsgSnVzdCBub3RpY2VkIHRoaXMuLi4gXQo+Pj4KPj4+IE9uIDIwMjUt
MDgtMjggNTo0MyBwbSwgQ2hyaXN0aWFuIEhld2l0dCB3cm90ZToKPj4+PiBGcm9tOiBBbGV4IEJl
ZSA8a25hZXJ6Y2hlQGdtYWlsLmNvbT4KPj4+Pgo+Pj4+IEFkZCB0aGUgcmVxdWlyZWQgbm9kZXMg
dG8gZW5hYmxlIFNQRElGIGF1ZGlvIG91dHB1dCBvbgo+Pj4+IHRoZSBCZWVsaW5rIEExIHNldC10
b3AtYm94Lgo+Pj4KPj4+IEJ1dCB0aGUgQTEgZG9lc24ndCBoYXZlIFMvUERJRj8gT25seSBIRE1J
IHBsdXMgYSAzLjVtbSBqYWNrIGNvbm5lY3RlZCB0byB0aGUgYW5hbG9nIGF1ZGlvIGNvZGVjIChh
bmQgcG9zc2libHkgdGhlIGNvbXBvc2l0ZSBUViBvdXQpIDovCj4+Pgo+PiBZZWFoLCBzb3JyeSAt
IHRoaXMgcGF0Y2ggd2Fzbid0IHN1cHBvc2VkIHRvIGJlIHN1Ym1pdHRlZCB1cHN0cmVhbS4KPiAK
PiBBcG9sb2dpZXMsIHRoaXMgaXMgbXkgZW50aHVzaWFzbSBmb3IgdHJ5aW5nIHRvIGNsZWFyIG91
dCB0aGUgcGF0Y2gKPiBjb2xsZWN0aW9uIExpYnJlRUxFQyBoYXMgYmVlbiBob2FyZGluZyBieSBz
ZW5kaW5nIHRoaW5ncyB1cHN0cmVhbQo+IG9uIGJlaGFsZiBvZiB0aGUgb3JpZ2luYWwgYXV0aG9y
cyAoYW5kIGhvYXJkZXJzKS4KCk5vIHdvcnJpZXMgOikKCj4gV291bGQgeW91IGxpa2UgbWUgdG8g
c2VuZCBhIHJldmVydCBwYXRjaD8KClNpbmNlIEknbSB0aGUgb25seSBvbmUgY29tcGxhaW5pbmcs
IGFuZCBJJ20gbGlhYmxlIHRvIGhhdmUgYSBjb3VwbGUgbW9yZSAKUm9ja2NoaXAgRFQgcGF0Y2hl
cyB0byBzZW5kIHNvb24gYW55d2F5LCBmZWVsIGZyZWUgdG8gbGVhdmUgaXQgd2l0aCBtZSAKdW5s
ZXNzIHlvdSdyZSBwYXJ0aWN1bGFybHkga2Vlbi4KCkNoZWVycywKUm9iaW4uCgo+IAo+IENocmlz
dGlhbgo+IAo+PiBSZWdhcmRzLAo+Pgo+PiBBbGV4Cj4+Cj4+PiBUaGFua3MsCj4+PiBSb2Jpbi4K
Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogQWxleCBCZWUgPGtuYWVyemNoZUBnbWFpbC5jb20+Cj4+
Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEhld2l0dCA8Y2hyaXN0aWFuc2hld2l0dEBnbWFp
bC5jb20+Cj4+Pj4gLS0tCj4+Pj4gICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMz
MjgtYTEuZHRzIHwgMjMgKysrKysrKysrKysrKysrKysrKysrKwo+Pj4+ICAgIDEgZmlsZSBjaGFu
Z2VkLCAyMyBpbnNlcnRpb25zKCspCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazMzMjgtYTEuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzMjgtYTEuZHRzCj4+Pj4gaW5kZXggZjdjNDU3ODg2NWM1Li5iMjc2YTI5YmRkODUg
MTAwNjQ0Cj4+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjgtYTEu
ZHRzCj4+Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjgtYTEuZHRz
Cj4+Pj4gQEAgLTU4LDYgKzU4LDI0IEBAIGlyLXJlY2VpdmVyIHsKPj4+PiAgICAgICAgICAgIGdw
aW9zID0gPCZncGlvMiBSS19QQTIgR1BJT19BQ1RJVkVfTE9XPjsKPj4+PiAgICAgICAgICAgIGxp
bnV4LHJjLW1hcC1uYW1lID0gInJjLWJlZWxpbmstZ3MxIjsKPj4+PiAgICAgICAgfTsKPj4+PiAr
Cj4+Pj4gKyAgICBzcGRpZl9zb3VuZDogc3BkaWYtc291bmQgewo+Pj4+ICsgICAgICAgIGNvbXBh
dGlibGUgPSAic2ltcGxlLWF1ZGlvLWNhcmQiOwo+Pj4+ICsgICAgICAgIHNpbXBsZS1hdWRpby1j
YXJkLG5hbWUgPSAiU1BESUYiOwo+Pj4+ICsKPj4+PiArICAgICAgICBzaW1wbGUtYXVkaW8tY2Fy
ZCxjcHUgewo+Pj4+ICsgICAgICAgICAgICBzb3VuZC1kYWkgPSA8JnNwZGlmPjsKPj4+PiArICAg
ICAgICB9Owo+Pj4+ICsKPj4+PiArICAgICAgICBzaW1wbGUtYXVkaW8tY2FyZCxjb2RlYyB7Cj4+
Pj4gKyAgICAgICAgICAgIHNvdW5kLWRhaSA9IDwmc3BkaWZfZGl0PjsKPj4+PiArICAgICAgICB9
Owo+Pj4+ICsgICAgfTsKPj4+PiArCj4+Pj4gKyAgICBzcGRpZl9kaXQ6IHNwZGlmLWRpdCB7Cj4+
Pj4gKyAgICAgICAgY29tcGF0aWJsZSA9ICJsaW51eCxzcGRpZi1kaXQiOwo+Pj4+ICsgICAgICAg
ICNzb3VuZC1kYWktY2VsbHMgPSA8MD47Cj4+Pj4gKyAgICB9Owo+Pj4+ICAgIH07Cj4+Pj4gICAg
ICAmYW5hbG9nX3NvdW5kIHsKPj4+PiBAQCAtMzI1LDYgKzM0MywxMSBAQCAmc2RtbWMgewo+Pj4+
ICAgICAgICBzdGF0dXMgPSAib2theSI7Cj4+Pj4gICAgfTsKPj4+PiAgICArJnNwZGlmIHsKPj4+
PiArICAgIHBpbmN0cmwtMCA9IDwmc3BkaWZtMF90eD47Cj4+Pj4gKyAgICBzdGF0dXMgPSAib2th
eSI7Cj4+Pj4gK307Cj4+Pj4gKwo+Pj4+ICAgICZ0c2FkYyB7Cj4+Pj4gICAgICAgIHJvY2tjaGlw
LGh3LXRzaHV0LW1vZGUgPSA8MD47Cj4+Pj4gICAgICAgIHJvY2tjaGlwLGh3LXRzaHV0LXBvbGFy
aXR5ID0gPDA+Owo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
