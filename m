Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5F72C76195
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Mar 2023 17:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0CQD5w1bNXDW+Wuto+aJmHVo5Ib9dttYy8vxLFbJKrY=; b=djLijcX868HW4I
	7wZ5Wjw6WRSZ7PF+9ikeVI5Wq6FhaCrEe2ELaIm+iYphO4nR+f+eLbyg/gbekHLnETD5BEU8aPhY8
	gALx6tP1anFzvjpUwISccZBHfVFjzc/34T4ZaMv/ZmTaRwxQD8bkj0GvSM4ov+DZc/JtdNFe0fJvp
	B2ptdaIZuuTXmWDw1+BsJcCmztw/vRkL+ecbUSW05UBH+6j1Y0x5pM6w2VGBe/A6u7GlAT7oT4Gv/
	jfLNNfrp+kl0SsiIkKDttHKcefIXxOa1TfAau/duQBwa/9kHYLmkbMiZR0GIE5NQwE0NmdD53wAjG
	ZomABt9Pp7kr7FRAdjpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgqxq-00Bwhz-1t;
	Mon, 27 Mar 2023 17:49:02 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgqxm-00Bwga-1s;
	Mon, 27 Mar 2023 17:49:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1679939336; bh=PipWPWkBFS1GgoXZt9XVYf8bnGqWk6b5DvNg8L6icis=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=oFt0UzfsxU3d6jLwx+2Zz5OB3qb6w3eIp31DHUKAgjTJRfQKpvpIXEsHuh1X3JNQ3
	 IH3jQRfELvITxHZHpaHL2+yHL3UOqsMKAqNKORvCcmzpaGN34IeAAHpvjKFA0pnvix
	 RlRFbNITTZr0fKwMeVHgBE3KKB5ATx7gRwsdjBu4=
Date: Mon, 27 Mar 2023 19:48:55 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Javier Martinez Canillas <javierm@redhat.com>
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	Robert Mader <robert.mader@collabora.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Martijn Braam <martijn@brixit.nl>,
	Kamil =?utf-8?Q?Trzci=C5=84ski?= <ayufan@ayufan.eu>,
	Caleb Connolly <kc@postmarketos.org>,
	Jarrah Gosbell <kernel@undef.tools>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rk3399-pinephone-pro: Add internal
 display support
Message-ID: <20230327174855.xpxrdfldqcxk463r@core>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	Robert Mader <robert.mader@collabora.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Martijn Braam <martijn@brixit.nl>,
	Kamil =?utf-8?Q?Trzci=C5=84ski?= <ayufan@ayufan.eu>,
	Caleb Connolly <kc@postmarketos.org>,
	Jarrah Gosbell <kernel@undef.tools>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20230327074136.1459212-1-javierm@redhat.com>
 <20230327130147.wgxl2qayhzsi2xak@core>
 <87wn32rynm.fsf@minerva.mail-host-address-is-not-set>
 <1924921.PYKUYFuaPT@diego>
 <87mt3yrwzo.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87mt3yrwzo.fsf@minerva.mail-host-address-is-not-set>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_104859_068762_67AAE751 
X-CRM114-Status: GOOD (  28.44  )
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

T24gTW9uLCBNYXIgMjcsIDIwMjMgYXQgMDY6MTU6NTVQTSArMDIwMCwgSmF2aWVyIE1hcnRpbmV6
IENhbmlsbGFzIHdyb3RlOgo+IEhlaWtvIFN0w7xibmVyIDxoZWlrb0BzbnRlY2guZGU+IHdyaXRl
czoKPiAKPiBIZWxsbyBIZWlrbywKPiAKPiA+IEFtIE1vbnRhZywgMjcuIE3DpHJ6IDIwMjMsIDE3
OjM5OjU3IENFU1Qgc2NocmllYiBKYXZpZXIgTWFydGluZXogQ2FuaWxsYXM6Cj4gPj4gT25kxZll
aiBKaXJtYW4gPG1lZ2lAeGZmLmN6PiB3cml0ZXM6Cj4gPj4gCj4gPj4gSGVsbCBPbmTFmWVqLAo+
ID4+IAo+ID4+ID4gSGkgSmF2aWVyLAo+ID4+ID4KPiA+PiA+IEkndmUgdHJpZWQgdGhlIHBhdGNo
IG9uIHRvcCBvZiBsaW51cy9tYXN0ZXIgYW5kIGl0IHdvcmtzIGFzIGV4cGVjdGVkLiBNeQo+ID4+
ID4gRFJNIHRlc3QgYXBwIHNob3dzIDE2LjY2OW1zIGJldHdlZW4gZnJhbWVzLiBUaGUgZGlzcGxh
eSBvdXRwdXQgaXMgb2sgb24KPiA+PiA+IGRldmVsb3BlciBiYXRjaCBwaW5lcGhvbmUgcHJvLCBh
bmQgaXMgY29ycnVwdGVkIG9uIHByb2R1Y3Rpb24gdmVyc2lvbi4KPiA+PiA+IERpc3BsYXkgYWxz
byBkb2Vzbid0IGNvbWUgYmFjayBhZnRlciBibGFua2luZy4gQWxsIGFzIGV4cGVjdGVkLgo+ID4+
ID4KPiA+PiA+IFRlc3RlZC1ieTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+Cj4gPj4gPgo+
ID4+IAo+ID4+IFRoYW5rcyBmb3IgdGVzdGluZy4KPiA+PiAKPiA+PiA+IEEgZmV3IG1vcmUgY29t
bWVudHMgYmVsb3cuCj4gPj4gPgo+ID4+IAo+ID4+IEknbSBPSyB3aXRoIHRoZXNlIGNvbW1lbnRz
IGJ1dCBJIGRpZCBhIGdpdCBkaWZmIHdpdGggeW91ciBvcmFuZ2UtcGktNi4zCj4gPj4gYnJhbmNo
IGp1c3QgYmVmb3JlIHBvc3RpbmcgYW5kIHRoaXMgd2FzIHRoZSBsYXRlc3QgdGhhdCdzIGluIHlv
dXIgdHJlZS4KPiA+PiAKPiA+PiBTbyBmZWVsIGZyZWUgdG8gZWl0aGVyIHBvc3QgYSB2MyBhZGRy
ZXNzaW5nIHRoZSB0aGluZ3MgeW91IGFyZSBwb2ludGluZwo+ID4+IG91dCBvciBsZXRzIGxhbmQg
dGhpcyBhbmQgd2UgY2FuIHBvc3QgYW55IGZ1cnRoZXIgY2xlYW51cHMgb24gdG9wIElNTy4KPiA+
Cj4gPiBJIHdvdWxkIHJlYWxseSBsaWtlIHRvIF9ub3RfIGFwcGx5IGVzc2VudGlhbGx5IGJyb2tl
biBjb2RlLCBzbyByZWFsbHkKPiA+IHdvdWxkIHByZWZlciB0aGUgdjMtYXBwcm9hY2guCj4gPgo+
IAo+IEl0IGlzIGJyb2tlbiB0aG91Z2g/IFRoaXMgaXMgd2hhdCBpcyBpbiBPbmRyZWogZG93bnN0
cmVhbSB0cmVlIGFuZCBJIHNlZQo+IG5vIGlzc3VlcyBvbiBteSBQaW5lcGhvbmUgUHJvLiBIZSBt
ZW50aW9uZWQgc29tZSBmbGlja2VyIHdoZW4gbG9va2luZyBhdAo+IHRoZSBzaWduYWxzIHdpdGgg
YSBzY29wZSBhbmQgaG9va2luZyBhIHBob3RvcmVzaXN0b3IuCgpMRUQgcmVndWxhdG9yIGlzIGRy
aXZlbiBvdXQgb2Ygc3BlYyBieSBhIGZyZXF1ZW5jeSB0aGF0J3MgMjB4IGxvd2VyIHRoYW4KcmVj
b21tZW5kZWQsIGlmIHlvdSB3YW50IHNob3J0IHZlcnNpb24gb2Ygd2hhdCdzIGJyb2tlbiBhYm91
dCB0aGUgRFQgcGF0Y2guCgo+IEJ1dCB0aGF0J3MgZmFpci4gSSdsbCBsZXQgT25kcmVqIHRoZW4g
cG9zdCBhIHYzIGlmIGhlIHdhbnRzIHRvIGFkZHJlc3MgdGhlCj4gaXNzdWVzIGhlIHBvaW50ZWQg
b3V0LCBzaW5jZSBpcyBoaXMgcGF0Y2ggYWZ0ZXIgYWxsLgoKSXQncyBub3QgbXkgcGF0Y2guIE9y
aWdpbmFsIGF1dGhvciBvZiB0aGUgRFQgaXMgTWFydGlqbiBvciBLYW1pbC4gSSBqdXN0IGNhcnJ5
CnRoZWlyIERUIHdvcmsgaW4gc3BsaXQtdXAgcGF0Y2hlcyBpbiBteSB0cmVlLCBhbmQgSSBzb21l
dGltZXMgdHJ5IHRvIGZpbmQgc29sdXRpb25zCnRvIGJ1Z3MgSSBmaW5kIHdoZW4gdXNpbmcgUFBQ
LiBUaGF0J3MgdGhlIHN0b3J5IG9mIHRoZXNlIERUIGNoYW5nZXMgeW91J3JlIHBvc3RpbmcuCgpT
aW5jZSB5b3UgcG9zdGVkIHRoaXMgRFQgcGF0Y2ggZm9yIHVwc3RyZWFtaW5nLCBJIHdhbnRlZCB0
byBoZWxwIHlvdSBieSByZXZpZXdlZAppdCBtb3JlIGNvbXBsZXRlbHksIHNvIEkgb3BlbmVkIHRo
ZSBzY2hlbWF0aWMgYW5kIGRhdGFzaGVldHMgZm9yIHRoZSBjb21wb25lbnRzCnRoYXQgYXJlIGRl
c2NyaWJlZCBpbiB0aGlzIHBhdGNoLCBhbmQgZGlzY292ZXJlZCB0aGVzZSBuZXcgaXNzdWVzIEkg
Y29tbWVudGVkCmFib3V0LiBBbmQgSSBhbHNvIHRlc3RlZCBpdCBvbiB0b3Agb2YgbGludXMvbWFz
dGVyLgoKSnVzdCBiZWNhdXNlIHNvbWV0aGluZyBpcyBpbiBteSB0cmVlIGRvZXNuJ3QgbWVhbiBp
dCdzIG1pbmUsIG9yIHRoYXQgSSByZXZpZXdlZAppdCBpbiBkZXRhaWwgYW5kIHByZXBhcmVkIGl0
IGZvciB1cHN0cmVhbWluZywgb3IgdGhhdCBJJ20gaW50ZXJlc3RlZCBpbgp1cHN0cmVhbWluZyBp
dC4gSSdtIGp1c3QgdHJ5aW5nIHRvIGhlbHAgeW91IHdpdGggeW91ciB1cHN0cmVhbWluZyBlZmZv
cnQgYnkKdGVzdGluZyBhbmQgcmV2aWV3IHNpbmNlIEkgZ290IHRvIGtub3cgdGhlIGhhcmR3YXJl
IHF1aXRlIHdlbGwgb3ZlciB0aGUgbGFzdAp5ZWFycyBhbmQgY2FuIGNoZWNrIHRoZSBzY2hlbWF0
aWNzIGFuZCBkYXRhc2hlZXRzIHF1aWNrbHksIGFuZCBJIGxpa2UgdG8gdGhpbmsKdXBzdHJlYW0g
Y29kZSBpcyBoZWxkIHRvIGhpZ2hlciBzdGFuZGFyZC4gVGhhdCdzIGFsbC4KCmtpbmQgcmVnYXJk
cywKCW8uCgoKPiAtLSAKPiBCZXN0IHJlZ2FyZHMsCj4gCj4gSmF2aWVyIE1hcnRpbmV6IENhbmls
bGFzCj4gQ29yZSBQbGF0Zm9ybXMKPiBSZWQgSGF0Cj4gCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
