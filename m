Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB7A8F3D612
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Mar 2026 17:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=51ihYa0W/2kd2SkPKxZvy8DuLYsAVX076o/YEpJU9g0=; b=hKzkCCZY6BvE9O
	jgqf9PywXJChsxBtnlK8Y8c5suc2+AqWvNhfyEWp6/50tUJE5kCMLsOhrEDyAsqFb5npSLUyVfc0b
	Tm0lPa3tcaoc34gjlCCKUPdymJGcpK41cPv0OolIGTJTZC9O2kbbUOSxAfvCa2rvwXogpqsjA3bFi
	bfa5t+swnFHwLIDfjVtHwk/ys/nI6s/wKGDfAhCQu65MMnrIzzi7Jg84B/0oZlXGgZJP5WeGeD1oV
	ckiHnICOg6whnM6YSYB5/5ZdH9Gd5O7i7hP+FX/0i/yF8uugHXd/N3zqpUPx3SQGehUct3V7cN69m
	n4l7L/pcOwTPrWoFcZSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6tW8-0000000AAjo-1KRt;
	Sun, 29 Mar 2026 17:01:40 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6tW2-0000000AAjB-3wm7;
	Sun, 29 Mar 2026 17:01:38 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1774803681; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=TcyHnaylvk07QRKxitF9wqW7gG6NVSPQX3bnLz2/hjopfBjKnoAPBFoua96wX7uE/F7lF8qg8Vc1PZMb72wjSI6C0L3c+yMWSE30ag9uvco28XpVexNQGZAYah2Ncy8VmtZh1yDWQhsmVI+ivpLCunmnZdXMRzHSAideamxtA3A=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1774803681; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=kdBBo47+/mBAsd9iPiJAysoTiErRL2J2XY5aq4i0hpY=; 
	b=naNTCj/ftIouV+CVDFatmiyxxPolprzt7NXwS5wKsqsEFDnx7hssS/DKUVJ9yWSU4UlCrQfT0b9p7zv8xQJpHKq1LLruNeMYKFnijMENE01iz7f4k/xmq0dsfcDFaUtff8SVOQiTRGY/DCwqzy9TBtXcZtcXdPOipMOsUGNJf4c=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1774803681;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=kdBBo47+/mBAsd9iPiJAysoTiErRL2J2XY5aq4i0hpY=;
	b=KW6WRE8GxxSw8Xo7Ye4ksZVnyqkFUgx/uA9awoCfs0j3qt0IFJEZRHZOm6rAj9dw
	Hh6OV7LdtYk/dL+mA20+zMkvabuQxSZ2dbWSOuHWnInkY3cQmTYNG3aO4mc5d7Wu910
	LtfcyS8bYAeJ+Uc7F19BdKS1k6lsN30uvGqdBvug=
Received: by mx.zohomail.com with SMTPS id 177480368036818.123364854552847;
	Sun, 29 Mar 2026 10:01:20 -0700 (PDT)
Message-ID: <cfec65cb-398f-4f14-8587-2e2911372cda@collabora.com>
Date: Sun, 29 Mar 2026 19:01:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 3/6] iommu: Add verisilicon IOMMU driver
To: Will Deacon <will@kernel.org>
Cc: joro@8bytes.org, robin.murphy@arm.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 nicolas.dufresne@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 iommu@lists.linux.dev, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org
References: <20260216095144.107356-1-benjamin.gaignard@collabora.com>
 <20260216095144.107356-4-benjamin.gaignard@collabora.com>
 <acKxzGk1Z541yoZ4@willie-the-truck>
 <e083e933-2746-4b26-ac33-3b32d362b28e@collabora.com>
 <acQPEEd0hQrghGbw@willie-the-truck>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <acQPEEd0hQrghGbw@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260329_100137_513841_CFBB1BB6 
X-CRM114-Status: GOOD (  27.54  )
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

CkxlIDI1LzAzLzIwMjYgw6AgMTc6MzYsIFdpbGwgRGVhY29uIGEgw6ljcml0wqA6Cj4gT24gVHVl
LCBNYXIgMjQsIDIwMjYgYXQgMDU6Mjg6NDRQTSArMDEwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3Jv
dGU6Cj4+IExlIDI0LzAzLzIwMjYgw6AgMTY6NDYsIFdpbGwgRGVhY29uIGEgw6ljcml0wqA6Cj4+
PiBPbiBNb24sIEZlYiAxNiwgMjAyNiBhdCAxMDo1MTozNUFNICswMTAwLCBCZW5qYW1pbiBHYWln
bmFyZCB3cm90ZToKPj4+PiBUaGUgVmVyaXNpbGljb24gSU9NTVUgaGFyZHdhcmUgYmxvY2sgY2Fu
IGJlIGZvdW5kIGluIGNvbWJpbmF0aW9uCj4+Pj4gd2l0aCBWZXJpc2lsaWNvbiBoYXJkd2FyZSB2
aWRlbyBjb2RlY3MgKGVuY29kZXJzIG9yIGRlY29kZXJzKSBvbgo+Pj4+IGRpZmZlcmVudCBTb0Nz
Lgo+Pj4+IEVuYWJsZSBpdCB3aWxsIGFsbG93IHVzIHRvIHVzZSBub24gY29udGlndW91cyBtZW1v
cnkgYWxsb2NhdG9ycwo+Pj4+IGZvciBWZXJpc2lsaWNvbiB2aWRlbyBjb2RlY3MuCj4+Pj4gSWYg
Ym90aCBkZWNvZGVyIGFuZCB0aGlzIGlvbW11IGRyaXZlciBhcmUgY29tcGlsZWQgaGFzIG1vZHVs
ZXMKPj4+PiB0aGVyZSBpcyB1bmRlZmluZWQgc3ltYm9sZXMgaXNzdWVzIHNvIHRoaXMgaW9tbXUg
ZHJpdmVyIGNvdWxkCj4+Pj4gb25seSBiZSBjb21waWxlZCBoYXMgYnVpbHQtaW4uCj4+Pj4KPj4+
PiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29s
bGFib3JhLmNvbT4KPj4+PiAtLS0KPj4+PiAgICBNQUlOVEFJTkVSUyAgICAgICAgICAgICAgIHwg
ICA4ICsKPj4+PiAgICBkcml2ZXJzL2lvbW11L0tjb25maWcgICAgIHwgIDExICsKPj4+PiAgICBk
cml2ZXJzL2lvbW11L01ha2VmaWxlICAgIHwgICAxICsKPj4+PiAgICBkcml2ZXJzL2lvbW11L3Zz
aS1pb21tdS5jIHwgNzk0ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4+
Pj4gICAgaW5jbHVkZS9saW51eC92c2ktaW9tbXUuaCB8ICAyMSArCj4+Pj4gICAgNSBmaWxlcyBj
aGFuZ2VkLCA4MzUgaW5zZXJ0aW9ucygrKQo+Pj4+ICAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL2lvbW11L3ZzaS1pb21tdS5jCj4+Pj4gICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUv
bGludXgvdnNpLWlvbW11LmgKPj4+IFsuLi5dCj4+Pgo+Pj4+ICtzdGF0aWMgc2l6ZV90IHZzaV9p
b21tdV91bm1hcChzdHJ1Y3QgaW9tbXVfZG9tYWluICpkb21haW4sIHVuc2lnbmVkIGxvbmcgX2lv
dmEsCj4+Pj4gKwkJCSAgICAgIHNpemVfdCBzaXplLCBzaXplX3QgY291bnQsIHN0cnVjdCBpb21t
dV9pb3RsYl9nYXRoZXIgKmdhdGhlcikKPj4+PiArewo+Pj4+ICsJc3RydWN0IHZzaV9pb21tdV9k
b21haW4gKnZzaV9kb21haW4gPSB0b192c2lfZG9tYWluKGRvbWFpbik7Cj4+Pj4gKwlkbWFfYWRk
cl90IHB0ZV9kbWEsIGlvdmEgPSAoZG1hX2FkZHJfdClfaW92YTsKPj4+PiArCXVuc2lnbmVkIGxv
bmcgZmxhZ3M7Cj4+Pj4gKwlwaHlzX2FkZHJfdCBwdF9waHlzOwo+Pj4+ICsJdTMyIGR0ZTsKPj4+
PiArCXUzMiAqcHRlX2FkZHI7Cj4+Pj4gKwlzaXplX3QgdW5tYXBfc2l6ZSA9IDA7Cj4+Pj4gKwo+
Pj4+ICsJc3Bpbl9sb2NrX2lycXNhdmUoJnZzaV9kb21haW4tPmxvY2ssIGZsYWdzKTsKPj4+PiAr
Cj4+Pj4gKwlkdGUgPSB2c2lfZG9tYWluLT5kdFt2c2lfaW92YV9kdGVfaW5kZXgoaW92YSldOwo+
Pj4+ICsJLyogSnVzdCByZXR1cm4gMCBpZiBpb3ZhIGlzIHVubWFwcGVkICovCj4+Pj4gKwlpZiAo
IXZzaV9kdGVfaXNfcHRfdmFsaWQoZHRlKSkKPj4+PiArCQlnb3RvIHVubG9jazsKPj4+PiArCj4+
Pj4gKwlwdF9waHlzID0gdnNpX2R0ZV9wdF9hZGRyZXNzKGR0ZSk7Cj4+Pj4gKwlwdGVfYWRkciA9
ICh1MzIgKilwaHlzX3RvX3ZpcnQocHRfcGh5cykgKyB2c2lfaW92YV9wdGVfaW5kZXgoaW92YSk7
Cj4+Pj4gKwlwdGVfZG1hID0gcHRfcGh5cyArIHZzaV9pb3ZhX3B0ZV9pbmRleChpb3ZhKSAqIHNp
emVvZih1MzIpOwo+Pj4+ICsJdW5tYXBfc2l6ZSA9IHZzaV9pb21tdV91bm1hcF9pb3ZhKHZzaV9k
b21haW4sIHB0ZV9hZGRyLCBwdGVfZG1hLCBzaXplKTsKPj4+PiArCj4+Pj4gK3VubG9jazoKPj4+
PiArCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnZzaV9kb21haW4tPmxvY2ssIGZsYWdzKTsKPj4+
PiArCj4+Pj4gKwlyZXR1cm4gdW5tYXBfc2l6ZTsKPj4+PiArfQo+Pj4gSSBzdGlsbCB0aGluayB5
b3UgbmVlZCBUTEIgaW52YWxpZGF0aW9uIGhlcmUuCj4+Pgo+Pj4gSSBsb29rZWQgYXQgdGhlIGRv
d25zdHJlYW0gY29kZSB0aGF0IHlvdSBsaW5rZWQgdG8gYW5kIGl0IGxpdHRlcnMgdGhlCj4+PiBp
bnZhbGlkYXRpb24gaW4gdGhlIGNhbGxlcnMgdmlhIG1wcF9pb21tdV9mbHVzaF90bGIoKSwgd2hp
Y2ggdGVuZCB0bwo+Pj4gaW52YWxpZGF0ZSBfYmVmb3JlXyBzdGFydGluZyBhbiBvcGVyYXRpb24u
IFRoYXQncyB2ZXJ5IGxpa2VseSBidWdneSBhbmQKPj4+IGNlcnRhaW5seSBub3Qgc29tZXRoaW5n
IHdlIHdhbnQgdXBzdHJlYW0uCj4+Pgo+Pj4gVGhlIHVubWFwIHJvdXRpbmUgc2hvdWxkIGRvIHRo
ZSBpbnZhbGlkYXRpb24gc28gdGhhdCwgd2hlbiBpdCByZXR1cm5zLAo+Pj4gdGhlIHBhZ2VzIHJl
YWxseSBhcmUgdW5tYXBwZWQgZnJvbSB0aGUgZGV2aWNlIChhc3N1bWluZyBzdHJpY3QgbW9kZSku
Cj4+Pgo+Pj4gSSBrbm93IHlvdSBzYWlkIHRoYXQgeW91IHRyaWVkIHRvIGFkZCBpbnZhbGlkYXRp
b24gaGVyZSBhbmQgaXQgImRpZG4ndAo+Pj4gd29yayIsIGJ1dCB0aGF0J3Mgbm90IHNvbWV0aGlu
ZyBJIGNhbiByZWFsbHkgaGVscCB5b3Ugd2l0aC4KPj4gSSBrbm93IHlvdSBleHBlY3QgdGhlIGhh
cmR3YXJlIHRvIHdvcmsgbGlrZSB0aGF0IGJ1dCB0aGF0IGlzbid0IG5vdCB0aGUKPj4gY2FzZS4K
PiBUaGUgaGFyZHdhcmUgYXBwZWFycyB0byBoYXZlIGEgcmVnaXN0ZXIgdG8gaW52YWxpZGF0ZSB0
aGUgZW50aXJlIFRMQi4KPiBXZSBjYW4gdXNlIHRoYXQgaWYgdGhlcmUncyBub3RoaW5nIGVsc2Uu
CgpWU0lfTU1VX0JJVF9GTFVTSCA/IGl0IGRpc2NhcmRzIGV2ZXJ5dGhpbmcuCklzIHRoZXJlIGFu
IGFwaSB0byBjYWxsIGl0IHdoZW4gYWxsIGJ1ZmZlcnMgaGF2ZSBiZWVuIHVubWFwcGVkID8KCj4K
Pj4gSSBzcGVuZCBxdWl0ZSBsb25nIHRvIHRyeSB0byBmb3VuZCBoaWRkZW4gYml0KHMpIG9yIGFu
IG90aGVyIHdheSB0byBkbyBsaWtlCj4+IHlvdSB3YW50IGJ1dCBJIGNhbid0IGZpbmQgYW55IHNv
bHV0aW9uLgo+IFRoZW4gd2UgY2FuIGludmFsaWRhdGUgdGhlIGVudGlyZSBUTEIuCj4KPj4gQXMg
eW91IG1lbnRpb24gdGhlIGRvd25zdHJlYW0gY29kZSBzdWdnZXN0IHRoYXQgdGhlIGlvbW11IGNh
bid0IGludmFsaWRhdGUKPj4gVExCIGluIHVubWFwIHJvdXRpbmUgc28gSSBkb24ndCBzZWUgaG93
IHRvIHByb2dyZXNzLgo+IFRoZSBkb3duc3RyZWFtIGNvZGUgaXMgYSB0YW5nbGVkIG1lc3M7IEkg
ZG9uJ3QgdGhpbmsgaXQgc3VnZ2VzdHMgYW55dGhpbmcKPiBhYm91dCB3aGF0IHRoZSBJT01NVSBo
YXJkd2FyZSBpcyBjYXBhYmxlIG9mLgoKSWYgeW91IGhhdmUgYW4gb3RoZXIgc291cmNlIHRvIHRl
bGwgdGhlIGhhcmR3YXJlIGNhcGFiaWxpdGllcywgSSB3aWxsIGJlCm1vcmUgdGhhbiBoYXBweSB0
byByZWFkIGl0IGFuZCBmaXggdGhlIGRyaXZlci4KCkJlbmphbWluCgo+Cj4+IE1heWJlIHdlIHNo
b3VsZCBqdXN0IGFkbWl0IHRoYXQgaXMgaG93IHRoZSBoYXJkd2FyZSB3b3JrLgo+IE5vLgo+Cj4g
VGhlIHVwc3RyZWFtIGtlcm5lbCBpc24ndCBhIGR1bXBpbmcgZ3JvdW5kIGZvciB2ZW5kb3IgY3Jh
cC4gVGhlIGhhcmR3YXJlCj4gaGFzIFRMQiBpbnZhbGlkYXRpb24gZnVuY3Rpb25hbGl0eSBhbmQg
c28gd2Ugc2hvdWxkIHVzZSBpdC4gSWYgd2UgZG9uJ3QsCj4gdGhlbiB3ZSdyZSBub3QgZ2l2aW5n
IHRoZSBJT01NVSBBUEkgd2hhdCBpdCBleHBlY3RzIGFuZCBhbnkgY2FsbGVycwo+IG91dHNpZGUg
b2YgdGhlIHZpZGVvIGNvZGVjcyB3aWxsIGJlIGxhbmRlZCB3aXRoIHByb2JsZW1zIHdoZW4gdW5t
YXAKPiBkb2Vzbid0IHdvcmsgYXMgZXhwZWN0ZWQuCj4KPj4gVGhpcyB2MTMgaGFzIGZpeGVkIHRo
ZSBkb2N1bWVudGF0aW9uIHNvIEkgZG9uJ3QgcGxhbiB0byBzcGVuZCBtb3JlIHRpbWUgb24gdGhp
cyBkcml2ZXIuCj4gVGhhdCdzIGEgc2hhbWUsIEknbSByZWFsbHkgbm90IGFza2luZyBmb3IgbXVj
aC4KPgo+IFdpbGwKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
