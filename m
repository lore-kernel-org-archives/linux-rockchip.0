Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35EC1C46CD3
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 00:54:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y+GI1+fxhI7NRwJTyImMLXyoWpaWb3YpATURUaWnWcE=; b=CFQkZS4JQKVafogPjPcWXXcERH
	l6rFJNggIy4atZys+sCu5QO913RVGTtobjId5kNNUjVWjWStAeomRYnI4yipTh+EcckFmbmU44Ik0
	HgR5+VU2akY7ssdZoOr5Ni7GxUVYW+bPrM+hYrFLwp+c3b4wGl7uZQt10OhjvzKolvbaOxvqwQ/rL
	e8e7Cqer3v/5QxoSU94ctuVgZ4GPYUDuXIpUZzUCneGY1NGdkM70Pan9MnvZXJM/l7izY8GocxmfA
	2LkDsZDkM9u4g//TdvtiHIbOKRkONAEp5qo0jBnLU9hx+jr2QJNQ/Ybc2xaqDiqOCjjKPj93/etYk
	U5XUycJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGTo6-004Ywq-2K;
	Fri, 22 Dec 2023 00:54:30 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGTo3-004Yw6-0L
	for linux-rockchip@lists.infradead.org;
	Fri, 22 Dec 2023 00:54:29 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1703206461;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NuBTa6nyail/zrqKK8lmrh3dQC8JpRI3oXn+zqmkFdA=;
	b=qan48CMEEPn+FcDuKOFbnK++xGU8vvV6cGonQdO52v4BGeWCgDYpLAhJ3cfF8BUJ4MSTFj
	YNpLu1GoEydg6cwy+h/q2Jn9+uiYo38rOOGlN1/gZiVbalhYz5MyWSicJAxpvbzF/yTsWv
	8g61d9Rm23q8gLotqH3Pn/Va5EzY12DovZ+Nx9qVhlIHiK2MiWZR4CYo5q/ovoO/lk7xPT
	7fmYNswdzdOM6pO3vP0keypNq3LxaWhfIwrA1I0FYMVzQM4XD/5wC9zj3cYhz5Py4CRWLB
	v39UtLWkDX39qnoOEuhDPLHT67L3cJM8AQshh+5SwxDIB/uXSWNekZTCug9M3w==
Date: Fri, 22 Dec 2023 01:54:21 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Shantur Rathore <i@shantur.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v1] dts: rockpro64: Remove usb regulator-always-on
In-Reply-To: <CABEcMwXdD06KoODi4Sx7Q6oaNZ7CEUcNLiysVyqQSQq-7zYoqA@mail.gmail.com>
References: <20231209232109.348999-1-i@shantur.com>
 <20231209233536.350876-1-i@shantur.com>
 <43339adb6f98a0b4e59db78f932df0d4@manjaro.org>
 <CABEcMwU8bOxUZV8i-Wig14GG-+NEEw+sbDBznTLNvgRg6Co3Jg@mail.gmail.com>
 <acbadb7f1d2c14b7003103c10d663d38@manjaro.org>
 <CABEcMwV8XhShnbJ_Z+2YW0EUCYt460pEyE-FPHW9jN16SR_Lpg@mail.gmail.com>
 <c6761d07ab7fb0eb38b94f4602f58e42@manjaro.org>
 <CABEcMwXdD06KoODi4Sx7Q6oaNZ7CEUcNLiysVyqQSQq-7zYoqA@mail.gmail.com>
Message-ID: <01d17a353a1fd8e8f9d19abce3f89393@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_165427_781276_01327FC6 
X-CRM114-Status: GOOD (  26.47  )
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

T24gMjAyMy0xMi0yMSAxMToxMSwgU2hhbnR1ciBSYXRob3JlIHdyb3RlOgo+IE9uIFRodSwgRGVj
IDE0LCAyMDIzIGF0IDI6MzXigK9QTSBEcmFnYW4gU2ltaWMgPGRzaW1pY0BtYW5qYXJvLm9yZz4g
Cj4gd3JvdGU6Cj4+IE9uIDIwMjMtMTItMTQgMTU6MjQsIFNoYW50dXIgUmF0aG9yZSB3cm90ZToK
Pj4gPiBPbiBTdW4sIERlYyAxMCwgMjAyMyBhdCAxMjowOOKAr0FNIERyYWdhbiBTaW1pYyA8ZHNp
bWljQG1hbmphcm8ub3JnPgo+PiA+IHdyb3RlOgo+PiA+PiBPbiAyMDIzLTEyLTEwIDAxOjAzLCBT
aGFudHVyIFJhdGhvcmUgd3JvdGU6Cj4+ID4+ID4gT24gU2F0LCBEZWMgOSwgMjAyMyBhdCAxMTo0
M+KAr1BNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1hbmphcm8ub3JnPgo+PiA+PiA+IHdyb3RlOgo+
PiA+PiA+PiBPbiAyMDIzLTEyLTEwIDAwOjM1LCBTaGFudHVyIFJhdGhvcmUgd3JvdGU6Cj4+ID4+
ID4+ID4gVVNCIHBvcnQgcmVndWxhdG9ycyBzaG91bGQgYmUgY29udHJvbGxlZCBieSBQSFlzCj4+
ID4+ID4+ID4gc28gd2UgcmVtb3ZlIGFsd2F5cy1vbiBwcm9wZXJ0eSBhbmQgbGV0IFBIWXMgbWFu
YWdlIHRoZQo+PiA+PiA+PiA+IHJlZ3VsYXRvci4KPj4gPj4gPj4gPgo+PiA+PiA+PiA+IFR5cGVj
IHBvcnQgaGFzIG1pc2NvbmZ1Z3JlZCBwaHktc3VwcGx5IGFuZCBub3cgdGhhdCB3ZSBhcmUKPj4g
Pj4gPj4gPiByZW1vdmluZyByZWd1bGF0b3ItYWx3YXlzLW9uLCB3ZSBuZWVkIHRvIGZpeCB0aGUg
cGh5LXN1cHBseQo+PiA+PiA+PiA+IHNvIHRoZSBQSFlzIGFyZSBhYmxlIHRvIHR1cm4gcG93ZXIg
dG8gdHlwZS1jIHBvcnQuCj4+ID4+ID4+ID4KPj4gPj4gPj4gPiBTaWduZWQtb2ZmLWJ5OiBTaGFu
dHVyIFJhdGhvcmUgPGlAc2hhbnR1ci5jb20+Cj4+ID4+ID4+ID4gLS0tCj4+ID4+ID4+ID4gKyBk
ZXZpY2V0cmVlCj4+ID4+ID4+ID4KPj4gPj4gPj4gPiBBZnRlciB0aGlzIHBhdGNoIHRoZSBwb3J0
cyB3ZXJlIGNvbmZpcm1lZCB0byBwb3dlciB1cCBhbmQgZG93bgo+PiA+PiA+PiA+IGluIHUtYm9v
dCB3aGVuIGRvaW5nIHVzYiBzdGFydCBhbmQgdXNiIHN0b3AuCj4+ID4+ID4+ID4gQXQgYm9vdCB0
aGUgcmVndWxhdG9ycyB3ZXJlIG9mZiwgdGhlIGRldmljZXMgY29ubmVjdGVkIHdlcmVuJ3QKPj4g
Pj4gPj4gPiBwb3dlcmVkIHVwLCBvbiB1c2Igc3RhcnQgdGhlIFBIWXMgYXJlIGFibGUgdG8gcG93
ZXIgb24gdGhlIHBvcnRzCj4+ID4+ID4+ID4gYW5kIG9uIHVzYiBzdG9wIHRoZXkgd2VyZSBwb3dl
cmVkIGRvd24uCj4+ID4+ID4+ID4KPj4gPj4gPj4gPiBBdCB0aGUgYm9vdCwgdGhlIHBvcnRzIHdl
cmUgcG93ZXJlZCBkb3duIHdoaWNoIHdhcyBhZ2FpbiBwb3dlcmVkCj4+ID4+ID4+ID4gdXAgYnkg
TGludXgga2VybmVsIHdoZW4gYm9vdGluZyB1cC4KPj4gPj4gPj4gPgo+PiA+PiA+PiA+Cj4+ID4+
ID4+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHNp
IHwgNCArLS0tCj4+ID4+ID4+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMyBk
ZWxldGlvbnMoLSkKPj4gPj4gPj4gPgo+PiA+PiA+PiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzaQo+PiA+PiA+PiA+IGIvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0c2kKPj4gPj4gPj4g
PiBpbmRleCBiY2EyYjUwZTBhLi5iZDI4MjRhYTQ4IDEwMDY0NAo+PiA+PiA+PiA+IC0tLSBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHNpCj4+ID4+ID4+
ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0
c2kKPj4gPj4gPj4gPiBAQCAtMTkyLDcgKzE5Miw2IEBAIHZjYzV2MF9ob3N0OiB2Y2M1djAtaG9z
dC1yZWd1bGF0b3Igewo+PiA+PiA+PiA+ICAgICAgICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJk
ZWZhdWx0IjsKPj4gPj4gPj4gPiAgICAgICAgICAgICAgIHBpbmN0cmwtMCA9IDwmdmNjNXYwX2hv
c3RfZW4+Owo+PiA+PiA+PiA+ICAgICAgICAgICAgICAgcmVndWxhdG9yLW5hbWUgPSAidmNjNXYw
X2hvc3QiOwo+PiA+PiA+PiA+IC0gICAgICAgICAgICAgcmVndWxhdG9yLWFsd2F5cy1vbjsKPj4g
Pj4gPj4gPiAgICAgICAgICAgICAgIHZpbi1zdXBwbHkgPSA8JnZjYzV2MF91c2I+Owo+PiA+PiA+
PiA+ICAgICAgIH07Cj4+ID4+ID4+ID4KPj4gPj4gPj4gPiBAQCAtMjAzLDcgKzIwMiw2IEBAIHZj
YzV2MF90eXBlYzogdmNjNXYwLXR5cGVjLXJlZ3VsYXRvciB7Cj4+ID4+ID4+ID4gICAgICAgICAg
ICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+PiA+PiA+PiA+ICAgICAgICAgICAgICAg
cGluY3RybC0wID0gPCZ2Y2M1djBfdHlwZWNfZW4+Owo+PiA+PiA+PiA+ICAgICAgICAgICAgICAg
cmVndWxhdG9yLW5hbWUgPSAidmNjNXYwX3R5cGVjIjsKPj4gPj4gPj4gPiAtICAgICAgICAgICAg
IHJlZ3VsYXRvci1hbHdheXMtb247Cj4+ID4+ID4+ID4gICAgICAgICAgICAgICB2aW4tc3VwcGx5
ID0gPCZ2Y2M1djBfdXNiPjsKPj4gPj4gPj4gPiAgICAgICB9Owo+PiA+PiA+PiA+Cj4+ID4+ID4+
ID4gQEAgLTg2Myw3ICs4NjEsNyBAQCB1MnBoeTBfb3RnOiBvdGctcG9ydCB7Cj4+ID4+ID4+ID4g
ICAgICAgfTsKPj4gPj4gPj4gPgo+PiA+PiA+PiA+ICAgICAgIHUycGh5MF9ob3N0OiBob3N0LXBv
cnQgewo+PiA+PiA+PiA+IC0gICAgICAgICAgICAgcGh5LXN1cHBseSA9IDwmdmNjNXYwX2hvc3Q+
Owo+PiA+PiA+PiA+ICsgICAgICAgICAgICAgcGh5LXN1cHBseSA9IDwmdmNjNXYwX3R5cGVjPjsK
Pj4gPj4gPj4gPiAgICAgICAgICAgICAgIHN0YXR1cyA9ICJva2F5IjsKPj4gPj4gPj4gPiAgICAg
ICB9Owo+PiA+PiA+PiA+ICB9Owo+PiA+PiA+Pgo+PiA+PiA+PiBRdWl0ZSBmcmFua2x5LCBzb21l
dGhpbmcgZG9lc24ndCBmZWVsIHJpZ2h0IHRoZXJlLiAgV291bGQgeW91IG1pbmQsCj4+ID4+ID4+
IHBsZWFzZSwgdG8gcGxhY2UgdGhpcyBwYXRjaCBvbiBob2xkIHVudGlsIG5leHQgd2VlayBvciBz
bywgYXQgd2hpY2gKPj4gPj4gPj4gcG9pbnQgSSBzaG91bGQgaGF2ZSBlbm91Z2ggdGltZSB0byBn
byB0aHJvdWdoIHRoZSBSb2NrUHJvNjQgc2NoZW1hdGljCj4+ID4+ID4+IHRob3JvdWdobHkgb25j
ZSBhZ2FpbiwgYW5kIHRlc3QgdGhlIHBhdGNoIGluIGRldGFpbD8KPj4gPj4gPgo+PiA+PiA+IFN1
cmUsIG5vIHdvcnJpZXMuCj4+ID4+Cj4+ID4+IEdyZWF0LCB0aGFua3MuCj4+ID4+Cj4+ID4+ID4g
V291bGQgeW91IG1pbmQgbGV0dGluZyBtZSBrbm93IHdoaWNoIHBhcnQgZG9lc24ndCBmZWVsIHJp
Z2h0IHRvIHlvdT8KPj4gPj4KPj4gPj4gU3VyZSwgaXQgd2FzIGFib3V0IHRoZSBsYXN0IGNoYW5n
ZSBpbiB0aGUgcGF0Y2guCj4+ID4KPj4gPiBUaGUgVHlwZUMgcG9ydCBWQlVTIGlzIFZCVVNfVFlQ
RUMgb24gUGFnZSAyMCBvZiAzMyBtYXJrZWQgZm9yCj4+ID4gVkJVU19bMS00XSBpbiBzY2hlbWF0
aWMgaGVyZSAtIFswXQo+PiA+Cj4+ID4gWzBdIC0gaHR0cHM6Ly9maWxlcy5waW5lNjQub3JnL2Rv
Yy9yb2NrcHJvNjQvcm9ja3BybzY0X3YyMS1TQ0gucGRmCj4+IAo+PiBJIHNlZSwgdGhhbmtzLCBh
bmQgSSBhbHJlYWR5IHdlbnQgb25jZSBhZ2FpbiB0aHJvdWdoIHRoZSBSb2NrUHJvNjQKPj4gc2No
ZW1hdGljLCBidXQgb25seSBicmllZmx5LiAgSSBuZWVkIHRvIGRvIHRoYXQgYWdhaW4sIGJ1dCBp
biBkZXRhaWwsCj4+IGFuZCBjb21wYXJlIGl0IHRob3JvdWdobHkgd2l0aCB0aGUgZHRzKGkpLgo+
IAo+IFBpbmcuCgpQb25nLiA6KSAgSSBoYXZlbid0IGZvZ290dGVuIGFib3V0IHRoaXMsIGJ1dCBJ
IHNpbXBseSBoYXZlbid0IGhhZCBlbm91Z2ggCnRpbWUgeWV0LCBhbmQgSSByZWFsbHkgd2FudCB0
byBoYXZlIHRoaXMgY2hlY2tlZCBhbmQgY2xlYW5lZCB1cC4gIEknbSAKc29ycnkgZm9yIHRoZSBk
ZWxheS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
