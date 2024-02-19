Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64920C48BC3
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Feb 2024 19:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CShvqo8X3kC/D6NUSppsc0dzGsN7xylszHUADSTLw6w=; b=OjwfJv1HyCn1/r
	BIJr9D3EaUHeAeWI7uqZZfjObrPOUY7yJxmgBPPzFVxfogflrGnA8V2iS4Z9LnJ1qqqu1LmASmmu9
	rvZ+aiL1Ji/1eIhWerA+6BwEj07ajFVbXSZkBPIMnbhTN3ALluGOFd26pfHfl/XaXMl/sHWic6kdC
	QDTOiHoYiMKiXfSvzxzCftoZkq380LWe1qhTcXAf+WurcHSPGaDI6z9v/WR0FQ0MPuqZW+M9Mzbzd
	Umy1fzeZRnFleXsJuj3c29LOGI/TVPdMzR7MnqraveFqvRRPqxuB1KH6afcSKfMI4TqMq9YdfPsqH
	sAsN3zoNIUBX6l6PCpCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc9UB-0000000BvKC-2rBP;
	Mon, 19 Feb 2024 19:39:31 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc9U7-0000000BvJA-1Fbo;
	Mon, 19 Feb 2024 19:39:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1708371564; bh=eYJcncYVMz2/P+8L4YuElamp9/gwH5EEjsU0YmeUEy4=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=JVt1ocNFUSrQEY5yZpav/AneRAxvrc0MRJokvqgkTVvWnzpX0EiEb1/bIAm8kdgJL
	 uPdGB9eJCG9pCCAUd4Qb3YPdsImVA5coUlQZe1Gf+3YAJv2Dm8W6DpHOh9dVd5pgux
	 9mdnhFla+wGVTifBvj3mjQfM9APNzqEgk+ZMO/DA=
Date: Mon, 19 Feb 2024 20:39:23 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Andy Yan <andy.yan@rock-chips.com>
Cc: linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	"open list:DRM DRIVERS FOR ROCKCHIP" <dri-devel@lists.freedesktop.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH] drm: rockchip: Don't require MIPI DSI device when it's
 used for ISP
Message-ID: <65qkkf7baecbcnemtabzup2nupd63obz4ewrhruk5frl2t3hwv@eqxm3tzgqcv6>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	Andy Yan <andy.yan@rock-chips.com>, linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	"open list:DRM DRIVERS FOR ROCKCHIP" <dri-devel@lists.freedesktop.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20240217183941.1752463-1-megi@xff.cz>
 <4c66c084-5af6-43fb-a256-4746b2e00192@rock-chips.com>
 <bsc3lpdxvhy3ss2uja4do3jwvj43zbs7zhx4bzs2tryrakn7be@pt2qsyvryk73>
 <7044f324-5a45-4a4c-a15e-86614e53acf0@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7044f324-5a45-4a4c-a15e-86614e53acf0@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_113927_842697_9A9237C7 
X-CRM114-Status: GOOD (  44.15  )
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

T24gTW9uLCBGZWIgMTksIDIwMjQgYXQgMTE6MDI6MDFBTSArMDgwMCwgQW5keSBZYW4gd3JvdGU6
Cj4gSGkgT25kcmVqOgo+IAo+IE9uIDIvMTgvMjQgMjM6MTcsIE9uZMWZZWogSmlybWFuIHdyb3Rl
Ogo+ID4gSGkgQW5keSwKPiA+IAo+ID4gT24gU3VuLCBGZWIgMTgsIDIwMjQgYXQgMDc6MTQ6NTZQ
TSArMDgwMCwgQW5keSBZYW4gd3JvdGU6Cj4gPiA+IEhpLAo+ID4gPiAKPiA+ID4gT24gMi8xOC8y
NCAwMjozOSwgT25kxZllaiBKaXJtYW4gd3JvdGU6Cj4gPiA+ID4gRnJvbTogT25kcmVqIEppcm1h
biA8bWVnaUB4ZmYuY3o+Cj4gPiA+ID4gCj4gPiA+ID4gT24gUkszMzk5IG9uZSBNSVBJIERTSSBk
ZXZpY2UgY2FuIGJlIGFsdGVybmF0aXZlbHkgdXNlZCB3aXRoIHRoZSBJU1AxLAo+ID4gPiA+IHRv
IHByb3ZpZGUgUlggRFBIWS4gV2hlbiB0aGlzIGlzIHRoZSBjYXNlIChJU1AxIGlzIGVuYWJsZWQg
aW4gZGV2aWNlCj4gPiA+ID4gdHJlZSksIHByb2JlIHN1Y2Nlc3Mgb2YgRFJNIGlzIHRpZWQgdG8g
cHJvYmUgc3VjY2VzcyBvZiBJU1AxIGNvbm5lY3RlZAo+ID4gPiA+IGNhbWVyYSBzZW5zb3IuIFRo
aXMgY2FuIGZhaWwgaWYgdGhlIHVzZXIgaXMgYWJsZSB0byBraWxsc3dpdGNoIHRoZSBjYW1lcmEK
PiA+ID4gPiBwb3dlciwgbGlrZSBvbiBQaW5lcGhvbmUgUHJvLgo+ID4gPiA+IAo+ID4gPiA+IERl
dGVjdCB1c2Ugb2YgTUlQSSBEU0kgY29udHJvbGxlciBieSBJU1AsIGFuZCBkb24ndCBpbmNsdWRl
IGl0IGluCj4gPiA+ID4gY29tcG9uZW50IG1hdGNoIGxpc3QgaW4gdGhhdCBjYXNlLgo+ID4gPiA+
IAo+ID4gPiAKPiA+ID4gSXNuJ3QgdGhpcyBzdXBwb3NlZCB0byBiZSB0YWtlbiBjYXJlIG9mIHdp
dGhpbiB0aGUgZHRzPwo+ID4gPiBTaW5jZSBEUEhZMSBzaG91bGQgZXhjbHVzaXZlbHkgdXNlZCBi
eSBNSVBJIERTSTEgYW5kIElTUDEsIHRoZW4gaWYKPiA+ID4gYSBkZXZpY2Ugd2FudCB0byB1c2Ug
SVNQMSwgdGhlIERTSTEgc2hvdWxkIGJlIGRpc2FibGVkIGluIGR0cy4KPiA+IAo+ID4gRFNJMSBj
YW4ndCBiZSBkaXNhYmxlZCwgYmVjYXVzZSBpdCBwcm92aWRlcyBQSFkgZGV2aWNlIGZvciBJU1Ax
IGluIHRoaXMKPiA+IHNjZW5hcmlvLgo+ID4gCj4gPiBUaGUgcHJvYmxlbSBpcyB0aGF0IGluIHRo
aXMgc2NlbmFyaW8gRFJNIGtlZXBzIHdhaXRpbmcgZm9yIERTSTEgZGV2aWNlLAo+ID4gZGVzcGl0
ZSBpdCBqdXN0IGJlaW5nIHVzZWQgZm9yIFBIWSBmb3IgSVNQMSBhbmQgbm90IGFzIGEgY29tcG9u
ZW50IGZvcgo+ID4gcm9ja2NoaXAgRFJNIGRyaXZlci4KPiAKPiAKPiBPaCwgZ2V0IGl0Lgo+IFdp
dGggYSBxdWljayBsb29rLCBzZWVtcyB0aGF0IEhlaWtvIGhhcyBhbHJlYWR5IHRha2UgdGhpcyBz
Y2VuYXJpbyBpbnRvIGNvbnNpZGVyYXRpb24KPiB3aGVuIGFkZCBQSFkgZnVuY3Rpb24gaW4gdGhl
IGRzaSBkcml2ZXJzWzBdCj4gRG9lcyB0aGlzIG1lYW4gdGhlIGN1cnJlbnQgZHJpdmVycyBkb2Vz
IG5vdCB3b3JrIGFzIGV4cGVjdGVkPwoKSXQgZGlkbid0IHdvcmsgYW55bW9yZSBzaW5jZSBzb21l
IGZ3IGRldmxpbmsgY2hhbmdlcyB0aGF0IHdlcmUgYWRkZWQgc29tZQp0aW1lIGFmdGVyIDIwMjEu
IEJ1dCBpdCBtaWdodCBoYXZlIGdvdCByZXNvbHZlZCBzaW5jZSB0aGFuLgoKU28gcGxlYXNlIGln
bm9yZSB0aGlzIHBhdGNoIGZvciBub3cuCgpraW5kIHJlZ2FyZHMsCglvLgoKPiBbMF1odHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvNDIwMzg2Lwo+ID4gCj4gPiBTZWU6Cj4g
PiAKPiA+ICAgICAgICAgIGlzcDE6IGlzcDFAZmY5MjAwMDAgewo+ID4gICAgICAgICAgICAgICAg
ICBjb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzM5OS1jaWYtaXNwIjsKPiA+ICAgICAgICAgICAg
ICAgICAgcmVnID0gPDB4MCAweGZmOTIwMDAwIDB4MCAweDQwMDA+Owo+ID4gICAgICAgICAgICAg
ICAgICBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgNDQgSVJRX1RZUEVfTEVWRUxfSElHSCAwPjsKPiA+
ICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjcnUgU0NMS19JU1AxPiwKPiA+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgPCZjcnUgQUNMS19JU1AxX1dSQVBQRVI+LAo+ID4gICAgICAgICAg
ICAgICAgICAgICAgICAgICA8JmNydSBIQ0xLX0lTUDFfV1JBUFBFUj47Cj4gPiAgICAgICAgICAg
ICAgICAgIGNsb2NrLW5hbWVzID0gImlzcCIsICJhY2xrIiwgImhjbGsiOwo+ID4gICAgICAgICAg
ICAgICAgICBpb21tdXMgPSA8JmlzcDFfbW11PjsKPiA+ICAgICAgICAgICAgICAgICAgcGh5cyA9
IDwmbWlwaV9kc2kxPjsgIDwtLS0tLS0tLS0KPiA+ICAgICAgICAgICAgICAgICAgcGh5LW5hbWVz
ID0gImRwaHkiOwo+ID4gICAgICAgICAgICAgICAgICBwb3dlci1kb21haW5zID0gPCZwb3dlciBS
SzMzOTlfUERfSVNQMT47Cj4gPiAgICAgICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7
Cj4gPiAKPiA+IElmIG1pcGlfZHNpMSBpcyBkaXNhYmxlZCwgaXNwMSB3aWxsIG5ldmVyIHByb2Jl
Lgo+ID4gCj4gPiBJdCdzIGEgY29uc2VxdWVuY2Ugb2YgdGhpcyBzcGVjaWFsIGR1YWwgdXNlIG9m
IG1pcGlfZHNpMS4KPiA+IAo+ID4ga2luZCByZWdhcmRzLAo+ID4gCW8uCj4gPiAKPiA+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdpQHhmZi5jej4KPiA+ID4gPiAtLS0KPiA+
ID4gPiAgICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jIHwgNDcg
KysrKysrKysrKysrKysrKysrKysrCj4gPiA+ID4gICAgMSBmaWxlIGNoYW5nZWQsIDQ3IGluc2Vy
dGlvbnMoKykKPiA+ID4gPiAKPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3Jv
Y2tjaGlwL3JvY2tjaGlwX2RybV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2Nr
Y2hpcF9kcm1fZHJ2LmMKPiA+ID4gPiBpbmRleCBhYjU1ZDcxMzI1NTAuLmY0N2RlOTRhZDU3NiAx
MDA2NDQKPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJt
X2Rydi5jCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2Ry
bV9kcnYuYwo+ID4gPiA+IEBAIC0zNTQsNiArMzU0LDQzIEBAIHN0YXRpYyB2b2lkIHJvY2tjaGlw
X2RybV9tYXRjaF9yZW1vdmUoc3RydWN0IGRldmljZSAqZGV2KQo+ID4gPiA+ICAgIAkJZGV2aWNl
X2xpbmtfZGVsKGxpbmspOwo+ID4gPiA+ICAgIH0KPiA+ID4gPiArLyoKPiA+ID4gPiArICogQ2hl
Y2sgaWYgSVNQIGJsb2NrIGxpbmtlZCB0byBhIG1pcGktZHNpIGRldmljZSB2aWEgcGh5cyBwaGFu
ZGxlIGlzCj4gPiA+ID4gKyAqIGVuYWJsZWQgaW4gZGV2aWNlIHRyZWUuCj4gPiA+ID4gKyAqLwo+
ID4gPiA+ICtzdGF0aWMgYm9vbCByb2NrY2hpcF9kcm1faXNfbWlwaTFfYW5kX3VzZWRfYnlfaXNw
KHN0cnVjdCBkZXZpY2UgKmRldikKPiA+ID4gPiArewo+ID4gPiA+ICsJc3RydWN0IGRldmljZV9u
b2RlICpucCA9IE5VTEwsICpwaHlfbnA7Cj4gPiA+ID4gKwo+ID4gPiA+ICsJaWYgKCFvZl9kZXZp
Y2VfaXNfY29tcGF0aWJsZShkZXYtPm9mX25vZGUsICJyb2NrY2hpcCxyazMzOTktbWlwaS1kc2ki
KSkKPiA+ID4gPiArCQlyZXR1cm4gZmFsc2U7Cj4gPiA+ID4gKwo+ID4gPiA+ICsJd2hpbGUgKHRy
dWUpIHsKPiA+ID4gPiArCQlucCA9IG9mX2ZpbmRfY29tcGF0aWJsZV9ub2RlKG5wLCBOVUxMLCAi
cm9ja2NoaXAscmszMzk5LWNpZi1pc3AiKTsKPiA+ID4gPiArCQlpZiAoIW5wKQo+ID4gPiA+ICsJ
CQlicmVhazsKPiA+ID4gPiArCj4gPiA+ID4gKwkJaWYgKCFvZl9kZXZpY2VfaXNfYXZhaWxhYmxl
KG5wKSkgewo+ID4gPiA+ICsJCQlvZl9ub2RlX3B1dChucCk7Cj4gPiA+ID4gKwkJCWNvbnRpbnVl
Owo+ID4gPiA+ICsJCX0KPiA+ID4gPiArCj4gPiA+ID4gKwkJcGh5X25wID0gb2ZfcGFyc2VfcGhh
bmRsZShucCwgInBoeXMiLCAwKTsKPiA+ID4gPiArCQlpZiAoIXBoeV9ucCkgewo+ID4gPiA+ICsJ
CQlvZl9ub2RlX3B1dChucCk7Cj4gPiA+ID4gKwkJCWNvbnRpbnVlOwo+ID4gPiA+ICsJCX0KPiA+
ID4gPiArCj4gPiA+ID4gKwkJb2Zfbm9kZV9wdXQocGh5X25wKTsKPiA+ID4gPiArCQlvZl9ub2Rl
X3B1dChucCk7Cj4gPiA+ID4gKwo+ID4gPiA+ICsJCWlmIChwaHlfbnAgPT0gZGV2LT5vZl9ub2Rl
KQo+ID4gPiA+ICsJCQlyZXR1cm4gdHJ1ZTsKPiA+ID4gPiArCX0KPiA+ID4gPiArCj4gPiA+ID4g
KwlyZXR1cm4gZmFsc2U7Cj4gPiA+ID4gK30KPiA+ID4gPiArCj4gPiA+ID4gICAgc3RhdGljIHN0
cnVjdCBjb21wb25lbnRfbWF0Y2ggKnJvY2tjaGlwX2RybV9tYXRjaF9hZGQoc3RydWN0IGRldmlj
ZSAqZGV2KQo+ID4gPiA+ICAgIHsKPiA+ID4gPiAgICAJc3RydWN0IGNvbXBvbmVudF9tYXRjaCAq
bWF0Y2ggPSBOVUxMOwo+ID4gPiA+IEBAIC0zNzEsNiArNDA4LDE2IEBAIHN0YXRpYyBzdHJ1Y3Qg
Y29tcG9uZW50X21hdGNoICpyb2NrY2hpcF9kcm1fbWF0Y2hfYWRkKHN0cnVjdCBkZXZpY2UgKmRl
dikKPiA+ID4gPiAgICAJCQlpZiAoIWQpCj4gPiA+ID4gICAgCQkJCWJyZWFrOwo+ID4gPiA+ICsJ
CQkvKgo+ID4gPiA+ICsJCQkgKiBJZiBtaXBpMSBpcyBjb25uZWN0ZWQgdG8gSVNQLCB3ZSBkb24n
dCB3YW50IHRvIHdhaXQgZm9yIG1pcGkxIGNvbXBvbmVudCwKPiA+ID4gPiArCQkJICogYmVjYXVz
ZSBpdCB3aWxsIG5vdCBiZSB1c2VkIGJ5IERSTSBhbnl3YXksIHRvIG5vdCB0aWUgc3VjY2VzcyBv
ZiBjYW1lcmEKPiA+ID4gPiArCQkJICogZHJpdmVyIHByb2JlIHRvIGRpc3BsYXkgcGlwZWxpbmUg
aW5pdGlhbGl6YXRpb24uCj4gPiA+ID4gKwkJCSAqLwo+ID4gPiA+ICsJCQlpZiAocm9ja2NoaXBf
ZHJtX2lzX21pcGkxX2FuZF91c2VkX2J5X2lzcChkKSkgewo+ID4gPiA+ICsJCQkJZGV2X2luZm8o
ZCwgInVzZWQgYnkgSVNQMSwgc2tpcHBpbmcgZnJvbSBEUk1cbiIpOwo+ID4gPiA+ICsJCQkJY29u
dGludWU7Cj4gPiA+ID4gKwkJCX0KPiA+ID4gPiArCj4gPiA+ID4gICAgCQkJZGV2aWNlX2xpbmtf
YWRkKGRldiwgZCwgRExfRkxBR19TVEFURUxFU1MpOwo+ID4gPiA+ICAgIAkJCWNvbXBvbmVudF9t
YXRjaF9hZGQoZGV2LCAmbWF0Y2gsIGNvbXBvbmVudF9jb21wYXJlX2RldiwgZCk7Cj4gPiA+ID4g
ICAgCQl9IHdoaWxlICh0cnVlKTsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
