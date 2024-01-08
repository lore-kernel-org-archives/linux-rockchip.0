Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3E40C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jan 2024 14:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z5A5pd5ZSs23rEeeaRwFvBzgQUKdvMbrbJOL8bDvKnc=; b=EVsLnaE4UyMLtL4B1zPcY+k9oX
	vc/JBcAaqU6vf+qIIcJdfaq/e9UnYydeF7hHPJ2qmnILzwpT+wQNGb/pr/OqOv+FN0wuvb+OwYQzY
	O6YconejxenqzcehmRaWjhMtn+AdMMgwzAHc0p6/vPLryQnD0gAm7EyLs+IZzMrExk8ZxtzbnWue+
	SFQxPPXLcMA4awoFN5oMHjOUi+/Go3hr9QzjaO6Ttx/55PUVUZIdasm5YDdCpyzwhsL+75FhST169
	zQqIqDk20veoRbk5htCd8+ezZPUXO52JRWt/azJsftfFK9zZP8bgSNCHE/8rW096t0cgfm07MgXMR
	6tH8EVDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMque-005Ogx-2L;
	Mon, 08 Jan 2024 14:47:36 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMqub-005OgP-1Q
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Jan 2024 14:47:35 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1704725251;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MnopFvvrZ2GLC62rHe2IDG0EegS8RLaX2c0Y0KV1Amg=;
	b=C7ihBGpMD/0nd2yk915MISPS5GVnivKu22op1ifxR0Hm5Y3RwwC6aLb03JtE2KPhJYG33Z
	mKiQoGTbKvxJO7eUvHJu4Ne4pWqcyHAzA8cAvJ9zxCRF1YnEXwVdvlAgPna/X1DNzN1Rth
	EKMZSj8kw4EX92MWcR3bSP/q20hGRanFrk73ABcFqgDQKewGbKSxPnTNJtrwvrv3l3njC0
	2tdYVUwdzxoqzVIkA6pLwm+7yfNrgNCDcsPyFcHuAYwBdKKzj81cp2g9NFniboL/3+PTPd
	dVK0f6ReEfnk/YL5QBMQ7npNNwVvp52kuCN6okwYa85wkjSYospSw2BOLgJx+g==
Date: Mon, 08 Jan 2024 15:47:31 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v2] dts: rockpro64: Remove usb regulator-always-on
In-Reply-To: <10691234.0AQdONaE2F@diego>
References: <20231222141616.508073-1-i@shantur.com>
 <72f608668d619bda1cc620ce11eb3e40@manjaro.org>
 <CABEcMwWEru2DYnd-Y3qWbEp25unVd96TogSnQ+-L+NXKS3_pZQ@mail.gmail.com>
 <10691234.0AQdONaE2F@diego>
Message-ID: <b666a1ac31ee761e7c86f65cb1914cf0@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240108_064733_798958_425A4131 
X-CRM114-Status: GOOD (  29.42  )
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
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyNC0wMS0wOCAxMzoyOSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gTW9udGFnLCA4
LiBKYW51YXIgMjAyNCwgMTM6MTE6MTcgQ0VUIHNjaHJpZWIgU2hhbnR1ciBSYXRob3JlOgo+PiBP
biBUaHUsIEphbiA0LCAyMDI0IGF0IDk6NTDigK9BTSBEcmFnYW4gU2ltaWMgPGRzaW1pY0BtYW5q
YXJvLm9yZz4gCj4+IHdyb3RlOgo+PiA+IE9uIDIwMjQtMDEtMDQgMTA6NDQsIFNoYW50dXIgUmF0
aG9yZSB3cm90ZToKPj4gPiA+IE9uIEZyaSwgRGVjIDI5LCAyMDIzIGF0IDEwOjA44oCvUE0gSGVp
a28gU3TDvGJuZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JvdGU6Cj4+ID4gPj4gQW0gRnJlaXRhZywg
MjIuIERlemVtYmVyIDIwMjMsIDE1OjE2OjE2IENFVCBzY2hyaWViIFNoYW50dXIgUmF0aG9yZToK
Pj4gPiA+PiA+IFVTQiBwb3J0IHJlZ3VsYXRvcnMgc2hvdWxkIGJlIGNvbnRyb2xsZWQgYnkgUEhZ
cwo+PiA+ID4+ID4gc28gd2UgcmVtb3ZlIGFsd2F5cy1vbiBwcm9wZXJ0eSBhbmQgbGV0IFBIWXMg
bWFuYWdlIHRoZQo+PiA+ID4+ID4gcmVndWxhdG9yLgo+PiA+ID4+ID4KPj4gPiA+PiA+IHBoeS1z
dXBwbHkgaXNuJ3Qgc2NvbmZ1Z3JlZCBmb3IgdGhlIFR5cGVDIHBvcnQgYW5kIG5vdyB0aGF0IHdl
IGFyZQo+PiA+ID4+ICAgICAgICAgICAgICAgICBeXiBjb25maWd1cmVkID8KPj4gPiA+Pgo+PiA+
ID4+ID4gcmVtb3ZpbmcgcmVndWxhdG9yLWFsd2F5cy1vbiwgd2UgbmVlZCB0byBmaXggdGhlIHBo
eS1zdXBwbHkKPj4gPiA+PiA+IHNvIHRoZSBQSFlzIGFyZSBhYmxlIHRvIHR1cm4gcG93ZXIgdG8g
dHlwZS1jIHBvcnQuCj4+ID4gPj4gPgo+PiA+ID4+ID4gU2VyaWVzLXZlcnNpb246IDIKPj4gPiA+
PiA+Cj4+ID4gPj4gPiBTaWduZWQtb2ZmLWJ5OiBTaGFudHVyIFJhdGhvcmUgPGlAc2hhbnR1ci5j
b20+Cj4+ID4gPj4gPiAtLS0KPj4gPiA+PiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzM5OS1yb2NrcHJvNjQuZHRzaSB8IDMgKy0tCj4+ID4gPj4gPiAgMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygtKQo+PiA+ID4+ID4KPj4gPiA+PiA+IGRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRz
aSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHNpCj4+
ID4gPj4gPiBpbmRleCBiY2EyYjUwZTBhLi5mNzI3M2Y3OTkwIDEwMDY0NAo+PiA+ID4+ID4gLS0t
IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0c2kKPj4g
PiA+PiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82
NC5kdHNpCj4+ID4gPj4gPiBAQCAtMTkyLDcgKzE5Miw2IEBAIHZjYzV2MF9ob3N0OiB2Y2M1djAt
aG9zdC1yZWd1bGF0b3Igewo+PiA+ID4+ID4gICAgICAgICAgICAgICBwaW5jdHJsLW5hbWVzID0g
ImRlZmF1bHQiOwo+PiA+ID4+ID4gICAgICAgICAgICAgICBwaW5jdHJsLTAgPSA8JnZjYzV2MF9o
b3N0X2VuPjsKPj4gPiA+PiA+ICAgICAgICAgICAgICAgcmVndWxhdG9yLW5hbWUgPSAidmNjNXYw
X2hvc3QiOwo+PiA+ID4+ID4gLSAgICAgICAgICAgICByZWd1bGF0b3ItYWx3YXlzLW9uOwo+PiA+
ID4+ID4gICAgICAgICAgICAgICB2aW4tc3VwcGx5ID0gPCZ2Y2M1djBfdXNiPjsKPj4gPiA+PiA+
ICAgICAgIH07Cj4+ID4gPj4gPgo+PiA+ID4+ID4gQEAgLTIwMyw3ICsyMDIsNiBAQCB2Y2M1djBf
dHlwZWM6IHZjYzV2MC10eXBlYy1yZWd1bGF0b3Igewo+PiA+ID4+ID4gICAgICAgICAgICAgICBw
aW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+PiA+ID4+ID4gICAgICAgICAgICAgICBwaW5jdHJs
LTAgPSA8JnZjYzV2MF90eXBlY19lbj47Cj4+ID4gPj4gPiAgICAgICAgICAgICAgIHJlZ3VsYXRv
ci1uYW1lID0gInZjYzV2MF90eXBlYyI7Cj4+ID4gPj4gPiAtICAgICAgICAgICAgIHJlZ3VsYXRv
ci1hbHdheXMtb247Cj4+ID4gPj4gPiAgICAgICAgICAgICAgIHZpbi1zdXBwbHkgPSA8JnZjYzV2
MF91c2I+Owo+PiA+ID4+ID4gICAgICAgfTsKPj4gPiA+PiA+Cj4+ID4gPj4gPiBAQCAtODU5LDYg
Kzg1Nyw3IEBAICZ1MnBoeTAgewo+PiA+ID4+ID4gICAgICAgc3RhdHVzID0gIm9rYXkiOwo+PiA+
ID4+ID4KPj4gPiA+PiA+ICAgICAgIHUycGh5MF9vdGc6IG90Zy1wb3J0IHsKPj4gPiA+PiA+ICsg
ICAgICAgICAgICAgcGh5LXN1cHBseSA9IDwmdmNjNXYwX3R5cGVjPjsKPj4gPiA+PiA+ICAgICAg
ICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+PiA+ID4+ID4gICAgICAgfTsKPj4gPiA+Pgo+PiA+
ID4+IEp1c3QgdG8gZXhwbGFpbiBmb3IgbWUsIHdoYXQgaXMgc3VwcGx5aW5nIHRoZSAib3RoZXIi
IE9URyBwb3J0Cj4+ID4gPj4gICAgICAgICB1MnBoeTFfb3RnOiBvdGctcG9ydCB7fQo+PiA+ID4+
Cj4+ID4gPj4gaW4gdTJwaHkxIC4uLiB0aGlzIG9uZSBpcyBzdGF0dXMgb2theSwgYnV0IGRvZXMg
bm90IGhhdmUgYW55IHBoeQo+PiA+ID4+IHN1cHBseT8KPj4gPiA+Pgo+PiA+ID4gSW4gUm9ja1By
bzY0IHRoZXJlIGlzIG9ubHkgMSBVU0ItQyBPVEcgcG9ydCBhbmQgdGhlIG90aGVyIHBvcnQKPj4g
PiA+IGlzIGEgVVNCLTMuMCBwb3J0Lgo+PiA+ID4gVG8gYmUgaG9uZXN0LCBJIGFtIG5vdCAxMDAl
IHN1cmUgaG93IHRoaXMgYWxsIHdvcmtzLCBhcyBJIHVuZGVyc3RhbmQKPj4gPiA+IHRoZSBVU0Iz
LjAgcG9ydCBpcyB3aXJlZCB0byB0aGUgc2Vjb25kIFR5cGVDIFBoeS4KPj4gPiA+Cj4+ID4gPiBN
YXliZSBEcmFnYW4gaGFzIG1vcmUgaW5mbyBvbiB0aGlzLgo+PiA+Cj4+ID4gSSdsbCBoYXZlIGl0
IGNoZWNrZWQgYW5kIHRlc3RlZCBpbiBkZXRhaWwsIG9mIGNvdXJzZSwgYnV0IEkgaGF2ZSB0bwo+
PiA+IHJlY292ZXIgZnJvbSB0aGlzIG5hc3R5IGZsdSBmaXJzdC4gIFVuZm9ydHVuYXRlbHksIGl0
IGhhcyByZW5kZWRlZCBtZQo+PiA+IHVuYWJsZSB0byBldmVuIHRoaW5rIHN0cmFpZ2h0Lgo+PiAK
Pj4gSG9wZSB5b3UgZmVlbCBiZXR0ZXIgc29vbi4KPj4gSXQgd291bGQgYmUgYXdlc29tZSBpZiB3
ZSBjYW4gZ2V0IHRoaXMgaW4gd2hpbGUgdGhlIGN1cnJlbnQgbWVyZ2UKPj4gd2luZG93IGlzIG9w
ZW4uCj4gCj4ganVzdCBhIHNtYWxsIGNvbW1lbnQgcmVnYXJkaW5nIHRpbWluZy4gQWxsIHJlZ3Vs
YXIgZGV2ZWxvcG1lbnQgY2hhbmdlcwo+IG5lZWQgdG8gYmUgZmluaXNoZWQgYW5kIGluIGxpbnV4
LW5leHQgX2JlZm9yZV8gdGhlIG1lcmdlLXdpbmRvdyBvcGVucy4KPiAKPiBBcyB0aGlzIGlzIG5v
dCBhIGZpeCBpdCB3aWxsIGdvIHRvIDYuOSBhbnl3YXkgLSBoZW5jZSBubyBuZWVkIHRvIHJ1c2gu
CgpBaCwgeWVzLCBJIGtlZXAgZm9yZ2V0dGluZyB0aGF0IHRoZSBjdXJyZW50IG1lcmdlIHdpbmRv
dyBiYXNpY2FsbHkgZ29lcyAKb25lIG1vcmUga2VybmVsIHZlcnNpb24gaW50byB0aGUgcGFzdC4g
OikgIFRoYW5rIHlvdSBmb3IgdGhlIApjbGFyaWZpY2F0aW9uLgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
