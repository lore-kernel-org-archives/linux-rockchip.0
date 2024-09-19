Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E9EECF3971
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Sep 2024 21:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=06FBSOzO0OxKkc3uQy/N8bZ2m2rcHznKG9GQQMz4xVE=; b=K6mlDzLfMdaRSX
	9BV7LQg1mK1OHKZ3IfHukMumsGKK4ENMb83/7tT6CZc3HqBlTPl66c9jOYc8nkbYvhiPNSeoIX6yf
	sbE15IGZRheXJePM3RFk0b1Og/sK/lyI18po8TfGIHKJWsW+9XU0/Z7uUPp9ulRN+9Zkq6hUWRx2J
	OOPY4udPHFqcUV7N8d1Ijzv9dObwBw/bX3Bsd9GIpsjTPFNr2UiK/W+Q43fV4/5mZlnt1ZwGYH4dl
	3FPu3mLJVfA2R0NtN1CY6FzIV1MPdhb/ADROL36sWwGNsrBcKY5ofIUk+7/VtMFwVF84RKXECQDCq
	3XjdTG9sR7MyLAlYbvrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srOHN-0000000B0Ri-3AgU;
	Thu, 19 Sep 2024 21:01:33 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1srOHK-0000000B0R2-2I17
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Sep 2024 21:01:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1726779662;
 bh=ysV7DgRTroxxirI/BOSZHtoFA/sZ7Gtm5p2xeaatD/o=;
 b=Bot40MdDSgssinmEy6CSoZy2qhKkP5SUg2s2+K3F4eQcvVeZN8YguJ+zSeS+B5q59I1JIEHwz
 sCUYCwDR8qNuPXdONGoAfCkSuScYul30i9WnmdW4bgarklyNcnjcpHpcNJqHGrC6xGcaU9UGABY
 pKho5CyDSI+NGVAzjnTCr3k3cL75pMlAiS+yUXwQs0VfXRvBeXISQLZqdlV2RDgLtH1JqqyXdXS
 VDhyPOeEkEj9wnFKN3KrVnnO7Tq/VlrJm1XEC0Sy/PVPpoiq/Pjjk7vG09N7kzTnDSKmSk5Lf56
 vN9Mg3A+UWJqc7oL0jXZ7qO1LgINqSBASTEFsztE65fA==
Message-ID: <e55c3d9b-52fb-48bf-8336-238f8922dfe5@kwiboo.se>
Date: Thu, 19 Sep 2024 23:00:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/6] arm64: dts: rockchip: Add GPU power domain
 regulator dependency for RK3588
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Ulf Hansson <ulf.hansson@linaro.org>, Elaine Zhang
 <zhangqing@rock-chips.com>,
 =?UTF-8?Q?Adri=C3=A1n_Mart=C3=ADnez_Larumbe?=
 <adrian.larumbe@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, Chen-Yu Tsai
 <wens@csie.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, kernel@collabora.com
References: <20240919091834.83572-1-sebastian.reichel@collabora.com>
 <20240919091834.83572-7-sebastian.reichel@collabora.com>
 <a4d94eab-8543-45e1-b657-fa7f12470538@kwiboo.se>
 <zvzrjkacazxbv4cjxcnihv4rb2t3tu2zjd6zkny63ygfifpz7i@j4saijws5rcp>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <zvzrjkacazxbv4cjxcnihv4rb2t3tu2zjd6zkny63ygfifpz7i@j4saijws5rcp>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 66ec910b64435c8d6510b3aa
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240919_140130_654494_2CB0FB73 
X-CRM114-Status: GOOD (  26.32  )
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

SGksCgpPbiAyMDI0LTA5LTE5IDIxOjI3LCBTZWJhc3RpYW4gUmVpY2hlbCB3cm90ZToKPiBIaSwK
PiAKPiBPbiBUaHUsIFNlcCAxOSwgMjAyNCBhdCAwMTozMzoyNVBNIEdNVCwgSm9uYXMgS2FybG1h
biB3cm90ZToKPj4gT24gMjAyNC0wOS0xOSAxMToxMiwgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6
Cj4+PiBFbmFibGluZyB0aGUgR1BVIHBvd2VyIGRvbWFpbiByZXF1aXJlcyB0aGF0IHRoZSBHUFUg
cmVndWxhdG9yIGlzCj4+PiBlbmFibGVkLiBUaGUgcmVndWxhdG9yIGlzIGVuYWJsZWQgYXQgYm9v
dCB0aW1lLCBidXQgYXV0b21hdGljYWxseQo+Pj4gZ2V0cyBkaXNhYmxlZCB3aGVuIHRoZXJlIGFy
ZSBubyB1c2Vycy4KPj4+Cj4+PiBJZiB0aGUgR1BVIGRyaXZlciBpcyBub3QgcHJvYmVkIGF0IGJv
b3QgdGltZSBvciByZWJvdW5kIHdoaWxlCj4+PiB0aGUgc3lzdGVtIGlzIHJ1bm5pbmcgdGhlIHN5
c3RlbSB3aWxsIHRyeSB0byBlbmFibGUgdGhlIHBvd2VyCj4+PiBkb21haW4gYmVmb3JlIHRoZSBy
ZWd1bGF0b3IgaXMgZW5hYmxlZCByZXN1bHRpbmcgaW4gYSBmYWlsdXJlCj4+PiBoYW5naW5nIHRo
ZSB3aG9sZSBzeXN0ZW0uIEF2b2lkIHRoaXMgYnkgYWRkaW5nIGFuIGV4cGxpY2l0Cj4+PiBkZXBl
bmRlbmN5Lgo+Pj4KPj4+IFJlcG9ydGVkLWJ5OiBBZHJpw6FuIE1hcnTDrW5leiBMYXJ1bWJlIDxh
ZHJpYW4ubGFydW1iZUBjb2xsYWJvcmEuY29tPgo+Pj4gVGVzdGVkLWJ5OiBBZHJpYW4gTGFydW1i
ZSA8YWRyaWFuLmxhcnVtYmVAY29sbGFib3JhLmNvbT4gIyBPbiBSb2NrIDVCCj4+PiBTaWduZWQt
b2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNv
bT4KPj4+IC0tLQo+Pj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWFybXNv
bS1zaWdlNy5kdHMgICAgICAgICB8IDQgKysrKwo+Pj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTg4LWJhc2UuZHRzaSAgICAgICAgICAgICAgICB8IDIgKy0KPj4+ICBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1jb29scGktY201LmR0c2kgICAgICAgICAgfCA0
ICsrKysKPj4+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1mcmllbmRseWVs
ZWMtY20zNTg4LmR0c2kgfCA0ICsrKysKPj4+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU4OC1qYWd1YXIuZHRzICAgICAgICAgICAgICAgfCA0ICsrKysKPj4+ICBhcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1vazM1ODgtYy5kdHMgICAgICAgICAgICAgfCA0ICsr
KysKPj4+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTUtaXR4LmR0
cyAgICAgICAgICAgfCA0ICsrKysKPj4+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU4OC1yb2NrLTViLmR0cyAgICAgICAgICAgICAgfCA0ICsrKysKPj4+ICBhcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU4OC10aWdlci5kdHNpICAgICAgICAgICAgICAgfCA0ICsrKysK
Pj4+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtY29vbHBpLTRiLmR0cyAg
ICAgICAgICAgfCA0ICsrKysKPj4+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4
OHMta2hhZGFzLWVkZ2UyLmR0cyAgICAgICAgfCA0ICsrKysKPj4+ICBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU4OHMtb3JhbmdlcGktNS5kdHMgICAgICAgICAgfCA0ICsrKysKPj4+
ICAxMiBmaWxlcyBjaGFuZ2VkLCA0NSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+
IEFueSByZWFzb24gd2h5IGZvbGxvd2luZyByazM1ODggRFRzIHdhcyBub3QgdXBkYXRlZD8KPj4K
Pj4gcmszNTg4LWV2YjEtdjEwLmR0cwo+PiByazM1ODgtcXVhcnR6cHJvNjQuZHRzCj4gCj4gVGhl
c2UgdHdvIEkgc2tpcHBlZCBpbml0aWFsbHksIHNpbmNlIHRoZXkgaGF2ZSB0aGUgR1BVIHJlZ3Vs
YXRvcnMKPiBhbHdheXMgZW5hYmxlZCBkdWUgdG8gdGhlIGNvdXBsaW5nLiBJJ20gbm90IDEwMCUg
c3VyZSBpZiB0aGUgR1BVCj4gb3IgdGhlIEdQVS1NRU0gcmVndWxhdG9yIChvciBib3RoKSBhcmUg
cmVxdWlyZWQgZm9yIHRoZSBHUFUgcG93ZXIKPiBkb21haW4uCj4gCj4+IHJrMzU4OC1uYW5vcGMt
dDYuZHRzaQo+PiByazM1ODhzLWdhbWVmb3JjZS1hY2UuZHRzCj4+IHJrMzU4OHMtb2Ryb2lkLW0y
LmR0cwo+IAo+IC4uLiBBbmQgdGhlc2UgSSBtaXNzZWQsIHNpbmNlIHRoZXkgYXJlIG5ldy4KCkdy
ZWF0LCBzbyBubyB0ZWNobmljYWwgcmVhc29uIDotKQoKPiAKPiBJIGRvbid0IGhhdmUgZW5vdWdo
IHRpbWUgdG8gcHJlcGFyZSBhIHYzIGJlZm9yZSBteSB2YWNhdGlvbi4KPiBOb3RlLCB0aGF0IG5v
dCBkZXNjcmliaW5nIHRoZSByZWd1bGF0b3IganVzdCBrZWVwcyB0aGUgY3VycmVudAo+IGJlaGF2
aW91ci4KClllYWgsIHJlbWFpbmluZyBib2FyZHMgY2FuIGJlIHVwZGF0ZWQgaW4gYSBzZXBhcmF0
ZS9mb2xsb3ctdXAgc2VyaWVzLgoKPiAKPj4gSSBhbHNvIGV4cGVjdCB3ZSBtYXkgbmVlZCB0byBk
ZWZpbmUgZG9tYWluLXN1cHBseSBmb3IgdGhlIG5wdSBvbgo+PiByazM1ODggYW5kIGFsc28gYm90
aCBncHUgYW5kIG5wdSBvbiByazM1NnggaW4gYSBmdXR1cmUgc2VyaWVzLgo+IAo+IFllcywgSSBh
bHJlYWR5IGRpc2N1c3NlZCB0aGF0IGluIFZpZW5uYSB3aXRoIEhlaWtvIGFuZCBUb21ldS4gVGhl
Cj4gYmluZGluZyBjaGFuZ2UgYWxzbyBhbGxvd3MgYWRkaW5nIGEgcmVndWxhdG9yIHRvIHRoZSBO
UFUgcG93ZXIKPiBkb21haW4uCgpHcmVhdCBhbmQgZ29vZCB0byBrbm93LgoKPiAKPj4gU2ltaWxh
ciBmcmVlemUgaXNzdWUgaGFzIGJlZW4gb2JzZXJ2ZWQgb24gcmszNTZ4IHdoZW4gYm9vdGluZyB2
ZW5kb3IKPj4ga2VybmVsIHdpdGggbnB1IHN1cHBvcnQgZW5hYmxlZCB1c2luZyBtYWlubGluZSBV
LUJvb3QgYW5kIERUIFsxXS4KPj4KPj4gVG8gd29yayBhcm91bmQgdGhhdCBpc3N1ZSBvbiByazM1
NnggdGhlIG5wdSByZWd1bGF0b3IgY291bGQgYmUgY2hhbmdlZAo+PiB0byBhbHdheXMtb24vYm9v
dC1vbiB0byBnZXQgcGFzdCB0aGUga2VybmVsIGZyZWV6ZSBbMl0uCj4+Cj4+IFsxXSBodHRwczov
L2dpdGh1Yi5jb20vYXJtYmlhbi9idWlsZC9wdWxsLzcwMjUjaXNzdWVjb21tZW50LTIyOTEwNjc3
NDgKPj4gWzJdIGh0dHBzOi8vZ2l0aHViLmNvbS9Ld2lib28vdS1ib290LXJvY2tjaGlwL2NvbW1p
dC9kYTMxZGE0YjY4Zjg1OGY1NDM2NGEyMWIwZGQwMGZlZjJhYjBkMGQ2Cj4gCj4gWWVzLCB0aGF0
IGxvb2tzIGxpa2UgdGhlIHNhbWUgaXNzdWUgYW5kIEkgZ3Vlc3MgdGhlIGNoYW5nZXMgdG8gdGhl
IFJvY2tjaGlwCj4gcG93ZXItZG9tYWluIGRyaXZlciBzaG91bGQgYWxzbyB3b3JrIGZvciByazM1
NnguIEkgZG9uJ3QgaGF2ZSBvbmUsIHRob3VnaC4KCkkgd2lsbCB0ZXN0IHRoaXMgc2VyaWVzIGFu
ZCB0cnkgdG8gYWRkIGRvbWFpbi1zdXBwbHkgZm9yIEdQVSBhbmQgTlBVIG9uCmEgZmV3IHJrMzU2
eCBib2FyZHMsIHNob3VsZCBoZWxwIGF2b2lkIHBvc3NpYmxlIGlzc3VlcyBpbiBmdXR1cmUuCgpX
aWxsIGFsc28gc2VuZCBhIFUtQm9vdCBzZXJpZXMgdG8gZW5hYmxlIFJLODA2IFBNSUMgc3VwcG9y
dCBvbiBhIGZldwptb3JlIHJrMzU4OCBib2FyZHMsIHNob3VsZCBoZWxwIGVuc3VyZSBhbHdheXMt
b24vYm9vdC1vbiBQTUlDIHJlZ3VsYXRvcnMKYXJlIGVuYWJsZWQgYmVmb3JlIExpbnV4IGlzIHN0
YXJ0ZWQuCgpSZWdhcmRzLApKb25hcwoKPiAKPiAtLSBTZWJhc3RpYW4KCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
