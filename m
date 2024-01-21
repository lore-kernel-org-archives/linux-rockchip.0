Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E023C47422
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Jan 2024 22:24:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hR6UQIXxKkDFqowTdd5aXl3gJ5Vk6TB0qUohckfFb6g=; b=w1ytaY9d/G1GVePzCm9SdQIhXb
	C3QyazOrWnmKCFuYGt2ewprZdlWOT4xsUWZHAfHjVELuH3ic/+LEFIQ3TR/7P/aykygIDrBHXmGRa
	NxHDCUfczIHa559r/7i4MdCwsnlkzY5h7s/uH8gvaG9vHuDPJG1fe1DXlLDedFqyIJloiE5ZZ8v+d
	zAFf4+Lgl7qOurNZ6p3OoOrZCzlkZLj2Cyq964QVlxiHlJWU1Ic0HGkD5igY0IjFqsTK1dPgg6bPe
	TllJRIKRLiNE/Hynk95YOTtZ+u6XpgxCbnVzIUeo+eWTSohLEQQn2xe+bwNCMESJdX5aqUiLz2KU+
	4lmb342g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRgF1-00A7d8-1m;
	Sun, 21 Jan 2024 22:24:35 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRgEt-00A7Zy-1k
	for linux-rockchip@lists.infradead.org;
	Sun, 21 Jan 2024 22:24:33 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1705875861;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kYA0pVXUhDWGX0wz9mAK8CAo2C1eDwH/XgizBFFD7ac=;
	b=EZYyzEc+1Bp6FHWD9jLmPtp0ZZDrDLF19MYwhOX+K3sNl2zwLMHPBvz1TdwiFH/ANEHmp4
	eEGv2ewLmpabT7XMaA2VSPfwYRp9oj+XurX2bOKl5hpfdmqLE9R+QAf3KqC4nO9M/i9vZ/
	8XZIT0UmCQASwF3mJd+7bxopwWPogmcSlFYlE4oaqym2IqNG69TXOsa/Gd8kgoHH1RBjH1
	6FrOQi6C1SfTSe+3IKCIYcqPrvaM9jAWTU4yM199nq6rtoV6FTHeNvofhUVmmp9kMc5E91
	kQ/PK2pFQrzO3TsROYZvhJCFALmns72jva7NpBsF9XsWnf7569lC1Z9cKvKz5w==
Date: Sun, 21 Jan 2024 23:24:21 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Shantur Rathore <i@shantur.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] dts: rockpro64: Remove usb regulator-always-on
In-Reply-To: <CABEcMwU-pDTXZrc0qGZ1Or+Msb91uEVYh7SYM4nOfRKb8xB3mw@mail.gmail.com>
References: <20231222141616.508073-1-i@shantur.com>
 <72f608668d619bda1cc620ce11eb3e40@manjaro.org>
 <CABEcMwWEru2DYnd-Y3qWbEp25unVd96TogSnQ+-L+NXKS3_pZQ@mail.gmail.com>
 <10691234.0AQdONaE2F@diego> <b666a1ac31ee761e7c86f65cb1914cf0@manjaro.org>
 <CABEcMwU-pDTXZrc0qGZ1Or+Msb91uEVYh7SYM4nOfRKb8xB3mw@mail.gmail.com>
Message-ID: <18b48da2368dbd7af20b5440d8621d86@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240121_142428_233963_15878575 
X-CRM114-Status: GOOD (  34.85  )
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

SGVsbG8gU2hhbnR1ciwKCk9uIDIwMjQtMDEtMjEgMjM6MTIsIFNoYW50dXIgUmF0aG9yZSB3cm90
ZToKPiBPbiBNb24sIEphbiA4LCAyMDI0IGF0IDI6NDfigK9QTSBEcmFnYW4gU2ltaWMgPGRzaW1p
Y0BtYW5qYXJvLm9yZz4gd3JvdGU6Cj4+IE9uIDIwMjQtMDEtMDggMTM6MjksIEhlaWtvIFN0w7xi
bmVyIHdyb3RlOgo+PiA+IEFtIE1vbnRhZywgOC4gSmFudWFyIDIwMjQsIDEzOjExOjE3IENFVCBz
Y2hyaWViIFNoYW50dXIgUmF0aG9yZToKPj4gPj4gT24gVGh1LCBKYW4gNCwgMjAyNCBhdCA5OjUw
4oCvQU0gRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+IHdyb3RlOgo+PiA+PiA+IE9u
IDIwMjQtMDEtMDQgMTA6NDQsIFNoYW50dXIgUmF0aG9yZSB3cm90ZToKPj4gPj4gPiA+IE9uIEZy
aSwgRGVjIDI5LCAyMDIzIGF0IDEwOjA44oCvUE0gSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVj
aC5kZT4gd3JvdGU6Cj4+ID4+ID4gPj4gQW0gRnJlaXRhZywgMjIuIERlemVtYmVyIDIwMjMsIDE1
OjE2OjE2IENFVCBzY2hyaWViIFNoYW50dXIgUmF0aG9yZToKPj4gPj4gPiA+PiA+IFVTQiBwb3J0
IHJlZ3VsYXRvcnMgc2hvdWxkIGJlIGNvbnRyb2xsZWQgYnkgUEhZcwo+PiA+PiA+ID4+ID4gc28g
d2UgcmVtb3ZlIGFsd2F5cy1vbiBwcm9wZXJ0eSBhbmQgbGV0IFBIWXMgbWFuYWdlIHRoZQo+PiA+
PiA+ID4+ID4gcmVndWxhdG9yLgo+PiA+PiA+ID4+ID4KPj4gPj4gPiA+PiA+IHBoeS1zdXBwbHkg
aXNuJ3Qgc2NvbmZ1Z3JlZCBmb3IgdGhlIFR5cGVDIHBvcnQgYW5kIG5vdyB0aGF0IHdlIGFyZQo+
PiA+PiA+ID4+ICAgICAgICAgICAgICAgICBeXiBjb25maWd1cmVkID8KPj4gPj4gPiA+Pgo+PiA+
PiA+ID4+ID4gcmVtb3ZpbmcgcmVndWxhdG9yLWFsd2F5cy1vbiwgd2UgbmVlZCB0byBmaXggdGhl
IHBoeS1zdXBwbHkKPj4gPj4gPiA+PiA+IHNvIHRoZSBQSFlzIGFyZSBhYmxlIHRvIHR1cm4gcG93
ZXIgdG8gdHlwZS1jIHBvcnQuCj4+ID4+ID4gPj4gPgo+PiA+PiA+ID4+ID4gU2VyaWVzLXZlcnNp
b246IDIKPj4gPj4gPiA+PiA+Cj4+ID4+ID4gPj4gPiBTaWduZWQtb2ZmLWJ5OiBTaGFudHVyIFJh
dGhvcmUgPGlAc2hhbnR1ci5jb20+Cj4+ID4+ID4gPj4gPiAtLS0KPj4gPj4gPiA+PiA+ICBhcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzaSB8IDMgKy0tCj4+
ID4+ID4gPj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygt
KQo+PiA+PiA+ID4+ID4KPj4gPj4gPiA+PiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHNpCj4+ID4+ID4gPj4gPiBpbmRleCBiY2EyYjUw
ZTBhLi5mNzI3M2Y3OTkwIDEwMDY0NAo+PiA+PiA+ID4+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0c2kKPj4gPj4gPiA+PiA+ICsrKyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHNpCj4+ID4+ID4g
Pj4gPiBAQCAtMTkyLDcgKzE5Miw2IEBAIHZjYzV2MF9ob3N0OiB2Y2M1djAtaG9zdC1yZWd1bGF0
b3Igewo+PiA+PiA+ID4+ID4gICAgICAgICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQi
Owo+PiA+PiA+ID4+ID4gICAgICAgICAgICAgICBwaW5jdHJsLTAgPSA8JnZjYzV2MF9ob3N0X2Vu
PjsKPj4gPj4gPiA+PiA+ICAgICAgICAgICAgICAgcmVndWxhdG9yLW5hbWUgPSAidmNjNXYwX2hv
c3QiOwo+PiA+PiA+ID4+ID4gLSAgICAgICAgICAgICByZWd1bGF0b3ItYWx3YXlzLW9uOwo+PiA+
PiA+ID4+ID4gICAgICAgICAgICAgICB2aW4tc3VwcGx5ID0gPCZ2Y2M1djBfdXNiPjsKPj4gPj4g
PiA+PiA+ICAgICAgIH07Cj4+ID4+ID4gPj4gPgo+PiA+PiA+ID4+ID4gQEAgLTIwMyw3ICsyMDIs
NiBAQCB2Y2M1djBfdHlwZWM6IHZjYzV2MC10eXBlYy1yZWd1bGF0b3Igewo+PiA+PiA+ID4+ID4g
ICAgICAgICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+PiA+PiA+ID4+ID4gICAg
ICAgICAgICAgICBwaW5jdHJsLTAgPSA8JnZjYzV2MF90eXBlY19lbj47Cj4+ID4+ID4gPj4gPiAg
ICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gInZjYzV2MF90eXBlYyI7Cj4+ID4+ID4gPj4g
PiAtICAgICAgICAgICAgIHJlZ3VsYXRvci1hbHdheXMtb247Cj4+ID4+ID4gPj4gPiAgICAgICAg
ICAgICAgIHZpbi1zdXBwbHkgPSA8JnZjYzV2MF91c2I+Owo+PiA+PiA+ID4+ID4gICAgICAgfTsK
Pj4gPj4gPiA+PiA+Cj4+ID4+ID4gPj4gPiBAQCAtODU5LDYgKzg1Nyw3IEBAICZ1MnBoeTAgewo+
PiA+PiA+ID4+ID4gICAgICAgc3RhdHVzID0gIm9rYXkiOwo+PiA+PiA+ID4+ID4KPj4gPj4gPiA+
PiA+ICAgICAgIHUycGh5MF9vdGc6IG90Zy1wb3J0IHsKPj4gPj4gPiA+PiA+ICsgICAgICAgICAg
ICAgcGh5LXN1cHBseSA9IDwmdmNjNXYwX3R5cGVjPjsKPj4gPj4gPiA+PiA+ICAgICAgICAgICAg
ICAgc3RhdHVzID0gIm9rYXkiOwo+PiA+PiA+ID4+ID4gICAgICAgfTsKPj4gPj4gPiA+Pgo+PiA+
PiA+ID4+IEp1c3QgdG8gZXhwbGFpbiBmb3IgbWUsIHdoYXQgaXMgc3VwcGx5aW5nIHRoZSAib3Ro
ZXIiIE9URyBwb3J0Cj4+ID4+ID4gPj4gICAgICAgICB1MnBoeTFfb3RnOiBvdGctcG9ydCB7fQo+
PiA+PiA+ID4+Cj4+ID4+ID4gPj4gaW4gdTJwaHkxIC4uLiB0aGlzIG9uZSBpcyBzdGF0dXMgb2th
eSwgYnV0IGRvZXMgbm90IGhhdmUgYW55IHBoeQo+PiA+PiA+ID4+IHN1cHBseT8KPj4gPj4gPiA+
Pgo+PiA+PiA+ID4gSW4gUm9ja1BybzY0IHRoZXJlIGlzIG9ubHkgMSBVU0ItQyBPVEcgcG9ydCBh
bmQgdGhlIG90aGVyIHBvcnQKPj4gPj4gPiA+IGlzIGEgVVNCLTMuMCBwb3J0Lgo+PiA+PiA+ID4g
VG8gYmUgaG9uZXN0LCBJIGFtIG5vdCAxMDAlIHN1cmUgaG93IHRoaXMgYWxsIHdvcmtzLCBhcyBJ
IHVuZGVyc3RhbmQKPj4gPj4gPiA+IHRoZSBVU0IzLjAgcG9ydCBpcyB3aXJlZCB0byB0aGUgc2Vj
b25kIFR5cGVDIFBoeS4KPj4gPj4gPiA+Cj4+ID4+ID4gPiBNYXliZSBEcmFnYW4gaGFzIG1vcmUg
aW5mbyBvbiB0aGlzLgo+PiA+PiA+Cj4+ID4+ID4gSSdsbCBoYXZlIGl0IGNoZWNrZWQgYW5kIHRl
c3RlZCBpbiBkZXRhaWwsIG9mIGNvdXJzZSwgYnV0IEkgaGF2ZSB0bwo+PiA+PiA+IHJlY292ZXIg
ZnJvbSB0aGlzIG5hc3R5IGZsdSBmaXJzdC4gIFVuZm9ydHVuYXRlbHksIGl0IGhhcyByZW5kZWRl
ZCBtZQo+PiA+PiA+IHVuYWJsZSB0byBldmVuIHRoaW5rIHN0cmFpZ2h0Lgo+PiA+Pgo+PiA+PiBI
b3BlIHlvdSBmZWVsIGJldHRlciBzb29uLgo+PiA+PiBJdCB3b3VsZCBiZSBhd2Vzb21lIGlmIHdl
IGNhbiBnZXQgdGhpcyBpbiB3aGlsZSB0aGUgY3VycmVudCBtZXJnZQo+PiA+PiB3aW5kb3cgaXMg
b3Blbi4KPj4gPgo+PiA+IGp1c3QgYSBzbWFsbCBjb21tZW50IHJlZ2FyZGluZyB0aW1pbmcuIEFs
bCByZWd1bGFyIGRldmVsb3BtZW50IGNoYW5nZXMKPj4gPiBuZWVkIHRvIGJlIGZpbmlzaGVkIGFu
ZCBpbiBsaW51eC1uZXh0IF9iZWZvcmVfIHRoZSBtZXJnZS13aW5kb3cgb3BlbnMuCj4+ID4KPj4g
PiBBcyB0aGlzIGlzIG5vdCBhIGZpeCBpdCB3aWxsIGdvIHRvIDYuOSBhbnl3YXkgLSBoZW5jZSBu
byBuZWVkIHRvIHJ1c2guCj4+IAo+PiBBaCwgeWVzLCBJIGtlZXAgZm9yZ2V0dGluZyB0aGF0IHRo
ZSBjdXJyZW50IG1lcmdlIHdpbmRvdyBiYXNpY2FsbHkgCj4+IGdvZXMKPj4gb25lIG1vcmUga2Vy
bmVsIHZlcnNpb24gaW50byB0aGUgcGFzdC4gOikgIFRoYW5rIHlvdSBmb3IgdGhlCj4+IGNsYXJp
ZmljYXRpb24uCj4gCj4gSG9wZSB5b3UgYXJlIGZlZWxpbmcgYmV0dGVyLgo+IEp1c3QgdG8gdXBk
YXRlLCBteSBwYXRjaCBoYXMgYmVlbiBkcm9wcGVkIGluIHUtYm9vdCBpbiBleHBlY3RhdGlvbiBv
Zgo+IGl0IGJlaW5nIGZpeGVkIGhlcmUuCgpZZXMsIEkgc2F3IHRoYXQgbWVzc2FnZSBvbiB0aGUg
VS1Cb290IG1haWxpbmcgbGlzdC4gIEZyYW5rbHksIHRoYXQncyB0aGUKdXN1YWwgd2F5LCBpLmUu
IGhhdmluZyB0aGUgRFQgaXNzdWVzIGZpeGVkIGluIHRoZSBMaW51eCBrZXJuZWwgZmlyc3QsIAph
bmQKdGhlbiBzeW5jZWQgYmFjayB0byBVLUJvb3QuCgo+IERvIHlvdSBmb3Jlc2VlIGl0IGhhcHBl
bmluZyBhbnl0aW1lIHNvb24/CgpVbmZvcnR1bmF0ZWx5LCBJJ3ZlIGJlZW4gdW5hYmxlIHRvIGZv
Y3VzIHdlbGwgZW5vdWdoIHRvIGJlIGFibGUgdG8gd29yayAKb24KdGhpcywgYXMgYSByZXN1bHQg
b2Ygc3RpbGwgcmVjb3ZlcmluZyBmcm9tIHRoZSBfbmFzdHlfIGZsdS4gOiggIFRob3VnaCwgCkkn
dmUKYmVlbiBhbHNvIGdldHRpbmcgZ3JhZHVhbGx5IGJldHRlciwgdGhhbmtmdWxseSwgc28gd2hp
bGUgY3Jvc3NpbmcgYWxsIG15CmZpbmdlcnMgYW5kIGtub2NraW5nIG9uIHdvb2QgYXQgdGhlIHNh
bWUgdGltZSwgOikgSSdkIGRhcmUgdG8gc2F5IHRoYXQgCkknbQpleHBlY3RpbmcgdG8gYmUgYWJs
ZSB0byB3b3JrIG9uIHRoaXMgaW4gdGhlIG5leHQgZmV3IGRheXMuCgpJIGFwb2xvZ2l6ZSBmb3Ig
dGhlIGRlbGF5cy4gIEJlYXIgd2l0aCBtZSwgcGxlYXNlISA6KQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
