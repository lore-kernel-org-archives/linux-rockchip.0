Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 063C6C46CD2
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jan 2024 21:19:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bVVTjrp+rQznLyvmye7aiMxDn9uYqgiOsoDpi7Z9UCg=; b=iSgiiGRaAgQReF
	txwBc9pjWkqQju9a16lKMFxnTFHjQoPRiUuVO71WSoU+bbBFJQMgCPLtLMfEJiqq4sQ9H85n5d9NI
	042BwcTvGRAw6+MYvXN6dUbuDrm+Uk/u0/aGwae1arHB8smYM9xuB/GtMvwMu4+4bc9UmZuuZY1p6
	+nnN0n4ZOdwXRy9hSmW9r86l+oL2FdqU0ok4Q7YugtONlVL7P1BigNjpp9Rv7CXaY++DIu57jjnl8
	xDvr9GVM8CXU48LwqThzRRV72TYeM8xFPIQ8Fn0oYiHtxK7M38GDOWPOLSznrq62QFDjFG9QtzwjW
	TOjKGNIKWj+VMl97EM0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKmA8-00926u-2H;
	Tue, 02 Jan 2024 21:19:00 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKmA4-00925j-1c;
	Tue, 02 Jan 2024 21:18:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1704230330; bh=NkgNNWrU5A+qrlyuoridyMA0T+gww6nA9Sf4hu63gmI=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=Fi02OVej7qHAlyYnp+pT6vaLbwXZjF/w4bjtOyReDOlrriSZqpWmfDA2KgpkXwriC
	 L8prIzUKpNvdjwZg3bEywTq+VGwN3nVUNanL4DcEnx9xMHrMCbuzzRo8NkpTxFhUJw
	 GglC0TZWR+N0WyOOckCsdRESaRUwgzH1WTQZLBbg=
Date: Tue, 2 Jan 2024 22:18:48 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Manuel Traut <manut@mecka.net>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Sam Ravnborg <sam@ravnborg.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Sandy Huang <hjc@rock-chips.com>, Mark Yao <markyao0591@gmail.com>, 
	Diederik de Haas <didi.debian@cknow.org>, Segfault <awarnecke002@hotmail.com>, 
	Arnaud Ferraris <aferraris@debian.org>, Danct12 <danct12@riseup.net>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 4/4] arm64: dts: rockchip: Add devicetree for Pine64
 PineTab2
Message-ID: <qwndrkppuctp2mybnibbf6fppp6abzimqs4hirrwjauig34why@gawjwsbauffm>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	Jonas Karlman <jonas@kwiboo.se>, Manuel Traut <manut@mecka.net>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Sam Ravnborg <sam@ravnborg.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Sandy Huang <hjc@rock-chips.com>, Mark Yao <markyao0591@gmail.com>, 
	Diederik de Haas <didi.debian@cknow.org>, Segfault <awarnecke002@hotmail.com>, 
	Arnaud Ferraris <aferraris@debian.org>, Danct12 <danct12@riseup.net>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20240102-pinetab2-v3-0-cb1aa69f8c30@mecka.net>
 <20240102-pinetab2-v3-4-cb1aa69f8c30@mecka.net>
 <775vjfucu2g2s6zzeutj7f7tapx3q2geccpxvv4ppcms4hxbq7@cbrdmlu2ryzp>
 <903e9d0c-a00c-4214-9f0e-dd676b13b428@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <903e9d0c-a00c-4214-9f0e-dd676b13b428@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_131857_005304_64110E42 
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBKYW4gMDIsIDIwMjQgYXQgMDk6NTY6MjBQTSArMDEwMCwgSm9uYXMgS2FybG1hbiB3
cm90ZToKPiBIaSBNYW51ZWwgYW5kIE9uZMWZZWosCj4gCj4gT24gMjAyNC0wMS0wMiAxOTowNywg
T25kxZllaiBKaXJtYW4gd3JvdGU6Cj4gPiBIZWxsbyBNYW51ZWwsCj4gCj4gWy4uLl0KPiAKPiA+
PiArCj4gPj4gKyZzZmMgewo+ID4+ICsJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+PiAr
CXBpbmN0cmwtMCA9IDwmZnNwaV9kdWFsX2lvX3BpbnM+Owo+ID4+ICsJc3RhdHVzID0gIm9rYXki
Owo+ID4+ICsJI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gPj4gKwkjc2l6ZS1jZWxscyA9IDwwPjsK
PiA+PiArCj4gPj4gKwlmbGFzaEAwIHsKPiA+PiArCQljb21wYXRpYmxlID0gImplZGVjLHNwaS1u
b3IiOwo+ID4+ICsJCXJlZyA9IDwwPjsKPiA+PiArCQlzcGktbWF4LWZyZXF1ZW5jeSA9IDwyNDAw
MDAwMD47Cj4gPiAKPiA+IFRoYXQncyBhIGJpdCBvbiB0aGUgbG93IHNpZGUuIFRoZSBmbGFzaCBj
aGlwIHNob3VsZCB3b3JrIGZvciBhbGwgY29tbWFuZHMgdXAgdG8KPiA+IDgwTUh6IGh0dHBzOi8v
bWVnb3VzLmNvbS9kbC90bXAvYjQyOGFkOWI4NWFjNDYzMy5wbmcgYW5kIFNHTTMxNTdZQzYgc3dp
dGNoCj4gPiBmb3IgdGhlIEZTUEktQ0xLIHNob3VsZCBoYXZlIGhpZ2ggZW5vdWdoIGJhbmR3aWR0
aCwgdG9vLgo+IAo+IEkgYWdyZWUgdGhhdCB0aGlzIGlzIGEgbGl0dGxlIGJpdCBvbiB0aGUgbG93
IHNpZGUsIGl0IHdhcyBhIHNhZmUgcmF0ZQo+IHRoYXQgSSB1c2VkIGZvciBVLUJvb3QuIFUtQm9v
dCByZXF1aXJlZCBhbiBleGFjdCByYXRlIG9mIHRoZSBzdXBwb3J0ZWQKPiBzZmMgY2xrIHJhdGVz
OiAyNCwgNTAsIDc1LCAxMDAsIDEyNSBvciAxNTAgTUh6Lgo+IAo+IFBsZWFzZSBhbHNvIG5vdGUg
dGhhdCB0aGUgU1BJIE5PUiBmbGFzaCBjaGlwIHVzZWQgaW4gUGluZVRhYjIgaXMgbm90IGEKPiBH
aWdhRGV2aWNlIEdEMjVMUTEyOEUsIGl0IHNob3VsZCBiZSBhIFNpbGljb25LYWlzZXIgU0syNUxQ
MTI4LCBzYW1lIGFzCj4gZm91bmQgaW4gdGhlIFBpbmU2NCBQaW5lUGhvbmUgUHJvLgoKQWNjb3Jk
aW5nIHRvIHRoaXMgaHR0cDovL2VuLnNpbGljb25rYWlzZXIuY29tL3Byby8gIGl0IHNob3VsZCBt
YXliZSBnbyB1cCB0bwoxMzNNSHouIE5vIGlkZWEgd2hhdCdzIHRoZSBkaWZmZXJlbmNlIGJldHdl
ZW4gTFAgdnMgTEUgdmFyaWFudC4gU28gaXQgbWF5IHdvcmsKd2l0aCAxMDAgTUh6LgoKT24gUGlu
ZXBob25lIFBybyB2YXJpYW50cyB3aXRoIG5lcmZlZCBTUEkgQ0xLIHNpZ25hbCBpbnRlZ3JpdHkg
KGFueSB2YXJpYW50IHdpdGgKUkUgaW5zdGVhZCBvZiBhIFJFU0VUIGJ1dHRvbiAtIHNvIGFsbCBw
cm9kdWN0aW9uIGJhdGNoZXMpLCBhbnl0aGluZyBhYm92ZSAxMCBNSHoKaGFzIHJlYWwgdHJvdWJs
ZSB3b3JraW5nLiBCdXQgdGhpcyBzaG91bGQgbm90IGJlIHRoZSBjYXNlIGhlcmUgd2l0aCBQVDIs
IGxvb2tpbmcKYXQgdGhlIHNjaGVtYXRpYy4uLgoKQW55d2F5LCBpdCdzIGEgbmljZSB0byBoYXZl
LgoKPiA+IAo+ID4+ICsJCXNwaS1yeC1idXMtd2lkdGggPSA8Mj47Cj4gPiAKPiA+IEdEMjVMUTEy
OEUgc3VwcG9ydHMgcXVhZCBJL08uIE1heWJlIHRyeSA0IGlmIGl0IHdpbGwgd29yay4KPiAKPiBU
aGUgc2NoZW1hdGljIG9ubHkgc2hvd3MgZnNwaSBEMCBhbmQgRDEgY29ubmVjdGVkLCBhbmQgdXNl
IHRoZSBEMiBsaW5lCj4gZm9yIGVNTUNfUlNUbiwgc28gc3BpLXJ4LWJ1cy13aWR0aCA9IDwyPiBz
aG91bGQgYmUgY29ycmVjdC4KCkFoLCBJIHNlZS4KCnJlZ2FyZHMsCglvLgoKPiA+IAo+ID4+ICsJ
CXNwaS10eC1idXMtd2lkdGggPSA8MT47Cj4gPj4gKwl9Owo+ID4+ICt9Owo+ID4+ICsKPiAKPiBS
ZWdhcmRzLAo+IEpvbmFzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
