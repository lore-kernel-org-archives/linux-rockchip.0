Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16BF2C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jan 2024 14:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZZou5bi6Ns1KjTlOFX7AGMMu8KqrEMW87GbfpBghT1c=; b=ItLo68P3hxWNYuMN+WBVWQk22z
	8RWIn0IjbImrJhXi77pL4n9n3Rrd6F2iL0szTzUNrxP6mCQ4PjLu/UwwarNoU5KOnjSbxVhFblf6m
	9pbEmRSn9rDh0q4yBun1OSK+FPuKrnTabnKKZ5C9sMHK+Ju9hSF/0XNXBSXIytesM4654FUPtXJau
	acZzAtoBnHv5jobK96baoZHC9zbYlMzrJCs9mzLj0NWb+vBiC1PrEWNBw3//XtOYoEwa4U7LOhFQO
	bJo45z0sFuYZGZOUXJmlaTdJlVwxzQb87NhNGIAGK3KQmrO2EdTApVbGw6pP73I8QCur33t2JV878
	7UfYD0Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMqoL-005O6N-38;
	Mon, 08 Jan 2024 14:41:05 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMqoG-005O53-3D
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Jan 2024 14:41:05 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1704724856;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uISbz7HD4BuZssVM2LJNJqirV1xJsD2bp/nKC9OA7Hs=;
	b=dfyEKxwtBA1OCiuAafzy3qiqjJpxkBHw9JVg1cpW6ZlZ46x8Mt/+zjFp+Lbs1pVoBop7YU
	1IvD5BdTRrLXwbZvC/HOwoVKcUPPYRrY3O0LJHF6IvQaevZ42vgCcBTwOOcrwTPrJ9HpMa
	kjvBj2vWQ+37OUQIz9Lg3YYkkQmmfy0BoSOzjAoopgbewdZSyzJK5cYTDGcxtpku2OM4MI
	YkXjA2LX0TB/bVLoZiDJS/359ohTAr3SEifZFH72fzIw8kPrmnI4EwJg+dJcXubTIrds7E
	QinAohmxAyInzj+w4WkU4hO2jdPX56tnrc2BTblhIKhLaTIqgT72WZaPFWpnlw==
Date: Mon, 08 Jan 2024 15:40:55 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Shantur Rathore <i@shantur.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] dts: rockpro64: Remove usb regulator-always-on
In-Reply-To: <CABEcMwWEru2DYnd-Y3qWbEp25unVd96TogSnQ+-L+NXKS3_pZQ@mail.gmail.com>
References: <20231222141616.508073-1-i@shantur.com>
 <2323515.eGJsNajkDb@diego>
 <CABEcMwVwyp0zGvxL0nY3aW1_SFUEh++0bV8qBRZLK1aEpa=NHw@mail.gmail.com>
 <72f608668d619bda1cc620ce11eb3e40@manjaro.org>
 <CABEcMwWEru2DYnd-Y3qWbEp25unVd96TogSnQ+-L+NXKS3_pZQ@mail.gmail.com>
Message-ID: <a21c8a2332ee0053f5c6c62ceb480732@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240108_064101_673432_7D3D9EB2 
X-CRM114-Status: GOOD (  25.55  )
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

T24gMjAyNC0wMS0wOCAxMzoxMSwgU2hhbnR1ciBSYXRob3JlIHdyb3RlOgo+IEhpIERyYWdhbiwK
CkhlbGxvIQoKPiBPbiBUaHUsIEphbiA0LCAyMDI0IGF0IDk6NTDigK9BTSBEcmFnYW4gU2ltaWMg
PGRzaW1pY0BtYW5qYXJvLm9yZz4gd3JvdGU6Cj4+IAo+PiBPbiAyMDI0LTAxLTA0IDEwOjQ0LCBT
aGFudHVyIFJhdGhvcmUgd3JvdGU6Cj4+ID4gT24gRnJpLCBEZWMgMjksIDIwMjMgYXQgMTA6MDji
gK9QTSBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPj4gPj4gQW0gRnJl
aXRhZywgMjIuIERlemVtYmVyIDIwMjMsIDE1OjE2OjE2IENFVCBzY2hyaWViIFNoYW50dXIgUmF0
aG9yZToKPj4gPj4gPiBVU0IgcG9ydCByZWd1bGF0b3JzIHNob3VsZCBiZSBjb250cm9sbGVkIGJ5
IFBIWXMKPj4gPj4gPiBzbyB3ZSByZW1vdmUgYWx3YXlzLW9uIHByb3BlcnR5IGFuZCBsZXQgUEhZ
cyBtYW5hZ2UgdGhlCj4+ID4+ID4gcmVndWxhdG9yLgo+PiA+PiA+Cj4+ID4+ID4gcGh5LXN1cHBs
eSBpc24ndCBzY29uZnVncmVkIGZvciB0aGUgVHlwZUMgcG9ydCBhbmQgbm93IHRoYXQgd2UgYXJl
Cj4+ID4+ICAgICAgICAgICAgICAgICBeXiBjb25maWd1cmVkID8KPj4gPj4KPj4gPj4gPiByZW1v
dmluZyByZWd1bGF0b3ItYWx3YXlzLW9uLCB3ZSBuZWVkIHRvIGZpeCB0aGUgcGh5LXN1cHBseQo+
PiA+PiA+IHNvIHRoZSBQSFlzIGFyZSBhYmxlIHRvIHR1cm4gcG93ZXIgdG8gdHlwZS1jIHBvcnQu
Cj4+ID4+ID4KPj4gPj4gPiBTZXJpZXMtdmVyc2lvbjogMgo+PiA+PiA+Cj4+ID4+ID4gU2lnbmVk
LW9mZi1ieTogU2hhbnR1ciBSYXRob3JlIDxpQHNoYW50dXIuY29tPgo+PiA+PiA+IC0tLQo+PiA+
PiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzaSB8
IDMgKy0tCj4+ID4+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlv
bnMoLSkKPj4gPj4gPgo+PiA+PiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszMzk5LXJvY2twcm82NC5kdHNpCj4+ID4+ID4gaW5kZXggYmNhMmI1MGUwYS4uZjcyNzNm
Nzk5MCAxMDA2NDQKPj4gPj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzM5OS1yb2NrcHJvNjQuZHRzaQo+PiA+PiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHNpCj4+ID4+ID4gQEAgLTE5Miw3ICsxOTIsNiBAQCB2
Y2M1djBfaG9zdDogdmNjNXYwLWhvc3QtcmVndWxhdG9yIHsKPj4gPj4gPiAgICAgICAgICAgICAg
IHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+ID4+ID4gICAgICAgICAgICAgICBwaW5jdHJs
LTAgPSA8JnZjYzV2MF9ob3N0X2VuPjsKPj4gPj4gPiAgICAgICAgICAgICAgIHJlZ3VsYXRvci1u
YW1lID0gInZjYzV2MF9ob3N0IjsKPj4gPj4gPiAtICAgICAgICAgICAgIHJlZ3VsYXRvci1hbHdh
eXMtb247Cj4+ID4+ID4gICAgICAgICAgICAgICB2aW4tc3VwcGx5ID0gPCZ2Y2M1djBfdXNiPjsK
Pj4gPj4gPiAgICAgICB9Owo+PiA+PiA+Cj4+ID4+ID4gQEAgLTIwMyw3ICsyMDIsNiBAQCB2Y2M1
djBfdHlwZWM6IHZjYzV2MC10eXBlYy1yZWd1bGF0b3Igewo+PiA+PiA+ICAgICAgICAgICAgICAg
cGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4gPj4gPiAgICAgICAgICAgICAgIHBpbmN0cmwt
MCA9IDwmdmNjNXYwX3R5cGVjX2VuPjsKPj4gPj4gPiAgICAgICAgICAgICAgIHJlZ3VsYXRvci1u
YW1lID0gInZjYzV2MF90eXBlYyI7Cj4+ID4+ID4gLSAgICAgICAgICAgICByZWd1bGF0b3ItYWx3
YXlzLW9uOwo+PiA+PiA+ICAgICAgICAgICAgICAgdmluLXN1cHBseSA9IDwmdmNjNXYwX3VzYj47
Cj4+ID4+ID4gICAgICAgfTsKPj4gPj4gPgo+PiA+PiA+IEBAIC04NTksNiArODU3LDcgQEAgJnUy
cGh5MCB7Cj4+ID4+ID4gICAgICAgc3RhdHVzID0gIm9rYXkiOwo+PiA+PiA+Cj4+ID4+ID4gICAg
ICAgdTJwaHkwX290Zzogb3RnLXBvcnQgewo+PiA+PiA+ICsgICAgICAgICAgICAgcGh5LXN1cHBs
eSA9IDwmdmNjNXYwX3R5cGVjPjsKPj4gPj4gPiAgICAgICAgICAgICAgIHN0YXR1cyA9ICJva2F5
IjsKPj4gPj4gPiAgICAgICB9Owo+PiA+Pgo+PiA+PiBKdXN0IHRvIGV4cGxhaW4gZm9yIG1lLCB3
aGF0IGlzIHN1cHBseWluZyB0aGUgIm90aGVyIiBPVEcgcG9ydAo+PiA+PiAgICAgICAgIHUycGh5
MV9vdGc6IG90Zy1wb3J0IHt9Cj4+ID4+Cj4+ID4+IGluIHUycGh5MSAuLi4gdGhpcyBvbmUgaXMg
c3RhdHVzIG9rYXksIGJ1dCBkb2VzIG5vdCBoYXZlIGFueSBwaHkKPj4gPj4gc3VwcGx5Pwo+PiA+
Pgo+PiA+IEluIFJvY2tQcm82NCB0aGVyZSBpcyBvbmx5IDEgVVNCLUMgT1RHIHBvcnQgYW5kIHRo
ZSBvdGhlciBwb3J0Cj4+ID4gaXMgYSBVU0ItMy4wIHBvcnQuCj4+ID4gVG8gYmUgaG9uZXN0LCBJ
IGFtIG5vdCAxMDAlIHN1cmUgaG93IHRoaXMgYWxsIHdvcmtzLCBhcyBJIHVuZGVyc3RhbmQKPj4g
PiB0aGUgVVNCMy4wIHBvcnQgaXMgd2lyZWQgdG8gdGhlIHNlY29uZCBUeXBlQyBQaHkuCj4+ID4K
Pj4gPiBNYXliZSBEcmFnYW4gaGFzIG1vcmUgaW5mbyBvbiB0aGlzLgo+PiAKPj4gSSdsbCBoYXZl
IGl0IGNoZWNrZWQgYW5kIHRlc3RlZCBpbiBkZXRhaWwsIG9mIGNvdXJzZSwgYnV0IEkgaGF2ZSB0
bwo+PiByZWNvdmVyIGZyb20gdGhpcyBuYXN0eSBmbHUgZmlyc3QuICBVbmZvcnR1bmF0ZWx5LCBp
dCBoYXMgcmVuZGVkZWQgbWUKPj4gdW5hYmxlIHRvIGV2ZW4gdGhpbmsgc3RyYWlnaHQuCj4gCj4g
SG9wZSB5b3UgZmVlbCBiZXR0ZXIgc29vbi4KPiBJdCB3b3VsZCBiZSBhd2Vzb21lIGlmIHdlIGNh
biBnZXQgdGhpcyBpbiB3aGlsZSB0aGUgY3VycmVudCBtZXJnZQo+IHdpbmRvdyBpcyBvcGVuLgoK
VGhhbmtmdWxseSwgSSdtIGZlZWxpbmcgc2lnbmlmaWNhbnRseSBiZXR0ZXIgYWZ0ZXIgbW9yZSB0
aGFuIHR3byB3ZWVrcyAKb2YgbWlzZXJ5LCBhbmQgSSBob3BlIHRvIGJlIGFibGUgdG8gd29yayBv
biB0aGlzIGluIHRoZSBuZXh0IGZldyBkYXlzLiAgCkknbGwgZG8gbXkgYmVzdCB0byBoYXZlIGl0
IGRvbmUgaW4gdGhlIGN1cnJlbnQgbWVyZ2Ugd2luZG93LCB0b2dldGhlciAKd2l0aCBhIGZldyBu
ZXcgcGF0Y2hlcyB0aGF0IEkgaGF2ZSBwbGFubmVkIHRvIHN1Ym1pdCB0byB0aGUgbWFpbGluZyAK
bGlzdC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
