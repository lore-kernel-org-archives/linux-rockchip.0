Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89B86C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Dec 2023 14:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9XBYfuYnsBgCz4h2qJmUulGfQ1ziyyiJZucmwRqVFlc=; b=SvhGuidXpxEjEHzTyJ/LGz6n62
	LF9yfOJOESqKTSbwAwj+G5GqhQGNDqd74+D5dOPDq2QPAf7lxTmJjvi7XtUXE1STMbelmcyYN9Dy4
	xxfjA8Biuo+Hs0mFpxoNpkeTlbnc1h2moOehM56wLORZ31GSk38+ej+Kq8g/CNpD5/qLy18QVtnlW
	hzjpEL/zhi+djyUQSCKze5t/0dTUGsFUBdlh+AwVRbwrhDpMXW+XHxAY1CsmbJHAfsOJ2HY7mkrQD
	4wPQByFmeQcOSYpDkyi3s+JwKVgE/9hgHhP53fmNPhIMMTRmIsiQRIklvEykIPoKhzG2g59BrCCxp
	C+O8IoNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDmoA-000YmL-34;
	Thu, 14 Dec 2023 14:35:26 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDmo7-000Ylg-1D
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Dec 2023 14:35:25 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1702564518;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Dp/2kc8tZmky1EbE26eiDVDUS9YdRREmnwGqHUeMSaQ=;
	b=ssqe83tER9s3SoX9u4jMynfFB0+EDOuMMec2A1NRM3EpyV6s8jYNu0tAmdf1BGLEpz3ggP
	Ey5fibFz9RbHYEYitbl1HMzZLRIa1RO64ZdVc9kuJ2AuSxo3yun68uata0tKiQn3PMNLvu
	pyK7H4IvETUFSdkNVaiUwL9fNq4Sdn1rYDY05QKFKg3TUfqys91fEWAWlP39GSCq2bzHpH
	d3itr2manp/c9CuTaI0/sXfmwdhgzSo9gJLU7Xjwiu/yiELyBpbSp4n0vLNszxwoRnx3TC
	xaBzy+abbdO8h1k0tmFloz4dsuRwAUu0Y+SPPex1owwtGaU98NVo99P7pURJmw==
Date: Thu, 14 Dec 2023 15:35:18 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Shantur Rathore <i@shantur.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v1] dts: rockpro64: Remove usb regulator-always-on
In-Reply-To: <CABEcMwV8XhShnbJ_Z+2YW0EUCYt460pEyE-FPHW9jN16SR_Lpg@mail.gmail.com>
References: <20231209232109.348999-1-i@shantur.com>
 <20231209233536.350876-1-i@shantur.com>
 <43339adb6f98a0b4e59db78f932df0d4@manjaro.org>
 <CABEcMwU8bOxUZV8i-Wig14GG-+NEEw+sbDBznTLNvgRg6Co3Jg@mail.gmail.com>
 <acbadb7f1d2c14b7003103c10d663d38@manjaro.org>
 <CABEcMwV8XhShnbJ_Z+2YW0EUCYt460pEyE-FPHW9jN16SR_Lpg@mail.gmail.com>
Message-ID: <c6761d07ab7fb0eb38b94f4602f58e42@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_063524_026218_150E9921 
X-CRM114-Status: GOOD (  24.60  )
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

T24gMjAyMy0xMi0xNCAxNToyNCwgU2hhbnR1ciBSYXRob3JlIHdyb3RlOgo+IE9uIFN1biwgRGVj
IDEwLCAyMDIzIGF0IDEyOjA44oCvQU0gRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+
IAo+IHdyb3RlOgo+PiBPbiAyMDIzLTEyLTEwIDAxOjAzLCBTaGFudHVyIFJhdGhvcmUgd3JvdGU6
Cj4+ID4gT24gU2F0LCBEZWMgOSwgMjAyMyBhdCAxMTo0M+KAr1BNIERyYWdhbiBTaW1pYyA8ZHNp
bWljQG1hbmphcm8ub3JnPgo+PiA+IHdyb3RlOgo+PiA+PiBPbiAyMDIzLTEyLTEwIDAwOjM1LCBT
aGFudHVyIFJhdGhvcmUgd3JvdGU6Cj4+ID4+ID4gVVNCIHBvcnQgcmVndWxhdG9ycyBzaG91bGQg
YmUgY29udHJvbGxlZCBieSBQSFlzCj4+ID4+ID4gc28gd2UgcmVtb3ZlIGFsd2F5cy1vbiBwcm9w
ZXJ0eSBhbmQgbGV0IFBIWXMgbWFuYWdlIHRoZQo+PiA+PiA+IHJlZ3VsYXRvci4KPj4gPj4gPgo+
PiA+PiA+IFR5cGVjIHBvcnQgaGFzIG1pc2NvbmZ1Z3JlZCBwaHktc3VwcGx5IGFuZCBub3cgdGhh
dCB3ZSBhcmUKPj4gPj4gPiByZW1vdmluZyByZWd1bGF0b3ItYWx3YXlzLW9uLCB3ZSBuZWVkIHRv
IGZpeCB0aGUgcGh5LXN1cHBseQo+PiA+PiA+IHNvIHRoZSBQSFlzIGFyZSBhYmxlIHRvIHR1cm4g
cG93ZXIgdG8gdHlwZS1jIHBvcnQuCj4+ID4+ID4KPj4gPj4gPiBTaWduZWQtb2ZmLWJ5OiBTaGFu
dHVyIFJhdGhvcmUgPGlAc2hhbnR1ci5jb20+Cj4+ID4+ID4gLS0tCj4+ID4+ID4gKyBkZXZpY2V0
cmVlCj4+ID4+ID4KPj4gPj4gPiBBZnRlciB0aGlzIHBhdGNoIHRoZSBwb3J0cyB3ZXJlIGNvbmZp
cm1lZCB0byBwb3dlciB1cCBhbmQgZG93bgo+PiA+PiA+IGluIHUtYm9vdCB3aGVuIGRvaW5nIHVz
YiBzdGFydCBhbmQgdXNiIHN0b3AuCj4+ID4+ID4gQXQgYm9vdCB0aGUgcmVndWxhdG9ycyB3ZXJl
IG9mZiwgdGhlIGRldmljZXMgY29ubmVjdGVkIHdlcmVuJ3QKPj4gPj4gPiBwb3dlcmVkIHVwLCBv
biB1c2Igc3RhcnQgdGhlIFBIWXMgYXJlIGFibGUgdG8gcG93ZXIgb24gdGhlIHBvcnRzCj4+ID4+
ID4gYW5kIG9uIHVzYiBzdG9wIHRoZXkgd2VyZSBwb3dlcmVkIGRvd24uCj4+ID4+ID4KPj4gPj4g
PiBBdCB0aGUgYm9vdCwgdGhlIHBvcnRzIHdlcmUgcG93ZXJlZCBkb3duIHdoaWNoIHdhcyBhZ2Fp
biBwb3dlcmVkCj4+ID4+ID4gdXAgYnkgTGludXgga2VybmVsIHdoZW4gYm9vdGluZyB1cC4KPj4g
Pj4gPgo+PiA+PiA+Cj4+ID4+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5
LXJvY2twcm82NC5kdHNpIHwgNCArLS0tCj4+ID4+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMyBkZWxldGlvbnMoLSkKPj4gPj4gPgo+PiA+PiA+IGRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzaQo+PiA+PiA+IGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0c2kKPj4gPj4g
PiBpbmRleCBiY2EyYjUwZTBhLi5iZDI4MjRhYTQ4IDEwMDY0NAo+PiA+PiA+IC0tLSBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHNpCj4+ID4+ID4gKysr
IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0c2kKPj4g
Pj4gPiBAQCAtMTkyLDcgKzE5Miw2IEBAIHZjYzV2MF9ob3N0OiB2Y2M1djAtaG9zdC1yZWd1bGF0
b3Igewo+PiA+PiA+ICAgICAgICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4g
Pj4gPiAgICAgICAgICAgICAgIHBpbmN0cmwtMCA9IDwmdmNjNXYwX2hvc3RfZW4+Owo+PiA+PiA+
ICAgICAgICAgICAgICAgcmVndWxhdG9yLW5hbWUgPSAidmNjNXYwX2hvc3QiOwo+PiA+PiA+IC0g
ICAgICAgICAgICAgcmVndWxhdG9yLWFsd2F5cy1vbjsKPj4gPj4gPiAgICAgICAgICAgICAgIHZp
bi1zdXBwbHkgPSA8JnZjYzV2MF91c2I+Owo+PiA+PiA+ICAgICAgIH07Cj4+ID4+ID4KPj4gPj4g
PiBAQCAtMjAzLDcgKzIwMiw2IEBAIHZjYzV2MF90eXBlYzogdmNjNXYwLXR5cGVjLXJlZ3VsYXRv
ciB7Cj4+ID4+ID4gICAgICAgICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+PiA+
PiA+ICAgICAgICAgICAgICAgcGluY3RybC0wID0gPCZ2Y2M1djBfdHlwZWNfZW4+Owo+PiA+PiA+
ICAgICAgICAgICAgICAgcmVndWxhdG9yLW5hbWUgPSAidmNjNXYwX3R5cGVjIjsKPj4gPj4gPiAt
ICAgICAgICAgICAgIHJlZ3VsYXRvci1hbHdheXMtb247Cj4+ID4+ID4gICAgICAgICAgICAgICB2
aW4tc3VwcGx5ID0gPCZ2Y2M1djBfdXNiPjsKPj4gPj4gPiAgICAgICB9Owo+PiA+PiA+Cj4+ID4+
ID4gQEAgLTg2Myw3ICs4NjEsNyBAQCB1MnBoeTBfb3RnOiBvdGctcG9ydCB7Cj4+ID4+ID4gICAg
ICAgfTsKPj4gPj4gPgo+PiA+PiA+ICAgICAgIHUycGh5MF9ob3N0OiBob3N0LXBvcnQgewo+PiA+
PiA+IC0gICAgICAgICAgICAgcGh5LXN1cHBseSA9IDwmdmNjNXYwX2hvc3Q+Owo+PiA+PiA+ICsg
ICAgICAgICAgICAgcGh5LXN1cHBseSA9IDwmdmNjNXYwX3R5cGVjPjsKPj4gPj4gPiAgICAgICAg
ICAgICAgIHN0YXR1cyA9ICJva2F5IjsKPj4gPj4gPiAgICAgICB9Owo+PiA+PiA+ICB9Owo+PiA+
Pgo+PiA+PiBRdWl0ZSBmcmFua2x5LCBzb21ldGhpbmcgZG9lc24ndCBmZWVsIHJpZ2h0IHRoZXJl
LiAgV291bGQgeW91IG1pbmQsCj4+ID4+IHBsZWFzZSwgdG8gcGxhY2UgdGhpcyBwYXRjaCBvbiBo
b2xkIHVudGlsIG5leHQgd2VlayBvciBzbywgYXQgd2hpY2gKPj4gPj4gcG9pbnQgSSBzaG91bGQg
aGF2ZSBlbm91Z2ggdGltZSB0byBnbyB0aHJvdWdoIHRoZSBSb2NrUHJvNjQgc2NoZW1hdGljCj4+
ID4+IHRob3JvdWdobHkgb25jZSBhZ2FpbiwgYW5kIHRlc3QgdGhlIHBhdGNoIGluIGRldGFpbD8K
Pj4gPgo+PiA+IFN1cmUsIG5vIHdvcnJpZXMuCj4+IAo+PiBHcmVhdCwgdGhhbmtzLgo+PiAKPj4g
PiBXb3VsZCB5b3UgbWluZCBsZXR0aW5nIG1lIGtub3cgd2hpY2ggcGFydCBkb2Vzbid0IGZlZWwg
cmlnaHQgdG8geW91Pwo+PiAKPj4gU3VyZSwgaXQgd2FzIGFib3V0IHRoZSBsYXN0IGNoYW5nZSBp
biB0aGUgcGF0Y2guCj4gCj4gVGhlIFR5cGVDIHBvcnQgVkJVUyBpcyBWQlVTX1RZUEVDIG9uIFBh
Z2UgMjAgb2YgMzMgbWFya2VkIGZvcgo+IFZCVVNfWzEtNF0gaW4gc2NoZW1hdGljIGhlcmUgLSBb
MF0KPiAKPiBbMF0gLSBodHRwczovL2ZpbGVzLnBpbmU2NC5vcmcvZG9jL3JvY2twcm82NC9yb2Nr
cHJvNjRfdjIxLVNDSC5wZGYKCkkgc2VlLCB0aGFua3MsIGFuZCBJIGFscmVhZHkgd2VudCBvbmNl
IGFnYWluIHRocm91Z2ggdGhlIFJvY2tQcm82NCAKc2NoZW1hdGljLCBidXQgb25seSBicmllZmx5
LiAgSSBuZWVkIHRvIGRvIHRoYXQgYWdhaW4sIGJ1dCBpbiBkZXRhaWwsIAphbmQgY29tcGFyZSBp
dCB0aG9yb3VnaGx5IHdpdGggdGhlIGR0cyhpKS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
