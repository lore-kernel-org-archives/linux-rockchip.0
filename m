Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F7BEC52D73
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 10:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FiMbXfvgBBFzsAGbwDtRgl4CQNooq2wfi/T+mW49bhQ=; b=WewAUv5rxhV1oWgSRf/qMxxmir
	oM+XNutkRqzfk4TDO104yZGjcpiSuC1ml02v8NH/B4iRJfglLwBJXLLEXGIpJnrdvx5FcgzAnfqCY
	TCyToDLUPy8D7xwQUb0ryUvzqhZr35tUDEaEAu8V3WLsL6XsCXLvwDEQnSNII4PkQBnJkAc7vCT3N
	e71fhO0DnTu6CM28Ze6s/GKJ4MpsBq2quNylCouYsP0pahVNgjDRRLyJa+2T+V+u4nJTErZOHjPxW
	UbqOyCjAcDwwv4dBiD9v3gfKP1u4geDFeECs1/LpuWWQsvwuU6DZjFI+cE12x76i7Wco9VNBsfJLB
	HN1qco+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc0RP-00000007uvi-0Eqa;
	Thu, 08 Aug 2024 10:32:19 +0000
Received: from mail.flokli.de ([2a01:4f8:1c1e:e12f::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc0Qn-00000007ubJ-2I5Z;
	Thu, 08 Aug 2024 10:31:42 +0000
Date: Thu, 8 Aug 2024 13:31:37 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flokli.de; s=mail;
	t=1723113099; bh=D0j9fkFtDjrlhyFzMZPQzhRxftT0Q3FnZnmN7j+B9Pw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=i205RKxTpP4tv6wMWD1Jce9K8qen8yv4IabytzUKijFGBTO9F4k2Tjml8t7dzcONp
	 FPMZUMT1bqE6TDHhhZk2ALFF496eLBe+iPtHbZoU9a759l4970l+ioxFknBUZW/QS9
	 9wfExnwsENjBYTtF0Y+iZkaDd6VchA89rFF6rpKU=
From: Florian Klink <flokli@flokli.de>
To: Dragan Simic <dsimic@manjaro.org>
Cc: Alexey Charkov <alchark@gmail.com>, linux-rockchip@lists.infradead.org, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Kever Yang <kever.yang@rock-chips.com>, 
	Muhammed Efe Cetin <efectn@protonmail.com>, FUKAUMI Naoki <naoki@radxa.com>, 
	=?utf-8?B?VGFtw6FzIFN6xbFjcw==?= <tszucs@protonmail.ch>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: add rfkill node for M.2 E wifi
 on orangepi-5-plus
Message-ID: <bukq6244owje5ih3uo6gg2d2nkg4xwipsgbn4r5abos36g46xz@uauybbkf7y4z>
References: <20240807162001.1737829-1-flokli@flokli.de>
 <krvprzy3iz5b7n37eo2mb6sol6pcjkxsjdbdi6sxeebwveqtnr@e52cvrlkdjsa>
 <1b2e1b1b321f84f5cbff2ae18c3eba2e@manjaro.org>
 <4888470.OV4Wx5bFTl@latitude-fedora>
 <f524a2e5ddbec28dbbc0be4ef47a120b@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f524a2e5ddbec28dbbc0be4ef47a120b@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_033141_751340_25A20243 
X-CRM114-Status: GOOD (  17.14  )
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

T24gV2VkLCBBdWcgMDcsIDIwMjQgYXQgMTE6MzA6NDBQTSBHTVQsIERyYWdhbiBTaW1pYyB3cm90
ZToKPkhlbGxvIEFsZXhleSwKPgo+T24gMjAyNC0wOC0wNyAyMzoxMiwgQWxleGV5IENoYXJrb3Yg
d3JvdGU6Cj4+T24gV2VkbmVzZGF5LCBBdWd1c3QgNywgMjAyNCA5OjMyOjUx4oCvUE0gR01UKzMg
RHJhZ2FuIFNpbWljIHdyb3RlOgo+Pj5PbiAyMDI0LTA4LTA3IDIwOjE0LCBGbG9yaWFuIEtsaW5r
IHdyb3RlOgo+Pj4+IE9uIFdlZCwgQXVnIDA3LCAyMDI0IGF0IDA3OjI0OjI3UE0gR01ULCBEcmFn
YW4gU2ltaWMgd3JvdGU6Cj4+Pj4+IE9uIDIwMjQtMDgtMDcgMTk6MDAsIEZsb3JpYW4gS2xpbmsg
d3JvdGU6Cj4+Pj4+PiBUaGlzIGZvbGxvd3MgdGhlIHNhbWUgbG9naWMgYXMgODJkNDBiMTQxYTRj
ICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6Cj4+Pj4+PiBhZGQKPj4+Pj4+IHJma2lsbCBub2RlIGZv
ciBNLjIgS2V5IEUgV2lGaSBvbiByb2NrLTViIikuCj4+Pj4+Pgo+Pj4+Pj4gT24gdGhlIG9yYW5n
ZXBpLTUtcGx1cywgdGhlcmUncyBhbHNvIGEgR1BJTyBwaW4gY29ubmVjdGluZyB0aGUgV2lGaQo+
Pj4+Pj4gZW5hYmxlIHNpZ25hbCBpbnNpZGUgdGhlIE0uMiBLZXkgRSBzbG90Lgo+Pj4+Pj4KPj4+
Pj4+IFRoZSBleGFjdCBHUElPIFBJTiBjYW4gYmUgdmFsaWRhdGVkIGluIHRoZSBBcm1iaWFuIHJr
LTUuMTAtcmtyNAo+Pj4+Pj4ga2VybmVsCj4+Pj4+PiByazM1ODgtb3JhbmdlcGktNS1wbHVzLmR0
c2kgZmlsZSBbMV0sIHdoaWNoIGNvbnRhaW5zIGEgYHdpZmlfZGlzYWJsZWAKPj4+Pj4+IG5vZGUg
cmVmZXJlbmNpbmcgUktfUEM0IG9uICZncGlvMC4KPj4+Pj4+Cj4+Pj4+PiBTaWduZWQtb2ZmLWJ5
OiBGbG9yaWFuIEtsaW5rIDxmbG9rbGlAZmxva2xpLmRlPgo+Pj4+Pj4gVGVzdGVkLWJ5OiBGbG9y
aWFuIEtsaW5rIDxmbG9rbGlAZmxva2xpLmRlPgo+Pj4+Pgo+Pj4+PiBJIGZvcmdvdCB0byBtZW50
aW9uIHRoYXQgcHJvdmlkaW5nIGEgVGVzdGVkLWJ5IHRhZyBpcyByZWR1bmRhbnQgd2hlbgo+Pj4+
PiB0aGVyZSdzIGFscmVhZHkgYSBTaWduZWQtb2ZmLWJ5IHRhZywgYmVjYXVzZSB0aGUgbGF0dGVy
IGFscmVhZHkKPj4+Pj4gaW1wbGllcwo+Pj4+PiB0aGUgZm9ybWVyLgo+Pj4+Cj4+Pj4gVGhpcyBj
YW1lIGFmdGVyIEkgc2VudCB0aGUgdjMuIEdlbmVyYWxseSBJIHdpc2ggcGVvcGxlIHdvdWxkIHRl
c3QKPj4+PiB0aGluZ3MKPj4+PiAtIHRob3VnaCB0b28gb2Z0ZW4gaXQncyBub3QuIEkgZXhwbGlj
aXRseSB0ZXN0ZWQgdGhpcyB0byB3b3JrICh3aXRoIGEKPj4+PiB3aWZpIG1vZHVsZSBhZGRlZCB0
byB0aGF0IHNsb3QgYmVpbmcgdW5ibG9jay1hYmxlIGFmdGVyd2FyZHMpLCBhbmQKPj4+PiB3YW50
ZWQgdG8gcG9pbnQgdGhhdCBvdXQsIHRodXMgYWRkaW5nIHRoZSBUZXN0ZWQtYnkuCj4+Pgo+Pj5J
biBnZW5lcmFsLCBzb21lIHRpbWUgc2hvdWxkIGJlIGFsbG93ZWQgYmV0d2VlbiBzZW5kaW5nIGNv
bnNlY3V0aXZlCj4+PnZlcnNpb25zIG9mIHRoZSBzYW1lIHBhdGNoLCBzbyBwZW9wbGUgY2FuIHBy
b3ZpZGUgdGhlaXIgZmVlZGJhY2suCj4+Pgo+Pj5XaGVuIGl0IGNvbWVzIHRvIHRlc3RpbmcgdGhl
IHN1Ym1pdHRlZCBwYXRjaGVzLCBwbGVhc2Ugbm90ZSB0aGF0IAo+Pj5zaWduaW5nCj4+Pm9mZiBh
IHBhdGNoIGltcGxpZXMgdGhhdCB0aGUgc2lnbmVyIGhhcyBhbHJlYWR5LCB0byB0aGUgYmVzdCBv
ZiB0aGVpcgo+Pj5hYmlsaXRpZXMsIG1hZGUgc3VyZSB0aGF0IHRoZSBwYXRjaCB3b3JrcyBhcyBk
ZXNjcmliZWQgYW5kIGV4cGVjdGVkLgo+Pj4KPj4+V2l0aCBhbGwgdGhhdCBpbiBtaW5kLCBwbGVh
c2UgYWxsb3cgbWUgdG8gcmVwZWF0IHRoYXQgYSBUZXN0ZWQtYnkgdGFnCj4+PnNob3VsZCBub3Qg
YmUgcHJvdmlkZWQgZnJvbSB0aGUgc2FtZSBwZXJzb24gdGhhdCB0aGUgU2lnbmVkLW9mZi1ieSB0
YWcKPj4+aXMgYWxyZWFkeSBjb21pbmcgZnJvbS4gIEl0J3Mgc2ltcGx5IHJlZHVuZGFudC4KPj4K
Pj5KdXN0IHR3byBjZW50czogcGVyaGFwcyBkcm9wcGluZyB0aGUgdGFnIGFuZCBleHBhbmRpbmcg
dGhlIGNvbW1pdCAKPj5tZXNzYWdlIGEKPj5iaXQgY291bGQgYmUgdGhlIGJlc3Qgb2YgYm90aCB3
b3JsZHMuIEp1c3Qgc3RhdGUgdGhhdCB5b3UgdGVzdGVkIGl0IAo+PndpdGggc3VjaAo+PmFuZCBz
dWNoIG1vZHVsZSwgb2JzZXJ2aW5nIHN1Y2ggYW5kIHN1Y2ggcmVzdWx0cy4gVGhhdCB3b3VsZCBh
bHNvIAo+PmhlbHAgaWYgZm9yCj4+ZXhhbXBsZSBhbm90aGVyIHVzZXIgdHJpZXMgYSBkaWZmZXJl
bnQgbW9kdWxlIGFuZCB0aGF0IGZhaWxzIGR1ZSB0byAKPj5zb21lCj4+cXVpcmtzOiBpdCdzIGVh
c2llciB0byBkZWJ1ZyBhIHBvdGVudGlhbCBpc3N1ZSB3aGVuIG9uZSBrbm93cyBhIHdvcmtpbmcK
Pj5jb25maWd1cmF0aW9uIHRvIGNvbXBhcmUgYSBub24td29ya2luZyBvbmUgYWdhaW5zdC4KPgo+
VG90YWxseSBhZ3JlZWQuICBQcm92aWRpbmcgYXMgbXVjaCBkZXRhaWwgb2YgdGhlIHBlcmZvcm1l
ZCB0ZXN0aW5nCj5hcyBwb3NzaWJsZSBpbiB0aGUgcGF0Y2ggZGVzY3JpcHRpb24gaXMgYWx3YXlz
IGEgZ29vZCB0aGluZy4KCkp1c3Qgc2VudCBvdXQgYSB2NCBpbmNsdWRpbmcgbW9yZSBpbmZvcm1h
dGlvbiBhYm91dCBteSB0ZXN0aW5nLCBhbmQKZHJvcHBpbmcgdGhlIGV4cGxpY2l0IFRlc3RlZC1C
eSB0YWcuCgpUaGFua3MsCkZsb3JpYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
