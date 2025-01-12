Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C01F6E7719E
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jan 2025 22:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2DtI9YmvzPjGq74Oh2EP5l8Km9JKMRtVzlfSB58oew8=; b=0bCknWWLOVOdKh
	LEsVPaVpvcF7QIq/tpOzUwqXem0sIXs4XsQbw6FZIY4mSwIh4LfW10q/MvIe/mapn8evQSrY9Uf1o
	kOozfNoBGRv/uFleDLVWVvUrrXKsJ6AKC6bVyqSK1kHt6H5n8ZfZY8BjKVwCyh+BNsDYkS+cMe5Jy
	BfXayfU68/KZcDtVfB3aMrEMQ+mGG32rkOUBCSs8mmQp2sMqlmuA5ewhANsGO0LJ0QeamdmvKS08/
	pR7Juz3xQDRNrrEZv8QDpbzaO3y7ic3HJaYNDcyIGDqwYFA71yV90JiNUvVyCGQp8pnN0SADvnNc1
	5+7S8LAYfrd28uPYOcHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tX6Hi-00000003WJ5-0FSp;
	Sun, 12 Jan 2025 22:18:18 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tX6GQ-00000003WBh-289E;
	Sun, 12 Jan 2025 22:17:00 +0000
Received: from [192.168.0.160] (unknown [222.77.7.241])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 72611788FD;
	Mon, 13 Jan 2025 06:16:45 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 72611788FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1736720208;
	bh=RoHFwPnzubAPJIkPrQOyLxopMCG5P6p0JRNj3ERZDMA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=egF7VdNCF+Vq49RsjR995uWsuj2WZbNuEm1a/ulEsnxoSVAZEghcxrggbEcWEA8rc
	 B62Ud5gfna9J4CCLEh45TfesFRemK+5OdAq6jrpMx9xQpkpR8JHn5fj7E3KBNmdL9o
	 xP3q+MbIIjfUqReU+g1oFrj2S1jKqZ7TLpj4KAHA=
Message-ID: <35f8fe37-b06f-49eb-b0c2-430421f1ff3b@classfun.cn>
Date: Mon, 13 Jan 2025 06:16:42 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/3] arm64: dts: rockchip: add dts for Ariaboard
 Photonicat RK3568
To: Dragan Simic <dsimic@manjaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Chukun Pan <amadeus@jmu.edu.cn>,
 FUKAUMI Naoki <naoki@radxa.com>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Junhao Xie <bigfoot@classfun.cn>
References: <20250112073344.1976411-1-bigfoot@classfun.cn>
 <20250112073344.1976411-4-bigfoot@classfun.cn>
 <1e72cc9cdc390e79e97806fe4f7d8abf@manjaro.org>
Content-Language: en-US
From: Junhao Xie <bigfoot@classfun.cn>
In-Reply-To: <1e72cc9cdc390e79e97806fe4f7d8abf@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250112_141659_086199_C25437FA 
X-CRM114-Status: GOOD (  13.21  )
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

T24gMjAyNS8xLzEyIDE2OjQ3LCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4gSGVsbG8gSnVuaGFvLAo+
IAo+IE9uIDIwMjUtMDEtMTIgMDg6MzMsIEp1bmhhbyBYaWUgd3JvdGU6Cj4+IEFkZCBkdHMgZm9y
IEFyaWFib2FyZCBQaG90b25pY2F0IFJLMzU2OC4KPj4KPj4gV29ya2luZyBJTzoKPj4gwqDCoMKg
IERlYnVnIFVBUlQKPj4gwqDCoMKgIFNESU8gUUNBOTM3NyBXaUZpIGFuZCBCbHVldG9vdGgKPj4g
wqDCoMKgIE0uMiBFLUtleSBQQ0llIFdpRmkgYW5kIEJsdWV0b290aAo+PiDCoMKgwqAgTS4yIEIt
S2V5IFVTQiBNb2RlbSBXV0FOCj4+IMKgwqDCoCBFdGhlcm5ldCBXQU4gUG9ydAo+PiDCoMKgwqAg
TWljcm9TRCBDYXJkIHNsb3QKPj4gwqDCoMKgIGVNTUMKPj4gwqDCoMKgIEhETUkgT3V0cHV0Cj4+
IMKgwqDCoCBNYWxpIEdQVQo+PiDCoMKgwqAgVVNCIFR5cGUtQQo+Pgo+PiBOb3Qgd29ya2luZyBJ
TzoKPj4gwqDCoMKgIEV0aGVybmV0IExBTiBQb3J0IChMYWNrIG9mIFNHTUlJIHN1cHBvcnQpCj4+
IMKgwqDCoCBQb3dlciBtYW5hZ2VtZW50IE1DVSBvbiBVQVJUNCAoRHJpdmVyIHBlbmRpbmcpCj4+
Cj4+IE5vdCB3b3JraW5nIElPIGluIE1DVToKPj4gwqDCoMKgIEJhdHRlcnkgdm9sdGFnZSBzZW5z
b3IKPj4gwqDCoMKgIEJvYXJkIHRlbXBlcmF0dXJlIHNlbnNvcgo+PiDCoMKgwqAgSGFyZHdhcmUg
UG93ZXItb2ZmCj4+IMKgwqDCoCBIYXJkd2FyZSBXYXRjaGRvZwo+PiDCoMKgwqAgTmV0d29yayBz
dGF0dXMgTEVECj4+IMKgwqDCoCBSZWFsLXRpbWUgY2xvY2sKPj4gwqDCoMKgIFVTQiBDaGFyZ2Vy
IHZvbHRhZ2Ugc2Vuc29yCj4+Cj4+IEFib3V0IG9uYm9hcmQgcG93ZXIgbWFuYWdlbWVudCBNQ1U6
Cj4+IMKgwqDCoCBBIGhlYXJ0YmVhdCBtdXN0IGJlIHNlbnQgdG8gdGhlIE1DVSB3aXRoaW4gNjAg
c2Vjb25kcywKPj4gwqDCoMKgIG90aGVyd2lzZSB0aGUgTUNVIHdpbGwgcmVzdGFydCB0aGUgc3lz
dGVtLgo+PiDCoMKgwqAgV2hlbiBwb3dlcmluZyBvZmYsIGEgc2h1dGRvd24gY29tbWFuZCBuZWVk
cyB0byBiZSBzZW50IHRvIHRoZSBNQ1UuCj4+IMKgwqDCoCBXaGVuIHRoZSBwb3dlciBidXR0b24g
aXMgbG9uZyBwcmVzc2VkLCB0aGUgTUNVIHdpbGwgc2VuZCBhIHNodXRkb3duCj4+IMKgwqDCoCBj
b21tYW5kIHRvIHRoZSBzeXN0ZW0uIElmIHN5c3RlbSBkb2VzIG5vdCBzaHV0ZG93biB3aXRoaW4g
NjAgc2Vjb25kcywKPj4gwqDCoMKgIHRoZSBwb3dlciB3aWxsIGJlIHR1cm5lZCBvZmYgZGlyZWN0
bHkuCj4+IMKgwqDCoCBNQ1Ugb25seSBwcm92aWRlcyB2b2x0YWdlIGZvciBjaGFyZ2VyIGFuZCBi
YXR0ZXJ5Lgo+PiDCoMKgwqAgTWFudWZhY3R1cmVyIHJlbW92ZWQgUks4eHggUE1JQy4KPiAKPiBV
bmxlc3MgdGhlIGRlc2lnbiBvZiB0aGUgYm9hcmQgaXMgcHJvcHJpZXRhcnksIGl0IHdvdWxkIGJl
IGdvb2QKPiB0byBwcm92aWRlIGEgbGluayB0byB0aGUgYm9hcmQgc2NoZW1hdGljLCBmb3IgdGhv
c2UgaW50ZXJlc3RlZAo+IGluIHZlcmlmeWluZyB0aGUgYm9hcmQgRFQgZmlsZS4KPiAKPiBBcyBh
IG5vdGUsIEkgYWxyZWFkeSB0cmllZCB0byBmaW5kIHRoZSBib2FyZCBzY2hlbWF0aWMgd2l0aCBu
bwo+IHN1Y2Nlc3MsIHNvIHRoZSBkZXNpZ24gbWlnaHQgYmUgcHJvcHJpZXRhcnkuCgpZZXMsIHRo
aXMgYm9hcmQgaXMgcHJvcHJpZXRhcnkuIEkgYXNrZWQgdGhlIG1hbnVmYWN0dXJlciBhbmQKdGhl
eSBkb24ndCBwcm92aWRlIHNjaGVtYXRpY3MuCgpCdXQgSSBmb3VuZCBhIHBhcnRpYWwgc2NoZW1h
dGljIGRpYWdyYW0gb2Ygc29tZSBvZiBjb25uZWN0b3JzIG9uIHRoZSBib2FyZCBoZXJlCmh0dHBz
Oi8vZGwuYXJpYWJvYXJkLmNvbS9waG90b25pY2F0X3JrMzU2OC9QaG90b25pY2F0JTIwcmszNTY4
JTIwRVZCJTIwQm9hcmQlMjBzcGVjLnBkZgoKQmVzdCByZWdhcmRzLApKdW5oYW8KCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
