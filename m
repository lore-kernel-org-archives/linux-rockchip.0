Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 395D7C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Mar 2022 16:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=egGzBMP4Zmi1l4fTkfnaFF+LZ4vKuq99rqLXeQjjdiI=; b=MRXMs6ZERUNAN9
	ZezkSUTiZ4bayVitQpO7G2ey+AQCYhqa47GdwGPD6PEXdo+Invf0Cl2d6nnKUendHVVjveRMFzlkZ
	hYcXF5uJ4uRRt1F40VYsB84RETFLmbgeAwEousy0BqrNOT0mkLkGASeyr640ooW9OUPEM1XQW6sFf
	zmt4kO8oEAPGe2xJvHhwZXSItlMN8RZp9E0Ennv+Y6rybAS6tKB62cW5OCecUK7qkSd4BD6w7ghyx
	ZX98R9M4t/uKj7QEzzeNeQLW6YgESRP98P1gZwJPAfsOVsFL3xTOMqSEWMl5AACyFVi6U9nOUQnu9
	u2cq8vLB0pxJk9NTDvXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTnhF-0064Hm-Gm; Mon, 14 Mar 2022 16:37:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTneS-0062vd-3A
 for linux-rockchip@lists.infradead.org; Mon, 14 Mar 2022 16:34:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A6E5ED6E;
 Mon, 14 Mar 2022 09:34:30 -0700 (PDT)
Received: from [10.57.42.204] (unknown [10.57.42.204])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3C0F63F766;
 Mon, 14 Mar 2022 09:34:28 -0700 (PDT)
Message-ID: <74afb713-0413-bd49-c3f1-f6a094df2e17@arm.com>
Date: Mon, 14 Mar 2022 16:34:23 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH] drm/bridge: synopsys/dw-hdmi: set cec clock rate
Content-Language: en-GB
From: Robin Murphy <robin.murphy@arm.com>
To: Peter Geis <pgwipeout@gmail.com>,
 Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Robert Foss <robert.foss@linaro.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Pierre-Hugues Husson <phh@phh.me>, Archit Taneja <architt@codeaurora.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 dri-devel@lists.freedesktop.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20220126202427.3047814-1-pgwipeout@gmail.com>
 <3AFD1DD4-AF0A-4ECC-B4F5-E6BD6B9F1BB7@gmail.com>
 <CAMdYzYq06QSmFAwCuTmBYy4LfQAQDxzx2PGc8HOB1iEjxXHGyg@mail.gmail.com>
 <c6766e6e-3c90-f0e6-86b3-4afdf41fbbb1@arm.com>
In-Reply-To: <c6766e6e-3c90-f0e6-86b3-4afdf41fbbb1@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220314_093432_273293_8080EF3A 
X-CRM114-Status: GOOD (  17.46  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gMjAyMi0wMy0xNCAxMTozMSwgUm9iaW4gTXVycGh5IHdyb3RlOgo+IE9uIDIwMjItMDMtMTMg
MTI6NTYsIFBldGVyIEdlaXMgd3JvdGU6Cj4+IE9uIFN1biwgTWFyIDEzLCAyMDIyIGF0IDY6MTMg
QU0gUGlvdHIgT25pc3pjenVrCj4+IDxwaW90ci5vbmlzemN6dWtAZ21haWwuY29tPiB3cm90ZToK
Pj4+Cj4+Pgo+Pj4KPj4+PiBXaWFkb21vxZvEhyBuYXBpc2FuYSBwcnpleiBQZXRlciBHZWlzIDxw
Z3dpcGVvdXRAZ21haWwuY29tPiB3IGRuaXUgCj4+Pj4gMjYuMDEuMjAyMiwgbyBnb2R6LiAyMToy
NDoKPj4+Pgo+Pj4+IFRoZSBoZG1pLWNlYyBjbG9jayBtdXN0IGJlIDMya2h6IGluIG9yZGVyIGZv
ciBjZWMgdG8gd29yayBjb3JyZWN0bHkuCj4+Pj4gRW5zdXJlIGFmdGVyIGVuYWJsaW5nIHRoZSBj
bG9jayB3ZSBzZXQgaXQgaW4gb3JkZXIgZm9yIHRoZSBoYXJkd2FyZSB0bwo+Pj4+IHdvcmsgYXMg
ZXhwZWN0ZWQuCj4+Pj4gV2FybiBvbiBmYWlsdXJlLCBpbiBjYXNlIHRoaXMgaXMgYSBzdGF0aWMg
Y2xvY2sgdGhhdCBpcyBzbGlnaHR5IG9mZi4KPj4+PiBGaXhlcyBoZG1pLWNlYyBzdXBwb3J0IG9u
IFJvY2tjaGlwIGRldmljZXMuCj4+Pj4KPj4+PiBGaXhlczogZWJlMzJjM2UyODJhICgiZHJtL2Jy
aWRnZTogc3lub3BzeXMvZHctaGRtaTogRW5hYmxlIGNlYyBjbG9jayIpCj4+Pj4KPj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBQZXRlciBHZWlzIDxwZ3dpcGVvdXRAZ21haWwuY29tPgo+Pj4+IC0tLQo+Pj4+
IGRyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS5jIHwgNyArKysrKysrCj4+
Pj4gMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS5jIAo+Pj4+IGIvZHJpdmVy
cy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLmMKPj4+PiBpbmRleCA1NGQ4ZmRhZDM5
NWYuLjFhOTZkYTYwZTM1NyAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdl
L3N5bm9wc3lzL2R3LWhkbWkuYwo+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lu
b3BzeXMvZHctaGRtaS5jCj4+Pj4gQEAgLTQ4LDYgKzQ4LDkgQEAKPj4+Pgo+Pj4+ICNkZWZpbmUg
SERNSTE0X01BWF9UTURTQ0xLwqDCoMKgIDM0MDAwMDAwMAo+Pj4+Cj4+Pj4gKy8qIEhETUkgQ0VD
IG5lZWRzIGEgY2xvY2sgcmF0ZSBvZiAzMmtoeiAqLwo+Pj4+ICsjZGVmaW5lIEhETUlfQ0VDX0NM
S19SQVRFwqDCoMKgIDMyNzY4Cj4+Pj4gKwo+Pj4+IGVudW0gaGRtaV9kYXRhbWFwIHsKPj4+PiDC
oMKgwqDCoMKgwqAgUkdCNDQ0XzhCID0gMHgwMSwKPj4+PiDCoMKgwqDCoMKgwqAgUkdCNDQ0XzEw
QiA9IDB4MDMsCj4+Pj4gQEAgLTMzNDcsNiArMzM1MCwxMCBAQCBzdHJ1Y3QgZHdfaGRtaSAqZHdf
aGRtaV9wcm9iZShzdHJ1Y3QgCj4+Pj4gcGxhdGZvcm1fZGV2aWNlICpwZGV2LAo+Pj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBy
ZXQpOwo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdv
dG8gZXJyX2lhaGI7Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Cj4+Pj4gKwo+
Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0ID0gY2xrX3NldF9yYXRlKGhkbWktPmNl
Y19jbGssIEhETUlfQ0VDX0NMS19SQVRFKTsKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGlmIChyZXQpCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
ZGV2X3dhcm4oaGRtaS0+ZGV2LCAiQ2Fubm90IHNldCBIRE1JIGNlYyBjbG9jayAKPj4+PiByYXRl
OiAlZFxuIiwgcmV0KTsKPj4+PiDCoMKgwqDCoMKgwqAgfQo+Pj4+Cj4+Pj4gwqDCoMKgwqDCoMKg
IC8qIFByb2R1Y3QgYW5kIHJldmlzaW9uIElEcyAqLwo+Pj4+IC0tIAo+Pj4+IDIuMjUuMQo+Pj4+
Cj4+Pj4KPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+Pj4+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+Pj4+IExpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKPj4+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCj4+Pgo+Pj4gUGV0ZXIsCj4+Pgo+Pj4gT24gbXkgNS4x
Ny1yYzcgd2l0aCBhcHBsaWVkIHJrMzU2eCBWT1AyIHY4IHNlcmllcyAtIHRoaXMgcGF0Y2ggbWFr
ZXMgCj4+PiBDRUMgd29ya2luZyBvbiByazM1NjYuCj4+PiBVbmZvcnR1bmF0ZWx5IGl0IGJyZWFr
cyB3b3JraW5nIG9rIENFQyBvbiByazMzOTkgcm9ja3BpLTRiLgo+Pj4KPj4+IFJldmVydGluZyB0
aGlzIHBhdGNoIGJyaW5ncyBiYWNrIENFQyBvbiByazMzOTkgLSBidXQgcmszMzY2IGJlY29tZXMg
Cj4+PiB3aXRoIG5vbiB3b3JraW5nIENFQwo+Pj4KPj4+IEknbSBub3Qgc3VyZSBob3cgdG8gbW92
ZSBmb3J3YXJkIHdpdGggdGhpcy4uLi4KPj4KPj4gSSB3YXMgd29ycmllZCBhYm91dCB0aGF0LCB0
aGFua3MgZm9yIHRlc3RpbmcgaXQuCj4+IENhbiB5b3Ugc2VuZCBtZSB0aGUgY2VjX2NsayByYXRl
IGJlZm9yZSBhbmQgYWZ0ZXIgdGhpcyBwYXRjaD8KPiAKPiBIbW0sIGxvb2tzIGxpa2UgdGhlcmUg
bWlnaHQgYmUgYSBidWcgaW4gdGhlIFJLMzM5OSBjbG9jayBkcml2ZXIgLSAKPiBhbHRob3VnaCBp
dCdzIHRyZWF0ZWQgYXMgaGF2aW5nIG11eF9wbGxfcCBhcyBwYXJlbnRzLCBhY2NvcmRpbmcgdG8g
dGhlIAo+IHB1YmxpYyBUUk0gdGhlIENFQyBjbG9jayBhcHBlYXJzIHVuaXF1ZSBpbiBiZWluZyBi
YWNrd2FyZHMgY29tcGFyZWQgdG8gCj4gZXZlcnkgb3RoZXIgbXV4IG9mIHRob3NlIHR3byBpbnB1
dHMuIEknbSBub3cgdGVtcHRlZCB0byB0ZXN0IHRoaXMgb24gbXkgCj4gYm9hcmQgdG9uaWdodCBh
bmQgc2VlIGlmIEkgY2FuIHNlZSAyNE1IeiBvbiB0aGUgQ0VDIHBpbi4uLiA6KQoKTm9wZSwgdHVy
bnMgb3V0IHRoYXQncyBhbiBlcnJvciBpbiB0aGUgVFJNIGFuZCB0aGUgbXV4IGlzIGZpbmUuIFRo
ZSBidWcgCmlzIGJldHdlZW4gdGhlIGNsb2NrIGRyaXZlciBibGluZGx5IGFzc3VtaW5nIHhpbjMy
ayBpcyB1c2FibGUsIGFuZCAKbmVhcmx5IGFsbCBSSzMzOTkgYm9hcmRzIGZvcmdldHRpbmcgdG8g
Y2xhaW0gdGhlIHBpbmN0cmwgdG8gYWN0dWFsbHkgCmVuYWJsZSB0aGUgaW5wdXQgOi8KClJvYmlu
LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
