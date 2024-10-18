Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65F56D2FFEC
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Oct 2024 10:54:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qK0tIMdrVY1M5cx9hNlkCA+6TDbc0FyBKmZI6UxhI+U=; b=xGyiPoUYS6FlkCeJwGxQUvWAe1
	v1kMbv8zuI+fRsXzST8d7xi5WbPli66xUPIwhA326lYMokbeLdgKIizNpvQb1sbqyA+UP2H+/MKdL
	MWR1vy7CFpnJzNSfuH7gTBZX4ypfwoIbFPyK1xGsXgAz7v8WBV5rfppn57WKpumo1ek3nF/9GBacP
	Rvn2z2tR6AoFDlq3t80K5IY4vVQI+GSzoxYMd1iGg/mFGFge32Cl5T75IMbVri9N16qYOxyn/fGQd
	iEPjmDja7iH8c/zAw5+U4c1m1UYPhMe9f0nm1cFXAp+UYkXA7PLT+EruBGNd9iIMD+0lZ8301Ju4v
	1E5lSHNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1kcm-00000000Rfs-0SSF;
	Fri, 18 Oct 2024 10:54:28 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1kb0-00000000RHe-33vh;
	Fri, 18 Oct 2024 10:52:40 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1729248756;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=oSgaCXhYCTyaqW7QXeST4qmKxHMaP1eI9yKLIfIiBVU=;
	b=sW2za9oGS9xzHI/cAhOXgA55SqvcaRZd4ZjEW9S05evi598emFFzmbR51pWaFAqaxgSFT6
	cmwASG3LXRhOaqKHfE2M4ppss24PwAUIiFjs6FfFQz2Xtz6nQPtQp5q7yha6Nch253qcb6
	8M9r3ssLT9MQPu8t7VwvYTLlBKDBM2Ggd+2jdiT7gs+1u+TgeT50Yf2LDZN0quT7xPU14y
	KBmkgvLU2ovN9kRpRuUYmtLsyatdSsGljMPKYrASNqwz+2yELdr0OekF9pX8ad5H6BpEFF
	U2mDEPKY0E5LfDdUuYCyrWoPOeBVlYkh+nh8Xg2LaBLeaaEIXKvR+VhDIRKDiw==
Date: Fri, 18 Oct 2024 12:52:35 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Frank Wang <frawang.cn@gmail.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, william.wu@rock-chips.com,
 tim.chen@rock-chips.com, yubing.zhang@rock-chips.com, Frank Wang
 <frank.wang@rock-chips.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: soc: rockchip: add rk3576 vo1-grf
 syscon
In-Reply-To: <3cd260c8-86e5-4833-b23e-b73dc6417f81@gmail.com>
References: <20241017025230.28752-1-frawang.cn@gmail.com>
 <ca0ee8752791f53bac23933e1582dd86@manjaro.org>
 <d2a200aa-1301-4940-a39c-0412fe741994@gmail.com>
 <ee27926c06bedd62f417dbd7d01ce8b3@manjaro.org>
 <3cd260c8-86e5-4833-b23e-b73dc6417f81@gmail.com>
Message-ID: <5175d8a9b007ce1c6c12bcc09d78dfda@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_035239_383677_4DB01C73 
X-CRM114-Status: GOOD (  17.59  )
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

SGVsbG8gRnJhbmssCgpPbiAyMDI0LTEwLTE4IDA5OjM0LCBGcmFuayBXYW5nIHdyb3RlOgo+IE9u
IDIwMjQvMTAvMTggMTQ6MzcsIERyYWdhbiBTaW1pYyB3cm90ZToKPj4gT24gMjAyNC0xMC0xOCAw
ODoxOCwgRnJhbmsgV2FuZyB3cm90ZToKPj4+IE9uIDIwMjQvMTAvMTggMTM6MDIsIERyYWdhbiBT
aW1pYyB3cm90ZToKPj4+PiBPbiAyMDI0LTEwLTE3IDA0OjUyLCBGcmFuayBXYW5nIHdyb3RlOgo+
Pj4+PiBGcm9tOiBGcmFuayBXYW5nIDxmcmFuay53YW5nQHJvY2stY2hpcHMuY29tPgo+Pj4+PiAK
Pj4+Pj4gQWRkIHJvY2tjaGlwLHJrMzU3Ni12bzEtZ3JmIHN5c2NvbiBjb21wYXRpYmxlLCB0aGUg
dm8xLWdyZiBpcwo+Pj4+PiBjb25maWd1cmVkIGluIHVzYmRwIHBoeSBkcml2ZXIuCj4+Pj4+IAo+
Pj4+PiBTaWduZWQtb2ZmLWJ5OiBGcmFuayBXYW5nIDxmcmFuay53YW5nQHJvY2stY2hpcHMuY29t
Pgo+Pj4+PiAtLS0KPj4+Pj4gQ2hhbmdlbG9nOgo+Pj4+PiB2MjoKPj4+Pj4gwqAtIFRoaXMgaXMg
YSBuZXcgcGF0Y2ggYWRkcyByazM1NzYtdm8xLWdyZiBzeXNjb24uCj4+Pj4gCj4+Pj4gQ291bGQg
eW91LCBwbGVhc2UsIGNsYXJpZnkgYSBiaXQgd2h5IGlzIHRoaXMgYWRkaXRpb25hbCBwYXRjaAo+
Pj4+IG5lZWRlZCBpbiB0aGlzIHNlcmllcz8KPj4+IAo+Pj4gSSBtZW50aW9uZWQgaW4gdGhlIGNv
bW1pdCBjb250ZW50LiBUaGUgdXNiZHAtcGh5IGRyaXZlciBzZWxlY3QgZHAKPj4+IGxhbmVzIHZp
YSBjb25maWd1cmluZyB0aGUgdm8xLWdyZi4KPj4gCj4+IFllcywgSSBhbHJlYWR5IHNhdyB0aGF0
IGluIHRoZSBwYXRjaCBkZXNjcmlwdGlvbi7CoCBUaG91Z2gsIGFuZAo+PiBJIGFwb2xvZ2l6ZSBp
ZiBJJ20gbWlzc2luZyBzb21ldGhpbmcgb2J2aW91cywgSSBjYW4ndCBzZWUgd2hlcmUKPj4gaXMg
aXQgYWN0dWFsbHkgdXNlZCBpbiB0aGUgY29kZT/CoCBJcyBpdCB5ZXQgdG8gYmUgdXNlZCBpbiB0
aGUKPj4gZHRzKGkpIGZpbGVzPwo+PiAKPj4gSSdkIGFwcHJlY2lhdGUgaWYgeW91IGNvdWxkIGNs
YXJpZnkgdGhhdCBqdXN0IGEgYml0IGZ1cnRoZXIsIHNvCj4+IEkgY2FuIGhvcGVmdWxseSB1bmRl
cnN0YW5kIGl0IGJldHRlci4KPiAKPiBZZXMsIHRoZSB1c2JkcF9waHkgbm9kZSBpbiBkdHMoaSkg
d2lsbCBhc3NpZ24gdGhlIHZvMS1ncmYgcGhhbmRsZSBsaWtlIAo+IHRoaXM6Cj4gCj4gdXNiZHBf
cGh5OiBwaHlAMmIwMTAwMDAgewo+IMKgwqDCoMKgwqDCoMKgIC4uLgo+IMKgwqDCoMKgwqDCoMKg
IHJvY2tjaGlwLHZvLWdyZiA9IDwmdm8xX2dyZj47Cj4gfTsKPiAKPiBBbmQgdGhlIHVzYmRwLXBo
eSBkcml2ZXIgcGFyc2VzIGl0IGFuZCBhc3NpZ24gdG8gdWRwaHktPnZvZ3JmLCBpdCB1c2VzCj4g
aW4gcmtfdWRwaHlfZHBsYW5lX3NlbGVjdCgpLgo+IAo+IFRoZSByZWxhdGVkIGNvZGVzIGhhdmUg
YWxyZWFkeSBleGlzdGVkIGluIHRoZSBjdXJyZW50IGRyaXZlciwgc28gZm9yCj4gUkszNTc2LCBq
dXN0IG9ubHkgbmVlZCB0byBkbyBhIGNvbmZpZ3VyYXRpb24uCgpHcmVhdCwgdGhhbmtzIGZvciB0
aGUgZGV0YWlsZWQgZXhwbGFuYXRpb24hICBUaGlzIGNvbmZpcm1zCm15IGxhdGVzdCBhc3N1bXB0
aW9uIGFuZCBldmVyeXRoaW5nIGlzIGxvb2tpbmcgZ29vZCwgc28gcGxlYXNlCmZyZWUgdG8gaW5j
bHVkZToKClJldmlld2VkLWJ5OiBEcmFnYW4gU2ltaWMgPGRzaW1pY0BtYW5qYXJvLm9yZz4KCj4+
Pj4+IHYxOgo+Pj4+PiDCoC0gbm9uZQo+Pj4+PiAKPj4+Pj4gwqBEb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3Mvc29jL3JvY2tjaGlwL2dyZi55YW1sIHwgMiArKwo+Pj4+PiDCoDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPj4+Pj4gCj4+Pj4+IGRpZmYgLS1naXQgCj4+Pj4+
IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9yb2NrY2hpcC9ncmYueWFt
bAo+Pj4+PiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2Mvcm9ja2NoaXAv
Z3JmLnlhbWwKPj4+Pj4gaW5kZXggNTBkNzI3ZjRiNzZjNi4uZmQ0MjIxN2FiODVlNyAxMDA2NDQK
Pj4+Pj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9yb2NrY2hp
cC9ncmYueWFtbAo+Pj4+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
c29jL3JvY2tjaGlwL2dyZi55YW1sCj4+Pj4+IEBAIC0zMyw2ICszMyw3IEBAIHByb3BlcnRpZXM6
Cj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSByb2NrY2hpcCxyazM1NzYtdXNi
LWdyZgo+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gcm9ja2NoaXAscmszNTc2
LXVzYmRwcGh5LWdyZgo+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gcm9ja2No
aXAscmszNTc2LXZvMC1ncmYKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gcm9j
a2NoaXAscmszNTc2LXZvMS1ncmYKPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAt
IHJvY2tjaGlwLHJrMzU3Ni12b3AtZ3JmCj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgLSByb2NrY2hpcCxyazM1ODgtYmlnY29yZTAtZ3JmCj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgLSByb2NrY2hpcCxyazM1ODgtYmlnY29yZTEtZ3JmCj4+Pj4+IEBAIC0yODMs
NiArMjg0LDcgQEAgYWxsT2Y6Cj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZToKPj4+
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29udGFpbnM6Cj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBlbnVtOgo+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSByb2NrY2hp
cCxyazM1NzYtdm8xLWdyZgo+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gcm9j
a2NoaXAscmszNTg4LXZvLWdyZgo+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0g
cm9ja2NoaXAscmszNTg4LXZvMC1ncmYKPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAtIHJvY2tjaGlwLHJrMzU4OC12bzEtZ3JmCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
